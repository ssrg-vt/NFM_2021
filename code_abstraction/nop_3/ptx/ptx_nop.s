	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.25
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_8
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.37
	nop	
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	nop	
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_8:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10
	nop	
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.41
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	nop	
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402050

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	rbx, rsi
	mov	ebp, edi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.13
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	call	textdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	call	atexit
	lea	r14, [rsp + 0x10]
	jmp	.label_75
.label_102:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.17_0
	nop	
	mov	edx, OFFSET FLAT:format_args
	mov	ecx, OFFSET FLAT:format_vals
	mov	r8d, 4
	mov	rbp, rbp
	call	__xargmatch_internal
	nop	
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + format_vals]]
	nop	
	mov	dword ptr [dword ptr [rip + output_format]],  eax
	nop	word ptr cs:[rax + rax]
.label_75:
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_96
	cmp	eax, 9
	nop	
	jle	.label_98
	cmp	eax, 0xa
	lea	rdi, [rdi]
	je	.label_102
	cmp	eax, 0x41
	jne	.label_103
	mov	byte ptr [byte ptr [rip + auto_reference]],  1
	lea	rdi, [rdi]
	jmp	.label_75
	nop	dword ptr [rax]
.label_96:
	lea	ecx, [rax - 0x46]
	cmp	ecx, 0x11
	nop	
	jbe	.label_106
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rbp, rbp
	cmp	ecx, 7
	mov	rsp, rsp
	jbe	.label_13
	add	eax, -0x6f
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_103
	jmp	qword ptr [word ptr [+ (rax * 8) + label_116]]
.label_3151:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + only_file]],  rax
	jmp	.label_75
	nop	dword ptr [rax]
.label_106:
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_121]]
.label_3138:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + truncation_string]],  rax
	jmp	.label_75
.label_13:
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_132]]
.label_3186:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + break_file]],  rax
	lea	rsi, [rsi]
	jmp	.label_75
.label_3139:
	nop	
	mov	byte ptr [byte ptr [rip + gnu_extensions]],  1
	lea	rsi, [rsi]
	jmp	.label_75
.label_3140:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + macro_name]],  rax
	jmp	.label_75
.label_3141:
	nop	
	mov	dword ptr [dword ptr [rip + output_format]],  2
	nop	
	jmp	.label_75
.label_3142:
	nop	
	mov	byte ptr [byte ptr [rip + right_reference]],  1
	jmp	.label_75
.label_3143:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + context_regex]],  rax
	mov	rsp, rsp
	jmp	.label_75
.label_3144:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + output_format]],  3
	nop	
	jmp	.label_75
.label_3145:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_158
	xor	eax, eax
.label_158:
	mov	qword ptr [word ptr [rip + word_regex]],  rax
	jmp	.label_75
.label_3187:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_75
.label_3188:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rcx, r14
	call	xstrtoimax
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_80
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_80
	mov	qword ptr [word ptr [rip + gap_size]],  rax
	jmp	.label_75
.label_3189:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + ignore_file]],  rax
	jmp	.label_75
.label_3152:
	mov	byte ptr [byte ptr [rip + input_reference]],  1
	jmp	.label_75
.label_3153:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	nop	
	jne	.label_189
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	test	rax, rax
	nop	
	jle	.label_189
	mov	qword ptr [word ptr [rip + line_width]],  rax
	lea	rsi, [rsi]
	jmp	.label_75
.label_98:
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_200
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	mov	rbp, rbp
	jne	.label_201
	mov	rbp, rbp
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	edi, 8
	nop	
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	nop	
	jmp	.label_257
.label_201:
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	lea	rsi, [rsi]
	and	cl, 1
	je	.label_219
	mov	dword ptr [dword ptr [rip + number_input_files]],  1
	mov	edi, 8
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + rax*8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_234
	movzx	edx, dl
	cmp	edx, 0x2d
	jne	.label_239
	mov	rsp, rsp
	cmp	byte ptr [rcx + 1], 0
	je	.label_234
.label_239:
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + input_file_name]]
	nop	
	mov	qword ptr [rdx], rcx
	nop	
	jmp	.label_242
.label_219:
	mov	rbp, rbp
	sub	ebp, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + number_input_files]],  ebp
	js	.label_243
	lea	rdi, [rdi]
	movsxd	rdi, ebp
	mov	rsp, rsp
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [word ptr [rip + input_file_name]],  rax
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	js	.label_243
	mov	rsp, rsp
	shl	rdi, 3
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [word ptr [rip + file_line_count]],  rax
	lea	rsi, [rsi]
	movsxd	rdi,  dword ptr [dword ptr [rip + number_input_files]]
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	js	.label_243
	lea	rdi, [rdi]
	shl	rdi, 4
	call	xmalloc
	mov	qword ptr [word ptr [rip + text_buffers]],  rax
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_257
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	nop	
	movsxd	rsi,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	lea	edx, [rsi + 1]
	lea	rsi, [rsi]
	lea	rsi, [rbx + rsi*8]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_280:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi + rdi*8]
	mov	bl, byte ptr [rbp]
	test	bl, bl
	je	.label_269
	lea	rdi, [rdi]
	movzx	ebx, bl
	cmp	ebx, 0x2d
	jne	.label_272
	mov	rbp, rbp
	cmp	byte ptr [rbp + 1], 0
	je	.label_269
.label_272:
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rdi*8], rbp
	lea	rdi, [rdi]
	jmp	.label_275
	nop	
.label_269:
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rdi*8], 0
.label_275:
	lea	ebp, [rdx + rdi]
	mov	dword ptr [dword ptr [rip + optind]],  ebp
	inc	rdi
	cmp	rdi, rax
	nop	
	jl	.label_280
	nop	
	jmp	.label_257
.label_234:
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	mov	qword ptr [rcx], 0
.label_242:
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsp, rsp
	cmp	ecx, ebp
	mov	rbp, rbp
	jge	.label_285
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	nop	
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	call	freopen_safer
	nop	
	test	rax, rax
	je	.label_289
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	inc	ecx
	mov	dword ptr [dword ptr [rip + optind]],  ecx
.label_285:
	mov	rsp, rsp
	cmp	ecx, ebp
	nop	
	jl	.label_292
.label_257:
	cmp	dword ptr [dword ptr [rip + output_format]],  0
	nop	
	jne	.label_295
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	inc	eax
	mov	dword ptr [dword ptr [rip + output_format]],  eax
.label_295:
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_297
	lea	rsi, [rsi]
	xor	ebx, ebx
	call	__ctype_toupper_loc
	nop	dword ptr [rax]
.label_304:
	mov	rcx, qword ptr [rax]
	mov	rsp, rsp
	mov	cl, byte ptr [rcx + rbx*4]
	mov	byte ptr [byte ptr [rbx + folded_chars]],  cl
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	cl, byte ptr [rcx + rbx*4 + 4]
	mov	byte ptr [byte ptr [rbx + label_301]],  cl
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rcx + rbx*4 + 8]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rbx + label_302]],  cl
	nop	
	mov	rcx, qword ptr [rax]
	mov	cl, byte ptr [rcx + rbx*4 + 0xc]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rbx + label_303]],  cl
	lea	rsi, [rsi]
	add	rbx, 4
	mov	rbp, rbp
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jne	.label_304
.label_297:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + context_regex]]
	test	rax, rax
	je	.label_316
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	jne	.label_319
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + context_regex]],  0
	jmp	.label_322
.label_316:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	al, 1
	nop	
	jne	.label_49
	nop	
	mov	al,  byte ptr [byte ptr [rip + input_reference]]
	and	al, 1
	lea	rdi, [rdi]
	je	.label_327
.label_49:
	nop	
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.65
	jmp	.label_319
.label_327:
	mov	qword ptr [word ptr [rip + context_regex]], OFFSET FLAT:.str.64
.label_319:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:context_regex
	call	compile_regex
.label_322:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_331
	mov	edi, OFFSET FLAT:word_regex
	call	compile_regex
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + break_file]]
	lea	rsi, [rsi]
	test	rbp, rbp
	jne	.label_333
	jmp	.label_176
.label_331:
	mov	rbp,  qword ptr [word ptr [rip + break_file]]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_339
.label_333:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_343
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x2d
	jne	.label_344
	mov	rbp, rbp
	cmp	byte ptr [rbp + 1], 0
	mov	rsp, rsp
	je	.label_343
.label_344:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbp
	nop	
	call	read_file
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	jmp	.label_249
.label_343:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	nop	
	lea	rsi, [rsp + 0x10]
	call	fread_file
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	ebp, OFFSET FLAT:.str.21
.label_249:
	test	rbx, rbx
	je	.label_354
	mov	rbp, qword ptr [rsp + 0x10]
	mov	edi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x100
	call	memset
	test	rbp, rbp
	jle	.label_358
	add	rbp, rbx
	mov	rax, rbx
	nop	dword ptr [rax]
.label_363:
	nop	
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rcx + word_fastmap]],  0
	inc	rax
	cmp	rax, rbp
	mov	rsp, rsp
	jb	.label_363
.label_358:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	nop	
	jne	.label_84
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + label_356]],  0
	nop	
	mov	word ptr [word ptr [rip + label_357]],  0
.label_84:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	free
.label_176:
	mov	rdi,  qword ptr [word ptr [rip + ignore_file]]
	test	rdi, rdi
	je	.label_16
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:ignore_table
	mov	rbp, rbp
	call	digest_word_file
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + label_21]],  0
	jne	.label_16
	mov	qword ptr [word ptr [rip + ignore_file]],  0
.label_16:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + only_file]]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_47
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:only_table
	lea	rsi, [rsi]
	call	digest_word_file
	cmp	qword ptr [word ptr [rip + label_55]],  0
	lea	rdi, [rdi]
	jne	.label_47
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + only_file]],  0
.label_47:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + total_line_count]],  0
	mov	qword ptr [word ptr [rip + maximum_word_length]],  0
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	jle	.label_65
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_251:
	mov	qword ptr [rsp + 0x38], rdx
	mov	r14,  qword ptr [word ptr [rip + text_buffers]]
	mov	rbp, rbp
	mov	r12, rdx
	shl	r12, 4
	lea	r15, [r14 + r12]
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + rdx*8]
	test	rbx, rbx
	je	.label_82
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_82
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0x2d
	jne	.label_95
	cmp	byte ptr [rbx + 1], 0
	je	.label_82
.label_95:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	call	read_file
	lea	rdi, [rdi]
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	jmp	.label_104
	nop	
.label_82:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	fread_file
	nop	
	mov	qword ptr [r15], rax
	mov	ebx, OFFSET FLAT:.str.21
.label_104:
	test	rax, rax
	je	.label_110
	add	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [r14 + r12 + 8], rax
	mov	r14,  qword ptr [word ptr [rip + text_buffers]]
	nop	
	mov	rbp, qword ptr [r14 + r12]
	mov	rbx, qword ptr [r14 + r12 + 8]
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	mov	rcx, rbp
	nop	
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_114
	cmp	rbp, rbx
	mov	rcx, rbp
	nop	
	jae	.label_127
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, rbp
	nop	word ptr cs:[rax + rax]
.label_138:
	mov	rsp, rsp
	mov	rdx, rcx
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_135
	mov	rsp, rsp
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, rbx
	mov	rcx, rdx
	lea	rsi, [rsi]
	jb	.label_138
	jmp	.label_127
.label_135:
	mov	rcx, rdx
.label_127:
	mov	r13, rcx
	lea	rsi, [rsi]
	sub	r13, rbp
	lea	rsi, [rsi]
	cmp	rcx, rbx
	nop	
	jae	.label_114
	mov	r15, rcx
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rcx, r15
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax]
.label_284:
	mov	rdx, rcx
	movzx	ecx, byte ptr [rdx]
	mov	rsp, rsp
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_147
	inc	rdx
	nop	
	cmp	rdx, rbx
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rsi, [rsi]
	jb	.label_284
	jmp	.label_114
.label_147:
	mov	rcx, rdx
	nop	word ptr [rax + rax]
.label_114:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], r13
	mov	qword ptr [rsp + 0x58], rcx
	lea	rdi, [rdi]
	cmp	rbp, rbx
	mov	rsp, rsp
	jae	.label_67
	lea	rdi, [rdi]
	lea	rax, [r14 + r12 + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x50], rbp
	nop	
.label_202:
	mov	rsp, rsp
	mov	r15, rbp
	cmp	qword ptr [word ptr [rip + context_regex]],  0
	je	.label_165
	lea	rdi, [rdi]
	mov	rdx, rbx
	sub	rdx, r15
	mov	edi, OFFSET FLAT:label_360
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r9d, OFFSET FLAT:context_regs
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_165
	nop	
	test	rax, rax
	je	.label_179
	mov	rsp, rsp
	cmp	rax, -2
	mov	rsp, rsp
	je	.label_181
	mov	rax,  qword ptr [word ptr [rip + label_184]]
	mov	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	add	rbx, r15
.label_165:
	mov	qword ptr [rsp + 0x70], rbx
	nop	
.label_192:
	mov	r13, rbx
	lea	rdi, [rdi]
	cmp	r13, r15
	jbe	.label_190
	mov	rsp, rsp
	lea	rbx, [r13 - 1]
	mov	rsp, rsp
	movzx	ebp, byte ptr [r13 - 1]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	mov	rsp, rsp
	jne	.label_192
.label_190:
	mov	r12, r15
	mov	rbp, rbp
	jmp	.label_68
.label_163:
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rax], rbx
	mov	qword ptr [rdi + rsi + 8], r14
	mov	rax, r15
	mov	rbp, rbp
	sub	rax, rbx
	nop	
	mov	qword ptr [rdi + rsi + 0x10], rax
	mov	rax, r13
	lea	rdi, [rdi]
	sub	rax, rbx
	nop	
	mov	qword ptr [rdi + rsi + 0x18], rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	dword ptr [rdi + rsi + 0x28], eax
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + number_of_occurs.0]],  rdx
	nop	dword ptr [rax]
.label_68:
	mov	rbp, rbp
	mov	rbx, r12
	jmp	.label_209
	nop	dword ptr [rax + rax]
.label_237:
	mov	rsp, rsp
	inc	rbx
.label_209:
	nop	
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_215
	mov	rdx, r13
	lea	rdi, [rdi]
	sub	rdx, rbx
	nop	
	mov	edi, OFFSET FLAT:label_177
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:word_regs
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	r8, rdx
	call	rpl_re_search
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_88
	cmp	rax, -2
	je	.label_221
	mov	rax,  qword ptr [word ptr [rip + label_223]]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rcx,  qword ptr [word ptr [rip + label_224]]
	nop	
	mov	r12, rbx
	lea	rdi, [rdi]
	add	r12, qword ptr [rcx]
	mov	rsp, rsp
	mov	rbx, rax
	jmp	.label_117
	nop	word ptr cs:[rax + rax]
.label_233:
	mov	rbp, rbp
	inc	rbx
.label_215:
	cmp	rbx, r13
	jae	.label_231
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_233
.label_231:
	cmp	rbx, r13
	mov	rbp, rbp
	je	.label_88
	mov	r12, rbx
	jae	.label_237
	nop	
.label_140:
	movzx	eax, byte ptr [r12]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	mov	rsp, rsp
	je	.label_117
	mov	rbp, rbp
	inc	r12
	nop	
	cmp	r12, r13
	nop	
	jb	.label_140
	nop	word ptr cs:[rax + rax]
.label_117:
	mov	r14, r12
	nop	
	sub	r14, rbx
	mov	rbp, rbp
	je	.label_237
	nop	
	cmp	r14,  qword ptr [word ptr [rip + maximum_word_length]]
	jle	.label_52
	mov	qword ptr [word ptr [rip + maximum_word_length]],  r14
.label_52:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	mov	rbp, rbp
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_248
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x58]
	jmp	.label_229
	nop	word ptr cs:[rax + rax]
.label_253:
	inc	rcx
.label_229:
	mov	rbp, rbp
	cmp	rcx, rbx
	lea	rsi, [rsi]
	jae	.label_353
	movzx	eax, byte ptr [rcx]
	mov	rbp, rbp
	cmp	eax, 0xa
	jne	.label_253
	lea	rdi, [rdi]
	inc	qword ptr [word ptr [rip + total_line_count]]
	inc	rcx
	mov	qword ptr [rsp + 0x50], rcx
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rax]
	cmp	rcx, rbp
	jae	.label_255
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x50]
	nop	
.label_268:
	mov	rdx, rcx
	mov	rbp, rbp
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	nop	
	jne	.label_263
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, rbp
	mov	rcx, rdx
	jb	.label_268
	jmp	.label_255
.label_263:
	mov	rcx, rdx
.label_255:
	mov	rax, rcx
	lea	rdi, [rdi]
	sub	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], rax
	mov	rsp, rsp
	jmp	.label_229
.label_353:
	mov	qword ptr [rsp + 0x58], rcx
	cmp	rcx, rbx
	mov	rsp, rsp
	ja	.label_68
.label_248:
	cmp	qword ptr [word ptr [rip + ignore_file]],  0
	je	.label_23
	mov	rcx,  qword ptr [word ptr [rip + label_21]]
	test	rcx, rcx
	jle	.label_23
	mov	r8,  qword ptr [word ptr [rip + ignore_table]]
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	mov	r10d, 0
	mov	r11d, 0
	mov	rbp, rbp
	jne	.label_86
.label_320:
	mov	r9, rcx
	dec	r9
	nop	word ptr cs:[rax + rax]
.label_313:
	lea	rsi, [rsi]
	lea	rax, [r10 + r9]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	shr	rcx, 0x3f
	mov	rbp, rbp
	add	rcx, rax
	mov	rsp, rsp
	sar	rcx, 1
	nop	
	mov	rax, rcx
	shl	rax, 4
	nop	
	mov	r11, qword ptr [r8 + rax + 8]
	mov	rbp, rbp
	cmp	r14, r11
	lea	rsi, [rsi]
	mov	rdi, r11
	cmovle	rdi, r14
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_162
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r8 + rax]
	nop	
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_306:
	movzx	eax, byte ptr [rbx + rdx]
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	nop	
	movzx	ebp, byte ptr [rsi + rdx]
	movzx	ebp,  byte ptr [byte ptr [rbp + folded_chars]]
	lea	rsi, [rsi]
	sub	eax, ebp
	lea	rdi, [rdi]
	jne	.label_299
	inc	rdx
	lea	rsi, [rsi]
	cmp	rdx, rdi
	lea	rsi, [rsi]
	jl	.label_306
.label_162:
	nop	
	cmp	r14, r11
	nop	
	setg	al
	lea	rsi, [rsi]
	jl	.label_308
	movzx	eax, al
	jmp	.label_310
	nop	word ptr cs:[rax + rax]
.label_299:
	js	.label_308
.label_310:
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jle	.label_68
	cmp	rcx, r9
	lea	rdi, [rdi]
	lea	r10, [rcx + 1]
	jl	.label_313
	jmp	.label_23
	nop	word ptr cs:[rax + rax]
.label_308:
	cmp	r10, rcx
	nop	
	jl	.label_320
	jmp	.label_23
	nop	
.label_86:
	mov	r9, rcx
	dec	r9
	nop	word ptr cs:[rax + rax]
.label_226:
	lea	rdi, [rdi]
	lea	rax, [r11 + r9]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	shl	rdx, 4
	mov	r10, qword ptr [r8 + rdx + 8]
	cmp	r14, r10
	lea	rsi, [rsi]
	mov	rax, r10
	cmovle	rax, r14
	test	rax, rax
	jle	.label_325
	nop	
	mov	rdx, qword ptr [r8 + rdx]
	nop	
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_336:
	movzx	edi, byte ptr [rbx + rsi]
	movzx	ebp, byte ptr [rdx + rsi]
	mov	rsp, rsp
	sub	edi, ebp
	jne	.label_157
	inc	rsi
	cmp	rsi, rax
	jl	.label_336
.label_325:
	lea	rsi, [rsi]
	cmp	r14, r10
	mov	rbp, rbp
	setg	al
	jl	.label_12
	mov	rbp, rbp
	movzx	edi, al
	mov	rsp, rsp
	jmp	.label_195
.label_157:
	mov	rbp, rbp
	js	.label_12
.label_195:
	test	edi, edi
	mov	rsp, rsp
	jle	.label_68
	lea	rsi, [rsi]
	cmp	rcx, r9
	lea	r11, [rcx + 1]
	lea	rdi, [rdi]
	jl	.label_226
	jmp	.label_23
	nop	word ptr cs:[rax + rax]
.label_12:
	cmp	r11, rcx
	mov	rbp, rbp
	jl	.label_86
.label_23:
	nop	
	cmp	qword ptr [word ptr [rip + only_file]],  0
	je	.label_61
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + label_55]]
	nop	
	test	rcx, rcx
	jle	.label_68
	nop	
	mov	r8,  qword ptr [word ptr [rip + only_table]]
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	r10d, 0
	lea	rsi, [rsi]
	mov	r11d, 0
	jne	.label_109
.label_69:
	lea	rdi, [rdi]
	mov	r9, rcx
	lea	rsi, [rsi]
	dec	r9
	nop	dword ptr [rax + rax]
.label_64:
	lea	rdi, [rdi]
	lea	rax, [r10 + r9]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	shl	rax, 4
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + rax + 8]
	cmp	r14, r11
	mov	rsp, rsp
	mov	rdi, r11
	cmovle	rdi, r14
	mov	rbp, rbp
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_364
	mov	rsi, qword ptr [r8 + rax]
	xor	edx, edx
	nop	dword ptr [rax]
.label_46:
	movzx	eax, byte ptr [rbx + rdx]
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	movzx	ebp, byte ptr [rsi + rdx]
	movzx	ebp,  byte ptr [byte ptr [rbp + folded_chars]]
	nop	
	sub	eax, ebp
	jne	.label_97
	nop	
	inc	rdx
	cmp	rdx, rdi
	lea	rdi, [rdi]
	jl	.label_46
.label_364:
	lea	rsi, [rsi]
	cmp	r14, r11
	mov	rbp, rbp
	setg	al
	mov	rbp, rbp
	jl	.label_50
	mov	rbp, rbp
	movzx	eax, al
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_97:
	js	.label_50
.label_53:
	test	eax, eax
	jle	.label_61
	cmp	rcx, r9
	lea	r10, [rcx + 1]
	lea	rdi, [rdi]
	jl	.label_64
	jmp	.label_68
	nop	
.label_50:
	mov	rsp, rsp
	cmp	r10, rcx
	jl	.label_69
	lea	rdi, [rdi]
	jmp	.label_68
	nop	word ptr cs:[rax + rax]
.label_109:
	mov	rbp, rbp
	mov	r9, rcx
	dec	r9
	nop	dword ptr [rax]
.label_105:
	lea	rax, [r11 + r9]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rdx, rcx
	lea	rdi, [rdi]
	shl	rdx, 4
	mov	r10, qword ptr [r8 + rdx + 8]
	mov	rsp, rsp
	cmp	r14, r10
	nop	
	mov	rax, r10
	cmovle	rax, r14
	test	rax, rax
	mov	rsp, rsp
	jle	.label_78
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r8 + rdx]
	xor	esi, esi
	nop	
.label_94:
	movzx	edi, byte ptr [rbx + rsi]
	movzx	ebp, byte ptr [rdx + rsi]
	sub	edi, ebp
	jne	.label_111
	inc	rsi
	nop	
	cmp	rsi, rax
	lea	rdi, [rdi]
	jl	.label_94
.label_78:
	cmp	r14, r10
	setg	al
	jl	.label_99
	lea	rsi, [rsi]
	movzx	edi, al
	mov	rbp, rbp
	jmp	.label_139
	nop	dword ptr [rax + rax]
.label_111:
	mov	rbp, rbp
	js	.label_99
.label_139:
	mov	rsp, rsp
	test	edi, edi
	jle	.label_61
	cmp	rcx, r9
	lea	r11, [rcx + 1]
	jl	.label_105
	jmp	.label_68
	nop	
.label_99:
	mov	rsp, rsp
	cmp	r11, rcx
	jl	.label_109
	jmp	.label_68
.label_61:
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + number_of_occurs.0]]
	cmp	rdx,  qword ptr [word ptr [rip + occurs_alloc]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x58]
	jne	.label_73
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_118
	movabs	rax, 0x1c71c71c71c71c7
	cmp	rdx, rax
	lea	rsi, [rsi]
	jae	.label_120
	mov	rbp, rcx
	mov	rax, rdx
	shr	rax, 1
	lea	rdx, [rdx + rax + 1]
	lea	rdi, [rdi]
	jmp	.label_125
.label_73:
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	lea	rdi, [rdi]
	jmp	.label_131
.label_118:
	lea	rdi, [rdi]
	mov	rbp, rcx
	test	rdx, rdx
	mov	eax, 2
	cmove	rdx, rax
	lea	rsi, [rsi]
	movabs	rax, 0x2aaaaaaaaaaaaab
	mov	rbp, rbp
	cmp	rdx, rax
	mov	rsp, rsp
	jae	.label_133
.label_125:
	mov	qword ptr [word ptr [rip + occurs_alloc]],  rdx
	lea	rdi, [rdi]
	shl	rdx, 4
	lea	rsi, [rdx + rdx*2]
	lea	rsi, [rsi]
	call	xrealloc
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + occurs_table.0]],  rdi
	mov	rdx,  qword ptr [word ptr [rip + number_of_occurs.0]]
	mov	rcx, rbp
.label_131:
	lea	rsi, [rdx + rdx*2]
	lea	rsi, [rsi]
	shl	rsi, 4
	lea	rsi, [rsi]
	lea	rax, [rdi + rsi]
	nop	
	mov	qword ptr [rsp + 0x30], rax
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	nop	
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	je	.label_148
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_155
	mov	rbp, rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x50]
	sub	rax, rbx
	mov	rbp, rbp
	mov	qword ptr [rdi + rsi + 0x20], rax
	mov	al, 1
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	cmp	rdx,  qword ptr [word ptr [rip + reference_max_width]]
	mov	rsp, rsp
	jle	.label_161
	mov	qword ptr [word ptr [rip + reference_max_width]],  rdx
.label_161:
	mov	rsp, rsp
	mov	rdx, rbp
	jmp	.label_168
	nop	dword ptr [rax + rax]
.label_178:
	mov	rsp, rsp
	inc	rcx
.label_148:
	cmp	rcx, rbx
	jae	.label_175
.label_203:
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0xa
	jne	.label_178
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rdx
	inc	qword ptr [word ptr [rip + total_line_count]]
	inc	rcx
	mov	qword ptr [rsp + 0x50], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rcx, rax
	jae	.label_180
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rdi
	mov	qword ptr [rsp + 0x40], rsi
	nop	
	mov	rbp, rax
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_198:
	mov	rdx, rcx
	movzx	ecx, byte ptr [rdx]
	nop	
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_210
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, rbp
	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rdi, [rdi]
	jb	.label_198
	lea	rdi, [rdi]
	jmp	.label_180
.label_210:
	mov	rcx, rdx
.label_180:
	nop	
	cmp	rcx, rbx
	mov	rdx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jb	.label_203
.label_175:
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	nop	
	mov	qword ptr [rdi + rsi + 0x20], rax
	mov	al,  byte ptr [byte ptr [rip + input_reference]]
.label_168:
	test	al, 1
	je	.label_155
	mov	qword ptr [rsp + 0x58], rcx
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	rax, r15
	mov	rsp, rsp
	jne	.label_163
	cmp	r15, r13
	lea	rdi, [rdi]
	mov	rbp, r15
	mov	rsp, rsp
	jae	.label_218
	mov	qword ptr [rsp + 0x60], rdx
	mov	rbp, rdi
	nop	
	mov	qword ptr [rsp + 0x40], rsi
	call	__ctype_b_loc
	nop	
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rbp, r15
	nop	word ptr cs:[rax + rax]
.label_230:
	movzx	ecx, byte ptr [rbp]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_218
	nop	
	inc	rbp
	cmp	rbp, r13
	mov	rsp, rsp
	jb	.label_230
.label_218:
	cmp	rbp, r13
	jae	.label_232
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x48], rdi
	mov	qword ptr [rsp + 0x40], rsi
	call	__ctype_b_loc
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x60]
	nop	
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_151:
	movzx	ecx, byte ptr [rbp]
	mov	rbp, rbp
	test	byte ptr [rax + rcx*2 + 1], 0x20
	lea	rsi, [rsi]
	je	.label_232
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, r13
	jb	.label_151
.label_232:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], r15
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_163
.label_155:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	jmp	.label_163
	nop	
.label_88:
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rax]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	rbp, rbx
	jb	.label_202
.label_67:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + total_line_count]]
	inc	rax
	mov	qword ptr [word ptr [rip + total_line_count]],  rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	cmp	rdx, rax
	mov	rsp, rsp
	jl	.label_251
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + number_of_occurs.0]]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_65
	mov	rdi,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	edx, 0x30
	mov	ecx, OFFSET FLAT:compare_occurs
	call	qsort
.label_65:
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_266
	mov	qword ptr [word ptr [rip + reference_max_width]],  0
	mov	rbp, rbp
	xor	edi, edi
	nop	
	cmp	dword ptr [dword ptr [rip + number_input_files]],  0
	nop	
	je	.label_270
	lea	r14, [rsp + 0x10]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_214:
	mov	rax,  qword ptr [word ptr [rip + file_line_count]]
	mov	r8, qword ptr [rax + rbp*8]
	inc	r8
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_278
	lea	rsi, [rsi]
	sub	r8, qword ptr [rax + rbp*8 - 8]
.label_278:
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, 0x15
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.69
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	call	__sprintf_chk
	mov	rsp, rsp
	movsxd	rbx, eax
	mov	rax,  qword ptr [word ptr [rip + input_file_name]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_288
	call	strlen
	mov	rbp, rbp
	add	rbx, rax
.label_288:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + reference_max_width]]
	mov	rsp, rsp
	cmp	rbx, rdi
	lea	rsi, [rsi]
	jle	.label_171
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + reference_max_width]],  rbx
	mov	rbp, rbp
	mov	rdi, rbx
.label_171:
	inc	rbp
	movsxd	rax,  dword ptr [dword ptr [rip + number_input_files]]
	cmp	rbp, rax
	nop	
	jb	.label_214
.label_270:
	mov	rsp, rsp
	lea	rax, [rdi + 1]
	mov	qword ptr [word ptr [rip + reference_max_width]],  rax
	lea	rsi, [rsi]
	add	rdi, 2
	mov	rsp, rsp
	call	xmalloc
	nop	
	mov	qword ptr [word ptr [rip + reference]],  rax
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_298
.label_266:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_274
.label_298:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	nop	
	and	al, 1
	nop	
	je	.label_307
.label_274:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	mov	rsp, rsp
	jmp	.label_309
.label_307:
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + line_width]]
	mov	rbp, rbp
	add	rcx,  qword ptr [word ptr [rip + reference_max_width]]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + line_width]],  rax
.label_309:
	nop	
	test	rax, rax
	jns	.label_314
	mov	qword ptr [word ptr [rip + line_width]],  0
	mov	rbp, rbp
	xor	eax, eax
.label_314:
	mov	rbp, rbp
	mov	rbx, rax
	shr	rbx, 0x3f
	nop	
	add	rbx, rax
	nop	
	sar	rbx, 1
	mov	qword ptr [word ptr [rip + half_line_width]],  rbx
	mov	rbp, rbx
	mov	rsp, rsp
	sub	rbp,  qword ptr [word ptr [rip + gap_size]]
	mov	qword ptr [word ptr [rip + before_max_width]],  rbp
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rbx
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	nop	
	test	rdi, rdi
	je	.label_92
	mov	rsp, rsp
	cmp	byte ptr [rdi], 0
	lea	rsi, [rsi]
	je	.label_92
	nop	
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + truncation_string_length]],  rax
	jmp	.label_330
.label_92:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + truncation_string]],  0
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
.label_330:
	nop	
	mov	cl,  byte ptr [byte ptr [rip + gnu_extensions]]
	and	cl, 1
	add	rax, rax
	mov	rbp, rbp
	test	cl, cl
	mov	rbp, rbp
	je	.label_335
	nop	
	or	rax, 1
	lea	rsi, [rsi]
	jmp	.label_340
.label_335:
	xor	ecx, ecx
	sub	rbp, rax
	cmovns	rcx, rbp
	mov	qword ptr [word ptr [rip + before_max_width]],  rcx
.label_340:
	sub	rbx, rax
	mov	qword ptr [word ptr [rip + keyafter_max_width]],  rbx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rax]
	xor	ecx, ecx
	lea	rdi, [rdi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_345]]
	pand	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	nop	word ptr cs:[rax + rax]
.label_262:
	movdqu	xmm1, xmmword ptr [rax + rcx*2]
	psrlw	xmm1, 0xd
	nop	
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	mov	rsp, rsp
	movq	qword ptr [word ptr [rcx + edited_flag]],  xmm1
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x10]
	psrlw	xmm1, 0xd
	lea	rdi, [rdi]
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	lea	rdi, [rdi]
	movq	qword ptr [word ptr [rcx + label_259]],  xmm1
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x20]
	psrlw	xmm1, 0xd
	mov	rsp, rsp
	pand	xmm1, xmm0
	mov	rbp, rbp
	packuswb	xmm1, xmm1
	lea	rdi, [rdi]
	movq	qword ptr [word ptr [rcx + label_260]],  xmm1
	lea	rdi, [rdi]
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x30]
	psrlw	xmm1, 0xd
	lea	rsi, [rsi]
	pand	xmm1, xmm0
	lea	rsi, [rsi]
	packuswb	xmm1, xmm1
	movq	qword ptr [word ptr [rcx + label_261]],  xmm1
	mov	rbp, rbp
	add	rcx, 0x20
	cmp	rcx, 0x100
	jne	.label_262
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + label_14]],  1
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_15
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	jne	.label_19
	nop	
	mov	byte ptr [byte ptr [rip + label_24]],  1
	mov	byte ptr [byte ptr [rip + label_25]],  1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + label_26]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + label_27]],  1
	nop	
	mov	dword ptr [dword ptr [rip + label_28]],  0x1010101
	mov	rsp, rsp
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_29]]
	nop	
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	pcmpeqb	xmm2, xmm0
	lea	rsi, [rsi]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_30]]
	pandn	xmm2, xmm1
	lea	rsi, [rsi]
	movdqa	xmmword ptr [word ptr [rip + label_31]],  xmm2
	nop	
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_32]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	mov	rbp, rbp
	movdqa	xmmword ptr [word ptr [rip + label_33]],  xmm2
	mov	rbp, rbp
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_34]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_35]],  xmm2
	mov	rbp, rbp
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_36]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_37]],  xmm2
	mov	rbp, rbp
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_38]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	lea	rsi, [rsi]
	movdqa	xmmword ptr [word ptr [rip + label_39]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_40]]
	lea	rsi, [rsi]
	pcmpeqb	xmm2, xmm0
	lea	rsi, [rsi]
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [word ptr [rip + label_41]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_42]]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	mov	rsp, rsp
	movdqa	xmmword ptr [word ptr [rip + label_43]],  xmm2
	movdqu	xmm2,  xmmword ptr [word ptr [rip + label_44]]
	lea	rsi, [rsi]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	lea	rsi, [rsi]
	movdqa	xmmword ptr [word ptr [rip + label_45]],  xmm2
	mov	rsp, rsp
	jmp	.label_19
.label_15:
	mov	byte ptr [byte ptr [rip + label_112]],  1
.label_19:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [word ptr [rip + tail]],  xmm0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	movdqu	xmmword ptr [word ptr [rip + head]],  xmm0
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	cmp	qword ptr [word ptr [rip + number_of_occurs.0]],  0
	lea	rdi, [rdi]
	jle	.label_115
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + occurs_table.0]]
	mov	ebp, 1
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_124
.label_144:
	nop	
	mov	esi, 0xa
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_134
.label_244:
	mov	rbp, rbp
	mov	esi, 0x7b
	nop	
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_211
.label_351:
	nop	
	mov	esi, 0x22
	nop	
	call	__overflow
	nop	
	jmp	.label_141
.label_368:
	mov	esi, 0x22
	call	__overflow
	nop	
	jmp	.label_143
.label_56:
	lea	rdi, [rdi]
	mov	esi, 0x22
	lea	rsi, [rsi]
	call	__overflow
	mov	rsp, rsp
	jmp	.label_146
.label_85:
	mov	esi, 0x22
	call	__overflow
	mov	rsp, rsp
	jmp	.label_149
.label_62:
	lea	rdi, [rdi]
	mov	esi, 0x7d
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_152
.label_113:
	mov	esi, 0x22
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_48
.label_54:
	mov	rbp, rbp
	mov	esi, 0x7b
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_326
.label_72:
	mov	rbp, rbp
	mov	esi, 0x7d
	call	__overflow
	mov	rsp, rsp
	jmp	.label_48
.label_328:
	mov	esi, 0x3a
	lea	rsi, [rsi]
	call	__overflow
	mov	rbp, rbp
	jmp	.label_166
	nop	word ptr cs:[rax + rax]
.label_124:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + keyafter]],  rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	lea	rbx, [rax + rcx]
	mov	qword ptr [word ptr [rip + label_20]],  rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r14 + 0x10]
	add	rdx, rax
	nop	
	mov	qword ptr [rsp + 0x58], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	lea	r15, [rax + rdx]
	movsxd	rsi, dword ptr [r14 + 0x28]
	mov	rdi,  qword ptr [word ptr [rip + text_buffers]]
	shl	rsi, 4
	nop	
	mov	r13, qword ptr [rdi + rsi]
	mov	r12, qword ptr [rdi + rsi + 8]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jge	.label_170
	nop	dword ptr [rax]
.label_227:
	mov	rcx,  qword ptr [word ptr [rip + keyafter_max_width]]
	mov	rbp, rbp
	add	rcx, rax
	cmp	rbx, rcx
	mov	rbp, rbp
	ja	.label_170
	mov	qword ptr [word ptr [rip + label_20]],  rbx
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_194
	nop	
	mov	rdx, r15
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_177
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	xor	r8d, r8d
	mov	rbp, rbp
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	mov	rsp, rsp
	je	.label_247
	cmp	rax, -1
	cmove	rax, rbp
	add	rbx, rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	mov	rsp, rsp
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
.label_194:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbx]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	je	.label_321
	cmp	rbx, r15
	jae	.label_207
	lea	rsi, [rsi]
	inc	rbx
	mov	rcx, rbx
.label_220:
	mov	rsp, rsp
	mov	rbx, rcx
	lea	rdi, [rdi]
	cmp	rbx, r15
	jae	.label_207
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [byte ptr [rdx + word_fastmap]],  0
	lea	rdi, [rdi]
	jne	.label_220
	lea	rsi, [rsi]
	jmp	.label_207
.label_321:
	inc	rbx
	nop	
.label_207:
	cmp	rbx, r15
	lea	rsi, [rsi]
	jb	.label_227
.label_170:
	mov	rcx,  qword ptr [word ptr [rip + keyafter_max_width]]
	nop	
	add	rcx, rax
	lea	rdi, [rdi]
	cmp	rbx, rcx
	nop	
	jbe	.label_341
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + label_20]]
	lea	rsi, [rsi]
	jmp	.label_185
	nop	
.label_341:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_20]],  rbx
.label_185:
	cmp	rbx, r15
	mov	rbp, rbp
	sbb	cl, cl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	dl
	mov	rsp, rsp
	and	dl, cl
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  dl
	mov	rbp, rbp
	cmp	rbx, rax
	jbe	.label_236
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rcx]
	dec	rbx
	nop	
.label_332:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbx]
	lea	rdi, [rdi]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_236
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_20]],  rbx
	cmp	rbx, rax
	lea	rbx, [rbx - 1]
	ja	.label_332
.label_236:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	lea	rsi, [rsi]
	neg	rcx
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + half_line_width]]
	add	rdx,  qword ptr [word ptr [rip + maximum_word_length]]
	cmp	rdx, rcx
	jge	.label_245
	mov	rsp, rsp
	mov	rbx, rax
	sub	rbx, rdx
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_250
	mov	edi, OFFSET FLAT:label_177
	mov	rbp, rbp
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	mov	rsp, rsp
	call	rpl_re_match
	lea	rsi, [rsi]
	cmp	rax, -2
	nop	
	je	.label_247
	cmp	rax, -1
	lea	rsi, [rsi]
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbx, rcx
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	jmp	.label_87
	nop	dword ptr [rax + rax]
.label_245:
	add	rbx, rax
.label_87:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + before]],  rbx
	nop	
	mov	qword ptr [word ptr [rip + label_187]],  rax
	mov	rsp, rsp
	cmp	rax, rbx
	jbe	.label_264
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rcx]
	lea	rdx, [rax - 1]
	nop	dword ptr [rax]
.label_277:
	lea	rdi, [rdi]
	mov	rcx, rdx
	movzx	edx, byte ptr [rcx]
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_174
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + label_187]],  rcx
	lea	rsi, [rsi]
	lea	rdx, [rcx - 1]
	cmp	rcx, rbx
	nop	
	mov	rax, rcx
	lea	rdi, [rdi]
	ja	.label_277
	nop	
	mov	qword ptr [rsp + 8], r14
	inc	rdx
	mov	rax, rcx
	jmp	.label_281
	nop	
.label_264:
	mov	qword ptr [rsp + 8], r14
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	.label_281
.label_174:
	mov	qword ptr [rsp + 8], r14
	lea	rsi, [rsi]
	inc	rcx
	nop	
	mov	rdx, rcx
.label_281:
	mov	r14,  qword ptr [word ptr [rip + before_max_width]]
	lea	rcx, [rbx + r14]
	cmp	rcx, rdx
	mov	rsi, rbx
	jae	.label_287
	nop	word ptr cs:[rax + rax]
.label_317:
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_290
	sub	rdx, rsi
	mov	edi, OFFSET FLAT:label_177
	lea	rdi, [rdi]
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsi]
	call	rpl_re_match
	cmp	rax, -2
	je	.label_293
	mov	rbp, rbp
	cmp	rax, -1
	nop	
	mov	esi, 1
	cmovne	rsi, rax
	mov	rsp, rsp
	add	rsi,  qword ptr [word ptr [rip + before]]
	mov	qword ptr [word ptr [rip + before]],  rsi
	mov	rbp, rbp
	mov	r14,  qword ptr [word ptr [rip + before_max_width]]
	mov	rax,  qword ptr [word ptr [rip + label_187]]
	nop	
	mov	rdx, rax
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
.label_290:
	movzx	ecx, byte ptr [rsi]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	je	.label_216
	lea	rdi, [rdi]
	cmp	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_213
	inc	rsi
	mov	rbp, rbp
	mov	rcx, rsi
.label_311:
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + before]],  rsi
	cmp	rsi, rdx
	jae	.label_213
	nop	
	movzx	edi, byte ptr [rsi]
	lea	rcx, [rsi + 1]
	cmp	byte ptr [byte ptr [rdi + word_fastmap]],  0
	mov	rsp, rsp
	jne	.label_311
	lea	rdi, [rdi]
	jmp	.label_213
.label_216:
	inc	rsi
	mov	qword ptr [word ptr [rip + before]],  rsi
	nop	dword ptr [rax + rax]
.label_213:
	lea	rcx, [rsi + r14]
	cmp	rcx, rdx
	jb	.label_317
.label_287:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	mov	rdx, rsi
	mov	rsp, rsp
	je	.label_318
.label_324:
	mov	rcx, rdx
	lea	rdi, [rdi]
	cmp	rcx, r13
	jbe	.label_323
	lea	rdx, [rcx - 1]
	mov	rbp, rbp
	movzx	edi, byte ptr [rcx - 1]
	mov	rbp, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbp]
	lea	rdi, [rdi]
	test	byte ptr [rbp + rdi*2 + 1], 0x20
	jne	.label_324
.label_323:
	nop	
	cmp	qword ptr [rsp + 0x58], rcx
	mov	rsp, rsp
	setb	cl
	mov	rbp, rbp
	jmp	.label_100
	nop	dword ptr [rax]
.label_318:
	lea	rdi, [rdi]
	xor	ecx, ecx
.label_100:
	mov	byte ptr [byte ptr [rip + before_truncation]],  cl
	mov	rsp, rsp
	cmp	rsi, r12
	jae	.label_128
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rcx]
	nop	dword ptr [rax + rax]
.label_337:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	mov	rsp, rsp
	je	.label_128
	inc	rsi
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + before]],  rsi
	mov	rsp, rsp
	cmp	rsi, r12
	mov	rsp, rsp
	jb	.label_337
.label_128:
	mov	rsp, rsp
	sub	r14, rax
	add	r14, rsi
	sub	r14,  qword ptr [word ptr [rip + gap_size]]
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	jle	.label_342
	mov	rax,  qword ptr [word ptr [rip + label_20]]
	mov	qword ptr [word ptr [rip + tail]],  rax
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rdi, [rdi]
	jae	.label_228
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	nop	dword ptr [rax]
.label_246:
	movzx	edx, byte ptr [rax]
	mov	rsp, rsp
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_228
	inc	rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + tail]],  rax
	lea	rdi, [rdi]
	cmp	rax, r12
	jb	.label_246
.label_228:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + label_70]],  rax
	mov	rbp, rax
	cmp	rax, r15
	jae	.label_355
	nop	dword ptr [rax + rax]
.label_63:
	mov	qword ptr [word ptr [rip + label_70]],  rbp
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	je	.label_359
	mov	rdx, r15
	mov	rsp, rsp
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_177
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_367
	mov	rbp, rbp
	cmp	rax, -1
	mov	rbp, rbp
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbp, rcx
	mov	rax,  qword ptr [word ptr [rip + tail]]
	mov	rbp, rbp
	jmp	.label_9
	nop	word ptr [rax + rax]
.label_359:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	je	.label_17
	cmp	rbp, r15
	jae	.label_9
	inc	rbp
	mov	rbp, rbp
	mov	rcx, rbp
	nop	word ptr cs:[rax + rax]
.label_51:
	mov	rbp, rcx
	cmp	rbp, r15
	jae	.label_9
	movzx	edx, byte ptr [rbp]
	lea	rcx, [rbp + 1]
	cmp	byte ptr [byte ptr [rdx + word_fastmap]],  0
	jne	.label_51
	jmp	.label_9
.label_17:
	inc	rbp
	nop	
.label_9:
	lea	rcx, [rax + r14]
	cmp	rbp, r15
	jae	.label_90
	cmp	rbp, rcx
	jb	.label_63
.label_90:
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rsp, rsp
	jae	.label_66
.label_355:
	mov	r14, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_70]],  rbp
	jmp	.label_71
	nop	word ptr cs:[rax + rax]
.label_342:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [word ptr [rip + tail]],  xmm0
	mov	byte ptr [byte ptr [rip + tail_truncation]],  0
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	jmp	.label_76
.label_250:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	mov	rsp, rsp
	je	.label_276
	lea	rdi, [rdi]
	mov	rcx, rdx
	mov	rsp, rsp
	neg	rcx
	jns	.label_87
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	sub	rcx, rdx
	lea	rsi, [rsi]
	inc	rcx
	nop	dword ptr [rax + rax]
.label_101:
	mov	rbx, rcx
	cmp	rbx, rax
	jae	.label_87
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	nop	
	cmp	byte ptr [byte ptr [rdx + word_fastmap]],  0
	jne	.label_101
	lea	rdi, [rdi]
	jmp	.label_87
.label_66:
	mov	rbp,  qword ptr [word ptr [rip + label_70]]
	mov	r14, qword ptr [rsp + 8]
.label_71:
	mov	rbp, rbp
	cmp	rbp, rax
	jbe	.label_107
	mov	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	lea	rsi, [rsi]
	cmp	rbp, r15
	sbb	dl, dl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	lea	rdi, [rdi]
	setne	cl
	lea	rsi, [rsi]
	and	cl, dl
	mov	rsp, rsp
	jmp	.label_108
.label_107:
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_108:
	nop	
	mov	byte ptr [byte ptr [rip + tail_truncation]],  cl
	lea	rdi, [rdi]
	cmp	rbp, rax
	lea	rsi, [rsi]
	jbe	.label_76
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x70]
	nop	
	mov	rcx, qword ptr [rcx]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_130:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp]
	mov	rsp, rsp
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	mov	rsp, rsp
	je	.label_76
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_70]],  rbp
	cmp	rbp, rax
	lea	rbp, [rbp - 1]
	ja	.label_130
	nop	word ptr [rax + rax]
.label_76:
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + keyafter_max_width]]
	sub	rbp,  qword ptr [word ptr [rip + label_20]]
	mov	rsp, rsp
	add	rbp,  qword ptr [word ptr [rip + keyafter]]
	lea	rsi, [rsi]
	sub	rbp,  qword ptr [word ptr [rip + gap_size]]
	test	rbp, rbp
	lea	rdi, [rdi]
	jle	.label_196
	mov	rdx,  qword ptr [word ptr [rip + before]]
	mov	qword ptr [word ptr [rip + label_81]],  rdx
	cmp	rdx, r13
	nop	
	jbe	.label_145
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rax]
	dec	rdx
	nop	word ptr cs:[rax + rax]
.label_153:
	movzx	ecx, byte ptr [rdx]
	lea	rsi, [rsi]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_150
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_81]],  rdx
	cmp	rdx, r13
	mov	rbp, rbp
	lea	rdx, [rdx - 1]
	mov	rsp, rsp
	ja	.label_153
.label_150:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	jmp	.label_145
	nop	
.label_235:
	inc	rbx
.label_145:
	nop	
	mov	qword ptr [word ptr [rip + head]],  rbx
	jmp	.label_159
	nop	dword ptr [rax]
.label_183:
	mov	rbp, rbp
	cmp	rax, -1
	mov	rbp, rbp
	mov	ebx, 1
	mov	rsp, rsp
	cmovne	rbx, rax
	nop	
	add	rbx,  qword ptr [word ptr [rip + head]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + head]],  rbx
	mov	rdx,  qword ptr [word ptr [rip + label_81]]
.label_159:
	lea	rsi, [rsi]
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	jae	.label_169
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	mov	rsp, rsp
	je	.label_173
	mov	rbp, rbp
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_177
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsi, rbx
	nop	
	call	rpl_re_match
	mov	rbp, rbp
	cmp	rax, -2
	jne	.label_183
	nop	
	jmp	.label_186
	nop	word ptr [rax + rax]
.label_173:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	lea	rdi, [rdi]
	je	.label_235
	lea	rsi, [rsi]
	cmp	rbx, rdx
	mov	rbp, rbp
	jae	.label_159
	inc	rbx
	nop	
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_197:
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + head]],  rbx
	mov	rsp, rsp
	cmp	rbx, rdx
	lea	rdi, [rdi]
	jae	.label_159
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	jne	.label_197
	nop	
	jmp	.label_159
	nop	word ptr cs:[rax + rax]
.label_169:
	cmp	rdx, rbx
	lea	rsi, [rsi]
	jbe	.label_204
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + before_truncation]],  0
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], rbx
	nop	
	sbb	cl, cl
	cmp	qword ptr [word ptr [rip + truncation_string]],  0
	setne	al
	mov	rsp, rsp
	and	al, cl
	lea	rsi, [rsi]
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_196:
	mov	rbp, rbp
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [word ptr [rip + head]],  xmm0
	mov	byte ptr [byte ptr [rip + head_truncation]],  0
	mov	ebp, 1
	nop	
	jmp	.label_217
	nop	word ptr cs:[rax + rax]
.label_204:
	lea	rdi, [rdi]
	xor	eax, eax
.label_206:
	mov	rsp, rsp
	mov	ebp, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + head_truncation]],  al
	cmp	rbx, rdx
	nop	
	jae	.label_217
	mov	rax, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_77:
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	mov	rsp, rsp
	je	.label_217
	inc	rbx
	mov	qword ptr [word ptr [rip + head]],  rbx
	lea	rsi, [rsi]
	cmp	rbx, rdx
	nop	
	jb	.label_77
	nop	word ptr cs:[rax + rax]
.label_217:
	movzx	eax,  byte ptr [byte ptr [rip + auto_reference]]
	nop	
	and	eax, 1
	cmp	eax, 1
	jne	.label_123
	movsxd	rax, dword ptr [r14 + 0x28]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + input_file_name]]
	mov	rsi, qword ptr [rcx + rax*8]
	test	rsi, rsi
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rsi, rcx
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	jle	.label_241
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + file_line_count]]
	mov	rbp, rbp
	sub	rbx, qword ptr [rcx + rax*8 - 8]
.label_241:
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	lea	rdi, [rdi]
	call	stpcpy
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.71
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	r8, rbx
	lea	rdi, [rdi]
	call	__sprintf_chk
	cdqe	
	add	rax, rbp
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_10]],  rax
	mov	ebp, 1
	jmp	.label_254
	nop	
.label_123:
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_254
	mov	rax,  qword ptr [word ptr [rip + keyafter]]
	add	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [word ptr [rip + reference]],  rax
	mov	qword ptr [word ptr [rip + label_10]],  rax
	cmp	rax, r15
	mov	rsp, rsp
	jae	.label_254
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rcx]
	nop	dword ptr [rax + rax]
.label_273:
	mov	rbp, rbp
	movzx	edx, byte ptr [rax]
	lea	rdi, [rdi]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	jne	.label_254
	nop	
	inc	rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_10]],  rax
	cmp	rax, r15
	jb	.label_273
	nop	word ptr cs:[rax + rax]
.label_254:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	cmp	eax, 2
	nop	
	jb	.label_205
	lea	rdi, [rdi]
	je	.label_282
	lea	rsi, [rsi]
	cmp	eax, 3
	lea	rdi, [rdi]
	jne	.label_134
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.90
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_244
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x7b
.label_211:
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + label_70]]
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.91
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + before]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_187]]
	call	print_field
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	nop	
	call	fputs_unlocked
	mov	rbp,  qword ptr [word ptr [rip + keyafter]]
	mov	rbp, rbp
	mov	r15,  qword ptr [word ptr [rip + label_20]]
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + word_regex]],  0
	nop	
	je	.label_300
	mov	rdx, r15
	lea	rdi, [rdi]
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_177
	xor	ecx, ecx
	nop	
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	mov	rsp, rsp
	cmp	rax, -2
	je	.label_186
	cmp	rax, -1
	mov	rsp, rsp
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, rbp
	jmp	.label_199
	nop	dword ptr [rax]
.label_205:
	mov	al,  byte ptr [byte ptr [rip + right_reference]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_11
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + label_10]]
	lea	rdi, [rdi]
	movzx	ebx,  byte ptr [byte ptr [rip + auto_reference]]
	mov	rsp, rsp
	call	print_field
	and	ebx, 1
	cmp	ebx, 1
	lea	rdi, [rdi]
	jne	.label_74
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_328
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3a
.label_166:
	mov	rax,  qword ptr [word ptr [rip + gap_size]]
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [rip + reference_max_width]]
	mov	rbx,  qword ptr [word ptr [rip + reference]]
	nop	
	sub	rbx,  qword ptr [word ptr [rip + label_10]]
	mov	rsp, rsp
	add	rbx, rax
	cmp	rbx, 2
	lea	rdi, [rdi]
	jl	.label_11
	jmp	.label_164
.label_282:
	mov	rdx,  qword ptr [word ptr [rip + macro_name]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.88
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_70]]
	nop	
	call	print_field
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	nop	
	je	.label_348
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_348:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_351
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_141:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.89
	nop	
	call	fputs_unlocked
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	lea	rdi, [rdi]
	je	.label_361
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_361:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_187]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_368
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x22
.label_143:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	mov	rsi,  qword ptr [word ptr [rip + label_20]]
	mov	rsp, rsp
	call	print_field
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_137
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_137:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_56
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_146:
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.89
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + head_truncation]],  0
	je	.label_240
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_240:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_81]]
	lea	rdi, [rdi]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_85
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
.label_149:
	nop	
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	jne	.label_93
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	mov	rsp, rsp
	and	eax, 1
	nop	
	cmp	eax, 1
	nop	
	jne	.label_48
.label_93:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.89
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_10]]
	lea	rsi, [rsi]
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_113
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	nop	
	jmp	.label_48
.label_74:
	mov	rax,  qword ptr [word ptr [rip + reference_max_width]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + gap_size]]
	nop	
	lea	rdi, [rdx + rax]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_10]]
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + reference]]
	nop	
	mov	rsi, rbp
	lea	rdi, [rdi]
	sub	rsi, rcx
	lea	rsi, [rsi]
	add	rsi, rdi
	lea	rsi, [rsi]
	test	rsi, rsi
	jle	.label_11
	lea	rsi, [rsi]
	add	rbp, rdx
	nop	
	lea	rbx, [rax + rbp + 1]
	mov	rsp, rsp
	sub	rbx, rcx
	mov	rbp, rbp
	jmp	.label_136
.label_18:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_142
	nop	word ptr [rax + rax]
.label_136:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_18
	nop	
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_142:
	lea	rsi, [rsi]
	dec	rbx
	cmp	rbx, 1
	jg	.label_136
	lea	rdi, [rdi]
	jmp	.label_11
.label_156:
	mov	esi, 0x20
	lea	rdi, [rdi]
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_154
	nop	
.label_164:
	mov	rbp, rbp
	dec	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_156
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_154:
	cmp	rbx, 1
	mov	rsp, rsp
	jg	.label_164
	nop	word ptr [rax + rax]
.label_11:
	mov	rdi,  qword ptr [word ptr [rip + tail]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + label_70]]
	cmp	rdi, rsi
	mov	rsp, rsp
	jae	.label_167
	call	print_field
	cmp	byte ptr [byte ptr [rip + tail_truncation]],  0
	mov	rsp, rsp
	je	.label_172
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	cl,  byte ptr [byte ptr [rip + tail_truncation]]
	jmp	.label_182
.label_167:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + half_line_width]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + gap_size]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + label_187]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + before]]
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_188
	mov	rbp,  qword ptr [word ptr [rip + truncation_string_length]]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	sub	rdi, rbp
	jmp	.label_193
.label_300:
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [byte ptr [rax + word_fastmap]],  0
	je	.label_212
	nop	
	cmp	rbp, r15
	mov	rbx, rbp
	jae	.label_199
	lea	rax, [rbp + 1]
	nop	word ptr cs:[rax + rax]
.label_208:
	mov	rbx, rax
	cmp	rbx, r15
	nop	
	jae	.label_199
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [byte ptr [rcx + word_fastmap]],  0
	jne	.label_208
	jmp	.label_199
.label_172:
	lea	rdi, [rdi]
	xor	ecx, ecx
.label_182:
	mov	rdx,  qword ptr [word ptr [rip + half_line_width]]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [rip + gap_size]]
	mov	r8,  qword ptr [word ptr [rip + label_187]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + before]]
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	xor	ebp, ebp
	sub	rbp, rax
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	mov	rbx, rbp
	mov	rbp, rbp
	jne	.label_286
	mov	rsp, rsp
	xor	ebx, ebx
.label_286:
	mov	rdi,  qword ptr [word ptr [rip + label_70]]
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + tail]]
	mov	rbp, rbp
	test	cl, cl
	mov	rsp, rsp
	mov	ecx, 0
	cmove	rbp, rcx
	lea	rsi, [rsi]
	mov	rcx, rdx
	mov	rbp, rbp
	sub	rcx, r9
	lea	rdi, [rdi]
	sub	rcx, r8
	lea	rdi, [rdi]
	add	rcx, rsi
	add	rcx, rbx
	sub	rcx, rdi
	lea	rdi, [rdi]
	add	rcx, rbp
	lea	rsi, [rsi]
	add	rcx, rax
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rsp, rsp
	jle	.label_225
	nop	
	add	rbx, rbp
	mov	rsp, rsp
	add	rbx, rdx
	add	rbx, rsi
	nop	
	lea	rbx, [rax + rbx + 1]
	mov	rbp, rbp
	sub	rbx, r9
	mov	rsp, rsp
	sub	rbx, r8
	sub	rbx, rdi
	jmp	.label_238
.label_350:
	nop	
	mov	esi, 0x20
	mov	rbp, rbp
	call	__overflow
	jmp	.label_334
	nop	
.label_238:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_350
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_334:
	dec	rbx
	cmp	rbx, 1
	nop	
	jg	.label_238
	jmp	.label_225
.label_188:
	xor	edi, edi
.label_193:
	mov	rsp, rsp
	mov	rdx, rbx
	sub	rdx, rcx
	lea	rdi, [rdi]
	sub	rdx, rax
	lea	rdi, [rdi]
	add	rdx, rsi
	lea	rdi, [rdi]
	add	rdx, rdi
	test	rdx, rdx
	lea	rdi, [rdi]
	jle	.label_225
	add	rdi, rbx
	mov	rbp, rbp
	lea	rbx, [rsi + rdi + 1]
	mov	rsp, rsp
	sub	rbx, rcx
	nop	
	sub	rbx, rax
	mov	rbp, rbp
	jmp	.label_252
.label_315:
	mov	rsp, rsp
	mov	esi, 0x20
	call	__overflow
	mov	rsp, rsp
	jmp	.label_256
	nop	dword ptr [rax]
.label_252:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_315
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_256:
	dec	rbx
	cmp	rbx, 1
	jg	.label_252
.label_225:
	cmp	byte ptr [byte ptr [rip + before_truncation]],  0
	je	.label_267
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
.label_267:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + before]]
	mov	rsi,  qword ptr [word ptr [rip + label_187]]
	call	print_field
	mov	rbx,  qword ptr [word ptr [rip + gap_size]]
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_366
	inc	rbx
	jmp	.label_279
.label_349:
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rbp, rbp
	call	__overflow
	mov	rbp, rbp
	jmp	.label_283
	nop	dword ptr [rax]
.label_279:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_349
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_283:
	dec	rbx
	cmp	rbx, 1
	jg	.label_279
.label_366:
	mov	rdi,  qword ptr [word ptr [rip + keyafter]]
	mov	rsi,  qword ptr [word ptr [rip + label_20]]
	lea	rsi, [rsi]
	call	print_field
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	lea	rsi, [rsi]
	je	.label_291
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_291:
	mov	rbp,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_81]]
	mov	rsp, rsp
	mov	rcx, rbp
	sub	rcx, rsi
	jae	.label_294
	mov	r9,  qword ptr [word ptr [rip + half_line_width]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + label_20]]
	mov	r10,  qword ptr [word ptr [rip + keyafter]]
	mov	rax,  qword ptr [word ptr [rip + truncation_string_length]]
	xor	ebx, ebx
	lea	rdi, [rdi]
	sub	rbx, rax
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	mov	rdx, rbx
	jne	.label_296
	mov	rsp, rsp
	xor	edx, edx
.label_296:
	mov	al,  byte ptr [byte ptr [rip + head_truncation]]
	test	al, al
	mov	rbp, rbp
	mov	edi, 0
	nop	
	cmove	rbx, rdi
	lea	rsi, [rsi]
	add	rcx, r9
	mov	rsp, rsp
	sub	rcx, r8
	add	rcx, r10
	lea	rsi, [rsi]
	add	rcx, rdx
	mov	rbp, rbp
	add	rcx, rbx
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_305
	lea	rsi, [rsi]
	add	rdx, rbx
	add	rdx, rbp
	add	rdx, r9
	lea	rbx, [r10 + rdx + 1]
	mov	rsp, rsp
	sub	rbx, rsi
	mov	rsp, rsp
	sub	rbx, r8
	jmp	.label_312
.label_191:
	lea	rdi, [rdi]
	mov	esi, 0x20
	nop	
	call	__overflow
	jmp	.label_362
	nop	word ptr cs:[rax + rax]
.label_312:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_191
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_362:
	dec	rbx
	cmp	rbx, 1
	jg	.label_312
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + head_truncation]]
.label_305:
	test	al, al
	lea	rsi, [rsi]
	je	.label_329
	mov	rdi,  qword ptr [word ptr [rip + truncation_string]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_329:
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_81]]
	lea	rdi, [rdi]
	call	print_field
	mov	ebp, 1
	jmp	.label_79
.label_294:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	mov	rbp, rbp
	and	al, 1
	mov	ebp, 1
	jne	.label_338
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_79
.label_338:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_79
	mov	rcx,  qword ptr [word ptr [rip + half_line_width]]
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_20]]
	mov	rdx,  qword ptr [word ptr [rip + keyafter]]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + keyafter_truncation]],  0
	je	.label_347
	mov	rdi,  qword ptr [word ptr [rip + truncation_string_length]]
	nop	
	xor	esi, esi
	mov	rsp, rsp
	sub	rsi, rdi
	lea	rsi, [rsi]
	jmp	.label_352
.label_276:
	mov	rsp, rsp
	inc	rbx
	jmp	.label_87
.label_212:
	mov	rbp, rbp
	lea	rbx, [rbp + 1]
.label_199:
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	call	print_field
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r15
	call	print_field
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.91
	call	fputs_unlocked
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + head]]
	mov	rsi,  qword ptr [word ptr [rip + label_81]]
	mov	rsp, rsp
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_62
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
.label_152:
	lea	rdi, [rdi]
	mov	ebp, 1
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_22
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_48
.label_22:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_54
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_326:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_10]]
	nop	
	call	print_field
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_72
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
	lea	rsi, [rsi]
	jmp	.label_48
.label_347:
	xor	esi, esi
.label_352:
	lea	rsi, [rsi]
	mov	rdi, rcx
	sub	rdi, rax
	nop	
	add	rdi, rdx
	add	rdi, rsi
	test	rdi, rdi
	jle	.label_79
	add	rsi, rcx
	lea	rbx, [rdx + rsi + 1]
	sub	rbx, rax
	jmp	.label_83
.label_91:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rbp, rbp
	call	__overflow
	jmp	.label_89
	nop	word ptr [rax + rax]
.label_83:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_91
	nop	
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_89:
	dec	rbx
	cmp	rbx, 1
	jg	.label_83
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	al,  byte ptr [byte ptr [rip + auto_reference]]
	and	al, 1
	jne	.label_365
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + input_reference]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_48
.label_365:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + right_reference]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_48
	mov	rbx,  qword ptr [word ptr [rip + gap_size]]
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rsp, rsp
	jle	.label_119
	nop	
	inc	rbx
	lea	rsi, [rsi]
	jmp	.label_122
.label_129:
	lea	rsi, [rsi]
	mov	esi, 0x20
	call	__overflow
	jmp	.label_126
	nop	dword ptr [rax]
.label_122:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_129
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x20
.label_126:
	dec	rbx
	cmp	rbx, 1
	mov	rsp, rsp
	jg	.label_122
.label_119:
	mov	rdi,  qword ptr [word ptr [rip + reference]]
	mov	rsi,  qword ptr [word ptr [rip + label_10]]
	call	print_field
	nop	word ptr cs:[rax + rax]
.label_48:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_144
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_134:
	add	r14, 0x30
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	inc	rax
	cmp	rax,  qword ptr [word ptr [rip + number_of_occurs.0]]
	jl	.label_124
.label_115:
	xor	eax, eax
	mov	rsp, rsp
	add	rsp, 0x78
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_339:
	mov	al,  byte ptr [byte ptr [rip + gnu_extensions]]
	lea	rdi, [rdi]
	and	al, 1
	je	.label_160
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x100
	call	memset
	mov	byte ptr [byte ptr [rip + label_356]],  0
	mov	rsp, rsp
	mov	word ptr [word ptr [rip + label_357]],  0
	jmp	.label_176
.label_160:
	xor	ebx, ebx
	mov	rbp, rbp
	call	__ctype_b_loc
	nop	
.label_60:
	nop	
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2]
	shr	ecx, 0xa
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rbx + word_fastmap]],  cl
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rcx + rbx*2 + 2]
	shr	ecx, 0xa
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [byte ptr [rbx + label_57]],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 4]
	mov	rbp, rbp
	shr	ecx, 0xa
	and	cl, 1
	nop	
	mov	byte ptr [byte ptr [rbx + label_58]],  cl
	nop	
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 6]
	shr	ecx, 0xa
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rbx + label_59]],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_60
	jmp	.label_176
.label_221:
	call	matcher_error
.label_293:
	call	matcher_error
.label_186:
	call	matcher_error
.label_367:
	lea	rdi, [rdi]
	call	matcher_error
.label_247:
	lea	rsi, [rsi]
	call	matcher_error
.label_179:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + context_regex]]
.label_265:
	call	quote
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
.label_181:
	call	matcher_error
.label_110:
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, rbx
.label_271:
	nop	
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebp
	call	error
.label_200:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	nop	
	je	.label_222
	cmp	eax, 0xffffff7e
	jne	.label_103
	xor	edi, edi
	call	usage
.label_222:
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	mov	rbp,  qword ptr [word ptr [rip + Version]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20
	call	proper_name_utf8
	mov	rbx, rax
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	xor	r9d, r9d
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	r8, rbx
	call	version_etc
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_103:
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_120:
	call	xalloc_die
.label_243:
	call	xalloc_die
.label_354:
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	nop	
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	lea	rsi, [rsi]
	call	error
.label_133:
	call	xalloc_die
.label_292:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + rax*8]
	call	quote
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_80:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15
	jmp	.label_258
.label_189:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
.label_258:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	jmp	.label_265
.label_289:
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [rbx + rax*8]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	jmp	.label_271
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405560

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	call	strlen
	nop	
	lea	rdi, [rax + 1]
	nop	
	call	xmalloc
	mov	r14, rax
	mov	rbp, rbp
	mov	al, byte ptr [rbx]
	nop	
	test	al, al
	nop	
	mov	r15, r14
	je	.label_398
	mov	rbp, rbp
	mov	r15, r14
	mov	rsp, rsp
	jmp	.label_377
.label_390:
	movsx	eax, dl
	lea	rsi, [rsi]
	mov	cl, al
	add	cl, 0x9f
	movzx	ecx, cl
	nop	
	cmp	ecx, 5
	ja	.label_389
	add	eax, -0x57
	jmp	.label_383
.label_393:
	mov	rsp, rsp
	add	rbx, 2
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_385
.label_389:
	lea	rdi, [rdi]
	add	dl, 0xbf
	lea	rdi, [rdi]
	movzx	ecx, dl
	cmp	ecx, 5
	ja	.label_388
	add	eax, -0x37
	jmp	.label_383
.label_372:
	nop	
	add	rbx, 3
	lea	rdi, [rdi]
	jmp	.label_385
.label_388:
	mov	rbp, rbp
	add	eax, -0x30
.label_383:
	movzx	esi, byte ptr [rbx + 3]
	lea	rsi, [rsi]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_396
	add	rbx, 3
	mov	rsp, rsp
	jmp	.label_370
.label_396:
	movsx	edx, sil
	mov	rsp, rsp
	shl	eax, 4
	mov	rsp, rsp
	mov	cl, dl
	mov	rsp, rsp
	add	cl, 0x9f
	movzx	ecx, cl
	cmp	ecx, 6
	jae	.label_374
	lea	rdi, [rdi]
	add	edx, -0x57
	jmp	.label_379
.label_374:
	lea	rdi, [rdi]
	add	sil, 0xbf
	lea	rsi, [rsi]
	movzx	ecx, sil
	nop	
	cmp	ecx, 6
	jae	.label_382
	lea	rsi, [rsi]
	add	edx, -0x37
	mov	rsp, rsp
	jmp	.label_379
.label_380:
	add	rbx, 4
.label_385:
	mov	rcx, rbx
	mov	rbp, rbp
	mov	byte ptr [r15], al
	mov	rsp, rsp
	jmp	.label_387
.label_382:
	add	edx, -0x30
.label_379:
	add	edx, eax
	movzx	esi, byte ptr [rbx + 4]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_394
	add	rbx, 4
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rdi, [rdi]
	jmp	.label_370
.label_394:
	movsx	eax, sil
	shl	edx, 4
	mov	cl, al
	nop	
	add	cl, 0x9f
	movzx	ecx, cl
	nop	
	cmp	ecx, 6
	nop	
	jae	.label_371
	nop	
	add	eax, -0x57
	lea	rsi, [rsi]
	jmp	.label_378
.label_371:
	mov	rbp, rbp
	add	sil, 0xbf
	movzx	ecx, sil
	mov	rsp, rsp
	cmp	ecx, 6
	nop	
	jae	.label_381
	add	eax, -0x37
	lea	rsi, [rsi]
	jmp	.label_378
.label_381:
	mov	rsp, rsp
	add	eax, -0x30
.label_378:
	add	eax, edx
	add	rbx, 5
.label_370:
	nop	
	mov	rcx, rbx
	mov	byte ptr [r15], al
	jmp	.label_387
	nop	word ptr cs:[rax + rax]
.label_377:
	lea	rcx, [rbx + 1]
	lea	rdi, [rdi]
	movzx	edx, al
	cmp	edx, 0x5c
	nop	
	jne	.label_392
	mov	dl, byte ptr [rcx]
	lea	rdi, [rdi]
	movsx	eax, dl
	cmp	eax, 0x6d
	jg	.label_391
	lea	rdi, [rdi]
	lea	esi, [rax - 0x61]
	cmp	esi, 5
	ja	.label_397
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_373]]
.label_3154:
	mov	rsp, rsp
	mov	byte ptr [r15], 7
	jmp	.label_376
	nop	dword ptr [rax + rax]
.label_392:
	mov	rsp, rsp
	mov	byte ptr [r15], al
.label_387:
	inc	r15
	jmp	.label_375
	nop	
.label_391:
	nop	
	add	eax, -0x6e
	nop	
	cmp	eax, 0xa
	ja	.label_384
	jmp	qword ptr [word ptr [+ (rax * 8) + label_386]]
.label_3158:
	mov	byte ptr [r15], 0xa
	nop	
	jmp	.label_376
.label_397:
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_375
	mov	rbp, rbp
	cmp	eax, 0x30
	jne	.label_384
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rbx + 2]
	mov	ecx, eax
	and	ecx, 0xf8
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	lea	rsi, [rsi]
	jne	.label_393
	mov	rsp, rsp
	add	eax, -0x30
	movsx	ecx, byte ptr [rbx + 3]
	lea	rdi, [rdi]
	mov	edx, ecx
	and	edx, 0xf8
	cmp	edx, 0x30
	jne	.label_372
	mov	rbp, rbp
	lea	eax, [rcx + rax*8 - 0x30]
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	and	edx, 0xf8
	lea	rdi, [rdi]
	cmp	edx, 0x30
	jne	.label_380
	lea	eax, [rcx + rax*8 - 0x30]
	lea	rdi, [rdi]
	add	rbx, 5
	jmp	.label_385
.label_3155:
	mov	byte ptr [r15], 8
	jmp	.label_376
.label_3156:
	mov	rsp, rsp
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_375
	inc	rbx
	mov	rbp, rbp
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_369:
	cmp	byte ptr [rcx + 1], 0
	lea	rdi, [rdi]
	lea	rcx, [rcx + 1]
	jne	.label_369
	nop	
	jmp	.label_375
.label_3157:
	mov	byte ptr [r15], 0xc
	lea	rdi, [rdi]
	jmp	.label_376
.label_3159:
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0xd
	mov	rbp, rbp
	jmp	.label_376
.label_3160:
	mov	rsp, rsp
	mov	byte ptr [r15], 9
	jmp	.label_376
.label_3161:
	lea	rsi, [rsi]
	mov	byte ptr [r15], 0xb
	nop	dword ptr [rax + rax]
.label_376:
	nop	
	inc	r15
	mov	rbp, rbp
	add	rbx, 2
	mov	rcx, rbx
	mov	rsp, rsp
	jmp	.label_375
.label_3162:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbx + 2]
	test	byte ptr [rdi + rdx*2 + 1], 0x10
	jne	.label_390
	lea	rdi, [rdi]
	add	rbx, 2
	lea	rdi, [rdi]
	mov	word ptr [r15], 0x785c
	lea	rdi, [rdi]
	jmp	.label_395
.label_384:
	mov	rsp, rsp
	mov	byte ptr [r15], 0x5c
	mov	al, byte ptr [rbx + 1]
	add	rbx, 2
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 1], al
.label_395:
	lea	rsi, [rsi]
	add	r15, 2
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_375:
	nop	
	mov	al, byte ptr [rcx]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	mov	rbx, rcx
	jne	.label_377
.label_398:
	mov	byte ptr [r15], 0
	mov	rax, r14
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058e0

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	nop	
	mov	r14, rsi
	mov	r15, rdi
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_401
	mov	al, byte ptr [r15]
	test	al, al
	je	.label_401
	lea	rdi, [rdi]
	movzx	eax, al
	cmp	eax, 0x2d
	jne	.label_403
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 1], 0
	lea	rsi, [rsi]
	je	.label_401
.label_403:
	lea	rsi, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	read_file
	mov	r12, rax
	mov	rbp, rbp
	jmp	.label_416
.label_401:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	call	fread_file
	mov	r12, rax
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.21
.label_416:
	mov	rsp, rsp
	test	r12, r12
	nop	
	je	.label_406
	mov	rbx, qword ptr [rsp]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	xor	esi, esi
	test	rbx, rbx
	mov	rsp, rsp
	mov	eax, 0
	jle	.label_412
	mov	rbp, rbp
	add	rbx, r12
	xor	eax, eax
	mov	rbp, rbp
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	nop	
.label_409:
	lea	rsi, [rsi]
	cmp	r12, rbx
	nop	
	mov	rbp, r12
	mov	rbp, rbp
	jae	.label_400
	nop	word ptr cs:[rax + rax]
.label_404:
	nop	
	movzx	edx, byte ptr [rbp]
	nop	
	mov	r15b, 1
	lea	rsi, [rsi]
	cmp	edx, 0xa
	je	.label_399
	inc	rbp
	cmp	rbp, rbx
	nop	
	jb	.label_404
	xor	r15d, r15d
.label_399:
	mov	r13, rbp
	nop	
	sub	r13, r12
	jbe	.label_407
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [r14 + 8]
	nop	
	jne	.label_410
	test	rdi, rdi
	nop	
	je	.label_415
	lea	rdi, [rdi]
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_417
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 1
	lea	rdi, [rdi]
	lea	rsi, [rsi + rax + 1]
	jmp	.label_402
	nop	
.label_407:
	test	r15b, r15b
	je	.label_405
	jmp	.label_413
.label_410:
	nop	
	mov	rdi, rcx
	lea	rdi, [rdi]
	jmp	.label_411
.label_415:
	test	rsi, rsi
	mov	eax, 8
	lea	rsi, [rsi]
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3b
	jne	.label_408
.label_402:
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rsi
	lea	rdi, [rdi]
	shl	rsi, 4
	nop	
	call	xrealloc
	mov	qword ptr [r14], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, rax
.label_411:
	mov	rcx, rsi
	shl	rcx, 4
	nop	
	mov	qword ptr [rdi + rcx], r12
	mov	qword ptr [rdi + rcx + 8], r13
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rsi
	nop	
	test	r15b, r15b
	mov	rsp, rsp
	mov	rcx, rdi
	je	.label_414
.label_413:
	inc	rbp
	jmp	.label_405
.label_414:
	mov	rcx, rdi
.label_405:
	mov	r12, rbp
.label_400:
	cmp	r12, rbx
	jb	.label_409
.label_412:
	lea	rdi, [rdi]
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_words
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	qsort
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
.label_417:
	nop	
	call	xalloc_die
.label_406:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	mov	rbp, rbp
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rsp, rsp
	call	error
.label_408:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b30

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r15, qword ptr [rdi]
	lea	rax, [rdi + 0x48]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rax
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:folded_chars
	mov	rsp, rsp
	cmovne	rcx, rax
	mov	qword ptr [rdi + 0x30], rcx
	lea	rbx, [rdi + 8]
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	rpl_re_compile_pattern
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_418
	mov	rdi, rbx
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	jmp	rpl_re_compile_fastmap
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	r12, rax
	lea	rdi, [rdi]
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	rcx, r14
	nop	
	mov	r8, rbx
	nop	
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c20

	.globl compare_words
	.type compare_words, @function
compare_words:
	nop
	mov	r8, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	r8, r9
	mov	rsp, rsp
	mov	rdx, r9
	mov	rsp, rsp
	cmovle	rdx, r8
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	and	al, 1
	je	.label_420
	test	rdx, rdx
	jle	.label_422
	mov	rsp, rsp
	mov	r10, qword ptr [rdi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
.label_421:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	mov	rsp, rsp
	movzx	edi, byte ptr [rsi + rcx]
	lea	rsi, [rsi]
	movzx	edi,  byte ptr [byte ptr [rdi + folded_chars]]
	sub	eax, edi
	nop	
	jne	.label_419
	inc	rcx
	cmp	rcx, rdx
	nop	
	jl	.label_421
	jmp	.label_422
.label_420:
	test	rdx, rdx
	jle	.label_422
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_423:
	movzx	eax, byte ptr [r10 + rdi]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rsi + rdi]
	sub	eax, ecx
	jne	.label_419
	inc	rdi
	cmp	rdi, rdx
	lea	rdi, [rdi]
	jl	.label_423
.label_422:
	cmp	r8, r9
	setg	al
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovge	eax, ecx
.label_419:
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ce0

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbx
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.68
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbx
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 8]
	nop	
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al,  byte ptr [byte ptr [rip + ignore_case]]
	and	al, 1
	mov	rbp, rbp
	je	.label_426
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	jle	.label_425
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_429:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax,  byte ptr [byte ptr [rax + folded_chars]]
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [r11 + rcx]
	mov	rbp, rbp
	movzx	ebx,  byte ptr [byte ptr [rbx + folded_chars]]
	mov	rsp, rsp
	sub	eax, ebx
	lea	rsi, [rsi]
	jne	.label_427
	lea	rdi, [rdi]
	inc	rcx
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jl	.label_429
	lea	rsi, [rsi]
	jmp	.label_425
.label_426:
	lea	rsi, [rsi]
	test	rdx, rdx
	lea	rdi, [rdi]
	jle	.label_425
	mov	r10, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_428:
	mov	rbp, rbp
	movzx	eax, byte ptr [r10 + rcx]
	movzx	ebx, byte ptr [r11 + rcx]
	sub	eax, ebx
	jne	.label_427
	inc	rcx
	nop	
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jl	.label_428
.label_425:
	cmp	r8, r9
	nop	
	setg	cl
	mov	rsp, rsp
	mov	eax, 0xffffffff
	jl	.label_424
	movzx	eax, cl
.label_427:
	test	eax, eax
	mov	rsp, rsp
	jne	.label_424
	nop	
	mov	rcx, qword ptr [rdi]
	nop	
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_424
	mov	rsp, rsp
	cmp	rdx, rcx
	mov	rsp, rsp
	sbb	eax, eax
	and	eax, 1
.label_424:
	nop	
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e40

	.globl print_field
	.type print_field, @function
print_field:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	r15, r14
	jae	.label_441
	mov	r12d, OFFSET FLAT:.str.77
	jmp	.label_439
.label_437:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.83
	nop	
	call	fputs_unlocked
	jmp	.label_432
.label_450:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.85
	mov	rbp, rbp
	call	fputs_unlocked
	jmp	.label_432
.label_447:
	mov	esi, 0x5c
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_440
.label_451:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.75
	call	fputs_unlocked
	mov	rbp, rbp
	jmp	.label_432
.label_444:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.74
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	jmp	.label_432
.label_452:
	mov	esi, 0x20
	nop	
	call	__overflow
	jmp	.label_432
.label_448:
	mov	rbp, rbp
	mov	esi, 0x22
	call	__overflow
	mov	rsp, rsp
	jmp	.label_433
.label_435:
	lea	rsi, [rsi]
	mov	esi, 0x22
	nop	
	call	__overflow
	jmp	.label_432
	nop	word ptr cs:[rax + rax]
.label_439:
	mov	bpl, byte ptr [r15]
	movzx	ebx, bpl
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rbx + edited_flag]],  0
	lea	rdi, [rdi]
	je	.label_440
	movsx	eax,  byte ptr [byte ptr [rbx + diacrit_diac]]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_445
	cmp	dword ptr [dword ptr [rip + output_format]],  3
	mov	rbp, rbp
	jne	.label_445
	lea	rdi, [rdi]
	dec	eax
	mov	rsp, rsp
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_432
	mov	rsp, rsp
	movsx	ecx,  byte ptr [byte ptr [rbx + diacrit_base]]
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_453]]
.label_3165:
	mov	rsp, rsp
	movzx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0x69
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.76
	lea	rsi, [rsi]
	jmp	.label_434
	nop	dword ptr [rax]
.label_445:
	cmp	ebx, 0x5b
	nop	
	jg	.label_430
	lea	eax, [rbx - 0x23]
	mov	rbp, rbp
	cmp	eax, 4
	lea	rsi, [rsi]
	jb	.label_443
	lea	rsi, [rsi]
	cmp	ebx, 0x22
	lea	rsi, [rsi]
	jne	.label_431
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_448
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_433:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_435
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x22
	mov	rbp, rbp
	jmp	.label_432
.label_430:
	cmp	ebx, 0x7a
	mov	rbp, rbp
	jg	.label_438
	mov	rbp, rbp
	cmp	ebx, 0x5c
	je	.label_446
	mov	rsp, rsp
	cmp	ebx, 0x5f
	jne	.label_431
.label_443:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_447
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_440:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_436
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	jmp	.label_432
.label_438:
	cmp	ebx, 0x7b
	je	.label_442
	nop	
	cmp	ebx, 0x7d
	jne	.label_431
.label_442:
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.86
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	nop	
	jmp	.label_432
.label_3164:
	cmp	ecx, 0x60
	jg	.label_449
	lea	rsi, [rsi]
	cmp	ecx, 0x41
	je	.label_451
	cmp	ecx, 0x4f
	mov	rsp, rsp
	jne	.label_431
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.73
	mov	rsp, rsp
	call	fputs_unlocked
	jmp	.label_432
.label_3166:
	mov	rbp, rbp
	movzx	eax, cl
	cmp	eax, 0x69
	nop	
	mov	edx, OFFSET FLAT:.str_0
	nop	
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.78
	mov	rbp, rbp
	jmp	.label_434
.label_3167:
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x69
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	jmp	.label_434
.label_3168:
	nop	
	movzx	eax, cl
	cmp	eax, 0x69
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, r12
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.80
.label_434:
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	jmp	.label_432
.label_3169:
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.81
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, ecx
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	jmp	.label_432
.label_3170:
	nop	
	cmp	ecx, 0x41
	mov	rbp, rbp
	je	.label_437
	nop	
	cmp	ecx, 0x61
	lea	rdi, [rdi]
	jne	.label_431
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.82
	call	fputs_unlocked
	mov	rsp, rsp
	jmp	.label_432
.label_3171:
	cmp	ecx, 0x4f
	je	.label_450
	mov	rbp, rbp
	cmp	ecx, 0x6f
	lea	rdi, [rdi]
	jne	.label_431
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.84
	mov	rbp, rbp
	call	fputs_unlocked
	jmp	.label_432
.label_446:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.87
	call	fputs_unlocked
	jmp	.label_432
.label_436:
	mov	rbp, rbp
	mov	esi, ebx
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_432
.label_449:
	mov	rbp, rbp
	cmp	ecx, 0x61
	mov	rbp, rbp
	je	.label_444
	mov	rsp, rsp
	cmp	ecx, 0x6f
	jne	.label_431
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.72
	lea	rdi, [rdi]
	call	fputs_unlocked
	jmp	.label_432
.label_431:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_452
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x20
	nop	word ptr cs:[rax + rax]
.label_432:
	mov	rbp, rbp
	inc	r15
	nop	
	cmp	r14, r15
	jne	.label_439
.label_441:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062e0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x4062f0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_460
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_462
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_461:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_454
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_455
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_459
	mov	rdi, rax
	mov	rsp, rsp
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_454
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_454
.label_459:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_454:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_461
	nop	
	jmp	.label_457
.label_460:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_457
.label_462:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_458:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_456
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_455
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_456
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_456:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_458
.label_457:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_455:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064f0
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_463
	mov	esi, OFFSET FLAT:.str.1_0
	nop	
	jmp	.label_464
.label_463:
	nop	
	mov	esi, OFFSET FLAT:.str_2
.label_464:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x406590

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_470
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_466:
	test	r15, r15
	mov	rbp, rbp
	je	.label_465
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_469
.label_465:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_468
	nop	dword ptr [rax]
.label_469:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_468:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_466
.label_470:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_467
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_467:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406710

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_473
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_471
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	jmp	.label_472
.label_471:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_2
.label_472:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_473:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406830
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_474
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_475:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_474
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_475
.label_474:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068c0
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
	#Procedure 0x4068d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0

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
	je	.label_479
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_476
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_476
.label_479:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_477
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_476:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_478
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
.label_477:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_478:
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
	#Procedure 0x4069e0

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	nop	
	call	fileno
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_482
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_485
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_488
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_488:
	lea	rdi, [rdi]
	mov	r15b, r12b
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 1
	mov	rbp, rbp
	call	dup2
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	setne	r12b
	jmp	.label_489
.label_482:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_480
.label_485:
	nop	
	xor	r15d, r15d
.label_489:
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_487
	nop	
	mov	edi, OFFSET FLAT:.str_4
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	nop	
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_487
	lea	rsi, [rsi]
	mov	r13b, 1
	lea	rdi, [rdi]
	jmp	.label_484
.label_487:
	nop	
	test	r12b, r12b
	je	.label_486
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_4
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_484
.label_486:
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_480
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	nop	
	cmp	eax, 2
	jne	.label_484
.label_480:
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_483
.label_484:
	xor	r14d, r14d
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_483
	mov	edi, eax
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_483:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	r15b, r15b
	nop	
	je	.label_492
	nop	
	mov	edi, 2
	call	close
.label_492:
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_481
	mov	edi, 1
	nop	
	call	close
.label_481:
	test	r13b, r13b
	je	.label_491
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	close
.label_491:
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_490
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
.label_490:
	mov	rax, r14
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406bb0

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
	je	.label_493
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
	jl	.label_495
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_495
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
	jne	.label_494
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_494:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_495:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_493:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
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
	#Procedure 0x406ca0
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	cmp	r14, rbx
	je	.label_496
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	lea	rdi, [rdi]
	je	.label_497
	mov	rbp, rbp
	mov	rbx, r14
	jmp	.label_496
.label_497:
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	nop	
	mov	rbx, r15
.label_496:
	mov	rsp, rsp
	mov	rax, rbx
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d60

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, rax
	mov	rsp, rsp
	call	trim2
	mov	qword ptr [rsp + 0x80], rax
	cmp	byte ptr [rbp], 0
	je	.label_502
	lea	r12, [rsp + 0x40]
	lea	r15, [rsp]
	nop	word ptr [rax + rax]
.label_513:
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_502
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	cmp	rax, 2
	nop	
	jb	.label_512
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x40], 0
	nop	
	mov	qword ptr [rsp + 0x44], 0
	nop	
	mov	byte ptr [rsp + 0x4c], 0
	mov	r13b, 1
	cmp	rbp, rbx
	mov	rsp, rsp
	jae	.label_510
.label_509:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	mov	rdi, rax
	shr	rdi, 0x20
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_505
	test	edi, edi
	lea	rsi, [rsi]
	je	.label_506
.label_505:
	nop	
	mov	rcx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rcx
	mov	byte ptr [rsp + 0x4c], 0
	nop	
	cmp	rcx, rbx
	mov	rsp, rsp
	jb	.label_509
	test	al, al
	je	.label_510
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_510:
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	byte ptr [rsp + 0x40], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	byte ptr [rsp], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 4], 0
	lea	rsi, [rsi]
	jmp	.label_514
	nop	dword ptr [rax]
.label_501:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x10], rax
.label_514:
	mov	byte ptr [rsp + 0xc], 0
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	nop	
	je	.label_507
	lea	rdi, [rdi]
	shr	rax, 0x20
	je	.label_515
.label_507:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	test	al, al
	je	.label_501
	lea	rdi, [rdi]
	shr	rax, 0x20
	jne	.label_501
	mov	rbp, rbp
	jmp	.label_506
	nop	dword ptr [rax + rax]
.label_512:
	mov	rsp, rsp
	mov	r13b, 1
	cmp	rbp, rbx
	nop	
	mov	r14b, 1
	lea	rdi, [rdi]
	jae	.label_499
	mov	rsp, rsp
	movzx	ebp, byte ptr [rbx - 1]
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	mov	rsp, rsp
	sete	r14b
.label_499:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	strlen
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_498
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	byte ptr [rax + rbp*2], 8
	lea	rdi, [rdi]
	sete	r13b
.label_498:
	mov	bpl, 1
	test	r14b, r13b
	lea	rdi, [rdi]
	jne	.label_504
	mov	rsp, rsp
	cmp	byte ptr [rbx], 0
	je	.label_502
	mov	rsp, rsp
	inc	rbx
	jmp	.label_508
	nop	
.label_515:
	lea	rsi, [rsi]
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	shr	rdi, 0x20
	mov	rsp, rsp
	test	edi, edi
	sete	cl
	mov	rsp, rsp
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	je	.label_500
	and	dl, cl
	mov	al, 1
	mov	rsp, rsp
	jne	.label_500
	call	iswalnum
	test	eax, eax
	sete	al
.label_500:
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_503
	nop	
	test	al, al
	mov	rsp, rsp
	jne	.label_504
.label_503:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x4c], 0
	lea	rsi, [rsi]
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	lea	rdi, [rdi]
	je	.label_511
	shr	rax, 0x20
	mov	rsp, rsp
	je	.label_502
.label_511:
	add	rbx, qword ptr [rsp + 0x58]
.label_508:
	mov	rbp, rbx
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_513
.label_502:
	xor	ebp, ebp
.label_504:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	lea	rdi, [rdi]
	mov	al, bpl
	add	rsp, 0x88
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_506:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070c0

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.1_3
	mov	rdi, r14
	call	c_strcasecmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_517
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	nop	
	mov	esi, OFFSET FLAT:.str.1_3
	nop	
	mov	rdi, r13
	mov	rdx, r14
	lea	rdi, [rdi]
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	nop	
	call	strlen
	nop	
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:.str.1_3
	mov	rdi, r13
	mov	rdx, rbp
	mov	rbp, rbp
	call	xstr_iconv
	mov	rsp, rsp
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	mov	rsp, rsp
	je	.label_520
	mov	esi, 0x3f
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_522
	nop	
	mov	rdi, r13
	nop	
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	jmp	.label_525
.label_517:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_528
.label_520:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_525
.label_522:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r13
.label_525:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 0x10]
.label_528:
	lea	rsi, [rsi]
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	mov	rbp, rbp
	test	r15, r15
	cmovne	r14, r15
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r12
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_523
	mov	rdi, rbx
	mov	rsi, r12
	mov	rbp, rbp
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_526
	mov	rsp, rsp
	test	r15, r15
	nop	
	je	.label_521
	mov	rdi, rbx
	mov	rsi, r15
	nop	
	call	mbsstr_trimmed_wordbounded
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_526
.label_521:
	test	r13, r13
	je	.label_518
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	nop	
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_518
.label_526:
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_519
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
.label_519:
	nop	
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_516
	nop	
	call	free
	mov	rsp, rsp
	jmp	.label_516
.label_523:
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_524
	lea	rdi, [rdi]
	cmp	rbp, r14
	mov	rbp, rbp
	je	.label_524
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
.label_524:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_529
	cmp	rdi, r14
	je	.label_529
	nop	
	call	free
.label_529:
	nop	
	mov	rbx, r14
	jmp	.label_516
.label_518:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	nop	
	call	strlen
	nop	
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r8, r15
	nop	
	mov	r9, r14
	lea	rdi, [rdi]
	call	__sprintf_chk
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_527
	mov	rdi, rbp
	call	free
.label_527:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_516
	lea	rsi, [rsi]
	call	free
.label_516:
	mov	rax, rbx
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4073b0
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
	#Procedure 0x407400
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
	#Procedure 0x407420
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
	#Procedure 0x407440
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
	#Procedure 0x4074b0
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
	#Procedure 0x4074d0
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
	je	.label_530
	test	rdx, rdx
	nop	
	je	.label_530
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_530:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407510
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
	#Procedure 0x4075c0

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
.label_558:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_581
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_559]]
.label_3048:
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
.label_3049:
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
	jne	.label_612
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_612
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_634:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_625
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_625:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_634
.label_612:
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
	jmp	.label_576
.label_3041:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_576
.label_3044:
	lea	rsi, [rsi]
	mov	al, 1
.label_3042:
	lea	rsi, [rsi]
	mov	dl, 1
.label_3045:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_539
	mov	rbp, rbp
	mov	cl, al
.label_539:
	mov	al, cl
.label_3043:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_546
	test	rbp, rbp
	je	.label_551
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_544
.label_546:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_544
.label_3046:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_563
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_569
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_575
.label_3047:
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
	jmp	.label_576
.label_551:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_544:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_576
.label_563:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_575
.label_569:
	nop	
	mov	r14d, 1
.label_575:
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
.label_576:
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
	jmp	.label_614
	nop	dword ptr [rax]
.label_608:
	mov	rsp, rsp
	inc	r15
.label_614:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_651
	cmp	r15, r10
	jne	.label_532
	jmp	.label_534
	nop	dword ptr [rax]
.label_651:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_537
.label_532:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_543
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_547
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_547
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
.label_547:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_579
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_580
	nop	dword ptr [rax]
.label_543:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_580
	nop	word ptr cs:[rax + rax]
.label_579:
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
	jne	.label_611
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
	je	.label_580
	jmp	.label_540
.label_611:
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
.label_580:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_642
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_646]]
.label_3200:
	test	r15, r15
	jne	.label_533
	jmp	.label_653
.label_3204:
	xor	eax, eax
	cmp	r10, -1
	je	.label_655
	test	r15, r15
	jne	.label_626
	nop	
	cmp	r10, 1
	je	.label_653
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_535
.label_3193:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_587
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_540
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_548
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_548
	cmp	r14, rbp
	jae	.label_550
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_550:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_657
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_657:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_568
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_568:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_548:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_577
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_577:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_585
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_592
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_594
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_600
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_600:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_605
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_605:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_535
.label_3194:
	mov	bl, 0x62
	nop	
	jmp	.label_616
.label_3195:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_615
.label_3196:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_616
.label_3197:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_616
.label_3198:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_615
.label_3201:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_566
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_630
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
	jae	.label_636
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_636:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_654
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_654:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_659
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_659:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_566:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_535
.label_3202:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_545
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_533
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_533
	nop	
	jmp	.label_557
.label_3203:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_561
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_565
	jmp	.label_570
.label_642:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_572
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
	jmp	.label_588
.label_655:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_597
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_597
.label_653:
	mov	dl, 1
.label_3199:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_603
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_535
.label_587:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_608
	jmp	.label_533
.label_561:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_615
.label_565:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_613
.label_615:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_621
.label_616:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_535
	jmp	.label_624
.label_572:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_628
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_628:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_643
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_623:
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
	je	.label_536
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_541
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_644
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_555
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_582:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_574
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_578
.label_574:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_582
.label_555:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_641
	mov	rbp, rbp
	xor	r13d, r13d
.label_641:
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
	je	.label_623
	jmp	.label_542
	nop	
.label_643:
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
	je	.label_619
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_541
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_536
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_631
	xor	r13d, r13d
.label_631:
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
	je	.label_643
	lea	rsi, [rsi]
	jmp	.label_542
.label_597:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_535
.label_545:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_533
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_533
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_533
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_538
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_602
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_658
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_556
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_556:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_564
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_564:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_656
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_656:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_589
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_589:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_535
.label_533:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_535:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_562
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_599
	nop	
	jmp	.label_531
	nop	dword ptr [rax + rax]
.label_562:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_531
.label_599:
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
	jne	.label_606
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_617
	nop	word ptr cs:[rax + rax]
.label_531:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_617:
	mov	bl, r12b
	je	.label_613
	jmp	.label_624
.label_606:
	mov	bl, r12b
.label_624:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_540
	cmp	r9d, 2
	jne	.label_627
	mov	al, dil
	and	al, 1
	jne	.label_627
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_633
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_633:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_640
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_640:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_647
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_647:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_627:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_652
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_652:
	mov	rbp, rbp
	inc	r14
	jmp	.label_637
.label_626:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_535
.label_585:
	xor	r13d, r13d
	jmp	.label_535
.label_592:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_535
.label_594:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_535
.label_541:
	xor	r13d, r13d
.label_619:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_542
.label_536:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_553
	lea	rax, [r11 + r15]
.label_573:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_584
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_573
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_542
.label_553:
	xor	r13d, r13d
	jmp	.label_542
.label_584:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_542
.label_644:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_542:
	mov	rbp, rbp
	mov	rbx, r10
.label_588:
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
	ja	.label_590
	test	cl, cl
	je	.label_590
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_535
.label_590:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_607
	nop	dword ptr [rax]
.label_601:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_607:
	mov	rsp, rsp
	test	cl, cl
	je	.label_618
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_620
	cmp	r14, rbp
	jae	.label_622
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_622:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_620:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_629
	nop	dword ptr [rax + rax]
.label_618:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_638
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_645
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_645
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_649
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_649:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_604
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_604:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_635
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_635:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_645:
	cmp	r14, rbp
	jae	.label_567
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_567:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_593
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_593:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_560
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_560:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_629:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_613
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_583
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_583
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_552
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_552:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_598
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_598:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_583:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_601
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_601
	nop	word ptr cs:[rax + rax]
.label_613:
	test	dil, 1
	je	.label_609
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_609
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_610
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_610:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_648
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_648:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_609:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_637:
	cmp	r14, rbp
	jae	.label_632
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_632:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_608
.label_538:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_535
.label_602:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_535
	nop	word ptr [rax + rax]
.label_534:
	nop	
	mov	rcx, r15
.label_537:
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
	je	.label_650
	mov	rsp, rsp
	or	al, dl
	je	.label_639
.label_650:
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
	je	.label_554
	mov	rsp, rsp
	or	al, dl
	jne	.label_554
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_549
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_554
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
	je	.label_558
.label_554:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_571
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_571
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_571
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_591:
	cmp	r14, rbp
	jae	.label_586
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_586:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_591
.label_571:
	cmp	r14, rbp
	jae	.label_596
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_596
.label_603:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_540
.label_578:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_540
.label_638:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_540
.label_639:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_540
.label_621:
	nop	
	mov	r9d, 2
.label_540:
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
.label_595:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_596:
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
.label_549:
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
	jmp	.label_595
.label_630:
	mov	r9d, 2
	jmp	.label_540
.label_570:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_540
.label_557:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_540
.label_658:
	mov	r9d, 5
	nop	
	jmp	.label_540
.label_581:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a60
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
	#Procedure 0x408ba0
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
	je	.label_660
	mov	qword ptr [rax], rbx
.label_660:
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
	#Procedure 0x408cf0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_661
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_665:
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
	jl	.label_665
.label_661:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_664
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_662]], OFFSET FLAT:slot0
.label_664:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_663
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_663:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408db0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x408dc0

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
	js	.label_672
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_670
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_667
.label_670:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_671
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
	jne	.label_668
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_668:
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
.label_667:
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
	ja	.label_666
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
	je	.label_669
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_669:
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
.label_666:
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
.label_672:
	lea	rdi, [rdi]
	call	abort
.label_671:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x409030
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409040
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
	#Procedure 0x409070
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
	#Procedure 0x4090a0

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
	je	.label_673
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
.label_673:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409130
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
	je	.label_674
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
.label_674:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091d0
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
	je	.label_675
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
.label_675:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409260
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
	je	.label_676
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
.label_676:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4092d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_677]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_678]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_679]]
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
	#Procedure 0x409370
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_677]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_678]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_679]]
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
	#Procedure 0x409410

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_677]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_678]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_679]]
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
	#Procedure 0x409480
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_677]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_678]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_679]]
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
	#Procedure 0x4094f0

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
	je	.label_680
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
.label_680:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4095d0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_677]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_678]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_679]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_681
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_681
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
.label_681:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409660
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_677]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_678]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_679]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_682
	test	rdx, rdx
	je	.label_682
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
.label_682:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_677]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_678]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_679]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_683
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_683
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
.label_683:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409790
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_677]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_678]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_679]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_684
	test	rsi, rsi
	je	.label_684
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
.label_684:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409830
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409840
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
	#Procedure 0x409860

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
	#Procedure 0x409880

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
	#Procedure 0x4098b0

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
	jne	.label_686
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_688
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_685
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_685
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_685
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_685
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_685
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_685
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_686
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_686
.label_688:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_685
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_685
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_685
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_685
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_685
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_685
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_687
.label_685:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_686:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_687:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_686
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_686
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409a20

	.globl fread_file
	.type fread_file, @function
fread_file:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x98
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	call	fileno
	mov	rsp, rsp
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	lea	rsi, [rsi]
	mov	ebx, 0x2000
	test	eax, eax
	mov	rbp, rbp
	js	.label_691
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	ebx, 0x2000
	mov	rsp, rsp
	cmp	eax, 0x8000
	jne	.label_691
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	ftello
	nop	
	mov	ebx, 0x2000
	test	rax, rax
	js	.label_691
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebx, 0x2000
	sub	rcx, rax
	jle	.label_691
	cmp	rcx, -1
	je	.label_696
	inc	rcx
	nop	
	mov	rbx, rcx
.label_691:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	malloc
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_690
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rbp
	nop	
	mov	r14, -1
	nop	
.label_695:
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rbx
	nop	
	sub	rbp, r13
	lea	rdi, [r12 + r13]
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rdx, rbp
	mov	rcx, r15
	call	fread
	add	r13, rax
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	jne	.label_692
	cmp	rbx, -1
	lea	rsi, [rsi]
	je	.label_693
	mov	rbp, rbp
	mov	rbp, rbx
	shr	rbp, 1
	lea	rdi, [rdi]
	mov	rax, rbp
	lea	rdi, [rdi]
	not	rax
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	cmp	rbx, rax
	cmovae	rbp, r14
	mov	rsp, rsp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbx, rbp
	nop	
	jne	.label_695
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	nop	
	jmp	.label_689
.label_692:
	call	__errno_location
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	mov	r14d, dword ptr [rbp]
	nop	
	mov	rdi, r15
	call	ferror
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_689
	lea	rsi, [rsi]
	dec	rbx
	cmp	r13, rbx
	jae	.label_694
	lea	rsi, [r13 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	mov	rbp, rbp
	cmovne	r12, rax
.label_694:
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [r12 + r13], 0
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	r13, r12
	jmp	.label_690
.label_693:
	mov	r14d, 0xc
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
.label_689:
	mov	rdi, r12
	nop	
	call	free
	mov	dword ptr [rbp], r14d
.label_697:
	xor	r13d, r13d
.label_690:
	mov	rax, r13
	mov	rbp, rbp
	add	rsp, 0x98
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_696:
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	jmp	.label_697
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c50

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_7
	call	fopen
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_698
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	mov	rbp, rbp
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_698
	test	r15, r15
	je	.label_699
	nop	
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	mov	rsp, rsp
	call	free
.label_699:
	lea	rdi, [rdi]
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_698:
	mov	rsp, rsp
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409ce0
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	nop
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rbp, rbp
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_700
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	mov	rsi, r14
	nop	
	call	fread_file
	mov	r15, rax
	call	__errno_location
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_fclose
	test	eax, eax
	je	.label_700
	test	r15, r15
	je	.label_701
	mov	rsp, rsp
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
.label_701:
	lea	rdi, [rdi]
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_700:
	mov	rax, r15
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409d80

	.globl trim2
	.type trim2, @function
trim2:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_712
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_710
	mov	rbp, rbp
	test	r14d, r14d
	je	.label_711
	nop	
	mov	qword ptr [rsp + 0x20], r12
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strlen
	nop	
	lea	rcx, [r12 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	mov	rbp, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	jle	.label_716
	mov	rsp, rsp
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_707:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_708
	mov	rbp, rbp
	shr	rdi, 0x20
	nop	
	call	iswspace
	nop	
	test	eax, eax
	nop	
	je	.label_708
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_707
.label_708:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
.label_716:
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	lea	rdx, [rax + 1]
	mov	rdi, r12
	nop	
	mov	rsi, rbp
	mov	rbp, rbp
	call	memmove
	lea	rsi, [rsi]
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_705
.label_711:
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	mov	rbp, rbp
	call	strlen
	nop	
	mov	rcx, r12
	add	rcx, rax
	nop	
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	nop	
	jle	.label_705
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_704:
	mov	rbp, rbp
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_717
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_702
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ebp, 1
	mov	rbp, rbp
	test	dil, dil
	je	.label_703
	shr	rdi, 0x20
	lea	rdi, [rdi]
	call	iswspace
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_709
	mov	rsp, rsp
	xor	ebp, ebp
	jmp	.label_703
	nop	dword ptr [rax + rax]
.label_717:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	nop	
	test	dil, dil
	je	.label_703
	shr	rdi, 0x20
	lea	rdi, [rdi]
	call	iswspace
	test	eax, eax
	je	.label_703
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	nop	
	je	.label_706
	shr	rdi, 0x20
	lea	rsi, [rsi]
	call	iswspace
	nop	
	test	eax, eax
	je	.label_706
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_703
	nop	word ptr cs:[rax + rax]
.label_702:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	mov	rbp, rbp
	je	.label_706
	lea	rsi, [rsi]
	shr	rdi, 0x20
	call	iswspace
	nop	
	mov	ebp, 2
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_703
	lea	rsi, [rsi]
	jmp	.label_706
.label_709:
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	dil, dil
	je	.label_703
	nop	
	shr	rdi, 0x20
	nop	
	call	iswspace
	test	eax, eax
	je	.label_703
	nop	word ptr [rax + rax]
.label_706:
	mov	ebp, 1
.label_703:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_704
	mov	rbp, rbp
	cmp	ebp, 2
	jne	.label_705
	mov	byte ptr [r15], 0
	lea	rsi, [rsi]
	jmp	.label_705
.label_710:
	test	r14d, r14d
	je	.label_713
	lea	rdi, [rdi]
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_714
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_718:
	mov	rbp, rbp
	movzx	ecx, bl
	nop	
	test	byte ptr [rax + rcx*2 + 1], 0x20
	nop	
	je	.label_714
	mov	rbp, rbp
	mov	bl, byte ptr [rbp + 1]
	mov	rsp, rsp
	inc	rbp
	test	bl, bl
	jne	.label_718
.label_714:
	mov	rsp, rsp
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	nop	
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_705
.label_713:
	mov	rdi, r12
	call	strlen
	lea	rdi, [rdi]
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_705
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_715:
	movzx	ecx, byte ptr [rbp]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_705
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_715
.label_705:
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_712:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a120

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
	je	.label_724
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_8
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_726
.label_724:
	mov	edx, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_726:
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
	ja	.label_728
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_719]]
.label_3214:
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
.label_728:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_722
.label_3215:
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
.label_3216:
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
.label_3217:
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
	jmp	.label_723
.label_3218:
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
	jmp	.label_721
.label_3219:
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
	jmp	.label_720
.label_3220:
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
.label_720:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_721:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_723:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_727
.label_3222:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_722:
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
	jmp	.label_725
.label_3221:
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
.label_725:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_727:
	mov	rbp, rbp
	call	__fprintf_chk
.label_3213:
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
	#Procedure 0x40a510
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_729:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_729
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a540
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_733:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_730
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_732
	nop	word ptr cs:[rax + rax]
.label_730:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_732:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_731
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_733
.label_731:
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
	#Procedure 0x40a5d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_734
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
.label_734:
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
.label_736:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_735
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_737
	nop	dword ptr [rax + rax]
.label_735:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_737:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_738
	inc	r9
	cmp	r9, 0xa
	jb	.label_736
.label_738:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a710
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
	#Procedure 0x40a7a0
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
	jb	.label_739
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_740
	test	rax, rax
	je	.label_739
.label_740:
	nop	
	pop	rbx
	ret	
.label_739:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a7f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_741
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_742
.label_741:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_742:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a820
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
	jb	.label_743
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_744
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_744
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_744:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_745
	test	rax, rax
	je	.label_743
.label_745:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_743:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_746
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_746
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_746:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_747
	test	rax, rax
	nop	
	je	.label_748
.label_747:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_748:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8f0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_753
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_749
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_755
.label_753:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_752
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_752:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_754
.label_755:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_751
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_751
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_751:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_750
	test	rax, rax
	mov	rbp, rbp
	je	.label_749
.label_750:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_749:
	call	xalloc_die
.label_754:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_757
	test	rax, rax
	mov	rbp, rbp
	je	.label_756
.label_757:
	pop	rbx
	ret	
.label_756:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a9f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_761
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_762
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_760
	call	free
	xor	eax, eax
	jmp	.label_758
.label_761:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_759
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_760:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_758
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_759
.label_758:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_759:
	mov	rbp, rbp
	call	xalloc_die
.label_762:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aa80
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
	je	.label_763
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_764
.label_763:
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
.label_764:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aae0
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
	jb	.label_765
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_765
	pop	rcx
	ret	
.label_765:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ab10

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
	je	.label_767
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_766
.label_767:
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
.label_766:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ab70
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
	je	.label_768
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_769
.label_768:
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
.label_769:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40abd0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_6
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
	#Procedure 0x40ac20
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	call	mem_cd_iconv
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jns	.label_771
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	mov	rbp, rbp
	je	.label_770
.label_771:
	mov	eax, ebx
	pop	rbx
	mov	rbp, rbp
	ret	
.label_770:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac60
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	mov	rsp, rsp
	call	str_cd_iconv
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_772
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0xc
	nop	
	je	.label_773
.label_772:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_773:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aca0

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	mov	rsp, rsp
	push	rbx
	call	str_iconv
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_774
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_775
.label_774:
	lea	rdi, [rdi]
	mov	rax, rbx
	pop	rbx
	ret	
.label_775:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ace0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	nop	
	mov	r12, rdi
	cmp	ebp, 0x25
	mov	rsp, rsp
	jae	.label_829
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	lea	rbx, [rsp + 8]
	lea	rdi, [rdi]
	cmovne	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	edx, ebp
	call	__strtol_internal
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	rcx, r12
	nop	
	je	.label_800
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_803
	mov	rbp, rbp
	mov	r13d, 4
	lea	rsi, [rsi]
	cmp	eax, 0x22
	jne	.label_807
	mov	rsp, rsp
	mov	r13d, 1
.label_803:
	test	r14, r14
	nop	
	je	.label_814
	lea	rsi, [rsi]
	mov	r12d, r13d
	mov	rbp, rbp
	jmp	.label_818
.label_800:
	mov	rbp, rbp
	mov	r13d, 4
	test	r14, r14
	je	.label_807
	lea	rsi, [rsi]
	mov	r15, rcx
	nop	
	movsx	esi, byte ptr [r12]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_807
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	call	strchr
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	ebp, 1
	nop	
	test	rax, rax
	mov	rcx, r15
	je	.label_807
.label_818:
	nop	
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_777
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_783
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	mov	rsp, rsp
	lea	eax, [r13 - 0x45]
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	ja	.label_776
	lea	rdi, [rdi]
	movabs	rcx, 0x814400308945
	mov	rbp, rbp
	bt	rcx, rax
	lea	rdi, [rdi]
	jae	.label_776
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strchr
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_776
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	r8d, 0x400
	mov	rsp, rsp
	cmp	eax, 0x42
	je	.label_817
	lea	rdi, [rdi]
	cmp	eax, 0x44
	mov	rbp, rbp
	je	.label_817
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_776
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	nop	
	je	.label_778
	mov	r15d, 1
.label_778:
	mov	r8d, 0x400
	jmp	.label_776
.label_814:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_807
.label_777:
	mov	rbp, rbp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_780
.label_817:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_776:
	movabs	r9, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	r13d, 0x59
	jg	.label_789
	lea	eax, [r13 - 0x42]
	lea	rdi, [rdi]
	cmp	eax, 0xe
	ja	.label_792
	jmp	qword ptr [word ptr [+ (rax * 8) + label_796]]
.label_3121:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	lea	rsi, [rsi]
	jl	.label_799
	nop	
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	lea	rsi, [rsi]
	jmp	.label_802
.label_789:
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_809
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_805
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_828]]
.label_3092:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	nop	
	jl	.label_799
	mov	r13, rbp
	shl	r13, 9
	lea	rsi, [rsi]
	movabs	rax, 0x3fffffffffffff
	jmp	.label_802
.label_792:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	je	.label_779
	cmp	r13d, 0x59
	jne	.label_783
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	mov	rbp, rbp
	idiv	r8
	mov	r10, rax
	mov	rsp, rsp
	cmp	rbp, r10
	mov	edi, 1
	nop	
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_832
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	mov	rbp, rbp
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	ebx, al
.label_832:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_801
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_801:
	mov	rsp, rsp
	or	edi, ebx
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	r11d, 1
	mov	rsp, rsp
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_812
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	lea	rdi, [rdi]
	mov	rcx, rsi
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	ebx, al
.label_812:
	or	ebx, edi
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	jl	.label_830
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rsi, r9
	mov	rsp, rsp
	movzx	r11d, al
.label_830:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	nop	
	mov	ebx, 1
	nop	
	jl	.label_785
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	nop	
	div	r8
	mov	rcx, rsi
	nop	
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	nop	
	movzx	ebx, al
.label_785:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_834
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	lea	rsi, [rsi]
	movzx	r14d, al
.label_834:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_782
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsp, rsp
	mov	rcx, rsi
	lea	rsi, [rsi]
	imul	rcx, r8
	nop	
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_782:
	lea	rsi, [rsi]
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_823
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
.label_823:
	mov	rbp, rbp
	or	ebx, edi
	nop	
	jmp	.label_781
.label_809:
	cmp	r13d, 0x74
	je	.label_779
	cmp	r13d, 0x77
	jne	.label_783
	mov	rbp, rbp
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_787
.label_799:
	inc	r9
	mov	rsp, rsp
	mov	ebx, 1
	mov	r13, r9
	lea	rsi, [rsi]
	jmp	.label_781
.label_3093:
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rbp, rbp
	jl	.label_821
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_821:
	nop	
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_815
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	r10d, al
.label_815:
	lea	rsi, [rsi]
	or	r10d, ebx
	cmp	rsi, rdi
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	jl	.label_824
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_824:
	lea	rdi, [rdi]
	or	ebx, r10d
	jmp	.label_781
.label_3094:
	lea	rsi, [rsi]
	lea	r13, [r9 + 1]
	lea	rdi, [rdi]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_781
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rbp
	nop	
	cmp	rax, rbp
	nop	
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
	nop	
	jmp	.label_781
.label_3095:
	lea	r13, [r9 + 1]
	mov	rax, r13
	mov	rbp, rbp
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_790
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rsp, rsp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_790:
	lea	rsi, [rsi]
	cmp	rcx, rdi
	nop	
	jl	.label_819
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_819:
	or	ebx, r10d
	lea	rdi, [rdi]
	jmp	.label_781
.label_779:
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rbp, rbp
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rbp, rbp
	mov	r11d, 1
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_831
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	lea	rdi, [rdi]
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	edi, al
.label_831:
	cmp	rcx, r10
	mov	rsi, r13
	nop	
	jl	.label_793
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	lea	rsi, [rsi]
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r9
	movzx	r11d, al
.label_793:
	mov	rsp, rsp
	or	r11d, edi
	lea	rdi, [rdi]
	cmp	rsi, r10
	mov	rsp, rsp
	mov	ebx, 1
	mov	rcx, r13
	mov	rbp, rbp
	mov	edi, 1
	jl	.label_804
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	mov	rbp, rbp
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	edi, al
.label_804:
	lea	rdi, [rdi]
	or	edi, r11d
	cmp	rcx, r10
	mov	rbp, rbp
	jl	.label_822
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	r8, r9
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r8
.label_822:
	or	ebx, edi
	jmp	.label_781
.label_805:
	nop	
	cmp	r13d, 0x5a
	jne	.label_783
	lea	r13, [r9 + 1]
	nop	
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rsp, rsp
	mov	r10, rax
	nop	
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_833
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_833:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_794
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	mov	rsp, rsp
	div	r8
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	edi, al
.label_794:
	nop	
	or	edi, ebx
	cmp	rsi, r10
	lea	rdi, [rdi]
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	nop	
	jl	.label_808
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rbp, rbp
	mov	rcx, rsi
	imul	rcx, r8
	lea	rsi, [rsi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	rcx, r9
	movzx	ebx, al
.label_808:
	lea	rdi, [rdi]
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_811
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	div	r8
	lea	rdi, [rdi]
	mov	rsi, rcx
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	nop	
	setl	al
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r11d, al
.label_811:
	or	r11d, ebx
	mov	rbp, rbp
	cmp	rsi, r10
	mov	rsp, rsp
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_810
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	ebx, al
.label_810:
	or	ebx, r11d
	mov	rbp, rbp
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_791
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_791:
	or	edi, ebx
	cmp	rsi, r10
	nop	
	mov	ebx, 1
	nop	
	jl	.label_806
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rsi
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r8
.label_806:
	nop	
	or	ebx, edi
	mov	rsp, rsp
	jmp	.label_781
.label_783:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	lea	rsi, [rsi]
	mov	r13d, r12d
	lea	rsi, [rsi]
	jmp	.label_807
.label_3122:
	lea	r13, [r9 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	nop	
	mov	rcx, r13
	mov	edi, 1
	jl	.label_826
	xor	edx, edx
	nop	
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rsp, rsp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_826:
	mov	rsp, rsp
	cmp	rcx, r10
	mov	rbp, rbp
	mov	rbx, r13
	jl	.label_788
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	nop	
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbx, r9
	movzx	r14d, al
.label_788:
	or	r14d, edi
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_798
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	nop	
	setl	al
	lea	rdi, [rdi]
	cmovl	rsi, r9
	movzx	ecx, al
.label_798:
	or	ecx, r14d
	nop	
	cmp	rsi, r10
	mov	rdi, r13
	lea	rsi, [rsi]
	jl	.label_813
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	lea	rdi, [rdi]
	imul	rdi, r8
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rdi, r9
	movzx	r11d, al
.label_813:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	r14d, 1
	lea	rsi, [rsi]
	jl	.label_825
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r14d, al
.label_825:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_784
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_784:
	nop	
	or	ebx, r14d
	lea	rdi, [rdi]
	jmp	.label_781
.label_3123:
	nop	
	lea	r13, [r9 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	lea	rsi, [rsi]
	idiv	r8
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rsp, rsp
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_795
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rcx, r9
	movzx	edi, al
.label_795:
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_816
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	r14d, al
.label_816:
	lea	rdi, [rdi]
	or	r14d, edi
	cmp	rsi, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	nop	
	jl	.label_827
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	mov	rbp, rbp
	imul	rbx, r8
	nop	
	cmp	rax, rsi
	setl	al
	nop	
	cmovl	rbx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_827:
	or	edi, r14d
	mov	rsp, rsp
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_786
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	mov	rbp, rbp
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_786:
	or	r11d, edi
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_797
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rbp, rbp
	imul	r8, rsi
	cmp	rax, rsi
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_797:
	or	ebx, r11d
	mov	rsp, rsp
	jmp	.label_781
.label_787:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_802:
	nop	
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_781:
	mov	rbp, rbp
	or	ebx, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	lea	rax, [rdx + r15]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_820
	or	ebx, 2
.label_820:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_780:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_807:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_829:
	mov	edi, OFFSET FLAT:.str_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba30

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_835
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_836
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
	je	.label_836
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
.label_835:
	mov	ecx, 1
.label_836:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40baa0

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
	js	.label_837
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_839
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
	je	.label_837
.label_839:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_837
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_838
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_838:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_837:
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
	#Procedure 0x40bb50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_840
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_840
	test	byte ptr [rbx + 1], 1
	je	.label_840
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_840:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bb90

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	call	freopen
	lea	rsi, [rsi]
	mov	rbx, rax
	test	r15, r15
	mov	rsp, rsp
	je	.label_841
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_841
	mov	rdi, rbx
	mov	rsp, rsp
	call	fileno
	mov	ebp, eax
	mov	rbp, rbp
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_841
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_841
	nop	
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_842
	mov	edi, r12d
	nop	
	mov	esi, ebp
	call	dup2
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	edi, r12d
	call	close
	nop	
	test	ebp, ebp
	js	.label_841
.label_842:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	freopen
.label_841:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc70

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
	jne	.label_843
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_843
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_844
.label_843:
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
.label_844:
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
	je	.label_845
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_845:
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
	#Procedure 0x40bd20

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
	je	.label_846
	nop	
	cmp	r15, -2
	jb	.label_846
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_846
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_846:
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
	#Procedure 0x40bdb0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	nop	
	and	cl, 0x10
	and	al, 0x6f
	mov	rbp, rbp
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_847
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_847:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40be20

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xf8
	nop	
	mov	qword ptr [rsp + 0xc8], rcx
	nop	
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	rsp, rsp
	mov	r12, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_948
.label_1011:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0xf
	mov	rbp, rbp
	movabs	rax, 0x555555555555554
	cmp	r14, rax
	ja	.label_879
	lea	rdi, [r14 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_989:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbx, r14
	nop	
	jbe	.label_989
	lea	rsi, [rsi]
	mov	edi, 0x18
	mov	rsi, rbx
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	lea	rdi, [rdi]
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x88], rbx
	nop	
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	mov	rbp, rbp
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_858
	nop	
	mov	cl, byte ptr [rax + 1]
	lea	rdi, [rdi]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_858
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 2]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x66
	mov	rsp, rsp
	jne	.label_858
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	cl
	nop	
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_858
	nop	
	cmp	byte ptr [rax + rcx + 4], 0
	lea	rsi, [rsi]
	jne	.label_858
	or	byte ptr [r12 + 0xb0], 4
.label_858:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_860
	lea	rsi, [rsi]
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_872
	mov	edi, 0x20
	mov	rsp, rsp
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	nop	
	xor	ebx, ebx
	test	rax, rax
	mov	rsp, rsp
	je	.label_879
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
.label_893:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_885
	mov	edx, 1
	nop	
	mov	cl, bl
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_885:
	mov	rsp, rsp
	cmp	ebx, 0x7f
	lea	rsi, [rsi]
	ja	.label_888
	nop	
	cmp	ebx, eax
	mov	rsp, rsp
	je	.label_888
	or	byte ptr [r12 + 0xb0], 8
.label_888:
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_893
	nop	
	mov	qword ptr [rsp + 0xd0], r15
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_914:
	mov	rsp, rsp
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	mov	rsp, rsp
	call	btowc
	cmp	eax, -1
	je	.label_905
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	mov	rsp, rsp
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	or	qword ptr [rcx + 8], rdx
.label_905:
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rbp, rbp
	je	.label_868
	or	byte ptr [r12 + 0xb0], 8
.label_868:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, 0x40
	jne	.label_914
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_926:
	mov	rsp, rsp
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_912
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rsp, rsp
	or	qword ptr [rcx + 0x10], rax
.label_912:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, 0x40
	jne	.label_926
	nop	word ptr cs:[rax + rax]
.label_942:
	lea	rdi, [rdi]
	lea	edi, [rbp + 0xc0]
	mov	rsp, rsp
	call	btowc
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_963
	mov	eax, 1
	mov	cl, bpl
	nop	
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_963:
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	jne	.label_942
	jmp	.label_860
.label_872:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_860:
	cmp	qword ptr [r12], 0
	je	.label_879
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_879
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0xc8]
	and	ecx, 0x400000
	nop	
	mov	qword ptr [rsp + 0xc0], rcx
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0x20], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r14
	mov	qword ptr [rsp + 0x70], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], rbx
	mov	rax, rcx
	nop	
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xa8], al
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rbp, rbp
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xab]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], edx
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa9], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rbp, rbp
	shr	al, 3
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rsp + 0xaa], al
	mov	qword ptr [rsp + 0x88], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], r14
	mov	rsp, rsp
	xor	eax, eax
	test	r14, r14
	jle	.label_952
	mov	rsp, rsp
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_1006
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	r15d, 0xc
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	movabs	rcx, 0x1fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	ja	.label_850
	lea	rsi, [rax*4]
	xor	edi, edi
	nop	
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_850
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
.label_1006:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	mov	edx, 0
	mov	rbp, rbp
	je	.label_1017
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	nop	
	mov	r15d, 0xc
	test	rax, rax
	je	.label_850
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	dl, bpl
	mov	r15, qword ptr [rsp + 0xd0]
.label_1017:
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 0x60], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	lea	rdi, [rdi]
	mov	bpl, dl
	mov	rsp, rsp
	jmp	.label_856
.label_879:
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rsp, rsp
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	rsp, rsp
	mov	eax, 0xc
	mov	rbp, rbp
	jmp	.label_863
.label_952:
	mov	rsp, rsp
	shr	rcx, 0x20
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rdx
.label_856:
	test	bpl, bpl
	lea	rdi, [rdi]
	cmove	rax, r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	cmp	qword ptr [rsp + 0xc0], 0
	je	.label_875
	mov	rbp, rbp
	cmp	ecx, 2
	mov	rbp, rbp
	jl	.label_883
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsi]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_850
	lea	r13, [rsp + 0x20]
.label_933:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r14
	jge	.label_891
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x50]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jg	.label_891
	nop	
	lea	rbx, [rbp + rbp]
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0xb0], 2
	jl	.label_901
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_850
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	lea	rsi, [rbp*8]
	nop	
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_850
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_901
	lea	rdi, [rdi]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_850
	mov	qword ptr [rsp + 0x38], rax
.label_901:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_921
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_850
	nop	
	mov	qword ptr [rsp + 0x28], rax
.label_921:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbx
	mov	rsp, rsp
	mov	rdi, r13
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	je	.label_933
.label_850:
	mov	dword ptr [rsp + 0x14], r15d
	lea	rsi, [rsi]
	jmp	.label_884
.label_875:
	nop	
	cmp	ecx, 2
	lea	rsi, [rsi]
	jl	.label_938
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rsp + 0x20]
	nop	
	call	build_wcs_buffer
	jmp	.label_891
.label_883:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	rax, r14
	cmovg	rax, r14
	nop	
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rsp, rsp
	jle	.label_886
	xor	eax, eax
	mov	ebp, 1
	mov	rbp, rbp
	jmp	.label_955
	nop	word ptr cs:[rax + rax]
.label_977:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x98]
	inc	rbp
.label_955:
	mov	rsp, rsp
	add	r13, rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp + r13 - 1]
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_965
.label_981:
	movzx	ebx, al
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	mov	rbp, rbp
	ja	.label_1009
	call	__ctype_toupper_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1009:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r14
	mov	rbp, rbp
	jl	.label_977
	jmp	.label_979
.label_965:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_981
.label_938:
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_982
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r14
	cmovg	rcx, r14
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	test	rdi, rdi
	jle	.label_983
	movzx	ecx, byte ptr [r13]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + rcx]
	nop	
	mov	byte ptr [rax], cl
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	rdi, 2
	jl	.label_983
	nop	dword ptr [rax]
.label_1019:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	al, byte ptr [rsi + rax]
	nop	
	mov	byte ptr [rdx + rcx], al
	lea	rsi, [rsi]
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_1019
	mov	rcx, rdi
.label_983:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_891
.label_948:
	mov	esi, 0xe8
	mov	rdi, r12
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_863
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_1011
.label_979:
	mov	rbp, rbp
	mov	rax, r14
.label_886:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	nop	
	jmp	.label_876
.label_982:
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
.label_876:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_891:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0
	nop	
	mov	r15, qword ptr [rsp + 0xd0]
	nop	
	mov	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rsp, rsp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xe0]
	lea	r13, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0x68], rax
	lea	r9, [rsp + 0x14]
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r15
	nop	
	mov	rdx, r14
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	r14, rax
	test	r14, r14
	jne	.label_869
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_870
.label_869:
	mov	rsp, rsp
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	je	.label_874
	mov	rax, qword ptr [rbx + 0x70]
.label_865:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
.label_861:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	je	.label_892
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	ecx, 0xf
	je	.label_896
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_898:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	mov	rbp, rbp
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x10], r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_894
	mov	qword ptr [rbp], rcx
.label_892:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_894
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_894
	mov	qword ptr [r12 + 0x68], rcx
	mov	rsp, rsp
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	nop	
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	nop	
	shl	rax, 3
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	nop	
	cmp	qword ptr [r15 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_940
	nop	
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_943
	mov	rbp, rbp
	test	rax, rax
	je	.label_947
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	test	rax, rax
	je	.label_949
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_960
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_962
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rcx, qword ptr [rcx + 0x30]
	nop	
	cmp	rcx, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	cmova	rdx, rcx
	mov	rsp, rsp
	xor	edi, edi
	cmp	rdx, 4
	lea	rsi, [rsi]
	jb	.label_964
	xor	edi, edi
	mov	rsi, rdx
	lea	rsi, [rsi]
	and	rsi, 0xfffffffffffffffc
	je	.label_964
	lea	rsi, [rsi]
	cmp	rcx, 1
	mov	ebp, 1
	nop	
	cmova	rbp, rcx
	mov	rbp, rbp
	add	rbp, -4
	mov	rbx, rbp
	nop	
	shr	rbx, 2
	lea	rsi, [rsi]
	xor	edi, edi
	bt	rbp, 2
	jb	.label_978
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	movq	xmm0, rdi
	nop	
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_984]]
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	rsp, rsp
	mov	edi, 4
.label_978:
	test	rbx, rbx
	je	.label_994
	lea	rsi, [rsi]
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_984]]
.label_1007:
	movq	xmm2, rdi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	nop	
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	nop	
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	mov	rbp, rbp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	mov	rbp, rbp
	add	rdi, 8
	cmp	rdi, rsi
	mov	rsp, rsp
	jne	.label_1007
.label_994:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_962
	nop	word ptr cs:[rax + rax]
.label_964:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	mov	rsp, rsp
	cmp	rdi, rcx
	nop	
	jb	.label_964
.label_962:
	mov	rdx, qword ptr [r15 + 0x68]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rdx + 0x30]
	nop	
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	je	.label_1016
	cmp	ecx, 4
	jne	.label_855
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	lea	rdi, [rdi]
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r15 + 0xa0], rcx
	jmp	.label_855
.label_940:
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_884
.label_943:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_884
.label_960:
	mov	rsp, rsp
	lea	r14, [r15 + 0x68]
	jmp	.label_911
.label_874:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	xor	ebp, ebp
	test	rax, rax
	je	.label_861
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_865
.label_1016:
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_855
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	jne	.label_855
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_880
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rdx
.label_880:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rsi*8]
	nop	
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_855
	mov	rbp, rbp
	mov	rsi, -2
	lea	rsi, [rsi]
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_855:
	lea	r14, [r15 + 0x68]
	mov	rbp, rbp
	jmp	.label_909
.label_896:
	mov	edi, 0x3c8
	nop	
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_894
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_898
.label_894:
	mov	dword ptr [rsp + 0x14], 0xc
.label_870:
	mov	qword ptr [r12 + 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_906
.label_947:
	mov	rsp, rsp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_884
.label_949:
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_884
.label_991:
	mov	rsi, -2
	mov	rsp, rsp
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_909:
	mov	rsi, rax
.label_937:
	test	rsi, rsi
	nop	
	jne	.label_897
.label_934:
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	nop	
	mov	ecx, 0
	jne	.label_920
	nop	
.label_929:
	nop	
	mov	rdi, rcx
	nop	
	mov	rcx, rsi
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	cmp	rdx, rdi
	mov	rsp, rsp
	je	.label_922
	test	rdx, rdx
	jne	.label_920
.label_922:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_929
	lea	rsi, [rsi]
	jmp	.label_930
.label_920:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	nop	
	je	.label_931
	lea	rdi, [rdi]
	cmp	ecx, 4
	lea	rsi, [rsi]
	mov	esi, 0
	mov	rsp, rsp
	jne	.label_934
	mov	rbp, rbp
	jmp	.label_937
.label_931:
	nop	
	mov	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_934
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	lea	rdi, [rdi]
	jne	.label_934
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_945
.label_975:
	nop	
	movsxd	rcx, dword ptr [rdi]
	nop	
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	lea	rdi, [rdi]
	movsxd	rcx, edi
	or	qword ptr [r15 + 0xa0], rcx
.label_897:
	mov	rdi, rdx
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jne	.label_956
	nop	dword ptr [rax]
.label_968:
	lea	rsi, [rsi]
	mov	rbp, rcx
	nop	
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	rdx, rbp
	lea	rdi, [rdi]
	je	.label_954
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_956
.label_954:
	mov	rdi, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_968
	nop	
	jmp	.label_930
.label_956:
	lea	rdi, [rdx + 0x28]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	je	.label_972
	cmp	ecx, 4
	jne	.label_897
	jmp	.label_975
.label_972:
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_897
	mov	rsp, rsp
	movzx	ebp, byte ptr [rcx + 0x30]
	cmp	ebp, 0x11
	jne	.label_897
	lea	rdi, [rdi]
	lea	rsi, [rdx + 8]
.label_945:
	mov	rbp, rbp
	mov	rbp, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_980
	mov	rbp, rbp
	mov	qword ptr [rbp], rdx
.label_980:
	mov	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rsi*8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_937
	jmp	.label_991
.label_930:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xd0]
	nop	
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_992
	mov	rax, qword ptr [r15 + 0xe0]
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1001:
	cmp	rdx, qword ptr [rax + rdx*8]
	lea	rsi, [rsi]
	jne	.label_992
	lea	rdi, [rdi]
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, rcx
	nop	
	jb	.label_1001
.label_992:
	mov	rbp, rbp
	cmp	rdx, rcx
	nop	
	jne	.label_911
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
.label_911:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_878:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	nop	
	jne	.label_878
	mov	rax, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0
	jne	.label_878
	jmp	.label_1014
.label_873:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rbp, rdx
.label_1014:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xe0], 0
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_961
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rcx + 0x30]
	nop	
	cmp	eax, 0x11
	jne	.label_961
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_961
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_961:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_851
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x11
	jne	.label_851
	nop	
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_851
	mov	rbp, rbp
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_851:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xe0]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_866
	mov	rdx, qword ptr [rbp]
	test	rdx, rdx
	je	.label_871
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbp
	je	.label_873
	test	rax, rax
	je	.label_873
	jmp	.label_878
.label_871:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	ebx, 0xfffc00ff
.label_881:
	mov	rbp, rbp
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_881
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_881
	nop	dword ptr [rax + rax]
.label_917:
	movzx	eax, byte ptr [rbp + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_985
	mov	rax, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_890
.label_985:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	re_dfa_add_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x38], rax
	mov	rsp, rsp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_904
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_890
	mov	ecx, dword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	nop	
	and	esi, ebx
	nop	
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_890:
	mov	rcx, qword ptr [rbp]
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_915
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	lea	rsi, [rsi]
	mov	rbp, rcx
	je	.label_917
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	mov	rbp, rcx
	mov	rbp, rbp
	je	.label_917
	mov	rbp, rbp
	jmp	.label_881
.label_915:
	nop	
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	mov	rsp, rsp
	je	.label_924
	mov	rbp, rbp
	cmp	eax, 0xb
	jne	.label_927
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	mov	rsp, rsp
	jmp	.label_867
.label_904:
	lea	rdi, [rdi]
	mov	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_884
.label_924:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_935
.label_927:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_939
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_939:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	nop	
	je	.label_867
.label_935:
	nop	
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_867:
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_903
.label_970:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + 0x18]
	nop	
	mov	qword ptr [rax + 0x20], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	nop	
	mov	rdx, rcx
.label_903:
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	test	rax, rax
	mov	rcx, rax
	nop	
	jne	.label_958
.label_967:
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_932
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_958
.label_932:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_967
	nop	
	jmp	.label_969
.label_958:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	lea	rdi, [rdi]
	je	.label_970
	lea	rsi, [rsi]
	cmp	eax, 0xb
	jne	.label_973
	mov	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	jmp	.label_903
.label_973:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_976
	mov	rdx, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
.label_976:
	mov	rsi, qword ptr [rcx + 0x10]
	nop	
	test	rsi, rsi
	mov	rdx, rcx
	nop	
	je	.label_903
	mov	rdx, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_903
.label_969:
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	nop	
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_866
.label_1002:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	lea	rsi, [rsi]
	jne	.label_988
	nop	word ptr cs:[rax + rax]
.label_997:
	mov	rsp, rsp
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	lea	rdi, [rdi]
	je	.label_995
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_988
.label_995:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_997
	jmp	.label_1000
.label_988:
	mov	rdi, r15
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	link_nfa_nodes
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	mov	rbx, rbp
	lea	rdi, [rdi]
	je	.label_1002
	mov	rsp, rsp
	jmp	.label_866
.label_1000:
	xor	eax, eax
	lea	r14, [rsp + 0xe0]
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_1005
	nop	
.label_849:
	inc	rbp
	nop	
	mov	rax, rbp
.label_1005:
	nop	
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_1008
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r13b, 1
	mov	rsp, rsp
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_1010
	nop	
	jmp	.label_1013
.label_1008:
	lea	rdi, [rdi]
	mov	rbp, rax
.label_1010:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	lea	rbx, [rbp + rbp*2]
	mov	rsp, rsp
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_849
	mov	ecx, 1
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_866
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsp, rsp
	jne	.label_849
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	mov	r13b, 1
	jmp	.label_849
.label_866:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
.label_884:
	mov	r15, qword ptr [rsp + 0xd0]
.label_906:
	mov	rbx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_852
	nop	dword ptr [rax]
.label_859:
	mov	rbp, qword ptr [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rdi, rbp
	nop	
	jne	.label_859
.label_852:
	nop	
	mov	qword ptr [rbx + 0x70], 0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], 0
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_877
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	call	free
.label_877:
	mov	rdi, r12
	call	free_dfa_content
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_999:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
.label_863:
	mov	rbp, rbp
	add	rsp, 0xf8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1013:
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_895
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_895
	mov	rbp, rbp
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_899
.label_895:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_902
.label_899:
	mov	rsp, rsp
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_907
	cmp	qword ptr [r15 + 0x10], 0
	nop	
	je	.label_902
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	rbp, rbp
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_910
.label_918:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	add	rdx, 0x18
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_918
.label_910:
	mov	rbp, rbp
	test	rax, rax
	je	.label_902
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_950:
	mov	qword ptr [rsp + 0xc8], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_928
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_971:
	mov	rbp, rbp
	mov	r13, qword ptr [r15 + 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8]
	nop	
	lea	r14, [r13 + rbp*8 + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	nop	
	cmp	rax, rdx
	jne	.label_1012
	lea	rcx, [r13 + rbp*8]
	lea	rsi, [rsi]
	lea	rdx, [rax + rax + 2]
	mov	rbp, rbp
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_957
	nop	
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14]
	nop	
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_959
.label_1012:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_959:
	lea	rdi, [rdi]
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	nop	
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_971
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x10]
.label_928:
	inc	r10
	lea	rsi, [rsi]
	cmp	r10, rax
	jb	.label_950
.label_902:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0
	cmp	qword ptr [rsp + 0xc0], 0
	jne	.label_889
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	nop	
	je	.label_889
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x28], 0
	mov	rbp, rbp
	jne	.label_889
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_990
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	mov	rbp, rbp
	movabs	r8, 0x1000000010001
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	xor	r10d, r10d
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_1015:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	mov	rsp, rsp
	cmp	esi, 0xb
	lea	rsi, [rsi]
	ja	.label_998
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_1003]]
.label_3233:
	lea	rsi, [rsi]
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	js	.label_1004
	lea	rdi, [rdi]
	mov	sil, r10b
.label_1004:
	lea	rsi, [rsi]
	mov	r10b, sil
	jmp	.label_882
.label_3234:
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_889
	nop	
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_882
	jmp	.label_889
.label_3235:
	mov	rsp, rsp
	mov	r9b, 1
	mov	rsp, rsp
	jmp	.label_882
.label_3236:
	mov	esi, dword ptr [rcx]
	mov	rsp, rsp
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	lea	rsi, [rsi]
	ja	.label_986
	lea	rsi, [rsi]
	bt	r8, rdi
	mov	rsp, rsp
	jb	.label_882
.label_986:
	cmp	esi, 0x80
	lea	rdi, [rdi]
	jne	.label_889
.label_882:
	inc	rbp
	nop	
	add	rcx, 0x10
	cmp	rbp, rdx
	mov	rsp, rsp
	jb	.label_1015
	lea	rdi, [rdi]
	mov	cl, r9b
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	or	r10b, r9b
	lea	rsi, [rsi]
	xor	edx, edx
	mov	esi, 8
	lea	rdi, [rdi]
	test	r10b, 1
	je	.label_862
	jmp	.label_854
.label_944:
	mov	rbp, rbp
	add	rsi, 0x10
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
.label_854:
	nop	
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_913
	cmp	edi, 1
	lea	rdi, [rdi]
	jne	.label_853
	nop	
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_853
	nop	
	and	eax, 0xffdfffff
	lea	rdi, [rdi]
	jmp	.label_857
.label_913:
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 7
.label_857:
	mov	dword ptr [rbx + rsi], eax
.label_853:
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_944
	mov	rbp, rbp
	mov	al, byte ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	jmp	.label_862
.label_957:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_884
.label_990:
	xor	ecx, ecx
.label_862:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	mov	rsp, rsp
	and	al, 0xf9
	or	al, dl
	mov	rbp, rbp
	mov	byte ptr [r12 + 0xb0], al
.label_889:
	nop	
	mov	rax, qword ptr [r12 + 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x90], rax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe8], r15
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_1018
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r15
	mov	rsp, rsp
	lea	rdi, [r15*8]
	call	malloc
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	qword ptr [rsp + 0xf0], rbp
	nop	
	test	rbp, rbp
	je	.label_900
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	lea	rsi, [rsi]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xdc], 0
	test	r15, r15
	lea	rsi, [rsi]
	jle	.label_908
	mov	rax, qword ptr [r12 + 0x98]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_908
	lea	rsi, [rsi]
	xor	eax, eax
	lea	r14, [rsp + 0xe0]
	jmp	.label_916
.label_974:
	mov	rbp, qword ptr [rsp + 0xf0]
.label_916:
	mov	r8, qword ptr [rbp + rax*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12]
	mov	rsp, rsp
	mov	rsi, r8
	shl	rsi, 4
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_919
	test	r15, r15
	nop	
	mov	edi, 0
	nop	
	jle	.label_925
	add	rsi, rdx
	xor	edi, edi
.label_936:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	mov	rsp, rsp
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	mov	rbp, rbp
	jne	.label_966
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx]
	nop	
	cmp	rcx, qword ptr [rsi]
	mov	rbp, rbp
	je	.label_925
.label_966:
	inc	rdi
	mov	rsp, rsp
	cmp	rdi, r15
	jl	.label_936
.label_925:
	cmp	rdi, r15
	nop	
	je	.label_919
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_941
	mov	rsp, rsp
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	nop	
	je	.label_946
.label_951:
	lea	rdi, [rdx + rsi]
	mov	rbp, rbp
	shr	rdi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	mov	rbp, rbp
	cmovl	rdx, rbx
	lea	rsi, [rsi]
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_951
.label_946:
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_941
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + rdx*8], rcx
	nop	
	je	.label_919
.label_941:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rsi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	re_node_set_merge
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_887
	nop	
	mov	r15, qword ptr [rsp + 0xe8]
	xor	eax, eax
.label_919:
	inc	rax
	cmp	rax, r15
	jl	.label_974
	mov	rsp, rsp
	jmp	.label_908
.label_1018:
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], 0
.label_908:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xdc]
	lea	rdx, [rsp + 0xe0]
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	nop	
	test	rax, rax
	je	.label_987
	cmp	byte ptr [rax + 0x68], 0
	lea	rsi, [rsi]
	js	.label_953
	nop	
	mov	qword ptr [r12 + 0x60], rax
	nop	
	mov	qword ptr [r12 + 0x58], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_993
.label_953:
	lea	rbx, [rsp + 0xdc]
	lea	rbp, [rsp + 0xe0]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	nop	
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x58], rax
	mov	rsp, rsp
	mov	ecx, 6
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbp
	nop	
	call	re_acquire_state_context
	nop	
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	lea	rdi, [rdi]
	je	.label_923
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_923
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	mov	rsp, rsp
	je	.label_923
.label_993:
	mov	rdi, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
.label_887:
	mov	dword ptr [rsp + 0x14], eax
	mov	r14, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [r14]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_996
.label_848:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	jne	.label_848
.label_996:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	nop	
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xab], 0
	lea	rdi, [rdi]
	je	.label_864
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	call	free
.label_864:
	mov	rbp, rbp
	xor	eax, eax
	cmp	dword ptr [rsp + 0x14], 0
	nop	
	je	.label_863
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free_dfa_content
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_999
.label_923:
	mov	eax, dword ptr [rsp + 0xdc]
	jmp	.label_887
.label_907:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_884
.label_987:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_887
.label_900:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], 0xc
	mov	eax, 0xc
	jmp	.label_887
.label_998:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd10
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd30

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0xf0], xmm0
	nop	
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_1020
	nop	
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_1020:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_1021
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_1021:
	nop	
	mov	rsi, qword ptr [r15 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_1022
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_1022:
	or	byte ptr [r14 + 0x38], 8
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40de40

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x138
	lea	rdi, [rdi]
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jne	.label_1053
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [r13 + 0x1a]
	lea	rdi, [rdi]
	and	al, 0x40
	lea	rsi, [rsi]
	shr	al, 6
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x130], eax
	nop	
	jmp	.label_1054
.label_1053:
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x130], 0
.label_1054:
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x10], 0
	nop	
	jle	.label_1026
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	lea	r14, [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_1064:
	mov	rax, qword ptr [rsi + 0x18]
	nop	
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	r12, rbp
	shl	r12, 4
	mov	rsp, rsp
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	lea	rdi, [rdi]
	je	.label_1069
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rdx
	mov	rsp, rsp
	cmp	ebx, 6
	mov	rbp, rbp
	je	.label_1028
	mov	rsp, rsp
	cmp	ebx, 3
	mov	rsp, rsp
	jne	.label_1033
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	test	al, al
	mov	ebx, 0
	mov	eax, 0
	mov	rbp, rbp
	je	.label_1035
	nop	word ptr cs:[rax + rax]
.label_1062:
	bt	rbp, rbx
	jae	.label_1047
	mov	byte ptr [r15 + rbx], 1
	lea	eax, [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	eax, 0x180
	mov	rbp, rbp
	jae	.label_1051
	nop	
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1057
	nop	
.label_1051:
	mov	eax, ebx
.label_1057:
	mov	rbp, rbp
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1047:
	inc	rbx
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_1062
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 8]
	xor	ebp, ebp
.label_1029:
	bt	rbx, rbp
	nop	
	jae	.label_1066
	mov	byte ptr [r15 + rbp + 0x40], 1
	mov	rbp, rbp
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_1034
	mov	rbp, rbp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_1073
	nop	word ptr cs:[rax + rax]
.label_1034:
	lea	rax, [rbp + 0x40]
.label_1073:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_1066:
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 0x40
	nop	
	jne	.label_1029
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1060:
	lea	rdi, [rdi]
	bt	rbx, rbp
	lea	rdi, [rdi]
	jae	.label_1070
	mov	rsp, rsp
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	mov	rsp, rsp
	cmp	eax, 0x180
	jae	.label_1044
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_1052
	nop	dword ptr [rax]
.label_1044:
	lea	rax, [rbp + 0x80]
.label_1052:
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_1070:
	nop	
	inc	rbp
	cmp	rbp, 0x40
	nop	
	jne	.label_1060
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x18]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1030:
	mov	rbp, rbp
	bt	rbx, rbp
	jae	.label_1046
	mov	rsp, rsp
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	rdi, [rdi]
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	lea	rdi, [rdi]
	jae	.label_1059
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_1074
	nop	word ptr [rax + rax]
.label_1059:
	lea	rsi, [rsi]
	lea	rax, [rbp + 0xc0]
.label_1074:
	lea	rdi, [rdi]
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1046:
	lea	rdi, [rdi]
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	mov	rsp, rsp
	jne	.label_1030
	jmp	.label_1024
	nop	dword ptr [rax + rax]
.label_1035:
	bt	rbp, rax
	jae	.label_1037
	mov	byte ptr [r15 + rax], 1
.label_1037:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	bt	rbp, rcx
	lea	rsi, [rsi]
	jae	.label_1041
	mov	rbp, rbp
	mov	byte ptr [r15 + rax + 1], 1
.label_1041:
	mov	rbp, rbp
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, 0x40
	nop	
	mov	rax, rcx
	jne	.label_1035
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	nop	
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	
.label_1063:
	nop	
	bt	rax, rcx
	jae	.label_1045
	mov	rsp, rsp
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_1045:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	mov	rsp, rsp
	jae	.label_1067
	mov	rsp, rsp
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_1067:
	mov	rbp, rbp
	add	rcx, 2
	cmp	rcx, 0x40
	mov	rsp, rsp
	jne	.label_1063
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1025:
	bt	rax, rcx
	lea	rsi, [rsi]
	jae	.label_1043
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_1043:
	nop	
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1072
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_1072:
	add	rcx, 2
	cmp	rcx, 0x40
	mov	rsp, rsp
	jne	.label_1025
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r12]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1055:
	bt	rax, rcx
	mov	rbp, rbp
	jae	.label_1058
	mov	rbp, rbp
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_1058:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	bt	rax, rdx
	mov	rsp, rsp
	jae	.label_1075
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_1075:
	lea	rsi, [rsi]
	add	rcx, 2
	lea	rdi, [rdi]
	cmp	rcx, 0x40
	lea	rdi, [rdi]
	jne	.label_1055
	lea	rdi, [rdi]
	jmp	.label_1024
	nop	dword ptr [rax + rax]
.label_1028:
	mov	r12, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_1056
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1061
	lea	rsi, [rsi]
	test	byte ptr [r12 + 0x20], 1
	nop	
	jne	.label_1061
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_1056
.label_1061:
	mov	rbp, rbp
	mov	byte ptr [rsp + 8], 0
	lea	rdi, [rdi]
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_1031:
	mov	qword ptr [rsp + 0x30], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	rax, -2
	jne	.label_1027
	mov	byte ptr [r15 + rcx], 1
.label_1027:
	mov	rbp, rbp
	inc	cl
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 8], cl
	mov	rsp, rsp
	jne	.label_1031
	mov	rbp, rbp
	jmp	.label_1024
	nop	word ptr cs:[rax + rax]
.label_1069:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	nop	
	movzx	ebx, byte ptr [rcx]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1042
	mov	rsp, rsp
	lea	eax, [rbx + 0x80]
	nop	
	cmp	eax, 0x17f
	ja	.label_1049
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1049:
	nop	
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1042:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1024
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1024
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rcx]
	nop	
	mov	al, byte ptr [rax + r12]
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	mov	rbp, rbp
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	mov	rbp, rbp
	jae	.label_1023
	mov	rsp, rsp
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	dword ptr [rax]
.label_1068:
	mov	rax, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + r12]
	mov	rbp, rbp
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_1023
	mov	rbp, rbp
	mov	al, byte ptr [rax + r12 - 8]
	lea	rdi, [rdi]
	mov	byte ptr [r13], al
	lea	rdi, [rdi]
	inc	r13
	nop	
	inc	rbp
	nop	
	add	r12, 0x10
	mov	rsp, rsp
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_1068
.label_1023:
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	sub	r13, r14
	lea	rdi, [rsp + 0x134]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, r13
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1048
	mov	edi, dword ptr [rsp + 0x134]
	call	towlower
	mov	rdi, r14
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1048
	nop	
	movzx	eax, byte ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rax], 1
.label_1048:
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
	nop	
	jmp	.label_1024
	nop	dword ptr [rax]
.label_1033:
	cmp	ebx, 2
	je	.label_1065
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_1024
	mov	rbp, rbp
	jmp	.label_1065
.label_1056:
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 0x28], 0
	mov	rbp, rbp
	jle	.label_1024
	mov	eax, dword ptr [rsp + 0x130]
	test	al, al
	lea	rsi, [rsi]
	mov	ebp, 0
	lea	rdi, [rdi]
	mov	ebx, 0
	mov	rsp, rsp
	je	.label_1071
	nop	word ptr cs:[rax + rax]
.label_1050:
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1038
	mov	rsp, rsp
	movzx	ebx, byte ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_1039
	mov	rsp, rsp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + rbx*4]
.label_1039:
	lea	rdi, [rdi]
	movsxd	rax, ebx
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_1038:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1040
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1040
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbp, rbp
	call	towlower
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	esi, eax
	lea	rdx, [rsp + 8]
	mov	rsp, rsp
	call	wcrtomb
	mov	rsp, rsp
	cmp	rax, -1
	je	.label_1040
	nop	
	movzx	eax, byte ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_1040:
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	jl	.label_1050
	mov	rbp, rbp
	jmp	.label_1024
	nop	dword ptr [rax]
.label_1071:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbx*4]
	mov	rdi, r14
	lea	rdi, [rdi]
	lea	rbp, [rsp + 8]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	wcrtomb
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1032
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1032:
	mov	rbp, rbp
	test	byte ptr [r13 + 0x1a], 0x40
	lea	rsi, [rsi]
	je	.label_1036
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 2
	mov	rsp, rsp
	jl	.label_1036
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + rbx*4]
	lea	rsi, [rsi]
	call	towlower
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_1036
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax + rax]
.label_1036:
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jl	.label_1071
	nop	word ptr cs:[rax + rax]
.label_1024:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_1064
.label_1026:
	nop	
	add	rsp, 0x138
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1065:
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	lea	rsi, [rsi]
	cmp	ebx, 2
	mov	rbp, rbp
	jne	.label_1026
	lea	rsi, [rsi]
	or	byte ptr [r13 + 0x38], 1
	lea	rsi, [rsi]
	jmp	.label_1026
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e730
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, edx
	nop	
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], rax
	lea	rdi, [rdi]
	mov	ebx, 0xc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1076
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1080
	lea	r12, [r15 + 0x38]
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x38]
	lea	rdi, [rdi]
	and	al, 0x7f
	jmp	.label_1082
.label_1080:
	and	ebx, 0x143b2be
	nop	
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1082:
	nop	
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	nop	
	and	bpl, 0x10
	and	al, 0xef
	lea	rdi, [rdi]
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x28], 0
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	lea	rdi, [rdi]
	cmp	eax, 0x10
	mov	ebx, 8
	nop	
	cmovne	ebx, eax
	nop	
	test	ebx, ebx
	mov	rsp, rsp
	jne	.label_1079
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0xf0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x80], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0x70], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0x60], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x50]
	nop	
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_1081
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1081:
	nop	
	mov	rsi, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_1077
	mov	rdi, r15
	mov	rdx, rbp
	nop	
	call	re_compile_fastmap_iter
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x48]
.label_1077:
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_1078
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_1078:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_1076:
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_1079:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1076
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e960
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_1083
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1085
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_1084
.label_1086:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_1085:
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
.label_1084:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_1086
.label_1083:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ea10
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1087
	call	free_dfa_content
.label_1087:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea70

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1092
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1092
	mov	ebp, 0x400ff
	jmp	.label_1098
	nop	word ptr cs:[rax + rax]
.label_1100:
	mov	rbp, rbp
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1098:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	lea	rsi, [rsi]
	je	.label_1103
	nop	
	cmp	ecx, 6
	jne	.label_1104
	nop	
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, r15
	mov	rsp, rsp
	jmp	.label_1094
	nop	dword ptr [rax]
.label_1103:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1094:
	lea	rsi, [rsi]
	call	free
.label_1104:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1100
.label_1092:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	nop	
	je	.label_1102
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	nop	
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	dword ptr [rax + rax]
.label_1097:
	mov	rax, qword ptr [r12]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1093
	mov	rdi, qword ptr [rax + rbx]
	mov	rsp, rsp
	call	free
.label_1093:
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1088
	mov	rdi, qword ptr [rax + rbx]
	lea	rsi, [rsi]
	call	free
.label_1088:
	mov	rax, qword ptr [r13]
	nop	
	test	rax, rax
	je	.label_1099
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1099:
	mov	rsp, rsp
	inc	rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	jb	.label_1097
	lea	rdi, [rdi]
	jmp	.label_1101
.label_1102:
	mov	rsp, rsp
	lea	r13, [r14 + 0x28]
	mov	rbp, rbp
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1101:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1090
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_1091
	nop	word ptr cs:[rax + rax]
.label_1089:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1091:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*2]
	nop	
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jle	.label_1096
	lea	rbx, [rdi + rax*8]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1105:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	nop	
	cmp	rbp, qword ptr [rbx]
	nop	
	jl	.label_1105
.label_1096:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1089
	mov	rdi, qword ptr [r14 + 0x40]
.label_1090:
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	lea	rsi, [rsi]
	cmp	rdi, rax
	nop	
	je	.label_1095
	call	free
.label_1095:
	nop	
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ecf0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	eax, 2
	mov	rbp, rbp
	cmp	ebp, 7
	nop	
	ja	.label_1106
	test	bpl, 4
	nop	
	jne	.label_1110
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1107
.label_1110:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_1107:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_1108
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_1109
.label_1108:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_1109:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r9, rdx
	call	re_search_internal
	mov	rbp, rbp
	test	eax, eax
	setne	al
	movzx	eax, al
.label_1106:
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40edd0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x268
	mov	r15, rcx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x2a0]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x230], xmm0
	movaps	xmmword ptr [rsp + 0x220], xmm0
	movaps	xmmword ptr [rsp + 0x210], xmm0
	movaps	xmmword ptr [rsp + 0x200], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x1f0], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x190], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x180], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x140], xmm0
	mov	qword ptr [rsp + 0x1d8], r11
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x20]
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1213
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	ecx, 8
	nop	
	cmovne	rax, rbx
	nop	
	cmp	r15, r8
	mov	rsp, rsp
	cmove	rax, rbx
	mov	rbp, rax
.label_1213:
	nop	
	mov	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	lea	r14, [r13 - 1]
	mov	rcx, r14
	nop	
	sub	rcx, rax
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	rax, r13
	mov	rsp, rsp
	cmovb	rbx, rcx
	lea	rsi, [rsi]
	mov	r12d, 1
	cmp	qword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	je	.label_1142
	mov	rax, qword ptr [r11 + 0x48]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1142
	mov	rsp, rsp
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_1142
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rbp
	lea	rsi, [rsi]
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	nop	
	je	.label_1142
	cmp	qword ptr [r11 + 0x60], 0
	nop	
	je	.label_1142
	mov	rbp, rbp
	mov	rbp, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x108], rbp
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_1287
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	jne	.label_1287
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1294
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 0x38], 0
	mov	rsp, rsp
	js	.label_1287
.label_1294:
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	test	r15, r15
	mov	r10, rsi
	lea	rdi, [rdi]
	je	.label_1295
	lea	rdi, [rdi]
	test	r8, r8
	mov	rbp, rbp
	mov	r15d, 0
	lea	rdi, [rdi]
	jne	.label_1142
	jmp	.label_1165
.label_1287:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r8
	mov	r10, rsi
.label_1165:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], r14
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x3f], 1
	mov	rsp, rsp
	cmp	rbx, r13
	mov	qword ptr [rsp + 0x98], rbx
	lea	rdi, [rdi]
	jne	.label_1303
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + 0x98], 0
	mov	rbp, rbp
	setne	byte ptr [rsp + 0x3f]
.label_1303:
	mov	r13, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	inc	r13
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	mov	rsp, rsp
	cmp	rax, r13
	lea	rdi, [rdi]
	cmovge	r13, rax
	mov	rsp, rsp
	lea	rsi, [rdx + 1]
	cmp	rsi, r13
	cmovle	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x140], r10
	mov	qword ptr [rsp + 0x198], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x190], rdx
	mov	qword ptr [rsp + 0x108], rbp
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rdi, [rdi]
	shr	rcx, 0x16
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rsp + 0x1c8], cl
	lea	rsi, [rsi]
	test	rbp, rbp
	setne	bl
	or	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x1cb], bl
	mov	dword ptr [rsp + 0x1d0], eax
	mov	cl, byte ptr [r11 + 0xb0]
	lea	rdi, [rdi]
	shr	cl, 2
	mov	rbp, rbp
	and	cl, 1
	nop	
	mov	byte ptr [rsp + 0x1c9], cl
	mov	rbp, rbp
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	byte ptr [rsp + 0x1ca], cl
	mov	qword ptr [rsp + 0x1a8], rdx
	nop	
	mov	qword ptr [rsp + 0x1a0], rdx
	nop	
	jl	.label_1114
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	rsp, rsp
	mov	r12d, 0xc
	cmp	r13, rax
	lea	rsi, [rsi]
	ja	.label_1112
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x118], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x130], rdx
	mov	r14, rdi
	lea	rsi, [r13*4]
	xor	edi, edi
	mov	rbp, rbp
	call	realloc
	nop	
	test	rax, rax
	je	.label_1112
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], rax
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x260]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x130]
	mov	r10, qword ptr [rsp + 0x118]
.label_1114:
	mov	qword ptr [rsp + 0x130], rdx
	mov	al, 1
	lea	rsi, [rsi]
	test	bl, bl
	je	.label_1196
	mov	r14, r10
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], r11
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	mov	r12d, 0xc
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1112
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x260]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r10, r14
.label_1196:
	mov	qword ptr [rsp + 0x180], r13
	lea	rcx, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x1c0], rcx
	mov	rcx, qword ptr [r11 + 0xb0]
	mov	dl, cl
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0x1ce], dl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_1289
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x148], r10
	xor	edx, edx
	mov	rsp, rsp
	cmp	ecx, 1
	mov	rbp, rbp
	cmovle	rdx, qword ptr [rsp + 0x130]
.label_1289:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x118], r10
	nop	
	mov	qword ptr [rsp + 0x170], rdx
	mov	qword ptr [rsp + 0x178], rdx
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	qword ptr [rsp + 0x1a0], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0xe8], rdi
	shr	al, 7
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x1cd], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0x260], r11
	lea	r14, [rbx + rbx]
	mov	eax, dword ptr [rsp + 0x2b0]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1e0], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], -1
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_1234
	mov	r12d, 0xc
	mov	rbp, rbp
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1112
	lea	rsi, [rsi]
	shl	rbx, 4
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*4]
	lea	rdi, [rdi]
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	mov	qword ptr [rsp + 0x218], rbp
	mov	rdi, rbx
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x238], rax
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	je	.label_1112
	test	rax, rax
	mov	rbp, rbp
	je	.label_1112
.label_1234:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2a0]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x248], rax
	mov	qword ptr [rsp + 0x210], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x220], 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x230], r14
	nop	
	cmp	rax, 1
	mov	rax, qword ptr [rsp + 0x260]
	ja	.label_1282
	mov	rbx, qword ptr [rax + 0xb0]
	lea	rsi, [rsi]
	test	bl, 2
	jne	.label_1282
	shr	rbx, 0x20
	mov	qword ptr [rsp + 0x1f8], 0
	lea	rdi, [rdi]
	jmp	.label_1296
.label_1282:
	mov	r12d, 0xc
	lea	rsi, [rsi]
	movabs	rax, 0x1ffffffffffffffe
	cmp	r13, rax
	ja	.label_1112
	lea	rdi, [r13*8 + 8]
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rsp + 0x1f8], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1112
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x260]
	mov	ebx, dword ptr [rax + 0xb4]
.label_1296:
	nop	
	mov	qword ptr [rsp + 0x250], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x260], rax
	mov	qword ptr [rsp + 0xa8], r15
	mov	eax, dword ptr [rsp + 0x2b0]
	lea	eax, [rax + rax]
	lea	rsi, [rsi]
	and	eax, 2
	lea	rdi, [rdi]
	xor	eax, 6
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1b0], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	rsi, r15
	mov	rsp, rsp
	mov	r13, r15
	cmovle	r13, rsi
	mov	rbp, rsi
	cmovl	rbp, r15
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x138], rbp
	mov	rbp, rbp
	mov	ecx, 8
	mov	r14, qword ptr [rsp + 0x128]
	test	r14, r14
	mov	rdi, qword ptr [rsp + 0x108]
	nop	
	je	.label_1311
	cmp	ebx, 1
	nop	
	je	.label_1146
	mov	ecx, 0x400000
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_1150
	mov	rdx, qword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1150
.label_1146:
	lea	rsi, [rsi]
	mov	r8d, 4
.label_1150:
	test	rdi, rdi
	setne	cl
	cmp	r15, rsi
	lea	rdi, [rdi]
	setle	dl
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	movzx	edx, dl
	lea	ecx, [rcx + rdx*2]
	lea	rdi, [rdi]
	or	ecx, r8d
.label_1311:
	mov	qword ptr [rsp + 0x250], rbx
	mov	rbp, rbp
	mov	rbx, rdi
	xor	eax, eax
	cmp	r15, rsi
	setle	byte ptr [rsp + 0x247]
	lea	rdx, [rsp + 0xa8]
	cmovg	rdx, rax
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x110], rax
	lea	rsi, [rsi]
	cmp	rsi, r15
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x40], rdx
	add	ecx, -4
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_1162
.label_1249:
	mov	rax, qword ptr [rsp + 0x250]
	cmp	eax, 1
	je	.label_1189
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x170]
	test	rax, rax
	je	.label_1189
	mov	rax, qword ptr [rsp + 0x150]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], -1
	lea	rdi, [rdi]
	je	.label_1191
.label_1189:
	nop	
	mov	dword ptr [rsp + 0x220], 0
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x200]
	nop	
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x1d8]
	mov	rdi, qword ptr [rsp + 0x188]
	mov	dword ptr [rsp + 0xf4], 0
	mov	r15, qword ptr [r12 + 0x48]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x68], 0
	lea	rsi, [rsi]
	js	.label_1197
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x250]
	jmp	.label_1209
.label_1197:
	mov	rbp, rbp
	test	rdi, rdi
	jle	.label_1217
	lea	rax, [rdi - 1]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x198], rax
	mov	rbp, rbp
	je	.label_1219
	cmp	dword ptr [rsp + 0x1d0], 2
	lea	rsi, [rsi]
	jl	.label_1222
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x150]
	mov	rsp, rsp
	mov	rcx, rdi
	nop	dword ptr [rax + rax]
.label_1230:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	mov	rbp, rbp
	jne	.label_1227
	mov	rsp, rsp
	dec	rcx
	mov	rsp, rsp
	jg	.label_1230
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1b0]
	mov	rsp, rsp
	jmp	.label_1143
.label_1222:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x1c0]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	nop	
	mov	cl, al
	mov	rbp, rbp
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	bt	rcx, rax
	nop	
	jb	.label_1239
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_1250
	mov	rbx, qword ptr [rsp + 0x250]
	jmp	.label_1209
.label_1227:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x1ce], 0
	lea	rsi, [rsi]
	jne	.label_1254
.label_1304:
	cmp	ebx, 0xa
	jne	.label_1257
.label_1250:
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_1143
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1143
.label_1257:
	mov	rbx, qword ptr [rsp + 0x250]
	lea	rsi, [rsi]
	jmp	.label_1209
.label_1217:
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_1143
.label_1219:
	mov	ecx, dword ptr [rsp + 0x1e0]
	mov	rbp, rbp
	and	ecx, 2
	mov	rsp, rsp
	xor	ecx, 0xa
.label_1143:
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1239
	nop	
	test	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x250]
	nop	
	je	.label_1209
	mov	rsi, rbx
	mov	rbp, rbp
	mov	eax, ecx
	and	eax, 4
	sete	bl
	mov	edx, ecx
	and	edx, 2
	je	.label_1275
	nop	
	test	bl, bl
	nop	
	jne	.label_1275
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x60]
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	jmp	.label_1209
.label_1275:
	mov	rbp, rbp
	test	edx, edx
	jne	.label_1286
	mov	qword ptr [rsp + 0x128], rdi
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 0x48]
	test	eax, eax
	mov	rbx, rsi
	lea	rsi, [rsi]
	je	.label_1115
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x50]
	nop	
	lea	rdi, [rsp + 0xf4]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	r15, rax
.label_1115:
	nop	
	mov	rdi, qword ptr [rsp + 0x128]
	jmp	.label_1209
.label_1286:
	nop	
	mov	r15, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	mov	rbx, rsi
	jmp	.label_1209
.label_1254:
	mov	qword ptr [rsp + 0x128], rdi
	mov	rbp, rbp
	mov	edi, ebx
	mov	rbp, rbp
	call	iswalnum
	mov	rdi, qword ptr [rsp + 0x128]
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	je	.label_1239
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_1304
.label_1239:
	mov	r15, qword ptr [r12 + 0x50]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x250]
.label_1209:
	test	r15, r15
	mov	rbp, rbp
	je	.label_1309
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	test	rax, rax
	mov	cl, byte ptr [rsp + 0x247]
	mov	rbp, rbp
	mov	dl, cl
	mov	dword ptr [rsp + 0xf8], edx
	je	.label_1285
	mov	rbp, rbp
	mov	qword ptr [rax + rdi*8], r15
	cmp	qword ptr [r12 + 0x98], 0
	mov	rsp, rsp
	mov	al, cl
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xf8], eax
	mov	rbp, rbp
	jne	.label_1121
.label_1285:
	mov	byte ptr [rsp + 0x247], cl
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x68]
	mov	rbx, -1
	test	al, 0x10
	mov	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1132
.label_1119:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
.label_1280:
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rsp + 0x1a8], rax
	lea	rsi, [rsi]
	jle	.label_1148
	test	rcx, rcx
	sete	cl
	or	cl, byte ptr [rsp + 0x3f]
	mov	byte ptr [rsp + 0x97], cl
	nop	
	jmp	.label_1153
.label_1167:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], rbx
	mov	qword ptr [rsp + 0x258], r13
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x10], 0
	jle	.label_1157
	mov	rdi, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	xor	r12d, r12d
	jmp	.label_1160
.label_1185:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x188]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_1166
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r15
	lea	rdx, [rax - 1]
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x198], rdx
	je	.label_1134
	cmp	dword ptr [rsp + 0x1d0], 2
	jl	.label_1182
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x150]
.label_1186:
	nop	
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_1298
	dec	rax
	lea	rsi, [rsi]
	jg	.label_1186
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_1134
.label_1260:
	cmp	qword ptr [rsp + 0x28], r15
	mov	rdi, qword ptr [rsp + 0x128]
	je	.label_1190
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xf8], 0
.label_1190:
	mov	rsp, rsp
	cmove	rdi, r12
	mov	rbp, rbp
	jmp	.label_1195
.label_1182:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x1c0]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	nop	
	shr	dl, 6
	mov	rsp, rsp
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	bt	rdx, rax
	jb	.label_1134
	lea	rdi, [rdi]
	xor	ecx, ecx
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0xa
	nop	
	jne	.label_1134
	jmp	.label_1211
.label_1298:
	cmp	byte ptr [rsp + 0x1ce], 0
	mov	rsp, rsp
	jne	.label_1212
.label_1243:
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	ebx, 0xa
	nop	
	jne	.label_1134
.label_1211:
	lea	rsi, [rsi]
	mov	ecx, 2
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_1134
	xor	ecx, ecx
	jmp	.label_1134
.label_1166:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	mov	ecx, dword ptr [rsp + 0x1b0]
.label_1134:
	mov	rsp, rsp
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + rcx*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_1123
.label_1268:
	mov	r15, rdi
	mov	edi, ebx
	mov	rsp, rsp
	call	iswalnum
	cmp	ebx, 0x5f
	nop	
	mov	ecx, 1
	mov	rbp, rbp
	je	.label_1237
	lea	rsi, [rsi]
	test	eax, eax
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	je	.label_1241
	jmp	.label_1233
.label_1237:
	mov	rdi, r15
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_1233
.label_1160:
	mov	rax, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rdi]
	mov	rbp, rsi
	shl	rbp, 4
	mov	rbp, rbp
	mov	r13d, dword ptr [rax + rbp + 8]
	test	r13d, 0x100000
	mov	rsp, rsp
	je	.label_1127
	shr	r13d, 8
	test	r13w, 0x3ff
	lea	rdi, [rdi]
	je	.label_1138
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_1259
	cmp	qword ptr [rsp + 0x198], rax
	mov	rbp, rbp
	je	.label_1262
	cmp	dword ptr [rsp + 0x1d0], 2
	mov	rsp, rsp
	jl	.label_1266
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x150]
	inc	rax
.label_1272:
	mov	rbp, rbp
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_1271
	mov	rsp, rsp
	dec	rax
	lea	rsi, [rsi]
	test	rax, rax
	jg	.label_1272
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	jmp	.label_1206
.label_1266:
	nop	
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x1c0]
	nop	
	movzx	eax, byte ptr [rcx + rax]
	nop	
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_1278
	mov	ecx, 1
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_1117
.label_1271:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x1ce], 0
	lea	rsi, [rsi]
	jne	.label_1290
.label_1310:
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	ebx, 0xa
	je	.label_1284
	jmp	.label_1206
.label_1278:
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_1206
.label_1284:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_1206
	xor	ecx, ecx
	jmp	.label_1206
.label_1259:
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_1206
.label_1262:
	mov	ecx, dword ptr [rsp + 0x1e0]
	lea	rdi, [rdi]
	and	ecx, 2
	xor	ecx, 0xa
.label_1206:
	nop	
	mov	eax, ecx
	nop	
	and	eax, 1
	sete	dl
	test	r13b, 4
	lea	rdi, [rdi]
	je	.label_1117
	test	eax, eax
	je	.label_1127
	lea	rdi, [rdi]
	jmp	.label_1117
.label_1290:
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	edi, ebx
	nop	
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	ecx, 1
	lea	rsi, [rsi]
	je	.label_1308
	test	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	je	.label_1310
	lea	rdi, [rdi]
	jmp	.label_1117
.label_1308:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x48]
.label_1117:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	test	dl, dl
	jne	.label_1122
	mov	edx, eax
	mov	rsp, rsp
	and	edx, 0x800
	jne	.label_1127
.label_1122:
	mov	rsp, rsp
	test	cl, 2
	jne	.label_1131
	nop	
	mov	edx, eax
	and	edx, 0x2000
	lea	rdi, [rdi]
	jne	.label_1127
.label_1131:
	nop	
	test	cl, 8
	jne	.label_1138
	nop	
	shr	eax, 8
	mov	rsp, rsp
	test	al, al
	js	.label_1127
.label_1138:
	mov	rcx, qword ptr [rsp + 0x188]
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	lea	rdx, [rsp + 0x140]
	mov	rbp, rsi
	call	check_node_accept_bytes
	mov	rcx, rbp
	mov	rdi, rbx
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1127
	mov	qword ptr [rsp + 0x48], rcx
	lea	rdi, [rdi]
	mov	rbp, rdi
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rsi, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x220]
	lea	rdi, [rdi]
	cmp	ecx, eax
	cmovl	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x220], ecx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x200]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x180]
	nop	
	mov	rax, qword ptr [rsp + 0x198]
	nop	
	cmp	rcx, rsi
	jg	.label_1155
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1174
.label_1155:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x170]
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jg	.label_1175
	cmp	rcx, rax
	jge	.label_1175
.label_1174:
	mov	rbp, rbp
	mov	r13, rsi
	lea	esi, [r13 + 1]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	mov	rsp, rsp
	call	extend_buffers
	mov	rsp, rsp
	mov	rsi, r13
	test	eax, eax
	nop	
	jne	.label_1187
.label_1175:
	mov	rdx, rsi
	nop	
	sub	rdx, rbx
	mov	rbp, rbp
	jle	.label_1307
	mov	rax, qword ptr [rsp + 0x1f8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	mov	rbx, rsi
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	call	memset
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x200], rsi
.label_1307:
	mov	dword ptr [rsp + 0xc8], 0
	lea	rdi, [rdi]
	mov	r13, rbp
	nop	
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	mov	rsp, rsp
	add	rdx, qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax + rsi*8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1200
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x50]
	lea	rdi, [rsp + 0x50]
	mov	rbp, rbp
	call	re_node_set_init_union
	mov	rbp, rbp
	mov	rsi, rbx
	mov	dword ptr [rsp + 0xc8], eax
	test	eax, eax
	je	.label_1297
	jmp	.label_1130
.label_1200:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	nop	
	movups	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x50], xmm0
.label_1297:
	nop	
	test	rsi, rsi
	mov	rsp, rsp
	jle	.label_1299
	mov	rsp, rsp
	lea	rax, [rsi - 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x198], rax
	lea	rdi, [rsp + 0xc8]
	je	.label_1177
	cmp	dword ptr [rsp + 0x1d0], 2
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jl	.label_1172
	nop	
	mov	rax, qword ptr [rsp + 0x150]
	mov	rsp, rsp
	mov	rcx, rsi
.label_1270:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rbp, rbp
	cmp	ebx, -1
	mov	rsp, rsp
	jne	.label_1246
	dec	rcx
	lea	rdi, [rdi]
	jg	.label_1270
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	jmp	.label_1233
.label_1172:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rsi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x1c0]
	movzx	eax, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1233
	xor	ecx, ecx
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1233
	jmp	.label_1267
.label_1246:
	mov	qword ptr [rsp + 0x48], rsi
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x1ce], 0
	jne	.label_1268
.label_1241:
	nop	
	xor	ecx, ecx
	nop	
	cmp	ebx, 0xa
	nop	
	jne	.label_1233
.label_1267:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x1cd], 0
	mov	rsp, rsp
	jne	.label_1233
	xor	ecx, ecx
	jmp	.label_1233
.label_1299:
	nop	
	mov	qword ptr [rsp + 0x48], rsi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rsp + 0xc8]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x28]
	nop	
	jmp	.label_1233
.label_1177:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	mov	ecx, dword ptr [rsp + 0x1e0]
	mov	rsp, rsp
	and	ecx, 2
	lea	rsi, [rsi]
	xor	ecx, 0xa
	mov	r15, qword ptr [rsp + 0x28]
.label_1233:
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	lea	rdx, [rsp + 0x50]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	test	rbp, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x1f8]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_1159
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rbx, rdx
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdx, rbx
.label_1159:
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	cmp	qword ptr [rax + rdx*8], 0
	mov	rdi, r13
	mov	rbp, rbp
	jne	.label_1127
	nop	
	mov	eax, dword ptr [rsp + 0xc8]
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1302
.label_1127:
	lea	rsi, [rsi]
	inc	r12
	mov	rbp, rbp
	cmp	r12, qword ptr [r15 + 0x10]
	jl	.label_1160
.label_1157:
	mov	dword ptr [rsp + 0xf4], 0
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbx, qword ptr [rsp + 0xe0]
.label_3111:
	lea	rdi, [rdi]
	jmp	.label_1179
.label_1302:
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rdi]
	jmp	.label_1130
.label_1187:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r15
	mov	dword ptr [rsp + 0xc8], eax
.label_1130:
	mov	dword ptr [rsp + 0xf4], eax
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_1123
.label_1212:
	mov	edi, ebx
	call	iswalnum
	mov	rbp, rbp
	cmp	ebx, 0x5f
	mov	rsp, rsp
	mov	ecx, 1
	lea	rsi, [rsi]
	je	.label_1134
	test	eax, eax
	je	.label_1243
	mov	rsp, rsp
	jmp	.label_1134
.label_1153:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x128], rdi
	lea	rdi, [rdi]
	lea	rbp, [rax + 1]
	nop	
	mov	rdx, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x198]
	cmp	rbp, rdx
	lea	rdi, [rdi]
	jl	.label_1144
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_1154
.label_1144:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x170]
	cmp	rbp, rdx
	jl	.label_1156
	cmp	rdx, rcx
	jge	.label_1156
.label_1154:
	add	eax, 2
	lea	rdi, [rsp + 0x140]
	mov	esi, eax
	call	extend_buffers
	mov	dword ptr [rsp + 0xf4], eax
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1161
.label_1156:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rbp
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x68], 0x20
	nop	
	jne	.label_1167
.label_1179:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x188]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x188], rcx
	mov	rcx, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rcx + rax]
.label_1192:
	nop	
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1183
	mov	qword ptr [rsp + 0xe0], rbx
	mov	r12, qword ptr [r15 + 0x60]
	mov	rbp, rbp
	test	r12, r12
	nop	
	jne	.label_1185
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rsi, r15
	call	build_trtable
	test	al, al
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	jne	.label_1192
	nop	
	mov	qword ptr [rsp + 0x28], r15
	mov	dword ptr [rsp + 0xf4], 0xc
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_1123
.label_1183:
	mov	qword ptr [rsp + 0x28], r15
	mov	r15, qword ptr [rax + rbp*8]
.label_1123:
	cmp	qword ptr [rsp + 0x1f8], 0
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	je	.label_1202
	nop	
	lea	rdi, [rsp + 0xf4]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x140]
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	merge_state_with_log
	mov	r15, rax
.label_1202:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x138]
	mov	rbp, rbp
	test	r15, r15
	jne	.label_1215
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xf4], 0
	jne	.label_1135
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	test	rax, rax
	lea	rsi, [rsi]
	setne	cl
	nop	
	and	cl, byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_1220
	jmp	.label_1228
.label_1252:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rdi, rbp
.label_1220:
	mov	rdx, qword ptr [rsp + 0x188]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x200]
	nop	word ptr [rax + rax]
.label_1244:
	nop	
	cmp	rdx, rcx
	jge	.label_1240
	mov	rsp, rsp
	lea	rsi, [rdx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x188], rsi
	nop	
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	nop	
	je	.label_1244
	mov	rbp, rdi
	xor	edx, edx
	lea	rdi, [rsp + 0xf4]
	lea	rsi, [rsp + 0x140]
	call	merge_state_with_log
	mov	r15, rax
	nop	
	test	r15, r15
	jne	.label_1251
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xf4]
	nop	
	test	eax, eax
	je	.label_1252
.label_1251:
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_1256
.label_1215:
	mov	eax, dword ptr [rsp + 0xf8]
	mov	rbp, rbp
	test	al, 1
	jne	.label_1260
	mov	rdi, qword ptr [rsp + 0x128]
.label_1195:
	mov	al, byte ptr [r15 + 0x68]
	test	al, 0x10
	je	.label_1264
	mov	rbp, rbp
	test	al, al
	nop	
	jns	.label_1265
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x188]
	mov	rsp, rsp
	mov	rbp, rdi
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	call	check_halt_state_context
	lea	rsi, [rsi]
	mov	rdi, rbp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1265
.label_1264:
	mov	rax, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x1a8], rax
	jg	.label_1153
	jmp	.label_1148
.label_1265:
	mov	rax, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x3f], 0
	mov	rsp, rsp
	mov	rbx, rax
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rbp, qword ptr [rsp + 0x138]
	nop	
	jne	.label_1280
	jmp	.label_1125
.label_1240:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x128]
.label_1148:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1292
	mov	rbp, rbp
	add	qword ptr [rax], rdi
	lea	rdi, [rdi]
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1140
.label_1292:
	nop	
	mov	rax, rbx
.label_1140:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x138]
.label_1125:
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x108]
	je	.label_1147
	mov	rbp, rbp
	mov	r12d, 0xc
	cmp	rax, -2
	lea	rdi, [rdi]
	je	.label_1112
.label_1301:
	mov	qword ptr [rsp + 0x138], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x258], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x108], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1e8], rax
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe8]
	mov	rsp, rsp
	mov	cl, byte ptr [rbx + 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x248], 2
	mov	rbp, qword ptr [rsp + 0x260]
	jb	.label_1224
	mov	dl, cl
	and	dl, 0x10
	lea	rdi, [rdi]
	je	.label_1120
.label_1224:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_1124
.label_1120:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x1f8]
	mov	rsi, qword ptr [rcx + rax*8]
	nop	
	lea	rdi, [rsp + 0x140]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	check_halt_state_context
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1f0], rax
	nop	
	mov	cl, byte ptr [rbx + 0x38]
.label_1124:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x248], 2
	mov	r9, qword ptr [rsp + 0x98]
	jb	.label_1141
	and	cl, 0x10
	nop	
	jne	.label_1141
	mov	rbp, rbp
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_1149
.label_1141:
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_1136
.label_1149:
	mov	rbp, qword ptr [rsp + 0x1e8]
	mov	rsp, rsp
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1135
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rbx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x1d8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	r15d, 0
	nop	
	je	.label_1214
	cmp	qword ptr [r13 + 0x98], 0
	lea	rdi, [rdi]
	je	.label_1176
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf8], r13
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	r15, r15
	mov	rbp, rbp
	je	.label_1184
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, rbx
	call	memset
	nop	
	mov	qword ptr [rsp + 0x50], r12
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	mov	rbp, rbp
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsp + 0x50]
	mov	rsp, rsp
	call	sift_states_backward
	mov	rbx, r12
	mov	qword ptr [rsp + 0x128], rbx
	mov	r12d, eax
	test	r12d, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x250]
	mov	r13, qword ptr [rsp + 0x258]
	jne	.label_1203
.label_1164:
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	mov	rax, rbx
	jne	.label_1210
	lea	rsi, [rsi]
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_1210
	test	rbp, rbp
	jle	.label_1235
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	nop	
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_1229:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1225
	nop	
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_1305
.label_1225:
	lea	rcx, [rbp - 1]
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 2
	mov	rsp, rsp
	mov	rbp, rcx
	mov	rsp, rsp
	jge	.label_1229
	lea	rsi, [rsi]
	jmp	.label_1235
.label_1305:
	mov	rsp, rsp
	lea	r12, [rsp + 0x140]
	mov	rdi, r12
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	check_halt_state_context
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rbx, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	qword ptr [rsp + 0x58], r15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsp + 0x50]
	lea	rsi, [rsi]
	call	sift_states_backward
	mov	rdx, qword ptr [rsp + 0x250]
	lea	rdi, [rdi]
	mov	r12d, eax
	test	r12d, r12d
	mov	rbp, rbp
	je	.label_1164
	jmp	.label_1203
.label_1176:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0x128], r12
	mov	qword ptr [rsp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	lea	rax, [rsp + 0x70]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsp + 0x50]
	mov	rsp, rsp
	call	sift_states_backward
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	mov	r15d, 0
	mov	rdx, qword ptr [rsp + 0x250]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	jne	.label_1203
	mov	rax, qword ptr [rsp + 0x128]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	r15d, 0
	nop	
	jne	.label_1113
.label_1235:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x250], rdx
	mov	rdi, qword ptr [rsp + 0x128]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x138]
.label_1147:
	lea	rdi, [rsp + 0x140]
	call	match_ctx_clean
.label_1191:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xa8]
	add	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0xa8], r15
	cmp	r15, r13
	mov	r12d, 1
	jl	.label_1112
	nop	
	cmp	rbp, r15
	jge	.label_1162
	lea	rsi, [rsi]
	jmp	.label_1112
.label_1132:
	test	al, al
	mov	rsp, rsp
	js	.label_1116
	cmp	byte ptr [rsp + 0x3f], 0
	mov	rbp, rbp
	mov	rbx, rdi
	mov	ecx, 1
	jne	.label_1119
	mov	rsp, rsp
	mov	rax, rdi
	nop	
	jmp	.label_1125
.label_1121:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x138], rbp
	mov	qword ptr [rsp + 0x250], rbx
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	jle	.label_1128
	nop	
	mov	rbp, qword ptr [rsp + 0x1d8]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_1137
.label_1116:
	lea	rsi, [rsi]
	mov	r12, rdi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	nop	
	mov	rdx, r12
	call	check_halt_state_context
	mov	rbp, rbp
	cmp	rax, 1
	sbb	rdx, rdx
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	setne	cl
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	al, byte ptr [rsp + 0x3f]
	mov	rbp, rbp
	je	.label_1152
	mov	rsp, rsp
	or	rdx, r12
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rbx, rdx
	jmp	.label_1119
.label_1152:
	lea	rdi, [rdi]
	mov	rax, r12
	nop	
	jmp	.label_1125
.label_1228:
	mov	qword ptr [rsp + 0x138], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x128]
	lea	rsi, [rsi]
	jmp	.label_1148
.label_1210:
	test	rbp, rbp
	js	.label_1169
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_1274
.label_1293:
	mov	rax, qword ptr [rsp + 0x128]
	mov	rsi, qword ptr [rax + rbx*8 + 8]
	inc	rbx
.label_1274:
	nop	
	mov	rdx, qword ptr [r15 + rbx*8]
	nop	
	test	rsi, rsi
	je	.label_1178
	nop	
	mov	qword ptr [rsp + 0x128], rax
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1242
	mov	rsp, rsp
	add	rsi, 8
	mov	rbp, rbp
	add	rdx, 8
	lea	rdi, [rdi]
	lea	r13, [rsp + 0xc8]
	mov	rdi, r13
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xf4], r12d
	nop	
	test	r12d, r12d
	jne	.label_1204
	lea	rdi, [rsp + 0xf4]
	mov	rsi, qword ptr [rsp + 0xf8]
	lea	rdi, [rdi]
	mov	rdx, r13
	nop	
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	qword ptr [rcx + rbx*8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xd8]
	call	free
	mov	r12d, dword ptr [rsp + 0xf4]
	test	r12d, r12d
	je	.label_1242
	jmp	.label_1204
.label_1178:
	mov	rbp, rbp
	mov	qword ptr [rax + rbx*8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rax
.label_1242:
	mov	rsp, rsp
	cmp	rbx, rbp
	jl	.label_1293
	lea	rsi, [rsi]
	jmp	.label_1216
.label_1245:
	nop	
	mov	rdi, qword ptr [rsp + 0x238]
	mov	rsp, rsp
	mov	rsi, r13
	shl	rsi, 4
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1221
	lea	rsi, [rsi]
	add	r13, r13
	mov	qword ptr [rsp + 0x238], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x230], r13
	jmp	.label_1126
.label_1137:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rcx + rbx*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	rbp, rbp
	mov	rdx, r12
	shl	rdx, 4
	movzx	esi, byte ptr [rcx + rdx + 8]
	cmp	esi, 8
	jne	.label_1205
	mov	rcx, qword ptr [rcx + rdx]
	nop	
	cmp	rcx, 0x3f
	jg	.label_1205
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0xa0]
	bt	rdx, rcx
	jae	.label_1205
	mov	qword ptr [rsp + 0x128], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x258], r13
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x228]
	nop	
	cmp	r13, qword ptr [rsp + 0x230]
	je	.label_1245
.label_1126:
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 0x30
	lea	rdi, [rdi]
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x228]
	mov	rdx, qword ptr [rsp + 0x238]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x238]
	mov	rax, qword ptr [rax + rcx*8]
	nop	
	test	rax, rax
	je	.label_1221
	mov	rbp, rbp
	mov	qword ptr [rax + 8], r12
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x228], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x128]
.label_1205:
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, rax
	jl	.label_1137
.label_1128:
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	dword ptr [rsp + 0xf4], 0
	test	byte ptr [r15 + 0x68], 0x40
	jne	.label_1277
	nop	
	mov	dword ptr [rsp + 0xf8], 0
	nop	
	mov	r13, rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x138]
	mov	cl, byte ptr [rsp + 0x247]
	jmp	.label_1285
.label_1277:
	mov	rbp, rbp
	mov	r12, rdi
	nop	
	lea	rsi, [r15 + 8]
	nop	
	lea	rdi, [rsp + 0x140]
	call	transit_state_bkref
	mov	dword ptr [rsp + 0xf4], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1171
	mov	dword ptr [rsp + 0xf8], 0
	mov	rsp, rsp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsp + 0x247]
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	jmp	.label_1285
.label_1221:
	mov	eax, 0xc
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	jmp	.label_1301
.label_1169:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x128], rax
.label_1216:
	xor	r12d, r12d
.label_1204:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	mov	r15d, 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x250]
	nop	
	mov	r13, qword ptr [rsp + 0x258]
	je	.label_1113
.label_1203:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x258], r13
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x128]
	call	free
	mov	rbp, rbp
	mov	rdi, r15
	call	free
	test	r12d, r12d
	mov	rbp, qword ptr [rsp + 0x260]
	mov	r9, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	je	.label_1136
	cmp	r12d, 1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x250], r13
	nop	
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	je	.label_1147
	mov	rbp, rbp
	jmp	.label_1112
.label_1171:
	cdqe	
	mov	rbp, rbp
	mov	r13, rbp
	mov	rsp, rsp
	jmp	.label_1140
.label_1256:
	mov	rdi, qword ptr [rsp + 0x128]
	jmp	.label_1148
.label_1162:
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	eax, 4
	ja	.label_1163
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1168]]
.label_3088:
	cmp	r15, r13
	lea	rdi, [rdi]
	jge	.label_1170
	mov	rax, r15
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rdx, qword ptr [rsp + 0x118]
	nop	
	jmp	.label_1173
.label_3090:
	nop	
	cmp	r15, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x118]
	lea	rsi, [rsi]
	jge	.label_1180
.label_1188:
	movzx	eax, byte ptr [rcx + r15]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + rax]
	mov	rbp, rbp
	cmp	byte ptr [r14 + rax], 0
	mov	rsp, rsp
	jne	.label_1180
	nop	
	inc	r15
	nop	
	mov	qword ptr [rsp + 0xa8], r15
	cmp	r15, rbp
	nop	
	jl	.label_1188
	mov	rbp, rbp
	jmp	.label_1180
.label_1163:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x168]
	nop	
	jmp	.label_1194
	nop	dword ptr [rax]
.label_1232:
	lea	rsi, [rsi]
	add	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0xa8], r15
	mov	rbp, rbp
	cmp	r15, r13
	lea	rdi, [rdi]
	mov	r12d, 1
	lea	rsi, [rsi]
	jl	.label_1112
	cmp	r15, rbp
	lea	rdi, [rdi]
	jle	.label_1194
	lea	rdi, [rdi]
	jmp	.label_1112
.label_1223:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1112
	mov	r15, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x168]
	mov	rcx, r15
	sub	rcx, rax
	jmp	.label_1218
	nop	
.label_1194:
	lea	rdi, [rdi]
	mov	rcx, r15
	sub	rcx, rax
	nop	
	cmp	rcx, qword ptr [rsp + 0x178]
	mov	rbp, rbp
	jae	.label_1223
.label_1218:
	mov	rdx, qword ptr [rsp + 0x130]
	nop	
	cmp	r15, rdx
	lea	rsi, [rsi]
	mov	edx, 0
	jge	.label_1226
	mov	rdx, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	movzx	edx, byte ptr [rdx + rcx]
.label_1226:
	nop	
	cmp	byte ptr [r14 + rdx], 0
	je	.label_1232
	jmp	.label_1238
.label_3089:
	cmp	r15, rbp
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x118]
	jge	.label_1180
	nop	dword ptr [rax]
.label_1247:
	movzx	eax, byte ptr [rcx + r15]
	cmp	byte ptr [r14 + rax], 0
	mov	rbp, rbp
	jne	.label_1180
	inc	r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa8], r15
	nop	
	cmp	r15, rbp
	mov	rsp, rsp
	jl	.label_1247
.label_1180:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x118], rcx
	mov	rbp, rbp
	cmp	r15, rbp
	nop	
	jne	.label_1238
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x130]
	cmp	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x118]
	jge	.label_1253
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rbp]
.label_1253:
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1261
	nop	
	movzx	eax, byte ptr [rbx + rax]
.label_1261:
	mov	rsp, rsp
	mov	r12d, 1
	mov	rsp, rsp
	cmp	byte ptr [r14 + rax], 0
	mov	rsp, rsp
	mov	r15, rbp
	jne	.label_1238
	jmp	.label_1112
.label_1170:
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0x130]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x118]
	je	.label_1139
	nop	word ptr [rax + rax]
.label_1281:
	mov	rbp, rbp
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	eax, 0
	jge	.label_1273
	nop	
	movzx	eax, byte ptr [rdx + r15]
.label_1273:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + rax]
	cmp	byte ptr [r14 + rax], 0
	jne	.label_1269
	nop	
	lea	rax, [r15 - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r15, r13
	mov	r15, rax
	lea	rsi, [rsi]
	jg	.label_1281
	nop	
	jmp	.label_1173
.label_1139:
	mov	rsp, rsp
	cmp	r15, rcx
	mov	eax, 0
	nop	
	jge	.label_1288
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdx + r15]
.label_1288:
	nop	
	cmp	byte ptr [r14 + rax], 0
	jne	.label_1291
	lea	rax, [r15 - 1]
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	cmp	r15, r13
	mov	r15, rax
	jg	.label_1139
	jmp	.label_1173
.label_1269:
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	.label_1173
.label_1291:
	lea	rsi, [rsi]
	mov	rax, r15
.label_1173:
	mov	qword ptr [rsp + 0x118], rdx
	mov	qword ptr [rsp + 0x130], rcx
	lea	rdi, [rdi]
	mov	r12d, 1
	cmp	rax, r13
	mov	r15, rax
	jl	.label_1112
.label_1238:
	nop	
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	mov	edx, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	call	re_string_reconstruct
	nop	
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_1249
	jmp	.label_1112
.label_1161:
	cmp	eax, 0xc
	jne	.label_1306
.label_1135:
	mov	r12d, 0xc
.label_1112:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x1f8]
	call	free
	mov	rax, qword ptr [rsp + 0x260]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1111
	nop	
	lea	rdi, [rsp + 0x140]
	call	match_ctx_clean
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x238]
	call	free
	mov	rdi, qword ptr [rsp + 0x218]
	nop	
	call	free
.label_1111:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsp, rsp
	call	free
	cmp	byte ptr [rsp + 0x1cb], 0
	mov	rbp, rbp
	je	.label_1142
	mov	rdi, qword ptr [rsp + 0x148]
	call	free
.label_1142:
	lea	rsi, [rsi]
	mov	eax, r12d
	mov	rsp, rsp
	add	rsp, 0x268
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1309:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0xf4], 0xc
	mov	rbp, rbp
	je	.label_1135
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.25_0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rsp, rsp
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1295:
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_1165
.label_1113:
	mov	rdi, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x1f8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x1f0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	mov	rbp, qword ptr [rsp + 0x260]
	mov	r9, qword ptr [rsp + 0x98]
	mov	rbx, qword ptr [rsp + 0xe8]
.label_1136:
	mov	rsp, rsp
	cmp	r9, qword ptr [rsp + 0x2a0]
	lea	r13, [rsp + 0x178]
	jne	.label_1231
	mov	qword ptr [rsp + 0x260], rbp
	nop	
	xor	r12d, r12d
	jmp	.label_1112
.label_1231:
	mov	r8, rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], rbp
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x248], 2
	nop	
	jb	.label_1193
	mov	rsi, qword ptr [rsp + 0x2a0]
	nop	
	lea	edx, [rsi + 7]
	sub	edx, r9d
	lea	rax, [rsi - 2]
	sub	rax, r9
	mov	ecx, 1
	test	dl, 7
	je	.label_1199
	mov	rcx, qword ptr [rsp + 0x2a8]
	lea	rdx, [rcx + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, r9d
	mov	rbp, rbp
	and	esi, 7
	lea	rdi, [rdi]
	xor	edi, edi
.label_1208:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	nop	
	mov	qword ptr [rdx], -1
	nop	
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	nop	
	cmp	rsi, rdi
	jne	.label_1208
	add	rcx, 2
.label_1199:
	cmp	rax, 7
	lea	rdi, [rdi]
	jb	.label_1193
	mov	rax, qword ptr [rsp + 0x2a0]
	sub	rax, r9
	sub	rax, rcx
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x2a8]
	mov	rsp, rsp
	lea	rcx, [rcx + rdx + 0x70]
.label_1158:
	mov	qword ptr [rcx - 0x68], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x58], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x60], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x48], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x50], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x38], -1
	mov	rbp, rbp
	mov	qword ptr [rcx - 0x40], -1
	nop	
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x18], -1
	nop	
	mov	qword ptr [rcx - 0x20], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	rbp, rbp
	mov	qword ptr [rcx], -1
	nop	
	add	rcx, 0x80
	lea	rdi, [rdi]
	add	rax, -8
	jne	.label_1158
.label_1193:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x2a8]
	nop	
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1e8]
	mov	qword ptr [rcx + 8], rax
	mov	r14, rcx
	cmp	qword ptr [rsp + 0x248], 2
	mov	rsp, rsp
	jb	.label_1263
	lea	rsi, [rsi]
	mov	al, byte ptr [r8 + 0x38]
	mov	rsp, rsp
	and	al, 0x10
	nop	
	jne	.label_1263
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x260]
	test	byte ptr [rax + 0xb0], 1
	lea	rsi, [rsi]
	jne	.label_1276
	xor	eax, eax
	jmp	.label_1283
.label_1184:
	mov	rax, r12
	mov	qword ptr [rsp + 0x110], rax
.label_1214:
	mov	rdi, qword ptr [rsp + 0x110]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	jmp	.label_1135
.label_1276:
	cmp	qword ptr [rax + 0x98], 0
	nop	
	setg	al
.label_1283:
	mov	rdi, qword ptr [r8]
	mov	rbp, rbp
	movzx	r8d, al
	lea	rsi, [rsp + 0x140]
	mov	rdx, qword ptr [rsp + 0x248]
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	set_regs
	lea	rsi, [rsi]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1112
.label_1263:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x1cc], 0
	jne	.label_1255
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x2a0]
	mov	rbx, rbp
	mov	rsp, rsp
	sub	ecx, ebx
	lea	rdi, [rdi]
	xor	edx, edx
	test	cl, 1
	mov	r8, qword ptr [rsp + 0x260]
	nop	
	je	.label_1300
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	cmp	rcx, -1
	je	.label_1300
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [r14], rcx
	lea	rsi, [rsi]
	add	qword ptr [r14 + 8], rax
	mov	edx, 1
.label_1300:
	cmp	qword ptr [rsp + 0xc0], rbx
	je	.label_1118
	mov	rcx, qword ptr [rsp + 0x2a0]
	lea	rdi, [rdi]
	sub	rcx, rbx
	sub	rcx, rdx
	shl	rdx, 4
	lea	rdx, [rdx + r14 + 0x18]
.label_1248:
	mov	rsi, qword ptr [rdx - 0x18]
	cmp	rsi, -1
	je	.label_1129
	add	rsi, rax
	mov	qword ptr [rdx - 0x18], rsi
	add	qword ptr [rdx - 0x10], rax
.label_1129:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx - 8]
	mov	rsp, rsp
	cmp	rsi, -1
	je	.label_1201
	mov	rsp, rsp
	add	rsi, rax
	mov	qword ptr [rdx - 8], rsi
	add	qword ptr [rdx], rax
.label_1201:
	lea	rsi, [rsi]
	add	rdx, 0x20
	nop	
	add	rcx, -2
	mov	rsp, rsp
	jne	.label_1248
.label_1118:
	lea	rsi, [rsi]
	test	rbx, rbx
	jle	.label_1145
	lea	rsi, [rsi]
	lea	rcx, [rbx - 1]
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	test	bl, 3
	mov	rsp, rsp
	je	.label_1151
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	lea	rdi, [rdi]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, ebx
	mov	rsp, rsp
	and	esi, 3
	nop	
	xor	eax, eax
.label_1279:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	mov	rsp, rsp
	add	rdx, 0x10
	lea	rsi, [rsi]
	cmp	rsi, rax
	jne	.label_1279
.label_1151:
	lea	rdi, [rdi]
	cmp	rcx, 3
	mov	rbp, rbp
	jb	.label_1145
	lea	rdi, [rdi]
	mov	rcx, rbx
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	mov	rbp, rbp
	xor	edx, edx
.label_1181:
	nop	
	mov	qword ptr [rax + rdx + 8], -1
	nop	
	mov	qword ptr [rax + rdx], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x18], -1
	nop	
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	lea	rdi, [rdi]
	add	rcx, -4
	lea	rsi, [rsi]
	jne	.label_1181
.label_1145:
	mov	rbp, rbp
	mov	rax, qword ptr [r8 + 0xe0]
	mov	qword ptr [rsp + 0x260], r8
	test	rax, rax
	je	.label_1198
	cmp	qword ptr [rsp + 0x248], 2
	mov	r12d, 0
	nop	
	jb	.label_1112
	sub	qword ptr [rsp + 0xc0], rbx
	mov	rbp, rbp
	lea	rcx, [r14 + 0x18]
	mov	rsp, rsp
	xor	edx, edx
	xor	r12d, r12d
.label_1133:
	mov	rsi, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	cmp	rdx, rsi
	je	.label_1207
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 8], rsi
	nop	
	mov	rsi, qword ptr [rsp + 0x260]
	nop	
	mov	rsi, qword ptr [rsi + 0xe0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
.label_1207:
	inc	rdx
	mov	rsp, rsp
	add	rcx, 0x10
	nop	
	cmp	qword ptr [rsp + 0xc0], rdx
	mov	rbp, rbp
	jne	.label_1133
	mov	rbp, rbp
	jmp	.label_1112
.label_1198:
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_1112
.label_1255:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x158]
	lea	rdi, [rdi]
	lea	rcx, [r14 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x248]
	nop	
	mov	r8, qword ptr [rsp + 0x260]
	mov	rbx, rbp
.label_1258:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	lea	rsi, [rsi]
	je	.label_1236
	nop	
	mov	rdi, qword ptr [rsp + 0x170]
	cmp	rsi, rdi
	lea	rsi, [rax + rsi*8]
	cmove	rsi, r13
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rcx - 8], rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	mov	rbp, rbp
	lea	rdi, [rax + rbp*8]
	cmove	rdi, r13
	mov	rbp, qword ptr [rsp + 0xa8]
	add	rsi, rbp
	mov	rsp, rsp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rcx], rbp
.label_1236:
	lea	rsi, [rsi]
	add	rcx, 0x10
	dec	rdx
	mov	rsp, rsp
	jne	.label_1258
	jmp	.label_1118
.label_1306:
	mov	edi, OFFSET FLAT:.str.25_0
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.22_0
	nop	
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116f0

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	nop	
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	mov	rbp, rbp
	call	re_search_stub
	nop	
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411720

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x48
	mov	r15, rcx
	mov	rbx, rdi
	test	r15, r15
	mov	rsp, rsp
	mov	rbp, -1
	mov	rsp, rsp
	js	.label_1330
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x40], r9
	nop	
	cmp	r15, rdx
	nop	
	jg	.label_1330
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	xor	r12d, r12d
	add	r8, r15
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	movzx	r13d, byte ptr [rbx + 0x38]
	lea	rdi, [rdi]
	cmp	r12, r15
	mov	al, r13b
	mov	rbp, rbp
	jle	.label_1323
	lea	rdi, [rdi]
	test	r13b, 8
	mov	al, r13b
	jne	.label_1323
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	test	rbp, rbp
	mov	al, r13b
	je	.label_1323
	mov	r14, qword ptr [rbx]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	nop	
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x60], xmm0
	nop	
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x50]
	nop	
	cmp	rax, rsi
	nop	
	je	.label_1331
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	nop	
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_1331:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x58]
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_1338
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_1338:
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_1317
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_1317:
	mov	al, byte ptr [rbx + 0x38]
	nop	
	or	al, 8
	mov	rsp, rsp
	mov	byte ptr [rbx + 0x38], al
	mov	rsi, qword ptr [rsp + 0x80]
.label_1323:
	xor	edx, edx
	test	rsi, rsi
	mov	rsp, rsp
	mov	r14d, 1
	lea	rdi, [rdi]
	je	.label_1325
	lea	rsi, [rsi]
	mov	cl, al
	and	cl, 0x10
	nop	
	jne	.label_1325
	mov	rsp, rsp
	and	al, 6
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1326
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	mov	r14, qword ptr [rbx + 0x30]
	nop	
	cmp	rax, r14
	ja	.label_1340
	xor	ecx, ecx
	test	rax, rax
	mov	rbp, rbp
	cmovle	rsi, rcx
	lea	rdi, [rdi]
	mov	r14d, 1
	lea	rdi, [rdi]
	cmovg	r14, rax
	mov	rsp, rsp
	jmp	.label_1313
.label_1326:
	mov	r14, qword ptr [rbx + 0x30]
.label_1340:
	inc	r14
.label_1313:
	mov	rdx, rsi
.label_1325:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rsp, rsp
	mov	rdi, r14
	shl	rdi, 4
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, -2
	test	rax, rax
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_1330
	lea	rsi, [rsi]
	mov	cl, r13b
	shr	cl, 5
	nop	
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	mov	rsp, rsp
	shr	r13d, 5
	lea	rdi, [rdi]
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	r13, rax
	mov	qword ptr [rsp], r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, r12
	lea	rdi, [rdi]
	mov	rbp, rdi
	mov	r9, qword ptr [rsp + 0x40]
	call	re_search_internal
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1328
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	mov	rbp, rbp
	or	rbp, 0xfffffffffffffffe
	jmp	.label_1320
.label_1328:
	mov	qword ptr [rsp + 0x38], r15
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1332
	mov	r8, rbp
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	mov	rsp, rsp
	and	al, 3
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 2
	je	.label_1339
	lea	r15, [r14 + 1]
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_1315
	mov	qword ptr [rsp + 0x30], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], r8
	test	eax, eax
	jne	.label_1321
	lea	r13, [r15*8]
	mov	rdi, r13
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbx + 8], r12
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1329
	mov	rdi, r13
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1334
	mov	qword ptr [rbx], r15
	lea	rdi, [rdi]
	mov	r12d, 1
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jmp	.label_1316
.label_1339:
	mov	r15, qword ptr [rbx]
	mov	r12d, 2
	cmp	r15, r14
	mov	rbp, rbp
	jae	.label_1316
	mov	edi, OFFSET FLAT:.str.24_0
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	lea	rdi, [rdi]
	call	__assert_fail
.label_1315:
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	r12d, 1
	lea	rdi, [rdi]
	cmp	r15, rax
	ja	.label_1341
	mov	rbp, rbp
	mov	r15, rax
.label_1316:
	mov	rsp, rsp
	test	r14, r14
	jle	.label_1333
	mov	rdx, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	xor	esi, esi
	test	r14b, 1
	mov	rbp, rbp
	je	.label_1337
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	qword ptr [rdx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	esi, 1
.label_1337:
	mov	rsp, rsp
	cmp	r14, 1
	je	.label_1314
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	sub	rax, rsi
	nop	
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	lea	rsi, [rsi]
	shl	rsi, 4
	lea	rsi, [rsi + r13 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1335:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsi - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx - 8], rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 8], rbp
	mov	rbp, qword ptr [rsi - 8]
	mov	rbp, rbp
	mov	qword ptr [rdx], rbp
	mov	rsp, rsp
	mov	rbp, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rcx], rbp
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	lea	rsi, [rsi]
	add	rax, -2
	jne	.label_1335
.label_1314:
	nop	
	mov	r15, qword ptr [rbx]
	lea	rdi, [rdi]
	jmp	.label_1318
.label_1333:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_1318:
	cmp	r14, r15
	mov	rbp, rbp
	jae	.label_1324
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1312:
	mov	rbp, rbp
	mov	qword ptr [rcx + r14*8], -1
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], -1
	nop	
	inc	r14
	cmp	r14, qword ptr [rbx]
	jb	.label_1312
.label_1324:
	mov	ebp, r12d
.label_1319:
	mov	al, byte ptr [r8 + 0x38]
	mov	rsp, rsp
	add	bpl, bpl
	lea	rsi, [rsi]
	and	al, 0xf9
	lea	rsi, [rsi]
	mov	cl, bpl
	lea	rsi, [rsi]
	and	cl, 6
	lea	rdi, [rdi]
	or	cl, al
	and	bpl, 6
	mov	rbp, rbp
	mov	byte ptr [r8 + 0x38], cl
	nop	
	mov	rbp, -2
	mov	rsp, rsp
	je	.label_1320
.label_1332:
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rbp, qword ptr [r13]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1320
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	jne	.label_1327
	mov	rbp, qword ptr [r13 + 8]
	mov	rbp, rbp
	sub	rbp, rax
.label_1320:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
.label_1330:
	mov	rax, rbp
	add	rsp, 0x48
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_1341:
	mov	qword ptr [rsp + 0x40], r8
	nop	
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [r15*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1322
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1336
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1316
.label_1334:
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	call	free
.label_1329:
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x30]
	jmp	.label_1319
.label_1322:
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1319
.label_1336:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1319
.label_1321:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	lea	rdi, [rdi]
	call	__assert_fail
.label_1327:
	nop	
	mov	edi, OFFSET FLAT:.str.21_0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	nop	
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411d80

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	nop	
	mov	r9, rdx
	call	re_search_stub
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411db0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	nop	
	mov	r15, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1344
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	nop	
	js	.label_1346
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1344
	lea	rsi, [rsi]
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1342
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	mov	rbp, rbp
	jle	.label_1347
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_1344
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r13, rax
	nop	
	call	memcpy
	mov	rdi, r12
	mov	rsp, rsp
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	nop	
	mov	r9, r13
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_1342
.label_1346:
	mov	rbp, rbp
	inc	rax
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_1343
.label_1344:
	mov	rsp, rsp
	mov	rax, -2
	jmp	.label_1345
.label_1343:
	nop	
	add	rbx, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	mov	rdx, rbx
	jmp	.label_1342
.label_1347:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
.label_1342:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rsi, r13
	nop	
	mov	rcx, r9
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_1345:
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411f60
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	rbp, rbp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rax, rbx
	or	rax, r14
	lea	rdi, [rdi]
	or	rax, rbp
	js	.label_1348
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_1351
	mov	rbp, rbp
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1348
	nop	
	lea	rdx, [rbx + r14]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rbx, rbx
	nop	
	jle	.label_1352
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	xor	r12d, r12d
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_1349
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1348
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r14
	mov	r13, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1352
.label_1351:
	inc	rax
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, r14
	mov	rbp, rbp
	jle	.label_1353
.label_1348:
	mov	rbp, rbp
	mov	rax, -2
	jmp	.label_1350
.label_1353:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	mov	rsp, rsp
	jmp	.label_1352
.label_1349:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_1352:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r12
	call	free
	nop	
	mov	rax, rbx
.label_1350:
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412100
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	mov	r9b, al
	mov	rbp, rbp
	or	r9b, 2
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_1354
	lea	rsi, [rsi]
	mov	al, r9b
.label_1354:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412140

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_1355
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_1355:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4121c0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x78
	mov	r12, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	cmp	r13, rax
	nop	
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_1403
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_1403
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_1360
.label_1403:
	mov	rbp, rbp
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_1357
.label_1360:
	cmp	r13, r15
	mov	rsp, rsp
	jle	.label_1364
	lea	rax, [r12 + 0x78]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	nop	
	lea	r14, [r12 + 0x20]
	jmp	.label_1366
.label_1393:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1373
	lea	rdi, [rdi]
	cmp	rbp, -2
	jne	.label_1378
	nop	
	mov	rax, qword ptr [r12 + 0x40]
	nop	
	cmp	rax, qword ptr [r12 + 0x58]
	mov	rbp, rbp
	jl	.label_1378
.label_1373:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_1387
.label_1382:
	mov	rax, r15
	jmp	.label_1358
.label_1387:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1382
	nop	word ptr cs:[rax + rax]
.label_1366:
	nop	
	mov	qword ptr [rsp + 0x50], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	mov	rsp, rsp
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_1356
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1356
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	lea	rsi, [rsi]
	mov	rax, r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jmp	.label_1358
	nop	word ptr cs:[rax + rax]
.label_1356:
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	nop	
	add	rbp, r15
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbp, rax
	lea	rax, [rbp - 1]
	mov	rsp, rsp
	cmp	rax, -4
	ja	.label_1393
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	cmp	ebx, dword ptr [rsp + 0xc]
	nop	
	jne	.label_1401
	mov	rdi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	add	rdi, r15
	nop	
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	nop	
	add	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	nop	
	jmp	.label_1411
.label_1401:
	mov	rbp, rbp
	mov	esi, ebx
	mov	dword ptr [rsp + 0x68], esi
	mov	rbx, rbp
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x10]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	lea	rdi, [rdi]
	jne	.label_1361
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
.label_1411:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	mov	rsp, rsp
	cmp	rax, rbx
	nop	
	jge	.label_1358
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	lea	rdi, [rax + r15*4 + 4]
	mov	rbp, rbp
	lea	rdx, [rbp*4 - 4]
	lea	rdi, [rdi]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1358:
	lea	rdi, [rdi]
	cmp	r13, rax
	mov	r15, rax
	mov	rbp, rbp
	jg	.label_1366
	jmp	.label_1396
.label_1361:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_1409
.label_1378:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
.label_1364:
	lea	rsi, [rsi]
	mov	rax, r15
.label_1396:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_1391
.label_1357:
	cmp	r15, r13
	jge	.label_1406
	lea	r14, [r12 + 0x20]
	lea	rdi, [rdi]
	lea	rcx, [r12 + 0x78]
.label_1409:
	nop	
	mov	rdx, r13
	nop	
	sub	rdx, r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_1410
	mov	rbp, qword ptr [r12]
	mov	rbp, rbp
	add	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rbp, rbx
.label_1365:
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r14
	call	rpl_mbrtowc
	mov	r14, rax
	mov	rsp, rsp
	lea	rax, [r14 - 1]
	cmp	rax, -4
	mov	rbp, rbp
	ja	.label_1368
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x50], r13
	nop	
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 8]
	je	.label_1384
	mov	rsp, rsp
	lea	rdi, [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x70]
	lea	rdi, [rdi]
	mov	esi, r13d
	lea	rsi, [rsi]
	call	wcrtomb
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	mov	rbp, rbp
	jne	.label_1395
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	jmp	.label_1398
.label_1410:
	mov	rsp, rsp
	lea	rbp, [rsp + 0x10]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	nop	
	jle	.label_1365
	lea	rsi, [rsi]
	mov	r8, rbx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1414:
	cmp	rsi, rdx
	jge	.label_1412
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	rbp, rbp
	mov	byte ptr [rsp + rsi + 0x10], bl
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jl	.label_1414
	mov	rbx, r8
	nop	
	jmp	.label_1365
.label_1368:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1367
	lea	rsi, [rsi]
	cmp	r14, -2
	jne	.label_1370
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1370
.label_1367:
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	mov	rbp, rbp
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1405
.label_1372:
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1375
.label_1376:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	nop	
	cmp	r14, -1
	lea	rsi, [rsi]
	je	.label_1400
.label_1381:
	mov	rbp, r15
	nop	
	jmp	.label_1357
.label_1395:
	lea	rsi, [rsi]
	cmp	r8, -1
	je	.label_1384
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1408
.label_1370:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_1406:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rbx
.label_1391:
	xor	eax, eax
.label_1389:
	add	rsp, 0x78
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1384:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	nop	
	add	rdi, r15
	nop	
	mov	rsi, rbp
.label_1398:
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	memcpy
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_1377
	mov	rax, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	cmp	r14, 4
	mov	rbp, rbp
	jb	.label_1383
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, r14
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_1383
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	nop	
	jb	.label_1394
	lea	rdi, [rdi]
	mov	edx, 1
	movq	xmm1, rdx
	nop	
	pslldq	xmm1, 8
	mov	rsp, rsp
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_984]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1394:
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1413
	lea	rsi, [rax + r15*8 + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_984]]
	nop	
.label_1385:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	mov	rbp, rbp
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rsi, [rsi]
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	lea	rsi, [rsi]
	movdqa	xmm4, xmm3
	lea	rsi, [rsi]
	paddq	xmm4, xmm1
	nop	
	paddq	xmm3, xmm2
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	mov	rsp, rsp
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	nop	
	add	rdx, 8
	nop	
	cmp	rdx, rcx
	mov	rsp, rsp
	jne	.label_1385
.label_1413:
	mov	rsp, rsp
	cmp	r14, rcx
	nop	
	mov	rsi, rcx
	nop	
	je	.label_1377
.label_1383:
	mov	rcx, r14
	lea	rsi, [rsi]
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	nop	
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_1390:
	mov	rsp, rsp
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	add	rax, 8
	dec	rcx
	mov	rsp, rsp
	jne	.label_1390
.label_1377:
	add	rbx, r14
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_1407
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_1357
.label_1407:
	mov	rbp, rbp
	mov	rbp, r15
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_1357
.label_1412:
	mov	rbx, r8
	jmp	.label_1365
.label_1408:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1374
	nop	
	shl	rdi, 3
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	lea	rdi, [rdi]
	call	malloc
	mov	r8, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1386
.label_1374:
	mov	qword ptr [rsp + 0x58], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1392
	nop	
	test	r15, r15
	je	.label_1397
	mov	rbp, rbp
	xor	edx, edx
	cmp	r15, 4
	nop	
	jb	.label_1399
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_1399
	lea	rdi, [rdi]
	lea	rdi, [r15 - 4]
	mov	rsp, rsp
	mov	rsi, rdi
	lea	rdi, [rdi]
	shr	rsi, 2
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rdi, 2
	lea	rsi, [rsi]
	jb	.label_1404
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	nop	
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_984]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	nop	
	mov	edx, 4
.label_1404:
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	je	.label_1363
	mov	rsp, rsp
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_984]]
.label_1369:
	movq	xmm2, rdx
	nop	
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	nop	
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jne	.label_1369
.label_1363:
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	je	.label_1397
.label_1399:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1399
.label_1397:
	mov	byte ptr [r12 + 0x8c], 1
.label_1392:
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, rbp
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x50], r8
	lea	rsi, [rsi]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	dword ptr [rax + r15*4], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x60]
	jb	.label_1402
	mov	r9, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	lea	rsi, [rsi]
	cmp	r10, 4
	mov	rsp, rsp
	jb	.label_1362
	mov	rbp, rbp
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	lea	rsi, [rsi]
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1362
	lea	rsi, [rsi]
	mov	rax, rcx
	or	rax, 1
	mov	rsp, rsp
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	nop	
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	mov	rbp, rbp
	movq	xmm2, rbx
	nop	
	mov	r11, rbx
	lea	rdi, [rdi]
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	lea	rdi, [rdi]
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_984]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1379]]
	mov	rsp, rsp
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1380]],  0xe8
.label_1388:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	lea	rdi, [rdi]
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	nop	
	movdqa	xmm4, xmm5
	lea	rdi, [rdi]
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	mov	rbp, rbp
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	lea	rsi, [rsi]
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	nop	
	movdqa	xmm4, xmm3
	lea	rdi, [rdi]
	pcmpgtd	xmm4, xmm1
	lea	rsi, [rsi]
	pshufd	xmm2, xmm4, 0xa0
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	mov	rsp, rsp
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	nop	
	pandn	xmm0, xmm11
	nop	
	por	xmm0, xmm5
	mov	rbp, rbp
	pand	xmm7, xmm2
	nop	
	pandn	xmm2, xmm11
	nop	
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	lea	rdi, [rdi]
	movq	qword ptr [rdx + rsi*4], xmm6
	lea	rdi, [rdi]
	add	rsi, 4
	nop	
	cmp	r13, rsi
	jne	.label_1388
	mov	rbp, rbp
	cmp	r10, r13
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	je	.label_1402
.label_1362:
	lea	rsi, [rsi]
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1371:
	cmp	rax, r14
	nop	
	mov	rsi, r11
	cmovb	rsi, rax
	nop	
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rbp, rbp
	inc	rax
	cmp	rdi, rax
	jne	.label_1371
.label_1402:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 0x58]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x58], rax
	nop	
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_1359
	add	qword ptr [r12 + 0x68], rcx
.label_1359:
	nop	
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_1357
.label_1405:
	mov	al, byte ptr [rcx + rdx]
	nop	
	jmp	.label_1372
.label_1375:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	mov	rbp, rbp
	jmp	.label_1376
.label_1400:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_1381
.label_1386:
	mov	rbp, rbp
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_1389
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d90

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	mov	rbp, rbp
	jle	.label_1419
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_1416
	nop	word ptr [rax + rax]
.label_1418:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_1427
.label_1425:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_1415
.label_1423:
	nop	
	mov	ecx, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_1415:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	nop	
	jge	.label_1422
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rax*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	mov	rcx, rbp
.label_1422:
	nop	
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1416
	mov	rbp, rbp
	jmp	.label_1426
.label_1421:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	nop	
	lea	rsi, [rsp + 0x10]
	jle	.label_1417
	nop	
.label_1420:
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1424
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_1420
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	jmp	.label_1417
.label_1427:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rsp, rsp
	jmp	.label_1425
.label_1424:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	jmp	.label_1417
	nop	word ptr cs:[rax + rax]
.label_1416:
	nop	
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, r13
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1421
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1417:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	jb	.label_1418
	cmp	rax, -2
	jne	.label_1423
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jge	.label_1418
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_1419:
	mov	rcx, r13
.label_1426:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412fb0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	qword ptr [rsp], rsi
	mov	r14, rdi
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_1451
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1429
.label_1451:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_1434
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rsp + 0x28], 0
	mov	rbp, rbp
	jne	.label_1436
	nop	
	jmp	.label_1449
.label_1434:
	mov	r13, rbx
	jmp	.label_1429
.label_1431:
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1428
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1450
	nop	word ptr cs:[rax + rax]
.label_1436:
	nop	
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [r14 + 0x48], rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	ja	.label_1437
	nop	
	mov	ecx, 0x604
	bt	ecx, eax
	mov	rsp, rsp
	mov	ebp, 0
	lea	rsi, [rsi]
	jb	.label_1442
.label_1437:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x28]
	nop	
	mov	r13, qword ptr [rsp + 0x30]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rbp
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1435
	nop	
	mov	eax, dword ptr [r13]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1438
.label_1435:
	mov	rax, qword ptr [rsp + 8]
	or	qword ptr [r15 + 0xa8], rax
.label_1442:
	mov	ecx, dword ptr [r15 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	nop	
	je	.label_1431
	mov	rax, qword ptr [r15 + 0x70]
.label_1450:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	r13, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1448
	mov	qword ptr [rbx], r13
.label_1448:
	test	rbp, rbp
	je	.label_1440
	mov	rsp, rsp
	mov	qword ptr [rbp], r13
.label_1440:
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbx, r13
	mov	rbp, rbp
	je	.label_1436
	jmp	.label_1429
.label_1447:
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1428
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1430
	nop	word ptr cs:[rax + rax]
.label_1449:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	call	peek_token
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [r14 + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [r12 + 8]
	lea	rsi, [rsi]
	or	eax, 8
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	ebp, 0
	je	.label_1444
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 0x30]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_1439
	mov	eax, dword ptr [r13]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1438
.label_1439:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	or	qword ptr [r15 + 0xa8], rax
.label_1444:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1447
	mov	rax, qword ptr [r15 + 0x70]
.label_1430:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_1452
	mov	rsp, rsp
	mov	qword ptr [rbx], r13
.label_1452:
	test	rbp, rbp
	nop	
	je	.label_1445
	mov	qword ptr [rbp], r13
.label_1445:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	nop	
	mov	rbx, r13
	nop	
	je	.label_1449
	mov	rsp, rsp
	jmp	.label_1429
.label_1438:
	xor	r13d, r13d
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1429
	mov	rbp, rbp
	mov	r14d, 0x400ff
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1433:
	nop	
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1433
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1433
	nop	dword ptr [rax]
.label_1441:
	mov	eax, dword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_1443
	cmp	eax, 6
	mov	rbp, rbp
	jne	.label_1446
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1432
	nop	word ptr cs:[rax + rax]
.label_1443:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp + 0x28]
.label_1432:
	mov	rbp, rbp
	call	free
.label_1446:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1429
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	cmp	rbx, rbp
	mov	rbp, rax
	mov	rsp, rsp
	je	.label_1441
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rax
	mov	rbp, rbp
	je	.label_1441
	lea	rdi, [rdi]
	jmp	.label_1433
.label_1428:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
.label_1429:
	mov	rax, r13
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4134b0

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1482
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [r15], r12b
	mov	rsp, rsp
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	nop	
	and	eax, 0xff9fffff
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	mov	rbp, rbp
	jl	.label_1456
	nop	
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1456
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rcx + rax*4], -1
	mov	rbp, rbp
	je	.label_1460
.label_1456:
	cmp	r12d, 0x5c
	jne	.label_1464
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1466
	cmp	byte ptr [rbp + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_1471
.label_1465:
	mov	rcx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rcx + rax]
.label_1479:
	mov	rsp, rsp
	mov	byte ptr [r15], r14b
	mov	rsp, rsp
	and	ebx, 0xff9fff00
	nop	
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1473
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	mov	rsp, rsp
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	mov	rbp, rbp
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	nop	
	or	eax, ecx
	jmp	.label_1484
.label_1482:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_1454
.label_1464:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1490
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	nop	
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	nop	
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	nop	
	or	cl, al
	mov	rsp, rsp
	movzx	ecx, cl
	shl	ecx, 0x16
	lea	rdi, [rdi]
	mov	eax, 0xffbfffff
	mov	rbp, rbp
	and	eax, dword ptr [r15 + 8]
	lea	rdi, [rdi]
	or	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_1457
.label_1466:
	lea	rsi, [rsi]
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1468
.label_1490:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	mov	rbp, rbp
	cmp	r12d, 0x5f
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	shr	eax, 3
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	shl	eax, 0x16
	or	eax, ebx
.label_1457:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	mov	rsp, rsp
	cmp	r12d, 0x3e
	mov	rbp, rbp
	jg	.label_1480
	mov	rsp, rsp
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	nop	
	ja	.label_1483
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1486]]
.label_3132:
	nop	
	mov	rdx, r13
	mov	rbp, rbp
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_1487
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	lea	rsi, [rsi]
	je	.label_1487
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x48], rcx
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	ja	.label_1454
	nop	
	mov	eax, dword ptr [r15 + 8]
.label_1487:
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_1454
.label_1480:
	mov	rsp, rsp
	cmp	r12d, 0x7a
	lea	rsi, [rsi]
	jg	.label_1467
	cmp	r12d, 0x3f
	je	.label_1469
	lea	rdi, [rdi]
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1472
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_1454
	mov	rbp, rbp
	test	edx, 0x800008
	mov	rbp, rbp
	jne	.label_1478
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1478
	test	dh, 8
	je	.label_1454
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_1454
.label_1478:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x10
	jmp	.label_1454
.label_1473:
	movzx	ebp, r14b
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	mov	rbp, rbp
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	lea	rdi, [rdi]
	shl	eax, 0x16
	nop	
	or	eax, ebx
.label_1484:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	ecx, 0x5f
	nop	
	jg	.label_1453
	lea	edx, [rcx - 0x27]
	mov	rsp, rsp
	cmp	edx, 0x2c
	mov	rsp, rsp
	ja	.label_1458
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1461]]
.label_3177:
	mov	rdx, r13
	test	dh, 0x40
	lea	rdi, [rdi]
	jne	.label_1454
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	nop	
	mov	qword ptr [r15], rax
	jmp	.label_1454
.label_1467:
	cmp	r12d, 0x7b
	je	.label_1470
	mov	rsp, rsp
	cmp	r12d, 0x7c
	lea	rsi, [rsi]
	mov	rcx, r13
	lea	rdi, [rdi]
	je	.label_1474
	cmp	r12d, 0x7d
	lea	rdi, [rdi]
	jne	.label_1454
	and	ecx, 0x1200
	lea	rdi, [rdi]
	cmp	rcx, 0x1200
	je	.label_1477
	jmp	.label_1454
.label_1460:
	mov	rbp, rbp
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1468:
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	mov	r14d, 1
.label_1454:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1453:
	lea	edx, [rcx - 0x73]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	ja	.label_1488
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1489]]
.label_3051:
	lea	rsi, [rsi]
	test	r13d, 0x80000
	jne	.label_1454
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1454
.label_1483:
	cmp	r12d, 0xa
	mov	rsp, rsp
	jne	.label_1454
	lea	rdi, [rdi]
	mov	rcx, r13
	test	ch, 8
	jne	.label_1455
	jmp	.label_1454
.label_3133:
	mov	rbp, rbp
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1459
	nop	
	jmp	.label_1454
.label_3134:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rdi, [rdi]
	test	ch, 0x20
	lea	rsi, [rsi]
	jne	.label_1462
	lea	rdi, [rdi]
	jmp	.label_1454
.label_3135:
	mov	rbp, rbp
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1454
.label_3136:
	test	r13w, 0x402
	lea	rdi, [rdi]
	jne	.label_1454
	jmp	.label_1475
.label_3137:
	nop	
	and	eax, 0xffffff00
	or	eax, 5
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_1454
.label_1469:
	lea	rsi, [rsi]
	test	r13w, 0x402
	jne	.label_1454
	jmp	.label_1481
.label_1472:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_1454
.label_1470:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	mov	rsp, rsp
	je	.label_1485
	jmp	.label_1454
.label_1474:
	test	ch, 4
	mov	rsp, rsp
	jne	.label_1454
	lea	rsi, [rsi]
	test	cx, cx
	lea	rdi, [rdi]
	js	.label_1455
	lea	rdi, [rdi]
	jmp	.label_1454
.label_1488:
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1491
	nop	
	cmp	ecx, 0x62
	nop	
	jne	.label_1454
	test	r13d, 0x80000
	jne	.label_1454
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_1454
.label_1471:
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_1463
	mov	rdx, qword ptr [rbp + 0x10]
	nop	
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	mov	rbp, rbp
	je	.label_1465
	mov	rbp, rbp
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	mov	rsp, rsp
	je	.label_1463
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	nop	
	je	.label_1465
.label_1463:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	je	.label_1476
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1476:
	nop	
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	nop	
	je	.label_1479
	test	r14b, r14b
	lea	rdi, [rdi]
	js	.label_1465
	mov	rbp, rbp
	jmp	.label_1479
.label_1458:
	cmp	ecx, 0x57
	mov	rsp, rsp
	jne	.label_1454
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_1454
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	lea	rdi, [rdi]
	jmp	.label_1454
.label_3052:
	nop	
	test	r13d, 0x80000
	lea	rsi, [rsi]
	jne	.label_1454
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1454
.label_3053:
	lea	rdi, [rdi]
	and	r13d, 0x1200
	nop	
	cmp	r13, 0x200
	lea	rsi, [rsi]
	jne	.label_1454
.label_1485:
	lea	rdi, [rdi]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0x17
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1454
.label_3054:
	mov	rcx, r13
	lea	rsi, [rsi]
	test	ch, 4
	nop	
	jne	.label_1454
	test	cx, cx
	js	.label_1454
.label_1455:
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_1454
.label_3055:
	and	r13d, 0x1200
	lea	rdi, [rdi]
	cmp	r13, 0x200
	jne	.label_1454
.label_1477:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_1454
.label_1491:
	nop	
	test	r13d, 0x80000
	nop	
	jne	.label_1454
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_1454
.label_3173:
	test	r13d, 0x80000
	jne	.label_1454
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_1454
.label_3174:
	mov	rcx, r13
	test	ch, 0x20
	lea	rdi, [rdi]
	jne	.label_1454
.label_1459:
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1454
.label_3175:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1454
.label_1462:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1454
.label_3176:
	and	r13d, 0x402
	lea	rdi, [rdi]
	cmp	r13, 2
	jne	.label_1454
.label_1475:
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1454
.label_3178:
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_1454
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	rbp, rbp
	mov	dword ptr [r15], 6
	lea	rdi, [rdi]
	jmp	.label_1454
.label_3179:
	test	r13d, 0x80000
	jne	.label_1454
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_1454
.label_3180:
	nop	
	and	r13d, 0x402
	lea	rsi, [rsi]
	cmp	r13, 2
	jne	.label_1454
.label_1481:
	and	eax, 0xffffff00
	or	eax, 0x13
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1454
.label_3181:
	mov	rbp, rbp
	test	r13d, 0x80000
	lea	rdi, [rdi]
	jne	.label_1454
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_1454
.label_3182:
	mov	rsp, rsp
	test	r13d, 0x80000
	nop	
	jne	.label_1454
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1454
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413d40

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi]
	call	parse_expression
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_1524
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1500
.label_1524:
	nop	
	mov	r13, r14
	test	r15, r15
	mov	rsp, rsp
	jne	.label_1509
	jmp	.label_1513
.label_1502:
	test	rbx, rbx
	mov	rbp, rbp
	cmove	rbx, r14
.label_1509:
	movzx	eax, byte ptr [r12 + 8]
	mov	rbp, rbp
	cmp	eax, 0xa
	ja	.label_1519
	mov	ecx, 0x604
	bt	ecx, eax
	mov	rbp, rbp
	jb	.label_1520
.label_1519:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, r15
	mov	rsp, rsp
	mov	r9, r13
	call	parse_expression
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	setne	al
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1493
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_1499
.label_1493:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1502
	mov	rbp, rbp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1502
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1505
	nop	
	mov	rax, qword ptr [rbp + 0x70]
.label_1521:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	rbp, rbp
	mov	qword ptr [r14], rdx
	mov	rbp, rbp
	mov	rbx, rdx
	jmp	.label_1509
.label_1505:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	nop	
	je	.label_1492
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1521
	nop	word ptr cs:[rax + rax]
.label_1510:
	mov	rbp, rbp
	test	rbx, rbx
	cmove	rbx, r14
.label_1513:
	mov	eax, dword ptr [r12 + 8]
	lea	rdi, [rdi]
	or	eax, 8
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 0xa
	je	.label_1495
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	nop	
	call	parse_expression
	mov	r14, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	setne	al
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1504
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	jne	.label_1499
.label_1504:
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1510
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_1510
	mov	ecx, dword ptr [rbp + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	nop	
	je	.label_1511
	mov	rax, qword ptr [rbp + 0x70]
.label_1496:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbp + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	lea	rsi, [rsi]
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1513
.label_1511:
	mov	rbp, rbp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1492
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_1496
.label_1499:
	xor	r13d, r13d
	test	al, al
	je	.label_1500
	nop	
	mov	r15d, 0x400ff
	mov	rsp, rsp
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_1507:
	lea	rdi, [rdi]
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_1507
	mov	rbx, qword ptr [rbp + 0x10]
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1507
	nop	word ptr cs:[rax + rax]
.label_1506:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_1512
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_1516
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	nop	
	call	free
	mov	rdi, rbx
	jmp	.label_1523
	nop	word ptr [rax + rax]
.label_1512:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x28]
.label_1523:
	call	free
.label_1516:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1500
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	mov	rbp, rax
	nop	
	je	.label_1506
	test	rbx, rbx
	mov	rbp, rax
	mov	rbp, rbp
	je	.label_1506
	jmp	.label_1507
.label_1520:
	mov	r13, rbx
	jmp	.label_1500
.label_1495:
	mov	r13, rbx
.label_1500:
	mov	rbp, rbp
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1492:
	nop	
	mov	r15d, 0x400ff
.label_1498:
	mov	rsp, rsp
	mov	rbp, r14
	mov	r14, qword ptr [rbp + 8]
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1498
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp + 0x10]
	nop	
	test	r14, r14
	jne	.label_1498
	nop	word ptr cs:[rax + rax]
.label_1494:
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r15d
	mov	rsp, rsp
	cmp	eax, 3
	je	.label_1497
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1515
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14]
	nop	
	call	free
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	call	free
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1522
.label_1497:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_1522:
	nop	
	call	free
.label_1515:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1525
	mov	r14, qword ptr [rax + 0x10]
	nop	
	cmp	r14, rbp
	mov	rbp, rax
	je	.label_1494
	lea	rdi, [rdi]
	test	r14, r14
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1494
	lea	rsi, [rsi]
	jmp	.label_1498
.label_1525:
	mov	r14d, 0x400ff
.label_1501:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1501
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1501
	nop	
.label_1518:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x30]
	mov	rsp, rsp
	and	eax, r14d
	cmp	eax, 3
	je	.label_1503
	cmp	eax, 6
	nop	
	jne	.label_1508
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	jmp	.label_1514
.label_1503:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_1514:
	nop	
	call	free
.label_1508:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1517
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_1518
	test	rbx, rbx
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_1518
	mov	rbp, rbp
	jmp	.label_1501
.label_1517:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_1500
	nop	
	.section	.text
	.align	32
	#Procedure 0x4142f0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xe8
	nop	
	mov	r12, r9
	mov	qword ptr [rsp + 0x98], r12
	mov	rsp, rsp
	mov	r13, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdi
	mov	eax, dword ptr [rdx + 8]
	mov	rbp, rbp
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	mov	rsp, rsp
	ja	.label_1534
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1772]]
.label_3079:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_8
	nop	
	mov	ecx, OFFSET FLAT:.str.2_3
	nop	
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	mov	r9, r12
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1753
	mov	r9, rbx
	mov	rbp, rbp
	jmp	.label_1547
.label_3080:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	cmp	ecx, 0x23
	sete	al
	mov	rbp, rbp
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_2
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_1773
.label_1753:
	nop	
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	r9, rbx
	je	.label_1547
	nop	
	jmp	.label_1534
.label_3070:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1536
	mov	rax, qword ptr [r9 + 0x70]
.label_1664:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1541
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1575
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	jmp	.label_1547
.label_1708:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1582
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	peek_token
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1593
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
.label_1655:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp]
	nop	
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1669:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	je	.label_1622
	mov	rax, qword ptr [r9 + 0x70]
.label_1699:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1577
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	lea	rsi, [rsi]
	jg	.label_1575
	lea	rdi, [rdi]
	jmp	.label_1547
.label_1593:
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	r9, rbp
	test	rax, rax
	mov	rsp, rsp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_1669
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1655
.label_1622:
	nop	
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	mov	r13, r9
	call	malloc
	nop	
	mov	r9, r13
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1577
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1699
.label_1575:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1708
	mov	rsp, rsp
	mov	rbp, r15
	jmp	.label_1547
.label_3071:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	eax, cl
	mov	rbp, rbp
	cdqe	
	lea	rsi, [rsi]
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1715
	or	qword ptr [r9 + 0xa0], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1727
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1713:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	movdqu	xmm1, xmmword ptr [rbx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	inc	qword ptr [r9 + 0x98]
	nop	
	or	byte ptr [r9 + 0xb0], 2
	mov	rsp, rsp
	jmp	.label_1547
.label_3072:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1756
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp]
.label_1689:
	mov	qword ptr [rsp], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	nop	
	jle	.label_1547
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1547
.label_3073:
	mov	qword ptr [rsp + 0x18], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_1561
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rsi, [rsi]
	inc	r13
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	rsi, rax
	xor	r15d, r15d
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	mov	rsp, rsp
	jne	.label_1534
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1587
	mov	r15, rbp
.label_1561:
	nop	
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	mov	rbx, r15
	ja	.label_1639
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1639:
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1598
	mov	rax, qword ptr [r9 + 0x70]
.label_1732:
	mov	rbp, rbp
	mov	qword ptr [rsp], r14
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	nop	
	je	.label_1604
	mov	rbp, rbp
	mov	qword ptr [rsi], rbp
.label_1604:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_1547
.label_3074:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	ecx, 0x20000
	lea	rdi, [rdi]
	jne	.label_1630
	mov	rsp, rsp
	mov	dword ptr [r12], 0x10
	mov	rbp, rbp
	jmp	.label_1635
.label_3076:
	mov	r15, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	mov	rbp, rbp
	je	.label_1638
	mov	al, byte ptr [r9 + 0xb0]
	nop	
	test	al, 0x10
	jne	.label_1566
	lea	rsi, [rsi]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	nop	
	test	al, 8
	mov	ebp, 0
	mov	rbp, rbp
	jne	.label_1647
	lea	rdi, [rdi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1658]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rsi, [rsi]
	mov	ebx, 0x80
	test	al, 4
	je	.label_1647
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1566:
	mov	eax, dword ptr [r15]
.label_1638:
	cmp	eax, 0x200
	je	.label_1672
	lea	rsi, [rsi]
	cmp	eax, 0x100
	jne	.label_1678
	mov	dword ptr [r15], 6
	mov	r13, r15
	mov	rbp, rbp
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	lea	rdi, [rdi]
	je	.label_1683
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1640:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	mov	rbp, rbp
	jmp	.label_1696
.label_3078:
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, 0x1000000
	jne	.label_1611
.label_3075:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	cl, 0x20
	jne	.label_1611
	test	cl, 0x10
	lea	rdi, [rdi]
	jne	.label_1726
.label_1630:
	nop	
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 1
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 8], eax
	mov	rbp, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1729
	nop	
	mov	rax, qword ptr [r9 + 0x70]
.label_1628:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1619:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1547
.label_3081:
	mov	dword ptr [r12], 5
	jmp	.label_1635
.label_3077:
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x90], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	lea	rdi, [rdi]
	mov	edi, 0x50
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_1526
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1526
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0x19
	nop	
	je	.label_1538
	mov	rsp, rsp
	cmp	edx, 2
	je	.label_1545
	mov	dword ptr [rsp + 0xe0], 0
	nop	
	jmp	.label_1548
.label_1773:
	mov	r9, rbx
	nop	
	jmp	.label_1547
.label_1726:
	mov	r15, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x58]
	nop	
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, r13
	mov	rbp, rbp
	mov	r9, r12
	lea	rsi, [rsi]
	add	rsp, 0xe8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	parse_expression
.label_1541:
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_1547
.label_1538:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	or	byte ptr [rcx + 0x20], 1
	nop	
	test	bh, 1
	lea	rdi, [rdi]
	je	.label_1588
	or	byte ptr [r13 + 1], 4
.label_1588:
	cdqe	
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	add	qword ptr [rsi + 0x48], rax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 2
	lea	rsi, [rsi]
	je	.label_1545
	mov	dl, 1
	mov	dword ptr [rsp + 0xe0], edx
.label_1548:
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	cmp	edx, 0x15
	mov	rsp, rsp
	jne	.label_1609
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp + 8], ecx
.label_1609:
	lea	rcx, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x20], 3
	lea	rdi, [rsp + 0x20]
	mov	r9d, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r8, rbx
	call	parse_bracket_element
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1543
	mov	rbp, rbp
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0xd0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_1634
.label_1535:
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_1644
	nop	
	mov	qword ptr [rsp + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	lea	rax, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	rbp, qword ptr [rsp]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_1634
	lea	rdi, [rdi]
	jmp	.label_1543
.label_3183:
	nop	
	mov	cl, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1679
.label_3184:
	mov	r15, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rbp, rbp
	je	.label_1690
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
.label_1571:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0x28]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	nop	
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1557
.label_1741:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	al, byte ptr [rax]
	jmp	.label_1707
.label_1725:
	nop	
	xor	eax, eax
.label_1707:
	cmp	ebx, 3
	je	.label_1710
	lea	rsi, [rsi]
	test	ebx, ebx
	jne	.label_1771
	nop	
	mov	bpl, byte ptr [rsp + 0xa8]
	jmp	.label_1608
.label_1710:
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	bpl, byte ptr [rcx]
	lea	rdi, [rdi]
	jmp	.label_1608
.label_1771:
	mov	rbp, rbp
	xor	ebp, ebp
.label_1608:
	lea	rsi, [rsi]
	cmp	r15d, 3
	je	.label_1563
	test	r15d, r15d
	mov	rsp, rsp
	jne	.label_1724
.label_1563:
	test	r12, r12
	movzx	edx, al
	je	.label_1728
	mov	edi, edx
	call	btowc
	mov	rbp, rbp
	mov	edx, eax
	jmp	.label_1728
.label_1724:
	mov	edx, dword ptr [rsp + 0x28]
.label_1728:
	cmp	ebx, 3
	je	.label_1722
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_1731
.label_1722:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1685
	mov	edi, ebp
	nop	
	mov	ebx, edx
	nop	
	call	btowc
	mov	edx, ebx
	lea	rdi, [rdi]
	mov	ebp, eax
	jmp	.label_1685
.label_1731:
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0xa8]
.label_1685:
	mov	rsp, rsp
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1570
	cmp	ebp, -1
	je	.label_1570
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_1744
	cmp	edx, ebp
	lea	rsi, [rsi]
	mov	ecx, 0xb
	ja	.label_1570
.label_1744:
	test	r12, r12
	je	.label_1751
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x50], rax
	je	.label_1754
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	nop	
	mov	r15, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rsp + 0x14]
.label_1559:
	mov	dword ptr [rdi + rax*4], edx
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_1695
.label_1751:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x14]
.label_1695:
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
.label_1549:
	mov	rbp, rbp
	cmp	rdx, rcx
	mov	rbp, rbp
	ja	.label_1586
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_1586
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	lea	rdi, [rdi]
	shr	rdi, 0x3a
	mov	rsp, rsp
	add	rdi, rcx
	mov	rbp, rbp
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1586:
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, 0x100
	lea	rdi, [rdi]
	jne	.label_1549
	mov	dword ptr [r12], 0
	jmp	.label_1557
.label_1690:
	lea	rsi, [rsi]
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1574
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x38], rbp
	nop	
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	jmp	.label_1571
.label_1754:
	mov	dword ptr [rsp + 0xdc], edx
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + rax]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	lea	rbx, [rax*4 + 4]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	nop	
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	r15, qword ptr [rsp + 8]
	je	.label_1590
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1590
	mov	rax, qword ptr [rsp + 0x50]
	nop	
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0xdc]
	jmp	.label_1559
.label_1634:
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0x20]
	nop	
	cmp	r15d, 2
	je	.label_1618
	cmp	r15d, 4
	jne	.label_1554
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	mov	rdx, r15
	lea	rcx, [rsp + 0x90]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	build_charclass
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_1557
	nop	
	jmp	.label_1645
.label_1554:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	je	.label_1646
	cmp	eax, 2
	jne	.label_1653
	mov	rbp, rbp
	jmp	.label_1656
.label_1646:
	mov	r13, r9
	nop	
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	nop	
	lea	rdi, [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	ecx, 0x15
	je	.label_1600
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	je	.label_1625
	mov	rsp, rsp
	lea	rcx, [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	mov	dword ptr [rsp + 0xa0], 3
	mov	r9d, 1
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa0]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1700
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	peek_token_bracket
	mov	rbp, rbp
	cmp	dword ptr [r13 + 0xb4], 1
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jg	.label_1709
	xor	r12d, r12d
.label_1709:
	nop	
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	cmp	ebx, 2
	je	.label_1570
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	cmp	ebx, 4
	lea	rdi, [rdi]
	je	.label_1570
	cmp	r15d, 3
	lea	rsi, [rsi]
	jne	.label_1765
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	strlen
	mov	ecx, 3
	mov	rbp, rbp
	cmp	rax, 1
	ja	.label_1570
.label_1765:
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_1736
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xa8]
	call	strlen
	nop	
	mov	ecx, 3
	cmp	rax, 1
	nop	
	ja	.label_1570
.label_1736:
	mov	rbp, rbp
	cmp	r15d, 3
	nop	
	je	.label_1741
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_1725
	mov	al, byte ptr [rsp + 0x28]
	jmp	.label_1707
.label_1600:
	nop	
	mov	eax, ebx
	neg	eax
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1653:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	mov	eax, r15d
	cmp	r15d, 3
	mov	rbp, rbp
	ja	.label_1757
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1764]]
.label_1618:
	mov	rbp, qword ptr [rsp + 0x28]
	nop	
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1767
	mov	cl, byte ptr [rbp]
	mov	rbp, rbp
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1679:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
.label_1557:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	nop	
	movzx	eax, byte ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x15
	jne	.label_1535
	mov	rbp, rbp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0xe0]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_1610
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1610:
	mov	eax, dword ptr [r9 + 0xb4]
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	jl	.label_1564
	mov	rcx, qword ptr [r9 + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	and	qword ptr [r13], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	and	qword ptr [r13 + 0x10], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1564:
	cmp	qword ptr [r15 + 0x28], 0
	mov	rsp, rsp
	jne	.label_1578
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	jne	.label_1578
	cmp	qword ptr [r15 + 0x38], 0
	mov	rsp, rsp
	jne	.label_1578
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rsi, [rsi]
	jne	.label_1578
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_1592
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1578
	test	byte ptr [r15 + 0x20], 1
	nop	
	jne	.label_1578
.label_1592:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1614
	mov	rax, qword ptr [r9 + 0x70]
.label_1763:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1619
.label_1578:
	nop	
	or	byte ptr [r9 + 0xb0], 2
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1636
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1544:
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	nop	
	jne	.label_1613
	nop	
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1613
	nop	
	cmp	qword ptr [r13 + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1613
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1673
.label_1613:
	nop	
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	mov	eax, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	eax, 0xf
	mov	rsp, rsp
	je	.label_1594
	mov	rbp, qword ptr [r9 + 0x70]
.label_1686:
	mov	rbp, rbp
	lea	ecx, [rax + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	mov	rbp, rbp
	shl	rbx, 6
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	nop	
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + rbx + 0x40], -1
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1714
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1551:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rdi], rbp
	jmp	.label_1547
.label_1672:
	lea	rsi, [rsi]
	mov	dword ptr [r15], 5
	mov	rbp, rbp
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1740
	mov	rax, qword ptr [r9 + 0x70]
.label_1661:
	lea	ecx, [rbp + 1]
	nop	
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	mov	rbp, rbp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	ecx, 0xa
.label_1696:
	mov	dword ptr [r13], ecx
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	ebx, 0xf
	lea	rsi, [rsi]
	je	.label_1733
	mov	rax, qword ptr [r9 + 0x70]
.label_1745:
	lea	ecx, [rbx + 1]
	nop	
	mov	dword ptr [r15], ecx
	nop	
	movsxd	rcx, ebx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1743:
	mov	rbp, rbp
	mov	ecx, dword ptr [r15]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1546
	mov	rax, qword ptr [r9 + 0x70]
.label_1760:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r15], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	nop	
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1553
	mov	qword ptr [rbp], r15
.label_1553:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	je	.label_1577
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	nop	
	test	rbp, rbp
	jne	.label_1579
	jmp	.label_1577
.label_1678:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1584
	mov	rsp, rsp
	mov	r13, r15
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1674:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rsi, [rsi]
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	nop	
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
.label_1579:
	nop	
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	call	peek_token
	lea	rdi, [rdi]
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1534
.label_1729:
	mov	rbp, r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1577
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1628
.label_1543:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1627
.label_1545:
	mov	dword ptr [r12], 2
	jmp	.label_1643
.label_1644:
	mov	dword ptr [r12], 7
.label_1645:
	mov	qword ptr [rsp + 0x18], r9
	jmp	.label_1649
.label_1582:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_1547
.label_1536:
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1577
	nop	
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1664
.label_1715:
	mov	dword ptr [r12], 6
	jmp	.label_1635
.label_1756:
	nop	
	mov	rbx, r9
	mov	rsp, rsp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_1577
	lea	rsi, [rsi]
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	nop	
	jmp	.label_1689
.label_1526:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	jmp	.label_1577
.label_1727:
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1577
	mov	rsp, rsp
	mov	r9, rbp
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1713
.label_1598:
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1577
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r15
	jmp	.label_1732
.label_1733:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1743
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1745
.label_1546:
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1577
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1760
.label_1767:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1627
.label_1647:
	nop	
	mov	r13, r9
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1560:
	lea	rdi, [rdi]
	mov	rsi, rbx
	xor	eax, eax
	nop	dword ptr [rax]
.label_1677:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1529
	lea	rsi, [rsi]
	mov	edi, 1
	mov	cl, al
	mov	rsp, rsp
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1529:
	cmp	esi, 0x5f
	mov	rbp, rbp
	je	.label_1537
	mov	rsp, rsp
	movzx	ecx, word ptr [rdx + rsi*2]
	lea	rsi, [rsi]
	and	ecx, 8
	lea	rdi, [rdi]
	test	cx, cx
	nop	
	je	.label_1539
.label_1537:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	lea	rsi, [rsi]
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1539:
	mov	rsp, rsp
	add	rax, 2
	add	rsi, 2
	nop	
	cmp	rax, 0x40
	mov	rbp, rbp
	jne	.label_1677
	inc	rbp
	mov	rsp, rsp
	add	rbx, 0x40
	cmp	ebp, 4
	lea	rdi, [rdi]
	jne	.label_1560
	jmp	.label_1566
.label_1636:
	mov	qword ptr [rsp + 0x60], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1574
	mov	r9, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1544
.label_1594:
	nop	
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1574
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1686
.label_1714:
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1574
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_1551
.label_1656:
	mov	dword ptr [r12], 7
	mov	rsp, rsp
	jmp	.label_1627
.label_1683:
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 9
	mov	rsp, rsp
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1633
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1640
.label_1740:
	nop	
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1657
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1661
.label_1584:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1577
	mov	r13, r15
	mov	r9, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1674
.label_1577:
	lea	rdi, [rdi]
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_1635
.label_1625:
	mov	dword ptr [r12], 7
	jmp	.label_1697
.label_1673:
	mov	rbp, rdi
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rbx, r9
	lea	rdi, [rdi]
	call	free
	mov	r9, rbx
	lea	rdi, [rdi]
	jmp	.label_1547
.label_1587:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1705
	mov	rsp, rsp
	mov	r14d, 0x400ff
.label_1562:
	nop	
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1562
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	rsi, rsi
	jne	.label_1562
.label_1738:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_1718
	nop	
	cmp	eax, 6
	jne	.label_1721
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1734
.label_1718:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1734:
	nop	
	call	free
.label_1721:
	mov	rax, qword ptr [rbp]
	nop	
	test	rax, rax
	je	.label_1705
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rsi, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1738
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1738
	jmp	.label_1562
.label_1705:
	lea	rsi, [rsi]
	mov	dword ptr [r12], 8
	jmp	.label_1635
.label_1633:
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1696
.label_1657:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_1696
.label_1700:
	mov	dword ptr [r12], eax
	mov	rbp, rbp
	jmp	.label_1697
.label_1614:
	mov	qword ptr [rsp + 0x60], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1574
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1763
.label_1574:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1643:
	nop	
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_1649
.label_1590:
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	nop	
	mov	ecx, 0xc
.label_1570:
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], ecx
.label_1697:
	mov	rsp, rsp
	mov	r9, r13
.label_1627:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
.label_1649:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	ebp, 0
	jne	.label_1534
.label_1547:
	mov	qword ptr [rsp + 0x18], r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdx, r14
	mov	rbp, rbp
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	nop	
	mov	eax, r14d
	nop	
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0xd0], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x50], r14
	nop	dword ptr [rax]
.label_1723:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 8]
	nop	
	cmp	eax, 0x17
	ja	.label_1591
	mov	rsp, rsp
	mov	ecx, 0x8c0800
	mov	rbp, rbp
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_1596
	mov	r14, qword ptr [r13 + 0x48]
	nop	
	movdqu	xmm0, xmmword ptr [rbx]
	nop	
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdx, -1
	nop	
	cmp	eax, 0x17
	mov	rbp, rbp
	je	.label_1601
	mov	r14, rbp
	lea	rsi, [rsi]
	cmp	eax, 0x12
	nop	
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	lea	rsi, [rsi]
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rbp, rbp
	cmove	rcx, rax
	jmp	.label_1762
.label_1659:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*4]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	mov	rsp, rsp
	cmovle	rdx, rax
	nop	dword ptr [rax]
.label_1601:
	mov	rsp, rsp
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	nop	
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1637
	nop	
	cmp	eax, 2
	je	.label_1642
	lea	rsi, [rsi]
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1681
	nop	
	cmp	ecx, 0x30
	mov	rdx, -2
	nop	
	jb	.label_1601
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_1601
	cmp	r15, -2
	je	.label_1601
	cmp	ecx, 0x39
	nop	
	ja	.label_1601
	nop	
	cmp	r15, -1
	mov	rbp, rbp
	jne	.label_1659
	lea	rdx, [rcx - 0x30]
	nop	
	jmp	.label_1601
.label_1681:
	lea	rdi, [rdi]
	mov	esi, eax
	nop	dword ptr [rax]
.label_1637:
	cmp	r15, -1
	lea	rdi, [rdi]
	jne	.label_1666
	movzx	eax, dl
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1668
	cmp	esi, 1
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_1671
.label_1668:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rbp
	mov	rbp, rbp
	jmp	.label_1676
	nop	word ptr cs:[rax + rax]
.label_1666:
	cmp	r15, -2
	je	.label_1642
	lea	rdi, [rdi]
	cmp	esi, 0x18
	mov	rsp, rsp
	je	.label_1687
	cmp	esi, 1
	lea	rsi, [rsi]
	jne	.label_1642
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1642
.label_1671:
	mov	qword ptr [rsp + 0x60], r14
	nop	
	mov	r14, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	rdx, -1
	jmp	.label_1567
.label_1687:
	mov	rbp, rbp
	mov	r14, rbp
	mov	rcx, r15
	mov	rbp, rbp
	jmp	.label_1704
.label_1527:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	nop	
	cmovg	rdx, rax
.label_1567:
	mov	r12, rdx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 8]
	mov	rsp, rsp
	cmp	eax, 0x18
	lea	rsi, [rsi]
	je	.label_1720
	cmp	eax, 2
	je	.label_1730
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	je	.label_1720
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1567
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_1567
	cmp	r12, -2
	je	.label_1567
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x39
	nop	
	ja	.label_1567
	lea	rdi, [rdi]
	cmp	r12, -1
	mov	rsp, rsp
	jne	.label_1527
	nop	
	add	rcx, -0x30
	mov	rdx, rcx
	nop	
	jmp	.label_1567
.label_1720:
	mov	rcx, r12
	lea	rsi, [rsi]
	cmp	rcx, -2
	lea	rsi, [rsi]
	je	.label_1730
	cmp	rcx, -1
	mov	r12, rbp
	lea	rsi, [rsi]
	je	.label_1704
	cmp	r15, rcx
	mov	rsp, rsp
	jg	.label_1752
.label_1704:
	cmp	eax, 0x18
	nop	
	jne	.label_1752
	mov	rsp, rsp
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	lea	rdi, [rdi]
	jge	.label_1758
	nop	dword ptr [rax]
.label_1762:
	lea	rdi, [rdi]
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	mov	rsp, rsp
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r14
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1651
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r9
	mov	rax, r9
	lea	rsi, [rsi]
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rax, rdi
	lea	rsi, [rsi]
	je	.label_1531
	test	r15, r15
	lea	rdi, [rdi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	nop	
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	jg	.label_1621
.label_1691:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_1555
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_1568:
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1568
	mov	rdx, qword ptr [rcx + 0x10]
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1568
	nop	
.label_1589:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	esi, 0x11
	mov	rsp, rsp
	jne	.label_1576
	cmp	qword ptr [rcx + 0x28], rax
	nop	
	jne	.label_1576
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1576:
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1555
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	je	.label_1589
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	mov	rcx, rsi
	mov	rbp, rbp
	je	.label_1589
	jmp	.label_1568
	nop	dword ptr [rax + rax]
.label_1555:
	nop	
	mov	qword ptr [rsp + 0xe0], rdi
	nop	
	cmp	r9, -1
	sete	bl
	nop	
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1595
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + 0x70]
.label_1759:
	lea	rdi, [rdi]
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	nop	
	mov	dword ptr [r8 + 0x80], esi
	mov	rbp, rbp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	r12, r12
	je	.label_1605
	mov	rsp, rsp
	mov	qword ptr [r12], r13
.label_1605:
	lea	rsi, [rsi]
	add	r15, 2
	cmp	r15, r9
	jg	.label_1629
	nop	
	jmp	.label_1632
	nop	word ptr cs:[rax + rax]
.label_1531:
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1531
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1531
	nop	
.label_1682:
	nop	
	mov	eax, dword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	ecx, 0x400ff
	and	eax, ecx
	nop	
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_1735
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_1654
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	nop	
	mov	rdi, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, rbp
	jmp	.label_1667
	nop	dword ptr [rax]
.label_1735:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1667:
	mov	rsp, rsp
	call	free
.label_1654:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1651
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	je	.label_1682
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, rdx
	je	.label_1682
	jmp	.label_1531
.label_1761:
	mov	qword ptr [rsp + 8], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r15
	lea	rdi, [rdi]
	mov	r15, r8
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1701
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r8 + 0x80], 0
	nop	
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1703
.label_1530:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	lea	rdi, [rdi]
	jmp	.label_1623
.label_1556:
	mov	edi, 0x3c8
	mov	rsp, rsp
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r8, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1565
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1650
.label_1701:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1693
.label_1768:
	mov	qword ptr [r14], 0
.label_1693:
	xor	r12d, r12d
.label_1623:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	mov	r8, r15
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	je	.label_1565
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r8 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1606
	nop	word ptr cs:[rax + rax]
.label_1632:
	mov	rsp, rsp
	mov	rbp, qword ptr [r12]
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1761
	mov	rax, qword ptr [r8 + 0x70]
.label_1703:
	lea	rdx, [r12 + 0x28]
	nop	
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	r14, [rsp + 0x70]
	jmp	.label_1769
	nop	dword ptr [rax + rax]
.label_1603:
	lea	rdx, [r12 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	nop	
	lea	rcx, [rax + rsi + 8]
	nop	
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_1769:
	mov	qword ptr [rcx], rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1572
	mov	rsp, rsp
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1581
	nop	word ptr [rax + rax]
.label_1572:
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1665:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r12, rcx
	je	.label_1631
	test	r12, r12
	jne	.label_1626
.label_1631:
	mov	r12, qword ptr [rax]
	nop	
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1665
	nop	
	jmp	.label_1597
.label_1626:
	lea	r14, [rbp + 0x10]
.label_1581:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	nop	
	je	.label_1583
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1603
.label_1583:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1768
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1603
	nop	word ptr cs:[rax + rax]
.label_1597:
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1530
	mov	rax, qword ptr [r8 + 0x70]
	nop	
	mov	r12, rbx
.label_1606:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1565
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1556
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1650:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	r13, [rax + rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	nop	
	lea	r15, [r15 + 1]
	lea	rdi, [rdi]
	jl	.label_1632
.label_1629:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	je	.label_1694
	mov	rbx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x98]
	je	.label_1698
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1749:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	rdx, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	nop	
	jmp	.label_1706
.label_1694:
	mov	r12, qword ptr [rsp + 0x98]
.label_1706:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	jmp	.label_1641
.label_1752:
	mov	qword ptr [rsp + 0xe0], r14
.label_1676:
	nop	
	mov	dword ptr [r12], 0xa
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1651
.label_1621:
	mov	rbp, rbp
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rbp
	mov	rbp, rdi
	jl	.label_1739
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	rbp, rbp
	mov	ebx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	jmp	.label_1742
.label_1595:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	lea	rdi, [rdi]
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r8, rbp
	test	rax, rax
	je	.label_1565
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	jmp	.label_1759
.label_1730:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1642:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x50], 0
	nop	
	je	.label_1770
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xb0]
	nop	
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 8], 1
	nop	
	mov	rcx, rbp
	mov	qword ptr [rsp + 0xe0], rbp
	jmp	.label_1651
.label_1737:
	nop	
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 8], r9
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1540
	mov	rbp, rbp
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1716
.label_1620:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	rsp, rsp
	mov	r13, rbp
	jmp	.label_1532
.label_1540:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1569
.label_1702:
	lea	rsi, [rsi]
	mov	qword ptr [r12], 0
.label_1569:
	nop	
	xor	r13d, r13d
.label_1532:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	nop	
	je	.label_1565
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jmp	.label_1585
	nop	
.label_1742:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1737
	mov	rsp, rsp
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1716:
	lea	rsi, [rsi]
	lea	rdx, [r13 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbp
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	r12, [rsp + 0x70]
	jmp	.label_1602
	nop	word ptr cs:[rax + rax]
.label_1550:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rsi, [rsi]
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_1602:
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rsi, [rsi]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1652
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1663
	nop	dword ptr [rax]
.label_1652:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1662:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1719
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_1648
.label_1719:
	nop	
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1662
	jmp	.label_1684
.label_1648:
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rsi, [rsi]
	lea	r12, [r14 + 0x10]
.label_1663:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1688
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1550
.label_1688:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1702
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1550
	nop	word ptr cs:[rax + rax]
.label_1684:
	mov	ecx, dword ptr [r8 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1620
	nop	
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1585:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1615
	mov	qword ptr [rdi], rdx
.label_1615:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_1565
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	nop	
	jl	.label_1742
.label_1739:
	cmp	r15, r9
	mov	rsp, rsp
	jne	.label_1755
	mov	qword ptr [rsp + 0x18], r8
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_1651
.label_1698:
	mov	qword ptr [rsp + 0x18], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1651
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1749
.label_1755:
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1533
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1670:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	rdi, [rdi]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rbp, [rsp + 0x70]
	jmp	.label_1747
	nop	word ptr cs:[rax + rax]
.label_1692:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rbp, rbp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	rbp, rbp
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rbp], rcx
.label_1747:
	mov	rsp, rsp
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1599
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1748
.label_1599:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1617:
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rax, r13
	nop	
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1612
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1616
.label_1612:
	mov	rsp, rsp
	mov	r13, qword ptr [rax]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_1617
	jmp	.label_1624
.label_1616:
	lea	rbp, [rbx + 0x10]
.label_1748:
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1711
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1692
.label_1711:
	mov	qword ptr [rsp + 8], r9
	mov	r14, r8
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1675
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1692
.label_1770:
	mov	qword ptr [rsp + 0xe0], rbp
	cmp	eax, 2
	setne	al
	nop	
	movzx	eax, al
	mov	rbp, rbp
	add	eax, 9
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1651
.label_1624:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_1691
.label_1758:
	mov	qword ptr [rsp + 0xe0], r14
	mov	rsp, rsp
	mov	dword ptr [r12], 0xf
	nop	
	xor	ecx, ecx
	jmp	.label_1651
.label_1533:
	lea	rsi, [rsi]
	mov	r14, r9
	nop	
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1680
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	r8, r12
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	nop	
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	rsp, rsp
	mov	r9, r14
	lea	rdi, [rdi]
	jmp	.label_1670
.label_1680:
	mov	qword ptr [rsp + 0x70], 0
	nop	
	jmp	.label_1565
.label_1675:
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_1565:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1651:
	test	rcx, rcx
	nop	
	sete	al
	jne	.label_1641
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12]
	lea	rdi, [rdi]
	test	edx, edx
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_1712
	lea	rsi, [rsi]
	jmp	.label_1717
	nop	word ptr cs:[rax + rax]
.label_1641:
	mov	rbx, qword ptr [rsp]
.label_1712:
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rbp, rcx
	nop	
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	je	.label_1723
	nop	
	movzx	edx, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	edx, 0x17
	mov	rbp, rbp
	je	.label_1607
	nop	
	cmp	edx, 0xb
	nop	
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_1723
.label_1607:
	mov	rbp, rbp
	test	al, al
	jne	.label_1611
	mov	r14d, 0x400ff
	nop	word ptr cs:[rax + rax]
.label_1660:
	nop	
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	jne	.label_1660
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1660
	nop	
.label_1528:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_1746
	lea	rsi, [rsi]
	cmp	eax, 6
	nop	
	jne	.label_1750
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	nop	
	mov	rdi, rbx
	jmp	.label_1766
	nop	dword ptr [rax + rax]
.label_1746:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1766:
	lea	rsi, [rsi]
	call	free
.label_1750:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1611
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1528
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1528
	jmp	.label_1660
.label_1717:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0xe0]
	test	rcx, rcx
	nop	
	je	.label_1534
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1542:
	mov	rbp, rcx
	nop	
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1542
	nop	
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1542
	nop	dword ptr [rax]
.label_1580:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1552
	cmp	eax, 6
	jne	.label_1558
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	jmp	.label_1573
	nop	
.label_1552:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_1573:
	lea	rsi, [rsi]
	call	free
.label_1558:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1534
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1580
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_1580
	mov	rsp, rsp
	jmp	.label_1542
.label_1611:
	mov	dword ptr [r12], 0xd
.label_1635:
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_1534
.label_1591:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rsp, rsp
	jmp	.label_1534
.label_1596:
	mov	r15, rbp
.label_1534:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1757:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417550

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0x14], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1780
	mov	qword ptr [rsp], r15
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1789
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0x14]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 0x20], al
	nop	
	lea	rcx, [rsp + 8]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_1775
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1777
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1783:
	movsx	rcx, al
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	lea	rdi, [rdi]
	shr	rdx, 0x3a
	add	rdx, rcx
	lea	rsi, [rsi]
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1783
.label_1777:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_1791
	movdqu	xmm0, xmmword ptr [rbx]
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm1
	lea	rsi, [rsi]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	mov	rbp, rbp
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1791:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1781
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	and	qword ptr [rbx + 0x18], rax
.label_1781:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1790
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x70]
.label_1788:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	lea	r14, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 2
	lea	rsi, [rsi]
	jl	.label_1782
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0xb0], 2
	mov	rsp, rsp
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	lea	rsi, [rsi]
	je	.label_1785
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x70]
.label_1776:
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12 + 0x80]
	nop	
	cmp	eax, 0xf
	je	.label_1779
	mov	rcx, qword ptr [r12 + 0x70]
.label_1784:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	nop	
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	lea	rax, [rcx + rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rsi + 8], 0
	nop	
	mov	qword ptr [rcx + rsi + 0x10], r14
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1774
.label_1782:
	mov	rdi, qword ptr [r15]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_1774
.label_1780:
	mov	rsp, rsp
	mov	dword ptr [r15], 0xc
	nop	
	jmp	.label_1778
.label_1789:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1787
.label_1775:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1778
.label_1790:
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1786
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1788
.label_1785:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1786
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x70], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x80], 0
	nop	
	xor	eax, eax
	jmp	.label_1776
.label_1786:
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
.label_1787:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1778:
	xor	eax, eax
.label_1774:
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_1779:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_1774
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], 0
	mov	rsp, rsp
	jmp	.label_1784
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417a60

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_1798
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_1792
	mov	rsp, rsp
	mov	r8, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1792
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1795
.label_1792:
	test	dl, 1
	mov	rsp, rsp
	je	.label_1802
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_1802
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1802
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_1795
.label_1798:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1802:
	mov	rbp, rbp
	cmp	eax, 0x5b
	jne	.label_1796
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1803
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_1794
.label_1796:
	cmp	eax, 0x5e
	nop	
	je	.label_1797
	lea	rdi, [rdi]
	cmp	eax, 0x5d
	je	.label_1800
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1795
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_1795:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_1803:
	mov	rbp, rbp
	xor	eax, eax
.label_1794:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_1804
	cmp	eax, 0x3a
	je	.label_1799
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_1801
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1800:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1799:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_1793
.label_1801:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1797:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_1804:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1793:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417be0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	r15, rdx
	nop	
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1805
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	nop	
	jge	.label_1805
	nop	
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	
.label_1824:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1813
	lea	rsi, [rsi]
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	lea	rdi, [rdi]
	jl	.label_1824
.label_1813:
	cmp	edi, 2
	lea	rsi, [rsi]
	jl	.label_1805
	mov	dword ptr [r14], 1
	mov	rbp, rbp
	mov	eax, dword ptr [r10 + rdx*4]
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	nop	
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1820
.label_1805:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	mov	rbp, rbp
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1809
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1806]]
.label_3129:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	mov	rsp, rsp
	jle	.label_1810
	mov	rbp, rbp
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1814
	nop	dword ptr [rax]
.label_1807:
	inc	r12
	mov	rbp, rbp
	movzx	edi, byte ptr [r15 + 8]
.label_1814:
	lea	rsi, [rsi]
	movzx	edi, dil
	mov	rsp, rsp
	cmp	edi, 0x1e
	nop	
	jne	.label_1818
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1821
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	nop	
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1811
	nop	word ptr cs:[rax + rax]
.label_1818:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 8]
.label_1816:
	mov	bl, byte ptr [rbx + rdx]
.label_1811:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1810
	nop	
	movzx	edx, r11b
	movzx	ecx, bl
	nop	
	cmp	ecx, edx
	jne	.label_1815
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1817
.label_1815:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + r12], bl
	lea	rdi, [rdi]
	cmp	r12, 0x1e
	lea	rdi, [rdi]
	jle	.label_1807
	jmp	.label_1810
.label_1821:
	mov	rbp, rbp
	cmp	byte ptr [rsi + 0x8c], 0
	lea	rdi, [rdi]
	je	.label_1822
	nop	
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	nop	
	cmp	r8, r9
	lea	rsi, [rsi]
	je	.label_1825
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1808
.label_1825:
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1808
	nop	
	mov	edi, 1
	nop	
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	je	.label_1819
	lea	rdx, [r8 + 1]
	nop	
	cmp	rdx, r9
	jge	.label_1819
	lea	r10, [r8*4]
	lea	rdi, [rdi]
	add	r10, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	mov	edi, 1
.label_1826:
	lea	rdi, [rdi]
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1819
	lea	rdx, [r8 + rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	rdx, r9
	jl	.label_1826
.label_1819:
	movsxd	rdi, edi
	mov	rsp, rsp
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	jmp	.label_1811
.label_1822:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	mov	rbx, qword ptr [rsi]
	jmp	.label_1816
.label_1808:
	lea	rdi, [r8 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1811
.label_1817:
	mov	rsp, rsp
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	movsxd	rax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x1e
	je	.label_1823
	cmp	ecx, 0x1c
	je	.label_1812
	cmp	ecx, 0x1a
	mov	rbp, rbp
	jne	.label_1810
	mov	dword ptr [r14], 3
	nop	
	jmp	.label_1810
.label_1823:
	mov	dword ptr [r14], 4
	lea	rdi, [rdi]
	jmp	.label_1810
.label_1812:
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	jmp	.label_1810
.label_3128:
	test	r9b, r9b
	lea	rsi, [rsi]
	jne	.label_1809
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1810
.label_1809:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1820:
	xor	eax, eax
.label_1810:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417f10

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	test	r9d, 0x400000
	je	.label_1832
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_1863
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1832
.label_1863:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1832:
	nop	
	mov	rbp, qword ptr [r13]
	nop	
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1858
.label_1852:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	wctype
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_8
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_1875
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1882
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1889
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1831
	mov	esi, OFFSET FLAT:.str.9_1
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_1841
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_1849
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1848
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1862
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1869
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1874
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_1878
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	nop	
	mov	eax, 4
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_1828
	lea	rdi, [rdi]
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1833
.label_1843:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1868
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1868:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	jne	.label_1843
	mov	rsp, rsp
	jmp	.label_1828
.label_1875:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1857
	nop	
.label_1872:
	lea	rdi, [rdi]
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1864
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1864:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	jne	.label_1872
	jmp	.label_1828
	nop	dword ptr [rax]
.label_1857:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1885
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	rax, cl
	mov	rbp, rbp
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1885:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1857
	jmp	.label_1828
.label_1882:
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1853
	nop	word ptr cs:[rax + rax]
.label_1854:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1842
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1842:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1854
	jmp	.label_1828
	nop	
.label_1853:
	test	byte ptr [rsi + rdx*2], 2
	lea	rsi, [rsi]
	je	.label_1835
	lea	rsi, [rsi]
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1835:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	nop	
	jne	.label_1853
	nop	
	jmp	.label_1828
.label_1889:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1850
	nop	dword ptr [rax + rax]
.label_1840:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1884
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	mov	rsp, rsp
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 6
	lea	rdi, [rdi]
	or	qword ptr [r15 + rcx*8], rax
.label_1884:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1840
	mov	rsp, rsp
	jmp	.label_1828
	nop	word ptr cs:[rax + rax]
.label_1850:
	lea	rsi, [rsi]
	test	byte ptr [rsi + rdx*2 + 1], 2
	mov	rsp, rsp
	je	.label_1846
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1846:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1850
	mov	rbp, rbp
	jmp	.label_1828
.label_1831:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1867
	nop	
.label_1880:
	mov	rsp, rsp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1870
	nop	
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	mov	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 0x3f
	lea	rdi, [rdi]
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1870:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1880
	nop	
	jmp	.label_1828
.label_1867:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1888
	mov	cl, byte ptr [r14 + rdx]
	nop	
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1888:
	lea	rsi, [rsi]
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, 0x100
	jne	.label_1867
	jmp	.label_1828
.label_1858:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1828
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	jmp	.label_1852
.label_1841:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	jne	.label_1829
	nop	word ptr cs:[rax + rax]
.label_1876:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 4
	lea	rdi, [rdi]
	je	.label_1866
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	sar	rcx, 0x3f
	mov	rbp, rbp
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1866:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1876
	jmp	.label_1828
.label_1829:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1887
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1887:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1829
	jmp	.label_1828
.label_1849:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1839
	nop	dword ptr [rax]
.label_1860:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1879
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1879:
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	jne	.label_1860
	mov	rbp, rbp
	jmp	.label_1828
.label_1839:
	test	byte ptr [rsi + rdx*2 + 1], 8
	nop	
	je	.label_1865
	mov	rbp, rbp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	nop	
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1865:
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1839
	mov	rbp, rbp
	jmp	.label_1828
.label_1848:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1851
	nop	dword ptr [rax + rax]
.label_1837:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1871
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1871:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1837
	jmp	.label_1828
.label_1851:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1845
	mov	rsp, rsp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1845:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1851
	nop	
	jmp	.label_1828
.label_1862:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	jne	.label_1890
	nop	
.label_1844:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1886
	lea	rsi, [rsi]
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	nop	
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1886:
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	nop	
	jne	.label_1844
	jmp	.label_1828
.label_1890:
	test	byte ptr [rsi + rdx*2 + 1], 1
	lea	rdi, [rdi]
	je	.label_1881
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1881:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1890
	jmp	.label_1828
.label_1869:
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	jne	.label_1834
	nop	word ptr cs:[rax + rax]
.label_1855:
	test	byte ptr [rsi + rdx*2], 1
	lea	rdi, [rdi]
	je	.label_1883
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rbp, rbp
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1883:
	mov	rsp, rsp
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1855
	jmp	.label_1828
.label_1834:
	test	byte ptr [rsi + rdx*2], 1
	lea	rsi, [rsi]
	je	.label_1861
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rbp, rbp
	or	qword ptr [r15 + rcx*8], rax
.label_1861:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1834
	jmp	.label_1828
.label_1874:
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_1847
.label_1827:
	mov	rbp, rbp
	cmp	word ptr [rsi + rdx*2], 0
	nop	
	jns	.label_1877
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 6
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1877:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1827
	nop	
	jmp	.label_1828
.label_1847:
	cmp	word ptr [rsi + rdx*2], 0
	mov	rbp, rbp
	jns	.label_1836
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1836:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1847
	jmp	.label_1828
.label_1833:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1838
	mov	cl, byte ptr [r14 + rdx]
	mov	rbp, rbp
	mov	eax, 1
	nop	
	shl	rax, cl
	mov	rsp, rsp
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1838:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1833
	mov	rsp, rsp
	jmp	.label_1828
.label_1878:
	call	__ctype_b_loc
	xor	edx, edx
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1859
.label_1856:
	test	byte ptr [rsi + rdx*2], 4
	nop	
	je	.label_1873
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1873:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1856
.label_1828:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1859:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1830
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1830:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	nop	
	jne	.label_1859
	jmp	.label_1828
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418950

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi + 0x30]
	mov	rbp, rbp
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1896
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1903]]
.label_3210:
	mov	rsp, rsp
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1894]]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	lea	rsi, [rsi]
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1902
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	jmp	.label_1892
.label_3211:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	nop	
	js	.label_1898
	nop	
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_1899
	lea	rdi, [rdi]
	mov	r12, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	rbx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	qword ptr [r12 + rbx*8], 2
	mov	rsp, rsp
	mov	edi, 0x10
	call	malloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1891
	lea	rax, [r12 + rbx*8 + 8]
	mov	rbp, rbp
	cmp	r14, r15
	mov	rsp, rsp
	jne	.label_1901
	mov	qword ptr [rax], 1
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rsi, [rsi]
	jmp	.label_1892
.label_3208:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	nop	
	je	.label_1891
	nop	
	mov	edi, OFFSET FLAT:.str.17_2
	nop	
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_3209:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_1892
	nop	
	mov	r14, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1894]]
	mov	rsp, rsp
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_1895
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	jmp	.label_1892
.label_1896:
	mov	rbp, rbp
	test	dl, 8
	jne	.label_1900
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_1892
.label_1901:
	mov	qword ptr [rax], 2
	jge	.label_1893
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	lea	rdi, [rdi]
	jmp	.label_1892
.label_1893:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1892:
	xor	eax, eax
.label_1891:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_1902:
	lea	rax, [r14 + rbx*8]
.label_1897:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1891
.label_1895:
	mov	rbp, rbp
	lea	rax, [r14 + r15*8]
	jmp	.label_1897
.label_1898:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1899:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5b0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1900:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418c00

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	rbx, rsi
	nop	
	mov	r12, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	dl, 0x10
	mov	rsp, rsp
	je	.label_1904
	mov	rsp, rsp
	test	r12, r12
	je	.label_1904
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	mov	rsp, rsp
	jg	.label_1905
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xa0]
	mov	rsp, rsp
	bt	rcx, rax
	jae	.label_1905
.label_1904:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1910
	nop	
	mov	qword ptr [rsp], rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_1915:
	lea	ecx, [r13 + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rdi, [rdi]
	movsxd	rcx, r13d
	mov	rsp, rsp
	shl	rcx, 6
	mov	rbp, rbp
	lea	r13, [rax + rcx + 8]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	mov	rbp, rbp
	je	.label_1912
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x70]
.label_1914:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rsi, [rsi]
	movsxd	rcx, r15d
	shl	rcx, 6
	mov	rsp, rsp
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1909:
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, r15
	je	.label_1908
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_1917
	nop	
	mov	rax, qword ptr [rbx + 0x70]
.label_1916:
	mov	rbp, rbp
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	nop	
	movsxd	rcx, ebp
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r12], rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1908
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbp
.label_1908:
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	nop	
	je	.label_1918
	mov	rax, qword ptr [rbx + 0x70]
.label_1913:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rdi, [rdi]
	movsxd	rcx, r12d
	lea	rsi, [rsi]
	shl	rcx, 6
	mov	rbp, rbp
	lea	r12, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	nop	
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_1907
	nop	
	mov	qword ptr [r13], r12
.label_1907:
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1911
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
.label_1911:
	test	r15, r15
	nop	
	je	.label_1906
	test	r13, r13
	je	.label_1906
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1906
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_1906
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	lea	rsi, [rsi]
	and	eax, dword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	ecx, 0xfff7ffff
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	and	edx, ecx
	mov	rsp, rsp
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	mov	rbp, rbp
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_1905:
	mov	rax, r12
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_1910:
	mov	rsp, rsp
	mov	qword ptr [rsp], rdi
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1912
	nop	
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1915
.label_1912:
	nop	
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1909
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	nop	
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1914
.label_1918:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1911
	nop	
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1913
.label_1906:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_1905
.label_1917:
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1908
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1916
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418fe0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	cmp	rax, r13
	jae	.label_1922
.label_1924:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1923
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_1921
.label_1923:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_1921:
	nop	
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	mov	rbp, rbp
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	nop	
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	nop	
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r15 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_1919:
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1922:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1919
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1919
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [r13 + r13*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1920
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_1920
	test	r13, r13
	mov	rbp, rbp
	je	.label_1920
	nop	
	test	rbp, rbp
	je	.label_1920
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	nop	
	mov	qword ptr [rbx + 0x28], r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jmp	.label_1924
.label_1920:
	lea	rsi, [rsi]
	mov	rbx, rax
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1919
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419270

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0xc], ecx
	mov	r12, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rdi]
	lea	rdi, [rax*8 + 8]
	mov	rbp, rbp
	call	malloc
	mov	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1928
	mov	qword ptr [rsp + 0x28], rbx
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	rsp, rsp
	mov	r8d, eax
	mov	rbp, rbp
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1931
	lea	rsi, [rsi]
	lea	rdx, [r15 + r14*8 + 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	je	.label_1931
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	mov	rsp, rsp
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1931
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1928
	mov	rax, qword ptr [rbp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx + 8]
.label_1931:
	mov	rbx, r12
	lea	rdi, [rdi]
	test	al, 8
	jne	.label_1936
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_1927
.label_1936:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	nop	
	jle	.label_1929
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1932:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	lea	r12, [rdx + rdx*2]
	nop	
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1925
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1933
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1926
	jmp	.label_1928
.label_1933:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1926:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1928
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + r12*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1935
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_1925:
	mov	r15b, 1
.label_1935:
	mov	rbp, rbp
	inc	r13
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	mov	rbp, rbp
	jl	.label_1932
	jmp	.label_1927
.label_1929:
	mov	rbp, rbp
	xor	r15d, r15d
.label_1927:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_1928
	lea	rsi, [rsi]
	test	r15b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	je	.label_1930
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	jne	.label_1930
	nop	
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_1934
.label_1930:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1934:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	lea	rsi, [rsi]
	xor	eax, eax
.label_1928:
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419520

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	nop	
	mov	r14, rdi
.label_1948:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], eax
	lea	rsi, [rsi]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1938:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	mov	rbp, rbp
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1937
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	rsp, rsp
	mov	qword ptr [rdx + r12*8 + 8], 0
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	rdi, r14
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	re_dfa_add_node
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	cmp	rbx, -1
	je	.label_1952
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	nop	
	mov	dword ptr [rax + rcx + 8], edx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x24]
	jne	.label_1938
	jmp	.label_1941
	nop	dword ptr [rax]
.label_1937:
	nop	
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1942
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	nop	
	cmp	rsi, 1
	je	.label_1945
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	lea	rsi, [rsi]
	jle	.label_1946
	lea	rdi, [rdi]
	mov	rdx, rsi
	shl	rdx, 4
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx + 8]
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	and	edx, 0x40000
	je	.label_1946
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	
.label_1949:
	cmp	qword ptr [rdx + rsi*8], r12
	mov	rsp, rsp
	jne	.label_1943
	mov	rbp, rbp
	shr	ebp, 8
	nop	
	and	ebp, 0x3ff
	cmp	ebp, r13d
	lea	rsi, [rsi]
	je	.label_1944
.label_1943:
	dec	rsi
	test	rsi, rsi
	jle	.label_1946
	mov	rbp, rbp
	mov	ebp, dword ptr [rdi]
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rsp, rsp
	and	ebx, 0x40000
	mov	rsp, rsp
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1949
	mov	rbp, rbp
	jmp	.label_1946
.label_1944:
	cmp	rsi, -1
	je	.label_1946
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1939
	mov	rbp, rbp
	jmp	.label_1941
	nop	word ptr [rax + rax]
.label_1946:
	nop	
	mov	rbp, r12
	mov	rsp, rsp
	shl	rbp, 4
	nop	
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1947
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rax, qword ptr [r14]
	nop	
	mov	rcx, rbx
	nop	
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	mov	rsp, rsp
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x3ff00
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	nop	
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1941
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x1c], eax
	nop	
	test	eax, eax
	nop	
	jne	.label_1941
.label_1939:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	mov	rsp, rsp
	shl	rbx, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1940
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	mov	rbp, rbp
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	nop	
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	lea	rsi, [rsi]
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1938
	mov	rsp, rsp
	jmp	.label_1941
.label_1945:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1951
	mov	rsp, rsp
	cmp	rbx, r15
	jne	.label_1953
.label_1951:
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], 0xc
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1941
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	nop	
	mov	rbp, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	rsp, rsp
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	rbp, rbp
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	nop	
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	lea	rdi, [rcx + r15*8]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1948
	jmp	.label_1941
.label_1952:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1941
.label_1947:
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1941
.label_1940:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rsi, [rsi]
	jmp	.label_1941
.label_1942:
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1950:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0
.label_1941:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1953:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	nop	
	call	re_node_set_insert
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_1941
	nop	
	jmp	.label_1950
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419af0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1957
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1957
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	nop	
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jge	.label_1962
	add	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_1960
	nop	
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
.label_1962:
	test	rcx, rcx
	je	.label_1955
	nop	
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	dec	rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	or	rdx, rcx
	nop	
	js	.label_1958
	mov	rbp, rbp
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	jmp	.label_1966
.label_1959:
	dec	rax
.label_1963:
	dec	rcx
	jmp	.label_1965
	nop	word ptr cs:[rax + rax]
.label_1966:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1959
	jge	.label_1963
	nop	
	dec	rax
	mov	rsp, rsp
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	lea	rsi, [rsi]
	dec	rbx
.label_1965:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1966
.label_1958:
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_1967
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	mov	rbp, rbp
	lea	rdi, [rbx*8]
	lea	rdi, [rdi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1967:
	mov	r10, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	je	.label_1957
	lea	rdi, [rdi]
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1964:
	lea	rdi, [rdi]
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	lea	r11, [rdi + r9*8]
.label_1961:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jle	.label_1954
	nop	
	dec	rcx
	nop	
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1961
	nop	
	jmp	.label_1957
	nop	word ptr cs:[rax + rax]
.label_1954:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	mov	rbp, rbp
	cmp	r10, 1
	nop	
	mov	r10, r8
	jg	.label_1964
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	mov	rbp, rbp
	jmp	.label_1956
.label_1955:
	mov	qword ptr [r14 + 8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 8]
	nop	
	mov	rsi, qword ptr [r15 + 0x10]
.label_1956:
	shl	rdx, 3
	lea	rsi, [rsi]
	call	memcpy
.label_1957:
	xor	eax, eax
.label_1960:
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419d10

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1972
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1979
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jne	.label_1980
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1974
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1977
.label_1972:
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1894]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1968
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	jmp	.label_1976
.label_1979:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	mov	rbp, rbp
	jmp	.label_1978
.label_1980:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x10]
.label_1977:
	lea	rsi, [rsi]
	cmp	qword ptr [rax], rbx
	mov	rsp, rsp
	jle	.label_1981
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1969
	nop	word ptr [rax + rax]
.label_1971:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rdi, [rdi]
	lea	rcx, [rcx - 1]
	jg	.label_1971
	lea	rdi, [rdi]
	jmp	.label_1969
.label_1981:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	rsp, rsp
	jmp	.label_1975
	nop	dword ptr [rax + rax]
.label_1973:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1975:
	cmp	rdx, rbx
	mov	rsp, rsp
	jg	.label_1973
.label_1969:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1978:
	inc	qword ptr [r14 + 8]
.label_1976:
	lea	rdi, [rdi]
	mov	al, 1
.label_1970:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_1968:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1970
.label_1974:
	xor	eax, eax
	jmp	.label_1970
	nop	
	.section	.text
	.align	32
	#Procedure 0x419e50

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	r13d, ecx
	mov	r14, rsi
	mov	rsp, rsp
	mov	r8, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	test	r8, r8
	nop	
	je	.label_2000
	mov	r15d, r13d
	add	r15, r8
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	jle	.label_2032
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jae	.label_2012
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdi
	jmp	.label_2014
.label_2000:
	nop	
	mov	dword ptr [rdi], 0
	nop	
	jmp	.label_2017
.label_2032:
	nop	
	mov	qword ptr [rsp], rdi
	lea	rsi, [rsi]
	jmp	.label_2018
.label_2012:
	mov	qword ptr [rsp], rdi
	nop	
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_1986
	mov	rsp, rsp
	movq	xmm0, r15
	mov	rsp, rsp
	lea	rsi, [r8 - 4]
	mov	eax, esi
	shr	eax, 2
	inc	eax
	xor	edi, edi
	mov	rsp, rsp
	test	al, 3
	nop	
	je	.label_2022
	nop	
	lea	ebp, [r8 - 4]
	lea	rdi, [rdi]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	lea	rsi, [rsi]
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	
.label_2003:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	lea	rsi, [rsi]
	paddq	xmm1, xmm3
	mov	rsp, rsp
	add	rdi, 4
	inc	rbp
	mov	rsp, rsp
	jne	.label_2003
	jmp	.label_2039
.label_1986:
	xor	ebx, ebx
	jmp	.label_2014
.label_2022:
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
.label_2039:
	mov	rsp, rsp
	cmp	rsi, 0xc
	nop	
	jb	.label_2042
	mov	rsp, rsp
	mov	rsi, r8
	mov	rsp, rsp
	and	rsi, 0xfffffffffffffffc
	sub	rsi, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax + rax]
.label_2015:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	mov	rsp, rsp
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	mov	rsp, rsp
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rsp, rsp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	lea	rdi, [rdi]
	paddq	xmm1, xmm5
	lea	rsi, [rsi]
	add	rdi, 0x80
	mov	rbp, rbp
	add	rsi, -0x10
	jne	.label_2015
.label_2042:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rbx
	je	.label_2018
.label_2014:
	nop	
	mov	rsi, r8
	lea	rdi, [rdi]
	sub	rsi, rbx
	lea	rcx, [rcx + rbx*8]
	nop	dword ptr [rax + rax]
.label_1982:
	lea	rsi, [rsi]
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_1982
.label_2018:
	mov	rsi, qword ptr [r14 + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x88]
	lea	rsi, [rsi]
	and	rax, r15
	mov	rsp, rsp
	lea	rax, [rax + rax*2]
	nop	
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	lea	rdi, [rdi]
	jle	.label_1985
	xor	ebx, ebx
	nop	
	test	rdx, rdx
	nop	
	je	.label_2045
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
.label_2019:
	mov	rsi, qword ptr [r10 + rbx*8]
	cmp	qword ptr [rsi], r15
	jne	.label_2002
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x68]
	and	eax, 0xf
	nop	
	cmp	eax, r13d
	mov	rsp, rsp
	jne	.label_2002
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi + 0x50]
	test	rdi, rdi
	je	.label_2002
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 8], r8
	nop	
	jne	.label_2002
	mov	rax, r8
	nop	word ptr cs:[rax + rax]
.label_2013:
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_1999
	mov	rbp, qword ptr [rdi + 0x10]
	nop	
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	nop	
	mov	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rsp, rsp
	lea	rax, [rax - 1]
	je	.label_2013
	nop	dword ptr [rax]
.label_2002:
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, r9
	jl	.label_2019
	mov	rsp, rsp
	jmp	.label_1985
.label_2045:
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r9, 0x10
	mov	rbp, rbp
	jb	.label_2026
	nop	
	xor	ecx, ecx
	mov	rax, r9
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff0
	je	.label_2026
	nop	
	lea	rcx, [r9 - 0x10]
	lea	rsi, [rsi]
	mov	edi, ecx
	shr	edi, 4
	inc	edi
	xor	esi, esi
	test	dil, 7
	lea	rdi, [rdi]
	je	.label_2031
	lea	edi, [r9 - 0x10]
	lea	rsi, [rsi]
	shr	edi, 4
	inc	edi
	and	edi, 7
	mov	rsp, rsp
	neg	rdi
	xor	esi, esi
	nop	dword ptr [rax]
.label_2036:
	mov	rsp, rsp
	add	rsi, 0x10
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	jne	.label_2036
.label_2031:
	cmp	rcx, 0x70
	jb	.label_2041
	nop	
	mov	rcx, r9
	lea	rsi, [rsi]
	and	rcx, 0xfffffffffffffff0
	sub	rcx, rsi
	nop	word ptr cs:[rax + rax]
.label_1998:
	add	rcx, -0x80
	mov	rbp, rbp
	jne	.label_1998
.label_2041:
	mov	rbp, rbp
	cmp	r9, rax
	mov	rcx, rax
	je	.label_1985
	nop	word ptr cs:[rax + rax]
.label_2026:
	inc	rcx
	cmp	rcx, r9
	lea	rdi, [rdi]
	jl	.label_2026
.label_1985:
	mov	rsp, rsp
	mov	r12, rdx
	mov	rsp, rsp
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	r11, rax
	mov	rsp, rsp
	test	r11, r11
	mov	rbp, rbp
	je	.label_2004
	mov	rbx, r14
	mov	rax, r11
	mov	rsp, rsp
	add	rax, 8
	lea	rdi, [rdi]
	mov	r10, r12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r10 + 8]
	mov	qword ptr [r11 + 0x10], rdi
	mov	r14, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_2055
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	r12, r10
	lea	rsi, [rsi]
	mov	qword ptr [r11 + 8], rdi
	lea	rsi, [rsi]
	shl	rdi, 3
	mov	rbp, r11
	call	malloc
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	test	rax, rax
	je	.label_1983
	mov	rsi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	shl	r14, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbp, rcx
	nop	
	call	memcpy
	mov	r11, rbp
	mov	r10, r12
	mov	rdi, rbx
	mov	rbp, rbp
	mov	r9d, r13d
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_1996
.label_2055:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
	mov	r9d, r13d
	mov	r14, rax
.label_1996:
	mov	al, byte ptr [r11 + 0x68]
	mov	rbp, rbp
	mov	cl, r9b
	lea	rsi, [rsi]
	and	cl, 0xf
	and	al, 0xf0
	mov	rbp, rbp
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r11 + 0x68], al
	lea	rsi, [rsi]
	mov	qword ptr [r11 + 0x50], r14
	nop	
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2007
	mov	cl, r9b
	mov	eax, r9d
	mov	rsp, rsp
	and	eax, 2
	lea	rsi, [rsi]
	and	r9d, 4
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2062
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	r8d, r8d
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_2020
	nop	dword ptr [rax + rax]
.label_2033:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	rbp, rbp
	mov	r12d, esi
	shr	r12d, 8
	mov	rsp, rsp
	mov	ecx, r12d
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	nop	
	jne	.label_2025
	test	ecx, ecx
	je	.label_2010
.label_2025:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	lea	rsi, [rsi]
	mov	al, bl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	or	eax, esi
	mov	rbp, rbp
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	lea	rsi, [rsi]
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [r11 + 0x68], bl
	cmp	edx, 2
	mov	rsp, rsp
	je	.label_2035
	lea	rsi, [rsi]
	cmp	edx, 4
	mov	rsp, rsp
	jne	.label_2044
	mov	rbp, rbp
	or	bl, 0x40
	mov	rbp, rbp
	jmp	.label_2046
.label_2035:
	nop	
	or	bl, 0x10
.label_2046:
	lea	rdi, [rdi]
	mov	byte ptr [r11 + 0x68], bl
.label_2044:
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_2010
	nop	
	mov	r13, r10
	mov	rsp, rsp
	cmp	qword ptr [r11 + 0x50], r14
	nop	
	jne	.label_2050
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	nop	
	mov	edi, 0x18
	mov	rbx, r11
	lea	rdi, [rdi]
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1987
	mov	rbx, qword ptr [r13 + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	nop	
	jle	.label_2060
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1984
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r11, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_1995
.label_2060:
	nop	
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r14], xmm0
	nop	
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_1995:
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	mov	rbp, rbp
	xor	r8d, r8d
.label_2050:
	mov	rsp, rsp
	test	r12b, 0x11
	mov	rsp, rsp
	mov	r10, r13
	jne	.label_2030
	mov	rsp, rsp
	test	r9d, r9d
	mov	rsp, rsp
	jne	.label_2010
	mov	rsp, rsp
	and	r12d, 0x40
	mov	rsp, rsp
	je	.label_2010
.label_2030:
	mov	rax, rbp
	mov	rsp, rsp
	sub	rax, r8
	lea	rsi, [rsi]
	js	.label_2016
	mov	rcx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jle	.label_2016
	mov	rsp, rsp
	dec	rcx
	mov	rbp, rbp
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2016
	nop	
	lea	rax, [rbp*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [r11 + 0x18]
	lea	rdi, [rdi]
	mov	rcx, r8
	neg	rcx
	nop	dword ptr [rax]
.label_2029:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_2029
	nop	word ptr [rax + rax]
.label_2016:
	inc	r8
.label_2010:
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_2033
	jmp	.label_2007
	nop	dword ptr [rax + rax]
.label_2020:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	movzx	edx, sil
	mov	r12d, esi
	shr	r12d, 8
	mov	ecx, r12d
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	edx, 1
	lea	rsi, [rsi]
	jne	.label_2034
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_2023
.label_2034:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	lea	rdi, [rdi]
	shl	al, 5
	and	al, 0x20
	lea	rsi, [rsi]
	and	bl, 0xdf
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [r11 + 0x68], bl
	mov	rbp, rbp
	cmp	edx, 2
	je	.label_2049
	cmp	edx, 4
	lea	rdi, [rdi]
	jne	.label_2054
	lea	rdi, [rdi]
	or	bl, 0x40
	mov	rbp, rbp
	jmp	.label_2056
.label_2049:
	lea	rdi, [rdi]
	or	bl, 0x10
.label_2056:
	nop	
	mov	byte ptr [r11 + 0x68], bl
.label_2054:
	mov	rbp, rbp
	test	ecx, ecx
	je	.label_2023
	lea	rsi, [rsi]
	mov	r13, r10
	mov	rbp, rbp
	cmp	qword ptr [r11 + 0x50], r14
	lea	rsi, [rsi]
	jne	.label_2059
	nop	
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	edi, 0x18
	lea	rdi, [rdi]
	mov	rbx, r11
	call	malloc
	lea	rsi, [rsi]
	mov	r11, rbx
	nop	
	mov	r14, rax
	nop	
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	je	.label_1987
	mov	rsp, rsp
	mov	rbx, qword ptr [r13 + 8]
	nop	
	mov	qword ptr [r14 + 8], rbx
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	jle	.label_1992
	mov	qword ptr [rsp + 0x20], r11
	lea	rsi, [rsi]
	mov	qword ptr [r14], rbx
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rax
	nop	
	test	rax, rax
	je	.label_1984
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_2008
.label_1992:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	r9d, dword ptr [rsp + 0x14]
.label_2008:
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	xor	r8d, r8d
.label_2059:
	test	r12b, 1
	mov	r10, r13
	mov	rsp, rsp
	jne	.label_2021
	test	r9d, r9d
	jne	.label_2023
	mov	rbp, rbp
	and	r12d, 0x40
	je	.label_2023
.label_2021:
	mov	rbp, rbp
	mov	rax, rbp
	sub	rax, r8
	mov	rsp, rsp
	js	.label_2028
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jle	.label_2028
	nop	
	dec	rcx
	mov	rsp, rsp
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2028
	lea	rsi, [rsi]
	lea	rax, [rbp*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rsp, rsp
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2040:
	nop	
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [r11 + 0x10]
	mov	rbp, rbp
	jl	.label_2040
	nop	word ptr cs:[rax + rax]
.label_2028:
	inc	r8
.label_2023:
	inc	rbp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_2020
	mov	rbp, rbp
	jmp	.label_2007
.label_2062:
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	esi, esi
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1989
	nop	
.label_2058:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax + rcx + 8]
	mov	rsp, rsp
	movzx	edx, bpl
	mov	r13d, ebp
	mov	rbp, rbp
	shr	r13d, 8
	lea	rdi, [rdi]
	mov	ecx, r13d
	mov	rbp, rbp
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	nop	
	jne	.label_2052
	test	ecx, ecx
	je	.label_1994
.label_2052:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	rbp, rbp
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	or	eax, ebp
	nop	
	shl	al, 5
	nop	
	and	al, 0x20
	and	bl, 0xdf
	mov	rsp, rsp
	or	bl, al
	mov	byte ptr [r11 + 0x68], bl
	nop	
	cmp	edx, 2
	je	.label_2053
	cmp	edx, 4
	jne	.label_1988
	or	bl, 0x40
	jmp	.label_1990
.label_2053:
	or	bl, 0x10
.label_1990:
	mov	rbp, rbp
	mov	byte ptr [r11 + 0x68], bl
.label_1988:
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1994
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	cmp	qword ptr [r11 + 0x50], r14
	lea	rsi, [rsi]
	jne	.label_1997
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	mov	rbx, r11
	call	malloc
	mov	rsp, rsp
	mov	r11, rbx
	mov	rbp, rbp
	mov	r14, rax
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	mov	rsp, rsp
	je	.label_1987
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	mov	rbp, rbp
	jle	.label_2011
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rdi, [rdi]
	shl	rbx, 3
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1984
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_2027
.label_2011:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_2027:
	mov	r14, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	or	byte ptr [r11 + 0x68], 0x80
	nop	
	xor	esi, esi
.label_1997:
	mov	rsp, rsp
	test	r13b, 0x12
	mov	rbp, rbp
	mov	r10, rbp
	mov	rsp, rsp
	jne	.label_2038
	test	r9d, r9d
	mov	rsp, rsp
	jne	.label_1994
	and	r13d, 0x40
	je	.label_1994
.label_2038:
	mov	rsp, rsp
	mov	rax, r12
	lea	rsi, [rsi]
	sub	rax, rsi
	js	.label_2043
	mov	rcx, qword ptr [r11 + 0x10]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_2043
	nop	
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_2043
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rcx, rsi
	lea	rsi, [rsi]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_2057:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdi, [rdi]
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_2057
	nop	word ptr cs:[rax + rax]
.label_2043:
	lea	rdi, [rdi]
	inc	rsi
.label_1994:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	jl	.label_2058
	jmp	.label_2007
	nop	dword ptr [rax + rax]
.label_1989:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	ebp, dword ptr [rax + rcx + 8]
	lea	rdi, [rdi]
	movzx	edx, bpl
	mov	r13d, ebp
	shr	r13d, 8
	mov	ecx, r13d
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	edx, 1
	lea	rdi, [rdi]
	jne	.label_2047
	test	ecx, ecx
	je	.label_1991
.label_2047:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	rsp, rsp
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, ebp
	lea	rsi, [rsi]
	shl	al, 5
	mov	rbp, rbp
	and	al, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	nop	
	or	bl, al
	nop	
	mov	byte ptr [r11 + 0x68], bl
	nop	
	cmp	edx, 4
	nop	
	je	.label_1993
	lea	rsi, [rsi]
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_2005
	mov	rbp, rbp
	or	bl, 0x10
	jmp	.label_2006
.label_1993:
	or	bl, 0x40
.label_2006:
	mov	byte ptr [r11 + 0x68], bl
.label_2005:
	nop	
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_1991
	mov	rbp, r10
	cmp	qword ptr [r11 + 0x50], r14
	nop	
	jne	.label_2009
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	edi, 0x18
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	rsp, rsp
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	mov	rbp, rbp
	mov	qword ptr [r11 + 0x50], r14
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1987
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2024
	mov	qword ptr [rsp + 0x20], r11
	mov	rbp, rbp
	mov	qword ptr [r14], rbx
	nop	
	shl	rbx, 3
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1984
	nop	
	mov	rsi, qword ptr [rbp + 0x10]
	nop	
	mov	rdi, rax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r11, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_2037
.label_2024:
	nop	
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_2037:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	xor	esi, esi
.label_2009:
	test	r13b, 2
	mov	r10, rbp
	lea	rdi, [rdi]
	jne	.label_2048
	test	r9d, r9d
	lea	rdi, [rdi]
	jne	.label_1991
	and	r13d, 0x40
	mov	rsp, rsp
	je	.label_1991
.label_2048:
	mov	rbp, rbp
	mov	rax, r12
	sub	rax, rsi
	lea	rdi, [rdi]
	js	.label_2051
	mov	rcx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jle	.label_2051
	mov	rbp, rbp
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2051
	lea	rsi, [rsi]
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	lea	rsi, [rsi]
	mov	rcx, rsi
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2061:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	nop	
	lea	rdx, [r12 + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [r11 + 0x10]
	mov	rsp, rsp
	jl	.label_2061
	nop	word ptr cs:[rax + rax]
.label_2051:
	inc	rsi
.label_1991:
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	mov	rsp, rsp
	jl	.label_1989
.label_2007:
	mov	rsi, r11
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rbx, r11
	mov	rbp, rbp
	call	register_state
	nop	
	mov	rsi, rbx
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1999
	mov	rdi, rsi
	nop	
	jmp	.label_2001
.label_1987:
	mov	rdi, r11
.label_2001:
	call	free_state
	mov	rsp, rsp
	jmp	.label_2004
.label_1984:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_2004
.label_1983:
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rsp, rsp
	call	free
.label_2004:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
.label_2017:
	lea	rsi, [rsi]
	xor	esi, esi
.label_1999:
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41acc0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	lea	rdi, [r13*8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	rsp, rsp
	mov	ecx, 0xc
	test	rax, rax
	mov	rsp, rsp
	je	.label_2064
	mov	rbp, rbp
	test	r13, r13
	jle	.label_2065
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2069:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_2063
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_2068
	lea	rcx, [rdx + rdx + 2]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_2070
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
.label_2068:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_2063:
	inc	rbp
	cmp	rbp, r13
	jl	.label_2069
.label_2065:
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rsi, [rsi]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	lea	rsi, [rsi]
	jle	.label_2066
	nop	
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_2067:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_2064
.label_2070:
	nop	
	mov	ecx, 0xc
.label_2064:
	mov	eax, ecx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_2066:
	mov	rbp, rbp
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	ecx, 0xc
	mov	rsp, rsp
	je	.label_2064
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdx
	lea	rsi, [rsi]
	mov	r15, qword ptr [r14]
	lea	rdi, [rdi]
	jmp	.label_2067
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ae80

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r10, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	r13, [rbx + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r10
	jle	.label_2101
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_2115
	mov	qword ptr [rbx + 0x20], 0
.label_2115:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	mov	r14, r10
	jne	.label_2104
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	r14, r10
.label_2104:
	mov	rbp, rbp
	test	r14, r14
	je	.label_2126
	mov	r12, qword ptr [rbx + 0x38]
	mov	rbp, rbp
	cmp	r14, r12
	lea	rdi, [rdi]
	jge	.label_2135
	mov	rsp, rsp
	mov	ecx, dword ptr [rbx + 0x8c]
	mov	rbp, rbp
	mov	r9d, ecx
	mov	rbp, rbp
	shr	r9d, 0x10
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_2137
	mov	rsp, rsp
	test	r14, r14
	jle	.label_2145
	lea	rcx, [r14 - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], rcx
	mov	rbp, rbp
	je	.label_2143
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2146
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	dword ptr [rax + rax]
.label_2154:
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	nop	
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_2150
	nop	
	dec	rdx
	jg	.label_2154
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rbx + 0x70]
	lea	rsi, [rsi]
	jmp	.label_2077
.label_2146:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x80]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	r15d, 1
	bt	rcx, rax
	jb	.label_2077
	xor	r15d, r15d
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_2077
	movzx	eax, word ptr [rbx + 0x8c]
	movzx	eax, ax
	nop	
	mov	r15d, 2
	cmp	eax, 0xff
	lea	rdi, [rdi]
	ja	.label_2077
	lea	rdi, [rdi]
	jmp	.label_2088
.label_2150:
	test	r9b, r9b
	lea	rdi, [rdi]
	jne	.label_2091
.label_2155:
	xor	r15d, r15d
	mov	rbp, rbp
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	jne	.label_2077
	nop	
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_2077
.label_2088:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_2077
.label_2101:
	nop	
	mov	r14, r10
	sub	r14, rax
	lea	rsi, [rsi]
	jmp	.label_2104
.label_2135:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	mov	rbp, rbp
	jne	.label_2107
.label_2099:
	mov	qword ptr [rbx + 0x30], 0
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_2112
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x89], 0
	lea	rsi, [rsi]
	je	.label_2118
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	nop	
	add	rdx, r8
	cmp	rdx, rdi
	mov	rbp, rbp
	cmovb	rdx, rdi
	lea	r9, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
	nop	dword ptr [rax + rax]
.label_2129:
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	rbp, rdx
	jb	.label_2118
	mov	cl, byte ptr [rbp]
	mov	rsp, rsp
	and	cl, 0xc0
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	mov	rbp, rbp
	je	.label_2129
	mov	qword ptr [rsp + 8], r9
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	mov	rsp, rsp
	jne	.label_2132
	mov	r12, r11
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rdi]
	mov	rsi, rbp
.label_2103:
	nop	
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x34]
	lea	rcx, [rsp]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	mov	rsp, rsp
	sub	rcx, rdx
	jb	.label_2142
	cmp	rax, -3
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r11, r12
	ja	.label_2147
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x34]
	jmp	.label_2147
.label_2137:
	mov	rbp, rbp
	mov	r8, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rbx + 0x30]
	xor	ebp, ebp
.label_2081:
	lea	rsi, [rbp + rax]
	mov	rsp, rsp
	mov	rdx, rsi
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	mov	rsp, rsp
	add	rdx, rsi
	sar	rdx, 1
	mov	rsi, qword ptr [r8 + rdx*8]
	nop	
	cmp	rsi, r14
	lea	rdi, [rdi]
	mov	rdi, rdx
	jg	.label_2134
	jge	.label_2076
	lea	rbp, [rdx + 1]
	mov	rbp, rbp
	mov	rdi, rax
.label_2134:
	nop	
	cmp	rbp, rdi
	mov	rbp, rbp
	mov	rax, rdi
	jl	.label_2081
.label_2076:
	mov	rbp, rbp
	cmp	rsi, r14
	setl	al
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	lea	r12, [rax + rdx]
	test	r12, r12
	jle	.label_2083
	lea	rdi, [rax + rdx - 1]
	cmp	qword ptr [rbx + 0x58], rdi
	lea	rsi, [rsi]
	je	.label_2087
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2164
	cmp	rsi, r14
	setl	al
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	eax, al
	lea	rdi, [rdi]
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2108:
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	lea	rsi, [rsi]
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_2109
	dec	rdx
	jg	.label_2108
	mov	rsp, rsp
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_2074
.label_2145:
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_2077
.label_2143:
	and	r15d, 2
	nop	
	xor	r15d, 0xa
.label_2077:
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x70], r15d
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2114
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 2
	mov	rbp, r10
	nop	
	call	memmove
	mov	r10, rbp
.label_2114:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2122
.label_2156:
	lea	rdi, [rdi]
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_2075:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rbp, rbp
	jne	.label_2126
	nop	
	add	qword ptr [rbx + 8], r14
.label_2126:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x28], r10
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_2128
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2131
	mov	rdi, rbx
	mov	rbp, rbp
	call	build_wcs_upper_buffer
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2136
	jmp	.label_2093
.label_2128:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2138
	mov	qword ptr [rbx + 0x30], rdx
	mov	rbp, rbp
	jmp	.label_2093
.label_2131:
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	build_wcs_buffer
.label_2093:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x48], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_2136:
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_2122:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	mov	rbp, r10
	call	memmove
	mov	r10, rbp
	mov	rsp, rsp
	jmp	.label_2156
.label_2138:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2160
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	cmp	r14, rdx
	lea	rdi, [rdi]
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_2161
	lea	rdi, [rdi]
	jmp	.label_2166
	nop	word ptr cs:[rax + rax]
.label_2095:
	lea	rdi, [rdi]
	mov	r10, qword ptr [r13]
.label_2166:
	mov	rsp, rsp
	inc	r15
	lea	rsi, [rsi]
	add	r10, qword ptr [rbx]
	mov	al, byte ptr [r15 + r10 - 1]
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_2106
.label_2102:
	mov	rbp, rbp
	movzx	ebp, al
	mov	rbp, rbp
	lea	eax, [rbp + 0x80]
	mov	rsp, rsp
	cmp	eax, 0x17f
	ja	.label_2085
	lea	rdi, [rdi]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rbp*4]
.label_2085:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r15 - 1], bpl
	nop	
	cmp	r15, r14
	lea	rdi, [rdi]
	jl	.label_2095
	lea	rdi, [rdi]
	jmp	.label_2098
.label_2106:
	mov	rbp, rbp
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_2102
.label_2112:
	lea	rsi, [rsi]
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	mov	rsp, rsp
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2105
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi + rdx]
.label_2105:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_2120
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jne	.label_2120
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	lea	rsi, [rsi]
	movzx	eax, al
	add	eax, eax
.label_2120:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_2075
.label_2164:
	mov	rax, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax + rdi]
	mov	dl, al
	lea	rdi, [rdi]
	shr	dl, 6
	lea	rsi, [rsi]
	movzx	edx, dl
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsp, rsp
	mov	r15d, 1
	bt	rdx, rax
	jb	.label_2074
	lea	rsi, [rsi]
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_2074
	test	ch, 0xff
	setne	al
	movzx	r15d, al
	mov	rbp, rbp
	add	r15d, r15d
	jmp	.label_2074
.label_2109:
	mov	rsp, rsp
	test	r9b, r9b
	mov	rbp, rbp
	jne	.label_2139
.label_2157:
	xor	r15d, r15d
	nop	
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	jne	.label_2074
	lea	rdi, [rdi]
	mov	r15d, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rsp, rsp
	jne	.label_2074
	xor	r15d, r15d
	jmp	.label_2074
.label_2091:
	mov	r12, r10
	mov	edi, ebp
	call	iswalnum
	mov	rbp, rbp
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	r15d, 1
	je	.label_2149
	test	eax, eax
	lea	rsi, [rsi]
	mov	r10, r12
	lea	rdi, [rdi]
	je	.label_2155
	mov	rbp, rbp
	jmp	.label_2077
.label_2160:
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_2093
	mov	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2144
	nop	
	add	r10, rax
	mov	rdx, qword ptr [rbx]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r10]
	nop	
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_2073
.label_2089:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rax + rsi]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rdx + rsi]
.label_2073:
	mov	byte ptr [rdi + rax], dl
	mov	rbp, rbp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_2089
	mov	rsp, rsp
	mov	rax, rcx
.label_2144:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2093
.label_2098:
	mov	rbp, rbp
	mov	r15, r14
.label_2161:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_2093
.label_2107:
	lea	rsi, [rsi]
	mov	rdx, r14
	sub	rdx, r10
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x50]
	mov	rsp, rsp
	add	rsi, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x58], rsi
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2099
.label_2083:
	mov	r15d, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_2074
.label_2087:
	and	r15d, 2
	xor	r15d, 0xa
.label_2074:
	mov	dword ptr [rbx + 0x70], r15d
	mov	rax, qword ptr [rbx + 0x30]
	cmp	r12, r14
	mov	rsp, rsp
	jne	.label_2117
	mov	rbp, rbp
	mov	rdx, rax
	sub	rdx, r14
	jle	.label_2117
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + r14*8], r14
	lea	rdi, [rdi]
	jne	.label_2117
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	nop	
	shl	rdx, 2
	mov	rbp, r10
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	call	memmove
	mov	r10, rbp
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	mov	rbp, rbp
	movq	xmm1, r14
	nop	
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_2075
	mov	rax, qword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	lea	rcx, [rax + r14*8]
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2140:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	nop	
	mov	qword ptr [rax + rdx*8], rsi
	lea	rsi, [rsi]
	inc	rdx
	nop	
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2140
	mov	rbp, rbp
	jmp	.label_2075
.label_2117:
	mov	rcx, r14
	sub	rcx, r10
	mov	rdx, qword ptr [rbx + 0x50]
	add	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x58], rdx
	mov	rbp, rbp
	add	rcx, qword ptr [rbx + 0x60]
	nop	
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_2159:
	mov	rbp, rbp
	mov	rcx, r12
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_2153
	lea	r12, [rcx - 1]
	mov	rdx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rdx + rcx*8 - 8], r14
	lea	rdi, [rdi]
	je	.label_2159
.label_2153:
	cmp	rcx, rax
	jge	.label_2162
	mov	rdx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_2165:
	nop	
	cmp	dword ptr [rdx + rcx*4], -1
	jne	.label_2162
	inc	rcx
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2165
.label_2162:
	mov	rsp, rsp
	cmp	rcx, rax
	jne	.label_2071
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rbp
	lea	rsi, [rsi]
	jmp	.label_2075
.label_2071:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rax + rcx*8]
	sub	rbp, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	je	.label_2119
	mov	rbp, rbp
	mov	r15, r10
	test	rbp, rbp
	jle	.label_2086
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
.label_2086:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	r10, r15
.label_2119:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rbp
	mov	rsp, rsp
	jmp	.label_2075
.label_2149:
	nop	
	mov	r10, r12
	jmp	.label_2077
.label_2142:
	mov	r10, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r11, r12
.label_2147:
	mov	rsp, rsp
	cmp	esi, -1
	jne	.label_2079
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_2118:
	mov	rsp, rsp
	add	r12, rax
	nop	
	mov	rax, r12
	nop	
	sub	rax, r10
	mov	rsp, rsp
	jge	.label_2116
	mov	qword ptr [rsp + 0x10], r11
	nop	
	mov	qword ptr [rsp + 0x18], r13
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	jmp	.label_2121
.label_2141:
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	cmp	r13, r12
	je	.label_2124
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	mov	r10, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	je	.label_2100
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_2100
.label_2124:
	lea	rsi, [rsi]
	mov	r10, rbp
	nop	
	mov	rcx, qword ptr [rsp + 8]
.label_2100:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	nop	
	jmp	.label_2130
	nop	
.label_2121:
	mov	rbp, r10
	nop	
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r13, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	rdx, r13
	sub	rdx, r12
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	nop	
	test	rax, rax
	je	.label_2141
	mov	rcx, rax
	lea	rdi, [rdi]
	or	rcx, 1
	lea	rdi, [rdi]
	cmp	rcx, -1
	je	.label_2141
	mov	esi, dword ptr [rsp]
	mov	rsp, rsp
	mov	r10, rbp
.label_2130:
	add	r12, rax
	lea	rdi, [rdi]
	mov	rax, r12
	nop	
	sub	rax, r10
	jl	.label_2121
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	cmp	esi, -1
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	je	.label_2151
.label_2079:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2125
.label_2152:
	xor	ecx, ecx
	cmp	esi, 0xa
	mov	rbp, rbp
	jne	.label_2097
	lea	rsi, [rsi]
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2097
	mov	rsp, rsp
	xor	ecx, ecx
.label_2097:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rsp, rsp
	jmp	.label_2072
.label_2116:
	mov	qword ptr [rbx + 0x30], rax
.label_2151:
	test	r11, r11
	mov	rbp, rbp
	jle	.label_2080
	lea	rax, [r11 - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], rax
	mov	rsp, rsp
	je	.label_2082
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2084
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
.label_2158:
	mov	ebp, dword ptr [rax + r11*4 - 4]
	nop	
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_2092
	lea	rsi, [rsi]
	dec	r11
	mov	rbp, rbp
	jg	.label_2158
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	nop	
	jmp	.label_2072
.label_2084:
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x80]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	r15d, 1
	lea	rsi, [rsi]
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_2094
	mov	rbp, rbp
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_2094
	jmp	.label_2113
.label_2092:
	cmp	byte ptr [rbx + 0x8e], 0
	lea	rsi, [rsi]
	jne	.label_2090
.label_2111:
	lea	rsi, [rsi]
	xor	r15d, r15d
	cmp	ebp, 0xa
	jne	.label_2094
.label_2113:
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rbp, rbp
	jne	.label_2094
	xor	r15d, r15d
.label_2094:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x70], r15d
.label_2072:
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_2123
.label_2133:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, rbp
	jmp	.label_2075
.label_2123:
	jle	.label_2127
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	nop	
	cmovg	rdx, rbp
	lea	rdi, [rdi]
	shl	rdx, 2
	mov	esi, 0xff
	lea	rdi, [rdi]
	mov	r15, r10
	lea	rsi, [rsi]
	call	memset
	mov	r10, r15
.label_2127:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_2133
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	esi, 0xff
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rbp, r10
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	r10, rbp
	lea	rdi, [rdi]
	jmp	.label_2133
.label_2080:
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_2072
.label_2082:
	mov	rsp, rsp
	and	r15d, 2
	mov	rsp, rsp
	xor	r15d, 0xa
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x70], r15d
	mov	rsp, rsp
	jmp	.label_2072
.label_2125:
	mov	rsp, rsp
	mov	r15, r10
	mov	ebp, esi
	mov	edi, ebp
	nop	
	call	iswalnum
	mov	esi, ebp
	nop	
	cmp	esi, 0x5f
	nop	
	mov	ecx, 1
	je	.label_2148
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	r10, r15
	je	.label_2152
	lea	rdi, [rdi]
	jmp	.label_2097
.label_2139:
	nop	
	mov	qword ptr [rsp + 0x20], r10
	nop	
	mov	edi, ebp
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	r15d, 1
	je	.label_2163
	test	eax, eax
	nop	
	mov	r10, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	je	.label_2157
	nop	
	jmp	.label_2074
.label_2132:
	lea	rsi, [rsp + 0x2e]
	mov	rsp, rsp
	cmp	rdx, 6
	lea	rsi, [rsi]
	mov	ecx, 6
	cmovl	ecx, edx
	nop	
	test	ecx, ecx
	jle	.label_2078
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	mov	rsp, rsp
	cmp	rdi, -8
	nop	
	mov	rcx, -7
	mov	rbp, rbp
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	mov	rbp, rbp
	shl	rcx, 0x20
	lea	rdi, [rdi]
	sar	rcx, 0x20
	inc	rcx
.label_2096:
	nop	
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	rbp, rbp
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x2c], al
	lea	rdi, [rdi]
	dec	rcx
	cmp	rcx, 1
	mov	rsp, rsp
	jg	.label_2096
	mov	r12, r11
	jmp	.label_2103
.label_2090:
	lea	rsi, [rsi]
	mov	r12, r10
	lea	rdi, [rdi]
	mov	edi, ebp
	call	iswalnum
	lea	rdi, [rdi]
	cmp	ebp, 0x5f
	nop	
	mov	r15d, 1
	je	.label_2110
	test	eax, eax
	mov	rsp, rsp
	mov	r10, r12
	lea	rdi, [rdi]
	je	.label_2111
	jmp	.label_2094
.label_2078:
	mov	r12, r11
	mov	qword ptr [rsp + 0x20], r10
	jmp	.label_2103
.label_2148:
	nop	
	mov	r10, r15
	jmp	.label_2097
.label_2163:
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_2074
.label_2110:
	mov	rsp, rsp
	mov	r10, r12
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_2072
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bd00

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r14
	push	rbx
	nop	
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	js	.label_2167
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x58], rdx
	je	.label_2173
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2184
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
	nop	word ptr [rax + rax]
.label_2183:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	mov	rbp, rbp
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_2180
	dec	rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	jg	.label_2183
	mov	edi, dword ptr [rbx + 0x70]
	mov	rsp, rsp
	jmp	.label_2174
.label_2184:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x80]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edi, 1
	bt	rcx, rax
	mov	rsp, rsp
	jb	.label_2174
	xor	edi, edi
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_2174
	jmp	.label_2177
.label_2180:
	cmp	byte ptr [rbx + 0x8e], 0
	lea	rdi, [rdi]
	jne	.label_2178
.label_2182:
	lea	rsi, [rsi]
	xor	edi, edi
	cmp	ebp, 0xa
	mov	rbp, rbp
	jne	.label_2174
.label_2177:
	mov	rbp, rbp
	mov	edi, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_2174
	lea	rdi, [rdi]
	xor	edi, edi
	jmp	.label_2174
.label_2167:
	mov	rbp, rbp
	mov	edi, dword ptr [rbx + 0x70]
	jmp	.label_2174
.label_2173:
	mov	edi, dword ptr [rbx + 0xa0]
	nop	
	and	edi, 2
	xor	edi, 0xa
.label_2174:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	mov	rsp, rsp
	jle	.label_2169
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x98]
	nop	
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax]
	mov	eax, edi
	and	eax, 2
	mov	rsp, rsp
	mov	r8d, edi
	and	r8d, 8
	xor	ebp, ebp
	test	dil, 1
	lea	rsi, [rsi]
	jne	.label_2172
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_2175
	nop	dword ptr [rax + rax]
.label_2179:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	mov	rsp, rsp
	shl	rdi, 4
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rsi, [rsi]
	movzx	ebx, dil
	nop	
	cmp	ebx, 2
	mov	rsp, rsp
	jne	.label_2170
	shr	edi, 8
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_2169
	test	dil, 0x24
	lea	rsi, [rsi]
	jne	.label_2170
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_2169
	mov	rbp, rbp
	test	dil, dil
	lea	rsi, [rsi]
	jns	.label_2169
	nop	word ptr [rax + rax]
.label_2170:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, rcx
	mov	rbp, rbp
	mov	eax, 0
	jl	.label_2179
	lea	rdi, [rdi]
	jmp	.label_2169
	nop	dword ptr [rax + rax]
.label_2175:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	shl	rdi, 4
	mov	rsp, rsp
	mov	edi, dword ptr [rsi + rdi + 8]
	movzx	ebx, dil
	cmp	ebx, 2
	lea	rsi, [rsi]
	jne	.label_2181
	shr	edi, 8
	nop	
	test	di, 0x3ff
	je	.label_2169
	test	dil, 4
	jne	.label_2181
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_2169
	lea	rsi, [rsi]
	test	dil, dil
	mov	rsp, rsp
	jns	.label_2169
.label_2181:
	mov	rbp, rbp
	inc	rbp
	cmp	rbp, rcx
	mov	eax, 0
	jl	.label_2175
	nop	
	jmp	.label_2169
.label_2172:
	test	eax, eax
	jne	.label_2171
	nop	dword ptr [rax]
.label_2176:
	mov	rax, qword ptr [rdx + rbp*8]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	shl	rdi, 4
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rsi, [rsi]
	movzx	ebx, dil
	cmp	ebx, 2
	lea	rdi, [rdi]
	jne	.label_2185
	shr	edi, 8
	lea	rdi, [rdi]
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_2169
	test	dil, 0x28
	lea	rdi, [rdi]
	jne	.label_2185
	lea	rdi, [rdi]
	test	r8d, r8d
	nop	
	jne	.label_2169
	mov	rbp, rbp
	test	dil, dil
	lea	rsi, [rsi]
	jns	.label_2169
	nop	
.label_2185:
	inc	rbp
	cmp	rbp, rcx
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rsp, rsp
	jl	.label_2176
	mov	rsp, rsp
	jmp	.label_2169
	nop	dword ptr [rax + rax]
.label_2171:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	nop	
	shl	rdi, 4
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rdi, [rdi]
	movzx	ebx, dil
	cmp	ebx, 2
	nop	
	jne	.label_2168
	nop	
	shr	edi, 8
	mov	rsp, rsp
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_2169
	test	dil, 8
	lea	rsi, [rsi]
	jne	.label_2168
	test	r8d, r8d
	lea	rdi, [rdi]
	jne	.label_2169
	lea	rdi, [rdi]
	test	dil, dil
	nop	
	jns	.label_2169
.label_2168:
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, rcx
	mov	rbp, rbp
	mov	eax, 0
	mov	rbp, rbp
	jl	.label_2171
.label_2169:
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_2178:
	mov	edi, ebp
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	je	.label_2174
	nop	
	test	eax, eax
	jne	.label_2174
	lea	rsi, [rsi]
	jmp	.label_2182
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c060

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0xe8], 0
	mov	rbp, rbp
	jle	.label_2186
	nop	
	xor	r12d, r12d
	nop	
.label_2188:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_2189
	nop	word ptr cs:[rax + rax]
.label_2187:
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2187
.label_2189:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2190
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_2190:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2188
.label_2186:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c170

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	r14, rcx
	nop	
	mov	qword ptr [rbp - 0x98], r14
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x58], rbx
	mov	r13, rsi
	mov	qword ptr [rbp - 0x88], r13
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + label_2218]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_2219]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	xor	r12d, r12d
	test	r8b, r8b
	je	.label_2220
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	r14d, 0xc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_2209
	nop	
	lea	r12, [rbp - 0x50]
	nop	
	mov	r14, r15
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
.label_2220:
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rdi, [rdi]
	cmp	rdx, 0xfbf
	mov	rsp, rsp
	ja	.label_2194
	mov	rsp, rsp
	mov	rax, rsp
	lea	rdi, [rdi]
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	rax, rcx
	nop	
	mov	rsp, rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_2201
.label_2194:
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdx
	call	malloc
	test	rax, rax
	nop	
	je	.label_2214
	mov	cl, 1
	mov	dword ptr [rbp - 0x9c], ecx
	mov	rdx, qword ptr [rbp - 0x78]
.label_2201:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdx
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r14
	call	memcpy
	mov	rsi, qword ptr [r14]
	xor	edi, edi
	mov	rbp, rbp
	cmp	rsi, qword ptr [r14 + 8]
	jg	.label_2222
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], r12
	nop	
	lea	rax, [r14 + 8]
	mov	qword ptr [rbp - 0x90], rax
	nop	word ptr cs:[rax + rax]
.label_2204:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	mov	rbp, rbp
	lea	rax, [rcx + rdx]
	mov	rbp, rbp
	mov	ecx, dword ptr [rcx + rdx + 8]
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_2226
	cmp	edx, 8
	mov	r12, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	jne	.label_2230
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_2230
	shl	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rax], rsi
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rax + 8], -1
	mov	rsp, rsp
	jmp	.label_2230
	nop	
.label_2226:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	mov	r12, qword ptr [rbp - 0xa8]
	jge	.label_2230
	nop	
	shl	rax, 4
	cmp	qword ptr [r14 + rax], rsi
	jge	.label_2240
	mov	qword ptr [r14 + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	nop	
	mov	rsi, r14
	jmp	.label_2243
.label_2240:
	test	ecx, 0x80000
	je	.label_2247
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	qword ptr [rcx + rax], -1
	mov	rbp, rbp
	je	.label_2247
	mov	rdi, r14
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb0]
.label_2243:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rsi, qword ptr [rbp - 0xb8]
	jmp	.label_2230
.label_2247:
	lea	rsi, [rsi]
	mov	qword ptr [r14 + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_2230:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rsi
	cmp	rsi, qword ptr [r14 + 8]
	mov	rbp, rbp
	jne	.label_2191
	cmp	r15, qword ptr [r13 + 0xb0]
	lea	rdi, [rdi]
	jne	.label_2191
	test	r12, r12
	je	.label_2195
	mov	rsp, rsp
	test	rbx, rbx
	mov	rcx, qword ptr [rbp - 0x90]
	mov	eax, 0
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	je	.label_2196
	nop	dword ptr [rax]
.label_2202:
	mov	rsp, rsp
	cmp	qword ptr [rcx - 8], 0
	js	.label_2199
	lea	rdi, [rdi]
	cmp	qword ptr [rcx], -1
	je	.label_2196
.label_2199:
	inc	rax
	lea	rdi, [rdi]
	add	rcx, 0x10
	cmp	rax, rbx
	lea	rdi, [rdi]
	jb	.label_2202
.label_2196:
	cmp	rax, rbx
	je	.label_2205
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rsp, rsp
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	nop	
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_2208
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rsi, [rsi]
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
.label_2191:
	nop	
	mov	rbx, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	r14, r15
	shl	r14, 4
	mov	eax, dword ptr [rsi + r14 + 8]
	test	al, 8
	mov	rsp, rsp
	jne	.label_2227
	nop	
	mov	qword ptr [rbp - 0xa8], r12
	test	eax, 0x100000
	jne	.label_2231
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 4
	lea	rsi, [rsi]
	jne	.label_2232
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + r14]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx + 0x10]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rax + rcx + 0x18]
	lea	rsi, [rsi]
	mov	r12, r13
	sub	r12, rdx
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	je	.label_2237
	cmp	r13, -1
	je	.label_2206
	cmp	rdx, -1
	mov	rsp, rsp
	je	.label_2206
	cmp	r13, rdx
	lea	rdi, [rdi]
	je	.label_2237
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, r12
	lea	rdi, [rdi]
	jl	.label_2206
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rax + 8]
	lea	rdi, [rsi + rdx]
	add	rsi, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
	lea	rsi, [rsi]
	mov	rdx, r12
	call	memcmp
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2206
.label_2237:
	cmp	r13, rdx
	lea	rdi, [rdi]
	jne	.label_2197
	lea	rdi, [rbp - 0x70]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_2211
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rcx*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2197
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x28]
	nop	
	lea	rsi, [r15 + r15*2]
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	mov	r13, qword ptr [rdx]
	lea	rdi, [rdi]
	dec	rax
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, 0
	nop	
	je	.label_2203
	nop	word ptr cs:[rax + rax]
.label_2216:
	lea	rsi, [rdx + rax]
	lea	rsi, [rsi]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r13
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	lea	rsi, [rsi]
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_2216
.label_2203:
	cmp	rdx, -1
	nop	
	je	.label_2197
	cmp	qword ptr [rcx + rdx*8], r13
	je	.label_2223
	lea	rsi, [rsi]
	jmp	.label_2197
	nop	word ptr cs:[rax + rax]
.label_2227:
	nop	
	mov	qword ptr [rbp - 0xa8], r12
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	r14, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	je	.label_2211
	nop	
	lea	rax, [r15 + r15*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	mov	rsp, rsp
	test	r10, r10
	lea	rdi, [rdi]
	jle	.label_2198
	mov	r9, qword ptr [r14 + 0x10]
	test	r9, r9
	jle	.label_2198
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	r11, -1
	mov	rbp, rbp
	mov	r14d, 0
	mov	rbp, rbp
	je	.label_2235
	nop	dword ptr [rax]
.label_2252:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rbp, rbp
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_2244:
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	nop	
	cmovge	rax, rdi
	cmovge	rdx, rcx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jb	.label_2244
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_2248
	nop	
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_2248
	mov	rsp, rsp
	cmp	r11, -1
	mov	rbp, rbp
	mov	r13, r11
	mov	r11, rbx
	lea	rdi, [rdi]
	jne	.label_2238
.label_2248:
	nop	
	inc	r14
	cmp	r14, r10
	jl	.label_2252
	mov	r12, qword ptr [rbp - 0xb8]
	mov	r13, r11
	jmp	.label_2193
	nop	word ptr [rax + rax]
.label_2231:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	call	check_node_accept_bytes
	movsxd	r12, eax
.label_2197:
	test	r12, r12
	nop	
	jne	.label_2192
	mov	rsi, qword ptr [rbx]
	nop	
	mov	r13, qword ptr [rbp - 0x88]
.label_2232:
	add	rsi, r14
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0xb8]
	call	check_node_accept
	test	al, al
	lea	rdi, [rdi]
	mov	r12d, 1
	je	.label_2198
.label_2192:
	add	r12, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rax, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rax + r15*8]
	mov	rsp, rsp
	je	.label_2200
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	r12, qword ptr [rax + 0xa8]
	jg	.label_2206
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + r12*8]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_2206
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2206
	dec	rax
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rsp, rsp
	je	.label_2221
	nop	word ptr cs:[rax + rax]
.label_2224:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	lea	rdi, [rdi]
	shr	rsi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rsi*8], r13
	nop	
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	mov	rbp, rbp
	jb	.label_2224
.label_2221:
	lea	rsi, [rsi]
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_2198
	mov	rsp, rsp
	cmp	qword ptr [rcx + rdx*8], r13
	jne	.label_2198
.label_2200:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_2193
.label_2235:
	nop	
	mov	rbx, qword ptr [rsi]
	nop	
	mov	r13, -1
	nop	
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2239:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_2234
	cmp	r13, -1
	mov	rax, rbx
	mov	rbp, rbp
	je	.label_2236
	jmp	.label_2238
	nop	word ptr cs:[rax + rax]
.label_2234:
	mov	rax, r13
.label_2236:
	inc	rcx
	lea	rsi, [rsi]
	cmp	rcx, r10
	nop	
	mov	r13, rax
	mov	rsp, rsp
	jl	.label_2239
	jmp	.label_2241
.label_2238:
	mov	r14, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_2242
	lea	rdi, [rdi]
	mov	rcx, r14
	dec	rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	je	.label_2210
	nop	word ptr cs:[rax + rax]
.label_2250:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r13
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	nop	
	jb	.label_2250
.label_2210:
	cmp	rdx, -1
	setne	cl
	mov	rbp, rbp
	cmp	qword ptr [rax + rdx*8], r13
	nop	
	sete	dl
	and	dl, cl
	mov	rbp, rbp
	mov	rax, r13
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_2241
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	nop	
	jne	.label_2256
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	jmp	.label_2193
.label_2241:
	mov	r12, qword ptr [rbp - 0xb8]
	mov	r13, rax
	lea	rdi, [rdi]
	jmp	.label_2193
.label_2242:
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb8]
	nop	
	je	.label_2257
.label_2256:
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	lea	rax, [r12 + 1]
	mov	qword ptr [rcx], rax
	nop	
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_2253
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	shl	rax, 5
	nop	
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_2211
	mov	rax, qword ptr [rbp - 0xa8]
	shl	qword ptr [rax + 8], 1
	nop	
	mov	qword ptr [rax + 0x10], r15
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb8]
	jmp	.label_2215
.label_2253:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rdi, qword ptr [rbp - 0x78]
.label_2215:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	r12, [r12 + r12*2]
	lea	rdi, [rdi]
	shl	r12, 4
	lea	rdi, [rdi]
	mov	qword ptr [r15 + r12], rdx
	mov	rsp, rsp
	mov	qword ptr [r15 + r12 + 8], rbx
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r15 + r12 + 0x10], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_2211
	mov	rdi, rax
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	lea	rbx, [r15 + r12 + 0x18]
	mov	qword ptr [r15 + r12 + 0x20], r14
	nop	
	test	r14, r14
	jle	.label_2213
	nop	
	mov	qword ptr [rbx], r14
	shl	r14, 3
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + r12 + 0x28], rax
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_2233
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	jmp	.label_2223
.label_2213:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_2223:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xb8]
	jmp	.label_2193
.label_2257:
	mov	rbp, rbp
	mov	r12, rdx
.label_2193:
	test	r13, r13
	nop	
	mov	r14, qword ptr [rbp - 0x98]
	jns	.label_2246
	mov	rsp, rsp
	cmp	r13, -2
	lea	rsi, [rsi]
	je	.label_2211
	nop	word ptr cs:[rax + rax]
.label_2198:
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_2251
.label_2206:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2208
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r12, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm0
	nop	
	mov	r13, qword ptr [rax + r14 + 8]
	mov	r14, r15
.label_2246:
	cmp	r12, qword ptr [r14 + 8]
	mov	r15, r13
	mov	rsi, r12
	mov	rbx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r13, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	jle	.label_2204
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xa8]
.label_2222:
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_2217
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	call	free
.label_2217:
	xor	r14d, r14d
	test	r12, r12
	je	.label_2209
	xor	r14d, r14d
	nop	
	cmp	qword ptr [r12], 0
	jle	.label_2207
	nop	
	xor	ebx, ebx
	nop	
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2229:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	inc	r15
	add	rbx, 0x30
	mov	rsp, rsp
	cmp	r15, qword ptr [r12]
	mov	rbp, rbp
	jl	.label_2229
	jmp	.label_2207
.label_2214:
	lea	rdi, [rdi]
	mov	r14d, 0xc
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_2209
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r12], 0
	mov	rbp, rbp
	jle	.label_2207
	nop	
	xor	r15d, r15d
	nop	
.label_2245:
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	rdi, qword ptr [rax + rbx + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	inc	r15
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	jl	.label_2245
	lea	rsi, [rsi]
	jmp	.label_2207
.label_2251:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	r14d, 1
	jmp	.label_2249
.label_2195:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	xor	r14d, r14d
.label_2249:
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	je	.label_2209
	mov	rdi, qword ptr [rbp - 0xb0]
	jmp	.label_2254
.label_2205:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_2255
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_2255:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_2207
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2225:
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	nop	
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	mov	rsp, rsp
	jl	.label_2225
	nop	
	jmp	.label_2207
.label_2233:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_2211:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_2212
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_2212:
	mov	rbp, rbp
	mov	r14d, 0xc
	nop	
	mov	r12, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_2209
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r12], 0
	mov	rsp, rsp
	jle	.label_2207
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2228:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	mov	rbp, rbp
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2228
.label_2207:
	mov	rdi, qword ptr [r12 + 0x10]
.label_2254:
	nop	
	call	free
.label_2209:
	mov	rbp, rbp
	mov	eax, r14d
	lea	rsi, [rsi]
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_2208:
	mov	edi, OFFSET FLAT:.str.26_0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	nop	
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41cf60

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	test	rcx, rcx
	jle	.label_2258
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_2260
.label_2261:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0xf8]
	nop	
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_2258
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2262
	nop	dword ptr [rax]
.label_2260:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	rdx, rbp
	shl	rdx, 4
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	lea	rdi, [rdi]
	jne	.label_2259
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	nop	
	jg	.label_2259
	mov	rdx, qword ptr [r13 + 0xa0]
	mov	rbp, rbp
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_2259
	lea	rdi, [rdi]
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	lea	rdi, [rdi]
	je	.label_2261
.label_2262:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x30
	mov	rsp, rsp
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	nop	
	test	rdx, rdx
	je	.label_2258
	mov	qword ptr [rdx + 8], rbp
	lea	rdi, [rdi]
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	nop	
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax + rax]
.label_2259:
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jl	.label_2260
.label_2258:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d100

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	mov	r10, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r10
	mov	r9, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], r9
	lea	rsi, [rsi]
	cmp	qword ptr [r10 + 8], 0
	nop	
	jle	.label_2306
	nop	
	mov	rax, qword ptr [r9 + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x90], rax
	mov	r8, qword ptr [r9 + 0x48]
	mov	qword ptr [rsp + 0x38], r8
	lea	rax, [r8 + 1]
	mov	qword ptr [rsp + 0x78], rax
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_2286:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], r11
	mov	rsp, rsp
	mov	rax, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + r11*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax]
	nop	
	shl	r15, 4
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r14 + r15 + 8]
	mov	rsp, rsp
	movzx	eax, bpl
	cmp	eax, 4
	jne	.label_2298
	shr	ebp, 8
	lea	rsi, [rsi]
	test	bp, 0x3ff
	nop	
	je	.label_2330
	test	r8, r8
	js	.label_2317
	cmp	qword ptr [r9 + 0x58], r8
	je	.label_2336
	cmp	dword ptr [r9 + 0x90], 2
	jl	.label_2339
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	nop	word ptr [rax + rax]
.label_2269:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	lea	rsi, [rsi]
	cmp	ebx, -1
	jne	.label_2265
	dec	rcx
	nop	
	test	rcx, rcx
	jg	.label_2269
	mov	ecx, dword ptr [r9 + 0x70]
	mov	rsp, rsp
	jmp	.label_2272
.label_2339:
	nop	
	mov	rax, qword ptr [r9 + 8]
	mov	rcx, qword ptr [r9 + 0x80]
	movzx	eax, byte ptr [rax + r8]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rdx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_2312
	mov	rbp, rbp
	mov	ecx, 1
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	jmp	.label_2276
.label_2265:
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_2282
.label_2311:
	xor	ecx, ecx
	cmp	ebx, 0xa
	je	.label_2284
	lea	rdi, [rdi]
	jmp	.label_2272
.label_2312:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_2272
.label_2284:
	mov	ecx, 2
	cmp	byte ptr [r9 + 0x8d], 0
	mov	rsp, rsp
	jne	.label_2272
	xor	ecx, ecx
	nop	
	jmp	.label_2272
.label_2317:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	jmp	.label_2272
.label_2336:
	mov	ecx, dword ptr [r9 + 0xa0]
	lea	rsi, [rsi]
	and	ecx, 2
	xor	ecx, 0xa
	nop	
.label_2272:
	mov	eax, ecx
	mov	rbp, rbp
	and	eax, 1
	sete	dl
	test	bpl, 4
	nop	
	je	.label_2276
	mov	rsp, rsp
	test	eax, eax
	je	.label_2298
	jmp	.label_2276
.label_2282:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r8
	lea	rdi, [rdi]
	mov	r13, r9
	lea	rdi, [rdi]
	mov	r12, r10
	mov	rbp, rbp
	mov	edi, ebx
	call	iswalnum
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	mov	ecx, 1
	je	.label_2308
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r10, r12
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	je	.label_2311
	nop	
	jmp	.label_2276
.label_2308:
	mov	r10, r12
	mov	r9, r13
	mov	r8, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_2276:
	mov	rbp, rbp
	lea	rax, [r14 + r15 + 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	test	dl, dl
	jne	.label_2319
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	and	edx, 0x800
	nop	
	jne	.label_2298
.label_2319:
	test	cl, 2
	jne	.label_2327
	mov	edx, eax
	and	edx, 0x2000
	jne	.label_2298
.label_2327:
	nop	
	test	cl, 8
	nop	
	jne	.label_2330
	mov	rsp, rsp
	shr	eax, 8
	nop	
	test	al, al
	js	.label_2298
	nop	word ptr cs:[rax + rax]
.label_2330:
	mov	rbp, qword ptr [r9 + 0xc8]
	mov	qword ptr [rsp + 0x40], rbp
	mov	rax, qword ptr [r9 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	rax, qword ptr [r9 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x68], rax
	test	rbp, rbp
	mov	rsp, rsp
	mov	eax, 0
	lea	rsi, [rsi]
	jle	.label_2332
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0xd8]
	xor	eax, eax
	mov	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_2270:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jl	.label_2270
.label_2332:
	cmp	rax, rbp
	nop	
	jge	.label_2277
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2277
	mov	rcx, qword ptr [r9 + 0xd8]
	mov	rsp, rsp
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_2277
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_2290:
	nop	
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	cmp	qword ptr [rax], rcx
	mov	rsp, rsp
	je	.label_2324
	cmp	byte ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	lea	rax, [rax + 0x28]
	jne	.label_2290
.label_2277:
	mov	rbp, rbp
	cmp	qword ptr [r9 + 0xe8], 0
	mov	rax, rbp
	jle	.label_2293
	mov	rax, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax]
	nop	
	mov	r15, qword ptr [rax + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r15
	lea	rsi, [rsi]
	xor	edx, edx
	jmp	.label_2296
	nop	word ptr cs:[rax + rax]
.label_2274:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
.label_2296:
	mov	rcx, qword ptr [r9 + 0xf8]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + rdx*8]
	mov	qword ptr [rsp + 0x50], r13
	mov	rcx, qword ptr [r13 + 8]
	mov	rbp, rbp
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r15
	jne	.label_2303
	mov	r15, qword ptr [r13]
	nop	
	mov	rax, qword ptr [r13 + 0x20]
	test	rax, rax
	jle	.label_2310
	mov	qword ptr [rsp + 0xa0], rdx
	mov	rsp, rsp
	mov	r12, r8
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_2295
	nop	word ptr cs:[rax + rax]
.label_2303:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rdx
	jmp	.label_2285
.label_2310:
	mov	qword ptr [rsp + 0xa0], rdx
	mov	rdx, r8
	mov	rsi, r15
	xor	r14d, r14d
	jmp	.label_2318
.label_2322:
	mov	rdx, qword ptr [r9 + 0x58]
	nop	
	cmp	rsi, rdx
	lea	rdi, [rdi]
	jg	.label_2321
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x40]
	mov	rdi, qword ptr [r9 + 0xc0]
	nop	
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsi, r13
	jg	.label_2323
	lea	rsi, [rsi]
	cmp	rax, rdx
	jl	.label_2328
.label_2323:
	cmp	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jg	.label_2329
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_2329
.label_2328:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsp, rsp
	lea	esi, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rdi
	mov	rdi, r9
	mov	r13, r9
	call	extend_buffers
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_2266
.label_2329:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	sub	rdx, rdi
	jle	.label_2263
	mov	rax, qword ptr [r9 + 0xb8]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	r13, r9
	lea	rsi, [rsi]
	call	memset
	mov	r9, r13
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0xc0], rax
.label_2263:
	nop	
	mov	rax, qword ptr [r9 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	jmp	.label_2275
	nop	word ptr cs:[rax + rax]
.label_2295:
	mov	rcx, qword ptr [r13 + 0x28]
	nop	
	mov	rbx, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	mov	rsi, rcx
	sub	rsi, r15
	add	rsi, r12
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_2283
	mov	rcx, qword ptr [r9 + 0x30]
	cmp	rsi, rcx
	jg	.label_2322
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rsi
.label_2275:
	mov	r13, r9
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + r12]
	lea	rsi, [rsi]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, r13
	nop	
	mov	r8, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	jne	.label_2297
.label_2283:
	mov	rbp, rsi
	mov	rdi, r9
	mov	rsi, r13
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r8
	lea	rdi, [rdi]
	mov	r15, r9
	mov	rbp, rbp
	call	get_subexp_sub
	mov	rbp, rbp
	mov	r9, r15
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_2266
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r14
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	cmp	r14, rax
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	r12, rdx
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	r13, rcx
	jl	.label_2295
	nop	
	jmp	.label_2318
.label_2297:
	mov	rax, qword ptr [r13 + 0x20]
.label_2321:
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rbp, rbp
	mov	rsi, r15
.label_2318:
	cmp	r14, rax
	jge	.label_2320
	mov	r10, qword ptr [rsp + 0x98]
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x48]
	jmp	.label_2285
.label_2320:
	test	r14, r14
	setg	al
	lea	rdi, [rdi]
	movzx	ebp, al
	add	rbp, rsi
	cmp	rbp, r8
	mov	r10, qword ptr [rsp + 0x98]
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x48]
	jg	.label_2285
	jmp	.label_2314
.label_2302:
	lea	rdi, [rdi]
	cmp	r14, -1
	je	.label_2331
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r11
	mov	qword ptr [rsp + 0x38], r8
	lea	rsi, [rsi]
	mov	r15, r10
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, r13
	mov	rsp, rsp
	jne	.label_2305
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	edi, 0x18
	mov	r12, r9
	call	rpl_calloc
	mov	rsp, rsp
	mov	r9, r12
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_2266
.label_2305:
	mov	rcx, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	mov	r12, rbx
	mov	dword ptr [rsp], 9
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	nop	
	mov	rsi, rax
	mov	r8, r14
	mov	rbp, rbp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r10, r15
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x88]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	je	.label_2279
	mov	r15, r8
	nop	
	mov	qword ptr [rsp + 0x98], r10
	test	r13d, r13d
	mov	rax, r12
	jne	.label_2266
	mov	qword ptr [rsp + 0x80], rbx
	mov	r12, qword ptr [rax + 0x20]
	mov	rsp, rsp
	cmp	r12, qword ptr [rax + 0x18]
	mov	rbx, rax
	je	.label_2291
.label_2273:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r12, rbx
	mov	r13d, 0xc
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x80]
	je	.label_2266
	mov	rcx, qword ptr [r12 + 0x20]
	nop	
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	nop	
	mov	rsi, r12
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r8, r15
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	get_subexp_sub
	nop	
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r13d, eax
	lea	rsi, [rsi]
	cmp	r13d, 1
	lea	rsi, [rsi]
	ja	.label_2266
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r10, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r8, r15
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x48]
	jmp	.label_2338
.label_2281:
	cmp	rdx, qword ptr [r9 + 0x58]
	jge	.label_2285
	mov	qword ptr [rsp + 0x48], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	mov	qword ptr [rsp + 0x38], r8
	mov	rsp, rsp
	mov	r15, r10
	lea	rbx, [rdx + 1]
	mov	rbp, rbp
	mov	r14, rdx
	nop	
	mov	rdi, r9
	mov	esi, ebx
	mov	rbp, rbp
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r9
	call	extend_buffers
	mov	rsp, rsp
	mov	r9, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	jne	.label_2266
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, r15
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0x88]
	mov	r15, qword ptr [rsp + 0x48]
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, r14
	jmp	.label_2335
.label_2291:
	mov	rbp, rbp
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rax*8 + 8]
	lea	rsi, [rsi]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_2266
	lea	rcx, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rcx
	nop	
	jmp	.label_2273
	nop	word ptr cs:[rax + rax]
.label_2314:
	mov	rbp, rbp
	cmp	rbp, qword ptr [r13]
	jle	.label_2268
	nop	
	cmp	rdx, qword ptr [r9 + 0x30]
	lea	rdi, [rdi]
	jge	.label_2281
	lea	rbx, [rdx + 1]
.label_2335:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	lea	rsi, [rsi]
	cmp	ecx, eax
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	jne	.label_2285
.label_2268:
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_2288
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2288
	mov	qword ptr [rsp + 0x30], rdx
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	nop	
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2307:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	nop	
	movzx	ebx, byte ptr [rdx + rdi + 8]
	nop	
	cmp	ebx, 9
	lea	rsi, [rsi]
	jne	.label_2300
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rdi], r15
	lea	rdi, [rdi]
	je	.label_2302
.label_2300:
	inc	rsi
	cmp	rsi, rax
	jl	.label_2307
.label_2331:
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rdi, [rdi]
	mov	rbx, r9
.label_2338:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_2279
	nop	dword ptr [rax + rax]
.label_2288:
	mov	r12, r13
	lea	rsi, [rsi]
	mov	rbx, r9
.label_2279:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	lea	rdi, [rdi]
	mov	r9, rbx
	nop	
	mov	r13, r12
	lea	rdi, [rdi]
	jl	.label_2314
	nop	word ptr cs:[rax + rax]
.label_2285:
	mov	rdx, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	inc	rdx
	cmp	rdx, qword ptr [r9 + 0xe8]
	lea	rsi, [rsi]
	jl	.label_2274
	mov	rax, qword ptr [r9 + 0xc8]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_2293
.label_2324:
	mov	rax, rbp
.label_2293:
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	cmp	rbp, rax
	mov	rsp, rsp
	jge	.label_2298
	jmp	.label_2289
.label_2326:
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, r11
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r8
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	edi, ebx
	lea	rsi, [rsi]
	call	iswalnum
	mov	rbp, rbp
	cmp	ebx, 0x5f
	mov	rbp, rbp
	mov	edx, 1
	nop	
	je	.label_2334
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x38]
	mov	r11, rbp
	mov	rbp, rbp
	mov	rbp, r12
	nop	
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	je	.label_2337
	jmp	.label_2271
.label_2334:
	mov	r9, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_2271
	nop	word ptr cs:[rax + rax]
.label_2289:
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0xd8]
	lea	rcx, [rbp + rbp*4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x60]
	nop	
	cmp	qword ptr [rax + rcx*8], rdx
	jne	.label_2278
	cmp	qword ptr [rax + rcx*8 + 8], r8
	jne	.label_2278
	mov	r12, qword ptr [rax + rcx*8 + 0x18]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsi, qword ptr [rax + 0x30]
	cmp	r12, r14
	jne	.label_2287
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rsp + 0x60]
	nop	
	lea	rcx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_2292
.label_2287:
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	lea	rax, [rax*8]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x18]
.label_2292:
	mov	r13, qword ptr [rax]
	lea	r15, [r12 + r8]
	sub	r15, r14
	test	r15, r15
	jle	.label_2301
	lea	rax, [r15 - 1]
	mov	rbp, rbp
	cmp	qword ptr [r9 + 0x58], rax
	mov	rsp, rsp
	je	.label_2304
	lea	rsi, [rsi]
	cmp	dword ptr [r9 + 0x90], 2
	mov	rbp, rbp
	jl	.label_2309
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, r15
	nop	dword ptr [rax]
.label_2315:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_2313
	lea	rdi, [rdi]
	dec	rcx
	jg	.label_2315
	lea	rdi, [rdi]
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_2271
.label_2309:
	mov	rcx, qword ptr [r9 + 8]
	mov	rdx, qword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	edx, 1
	bt	rcx, rax
	lea	rdi, [rdi]
	jb	.label_2271
	mov	rbp, rbp
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_2271
	jmp	.label_2325
.label_2313:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_2326
.label_2337:
	xor	edx, edx
	mov	rbp, rbp
	cmp	ebx, 0xa
	jne	.label_2271
.label_2325:
	mov	edx, 2
	mov	rsp, rsp
	cmp	byte ptr [r9 + 0x8d], 0
	jne	.label_2271
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_2271
.label_2301:
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_2271
.label_2304:
	mov	rbp, rbp
	mov	edx, dword ptr [r9 + 0xa0]
	lea	rsi, [rsi]
	and	edx, 2
	mov	rbp, rbp
	xor	edx, 0xa
.label_2271:
	mov	dword ptr [rsp + 8], edx
	mov	rsp, rsp
	lea	rcx, [r13 + r13*2]
	mov	rbp, rbp
	mov	rdx, qword ptr [r9 + 0xb8]
	mov	rax, qword ptr [rdx + r15*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + r8*8]
	test	rdx, rdx
	mov	rsp, rsp
	mov	ebx, 0
	je	.label_2333
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdx + 0x10]
.label_2333:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	lea	rdx, [rsi + rcx*8]
	test	rax, rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x18]
	mov	rsp, rsp
	je	.label_2267
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, rbp
	mov	rbp, r8
	nop	
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbx, rdi
	nop	
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	mov	rsp, rsp
	test	r13d, r13d
	jne	.label_2280
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0x90]
	nop	
	mov	rdx, rbx
	mov	ecx, dword ptr [rsp + 8]
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbp, rbp
	mov	r9, rbx
	mov	rax, qword ptr [r9 + 0xb8]
	cmp	qword ptr [rax + r15*8], 0
	lea	rdi, [rdi]
	jne	.label_2294
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp + 0x14]
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_2264
.label_2294:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	jmp	.label_2299
.label_2267:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rbx
	lea	rsi, [rsi]
	mov	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, r8
	lea	rdi, [rsp + 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x30], rdx
	mov	ecx, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x80]
	mov	rcx, qword ptr [r9 + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	nop	
	mov	rax, qword ptr [r9 + 0xb8]
	mov	rsp, rsp
	cmp	qword ptr [rax + r15*8], 0
	nop	
	jne	.label_2316
	mov	r13d, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	test	r13d, r13d
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbx
	je	.label_2299
	jmp	.label_2264
.label_2316:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x98]
	nop	
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbx
.label_2299:
	cmp	r12, r14
	mov	rbp, rbp
	jne	.label_2278
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r8*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x70]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2278
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	r15, r10
	mov	rsp, rsp
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	rbp, r9
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, r11
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	rdx, r14
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r13d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], r13d
	lea	rsi, [rsi]
	test	r13d, r13d
	mov	rsp, rsp
	jne	.label_2264
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r12, rbp
	mov	rbp, rdi
	nop	
	mov	r14, rdx
	lea	rdi, [rdi]
	call	transit_state_bkref
	lea	rdi, [rdi]
	mov	r11, rbx
	nop	
	mov	r8, r14
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	mov	r10, r15
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	nop	
	test	r13d, r13d
	jne	.label_2264
.label_2278:
	inc	rbp
	cmp	rbp, qword ptr [r9 + 0xc8]
	jl	.label_2289
.label_2298:
	inc	r11
	cmp	r11, qword ptr [r10 + 8]
	mov	rbp, rbp
	jl	.label_2286
.label_2306:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	nop	
	xor	r13d, r13d
	jmp	.label_2264
.label_2266:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], r13d
.label_2264:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0xa8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2280:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	call	free
	jmp	.label_2264
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e0f0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	lea	rsi, [rsi]
	ja	.label_2341
	mov	rbp, rbp
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	cmovle	rbp, rcx
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_2347
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_2341
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	nop	
	je	.label_2341
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2347
	lea	rsi, [rbp*8]
	call	realloc
	nop	
	test	rax, rax
	je	.label_2341
	mov	qword ptr [r15 + 0x18], rax
.label_2347:
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x8b], 0
	lea	rdi, [rdi]
	je	.label_2349
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2341
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
.label_2349:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	je	.label_2353
	lea	rsi, [rbp*8 + 8]
	nop	
	call	realloc
	test	rax, rax
	je	.label_2341
	mov	qword ptr [r15 + 0xb8], rax
.label_2353:
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	lea	rsi, [rsi]
	je	.label_2342
	nop	
	cmp	eax, 2
	jl	.label_2348
	mov	rdi, r15
	nop	
	call	build_wcs_upper_buffer
	mov	r14d, eax
	mov	rsp, rsp
	test	r14d, r14d
	je	.label_2345
	jmp	.label_2341
.label_2342:
	cmp	eax, 2
	mov	rbp, rbp
	jl	.label_2352
	mov	rdi, r15
	call	build_wcs_buffer
	nop	
	jmp	.label_2345
.label_2348:
	nop	
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	lea	rdi, [rdi]
	cmovg	r14, rax
	mov	rbp, rbp
	cmp	rbp, r14
	jge	.label_2354
	nop	
	jmp	.label_2340
.label_2344:
	mov	rsp, rsp
	mov	cl, byte ptr [rax + rdx]
	lea	rdi, [rdi]
	jmp	.label_2346
.label_2340:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	nop	
	mov	cl, byte ptr [rbp + rcx]
	mov	rbp, rbp
	movzx	edx, cl
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_2344
.label_2346:
	mov	rsp, rsp
	movzx	ebx, cl
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	lea	rsi, [rsi]
	ja	.label_2350
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2350:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r14
	jl	.label_2340
	mov	rbp, r14
.label_2354:
	mov	qword ptr [r15 + 0x30], rbp
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x38], rbp
	jmp	.label_2345
.label_2352:
	mov	rdx, qword ptr [r15 + 0x78]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_2345
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x58]
	mov	rbp, rbp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	cmovg	rcx, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2343
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	add	rsi, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	nop	
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	rsp, rsp
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_2351
	nop	dword ptr [rax]
.label_2355:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax], dl
.label_2351:
	inc	rax
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2355
	lea	rdi, [rdi]
	mov	rax, rcx
.label_2343:
	mov	qword ptr [r15 + 0x30], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x38], rax
.label_2345:
	xor	r14d, r14d
.label_2341:
	lea	rdi, [rdi]
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e3d0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbx + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rbx + 0xc0]
	jle	.label_2370
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbp
	mov	qword ptr [rbx + 0xc0], r14
	jmp	.label_2356
.label_2370:
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_2365
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbp, rbp
	je	.label_2368
	mov	rbp, rbp
	mov	r13, qword ptr [rbp + 0x50]
	lea	rdi, [rsp]
	mov	rsi, r13
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2371
	mov	rax, qword ptr [rbx + 0x48]
	jmp	.label_2372
.label_2365:
	mov	qword ptr [rax + r14*8], rbp
	nop	
	jmp	.label_2356
.label_2368:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	r13d, r13d
	mov	rsp, rsp
	mov	rax, r14
.label_2372:
	test	rax, rax
	jle	.label_2360
	nop	
	lea	rcx, [rax - 1]
	cmp	qword ptr [rbx + 0x58], rcx
	lea	rdi, [rdi]
	je	.label_2361
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2367
	mov	rcx, qword ptr [rbx + 0x10]
.label_2369:
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rcx + rax*4 - 4]
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_2366
	dec	rax
	lea	rsi, [rsi]
	jg	.label_2369
	mov	ecx, dword ptr [rbx + 0x70]
	jmp	.label_2357
.label_2367:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rcx]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	mov	rsp, rsp
	jb	.label_2357
	lea	rsi, [rsi]
	xor	ecx, ecx
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0xa
	jne	.label_2357
	jmp	.label_2362
.label_2366:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2363
.label_2373:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_2357
.label_2362:
	lea	rdi, [rdi]
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rsp, rsp
	jne	.label_2357
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_2357
.label_2360:
	mov	ecx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_2357
.label_2361:
	mov	ecx, dword ptr [rbx + 0xa0]
	and	ecx, 2
	nop	
	xor	ecx, 0xa
.label_2357:
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r12
	nop	
	call	re_acquire_state_context
	mov	rbp, rax
	nop	
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbp
	test	r13, r13
	je	.label_2356
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	free
.label_2356:
	test	rbp, rbp
	je	.label_2364
	mov	rax, qword ptr [r12 + 0x98]
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2358
	nop	
	lea	r12, [rbp + 8]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_2359
	test	byte ptr [rbp + 0x68], 0x40
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rsp, rsp
	je	.label_2359
	mov	rdi, rbx
	nop	
	mov	rsi, r12
	call	transit_state_bkref
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_2359
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2359
.label_2364:
	mov	rax, rbp
	jmp	.label_2359
.label_2358:
	nop	
	mov	rax, rbp
.label_2359:
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_2371:
	xor	eax, eax
	jmp	.label_2359
.label_2363:
	mov	edi, ebp
	lea	rsi, [rsi]
	call	iswalnum
	lea	rsi, [rsi]
	cmp	ebp, 0x5f
	mov	ecx, 1
	lea	rdi, [rdi]
	je	.label_2357
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2357
	jmp	.label_2373
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41e680

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rbp, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2374
	lea	rsi, [rsi]
	mov	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_2375
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_2375
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2375
	lea	rsi, [rsi]
	add	rdi, r13
	mov	rsp, rsp
	mov	qword ptr [rbp], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0xc
	nop	
	je	.label_2380
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_2377
.label_2375:
	test	r13, r13
	jle	.label_2374
	mov	qword ptr [rbp + 8], r13
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2376
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2379
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	mov	rsp, rsp
	jmp	.label_2386
.label_2374:
	test	r15, r15
	je	.label_2376
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2376
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_2376
	lea	rdi, [rdi]
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2379
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_2386
.label_2376:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2386
.label_2381:
	mov	rcx, rbx
	nop	dword ptr [rax]
.label_2377:
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	mov	rsp, rsp
	jge	.label_2378
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	nop	
	jle	.label_2382
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	rbp, r13
	nop	
	jl	.label_2377
	jmp	.label_2378
.label_2382:
	nop	
	sete	bl
	mov	rbp, rbp
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	nop	
	jl	.label_2381
	jmp	.label_2383
.label_2378:
	mov	rsp, rsp
	mov	rbx, rcx
.label_2383:
	nop	
	sub	r13, rbp
	jle	.label_2384
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	nop	
	mov	rdx, r13
	call	memcpy
	lea	rsi, [rsi]
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_2385
.label_2384:
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbx
	jle	.label_2385
	mov	rsp, rsp
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	nop	
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_2385:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + 8], r14
.label_2386:
	xor	ecx, ecx
.label_2380:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2379:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	lea	rdi, [rdi]
	jmp	.label_2380
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e920

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	mov	rbp, rbp
	test	r8, r8
	mov	rbp, rbp
	jle	.label_2387
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr cs:[rax + rax]
.label_2389:
	lea	rdi, [rdi]
	lea	r10, [rax + r11]
	lea	rdi, [rdi]
	mov	rdx, r10
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	add	rdx, r10
	sar	rdx, 1
	mov	rbp, rbp
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	nop	
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	lea	rdi, [rdi]
	cmp	rax, r11
	lea	rdi, [rdi]
	jl	.label_2389
.label_2387:
	mov	rbp, rbp
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_2388
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_2390
.label_2388:
	mov	rax, -1
.label_2390:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41e9c0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	rsp, rsp
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2395
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2398
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	mov	rbp, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2397
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	mov	rbp, rbp
	add	rbp, rbp
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2398:
	nop	
	test	r15, r15
	nop	
	jle	.label_2392
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	lea	rcx, [rcx + rcx*4]
	nop	
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2393
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2393
.label_2392:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
.label_2393:
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8 + 8], r14
	nop	
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	mov	rbp, rbp
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	mov	rbp, rbp
	cmovne	si, dx
	mov	rbp, rbp
	mov	word ptr [rax + rcx*8 + 0x22], si
	nop	
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_2399
	mov	dword ptr [r13 + 0xe0], edi
.label_2399:
	lea	rdi, [rdi]
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x18]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0xc0]
	nop	
	cmp	rax, r14
	jg	.label_2396
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2391
.label_2396:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	mov	rbp, rbp
	jg	.label_2394
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2394
.label_2391:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	mov	rsp, rsp
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_2395
.label_2394:
	xor	ebp, ebp
	mov	rdx, r14
	nop	
	sub	rdx, r15
	jle	.label_2395
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0xc0], r14
.label_2395:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2397:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	lea	rdi, [rdi]
	mov	ebp, 0xc
	jmp	.label_2395
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ec20

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0xb0], r9
	mov	r13, rcx
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, qword ptr [rsi + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rsi, [rsi]
	lea	rcx, [rax + r9]
	mov	rsp, rsp
	cmp	rbp, rcx
	jle	.label_2410
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], r8
	nop	
	mov	rbx, qword ptr [rsi + 0x10]
.label_2436:
	mov	rax, qword ptr [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	cmove	rax, r13
	mov	rcx, qword ptr [rdi + 0x48]
	nop	
	mov	rdx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], rbx
	mov	rbx, rax
	mov	qword ptr [rdi + 0x48], rbx
	test	rbx, rbx
	mov	rsp, rsp
	jle	.label_2441
	lea	rax, [rbx - 1]
	cmp	qword ptr [rdi + 0x58], rax
	je	.label_2449
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x68], rcx
	cmp	dword ptr [rdi + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_2439
	mov	rax, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_2407:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_2406
	lea	rsi, [rsi]
	dec	rcx
	nop	
	jg	.label_2407
	jmp	.label_2412
.label_2439:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x80]
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	edx, 1
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_2415
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0xa
	nop	
	jne	.label_2415
	nop	
	jmp	.label_2433
.label_2406:
	cmp	byte ptr [rdi + 0x8e], 0
	mov	rsp, rsp
	mov	r14, rdi
	lea	rdi, [rdi]
	jne	.label_2454
.label_2416:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2415
.label_2433:
	lea	rsi, [rsi]
	mov	edx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	mov	rbp, rbp
	jne	.label_2415
	mov	rbp, rbp
	xor	edx, edx
	nop	
	jmp	.label_2415
.label_2410:
	mov	qword ptr [rsp + 0x98], r12
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r12d, 0xc
	cmp	rdx, rcx
	jle	.label_2419
	mov	rsp, rsp
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0xa0], r8
	nop	
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	r14, [rax + rcx + 1]
	mov	rbp, rbp
	lea	rcx, [r14 + rbp]
	mov	rax, rcx
	shr	rax, 0x3d
	lea	rsi, [rsi]
	jne	.label_2419
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0xc0], rsi
	lea	rdi, [rdi]
	lea	rsi, [rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rdi, [rdi]
	call	realloc
	mov	rbx, rax
	test	rbx, rbx
	nop	
	je	.label_2419
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rbx
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 8], rax
	lea	rsi, [rsi]
	lea	rdi, [rbx + rbp*8]
	lea	rsi, [rsi]
	shl	r14, 3
	nop	
	xor	esi, esi
	mov	rdx, r14
	mov	rbp, rbp
	call	memset
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_2436
.label_2441:
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	mov	qword ptr [rsp + 0x68], rcx
.label_2412:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	edx, dword ptr [r14 + 0x70]
	jmp	.label_2415
.label_2449:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rsp, rsp
	mov	r14, rdi
	nop	
	mov	edx, dword ptr [r14 + 0xa0]
	lea	rsi, [rsi]
	and	edx, 2
	xor	edx, 0xa
.label_2415:
	mov	rsp, rsp
	cmp	rbx, r13
	jne	.label_2450
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rsi
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1894]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2425
	mov	rbp, rbp
	mov	r13, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], 0
	mov	rbp, rbp
	lea	rsi, [rsp + 0x40]
	mov	rdi, r12
	mov	r15, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2403
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	jmp	.label_2435
.label_2450:
	nop	
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r13, rbx
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_2438
	lea	rsi, [rsi]
	test	byte ptr [rcx + 0x68], 0x40
	jne	.label_2442
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], edx
	mov	r15, r12
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	nop	
	jmp	.label_2420
.label_2438:
	lea	rdi, [rdi]
	mov	r15, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_2448
.label_2442:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rcx + 0x10]
	mov	qword ptr [rsp + 0x48], rbx
	mov	rbp, qword ptr [rcx + 0x10]
	nop	
	test	rbp, rbp
	jle	.label_2446
	mov	dword ptr [rsp + 0x10], edx
	mov	qword ptr [rsp + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x40], rbx
	nop	
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2425
	mov	r15, r12
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
	nop	
	mov	rsi, qword ptr [r12 + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	memcpy
	mov	rcx, r12
	mov	dword ptr [rsp + 0xc], 0
	nop	
	jmp	.label_2420
.label_2446:
	mov	dword ptr [rsp + 0x10], edx
	mov	rbp, rbp
	mov	r15, r12
	nop	
	mov	qword ptr [rsp + 0xc0], rsi
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_2420:
	nop	
	mov	ebp, dword ptr [rsp + 0x100]
	test	byte ptr [rcx + 0x68], 0x40
	je	.label_2448
.label_2435:
	test	rbx, rbx
	je	.label_2423
	lea	rsi, [rsp + 0x40]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	test	r12d, r12d
	jne	.label_2403
.label_2423:
	lea	rdi, [rsp + 0xc]
	lea	rdx, [rsp + 0x40]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x10]
	call	re_acquire_state_context
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_2417
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2413
.label_2417:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	qword ptr [rax + r13*8], rcx
.label_2448:
	cmp	r13, qword ptr [rsp + 0xb0]
	jge	.label_2424
	mov	rsp, rsp
	lea	rax, [r13 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rax
	xor	ebp, ebp
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], r15
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_2428
	nop	dword ptr [rax]
.label_2431:
	inc	rbp
	mov	rbp, rbp
	test	rcx, rcx
	mov	rax, qword ptr [r14 + 0xb8]
	nop	
	mov	qword ptr [rax + r13*8 + 8], rcx
	mov	eax, 0
	lea	rdi, [rdi]
	cmovne	rbp, rax
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xb8]
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	r13, rbx
	jl	.label_2428
	jmp	.label_2402
.label_2452:
	mov	edi, ebx
	nop	
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	mov	rsp, rsp
	je	.label_2404
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_2455
	jmp	.label_2404
.label_2428:
	mov	rsp, rsp
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jg	.label_2432
	mov	r15, rcx
	mov	qword ptr [rsp + 0x48], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_2414
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rdi, [rsp + 0x40]
	call	re_node_set_merge
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2413
.label_2414:
	mov	rbp, rbp
	mov	rax, r15
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2429
	mov	r15, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x94], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	cmp	qword ptr [rax + 0x28], 0
	lea	rsi, [rsi]
	mov	edi, 0
	jle	.label_2434
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0x10], r13
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2443:
	mov	rax, qword ptr [rax + 0x30]
	mov	r13, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [r15]
	mov	rbx, r13
	lea	rsi, [rsi]
	shl	rbx, 4
	test	byte ptr [rsi + rbx + 0xa], 0x10
	je	.label_2447
	mov	rdi, r15
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rcx, rbp
	lea	rdi, [rdi]
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	cmp	eax, 2
	jl	.label_2426
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rdx, qword ptr [rcx + r13*8]
	mov	rcx, r14
	movsxd	r14, eax
	nop	
	add	r14, rbp
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0xb8]
	nop	
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x78], 0
	test	rsi, rsi
	lea	rbx, [rsp + 0x70]
	lea	rsi, [rsi]
	je	.label_2408
	lea	rsi, [rsi]
	add	rsi, 8
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rdx
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	ebp, eax
	nop	
	mov	dword ptr [rsp + 0x94], ebp
	mov	rbp, rbp
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_2405
.label_2408:
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rbp, rbp
	je	.label_2418
	lea	rdi, [rsp + 0x94]
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rcx, qword ptr [rbx + 0xb8]
	nop	
	mov	qword ptr [rcx + r14*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rbx
	jne	.label_2400
	mov	ebp, dword ptr [rsp + 0x94]
	mov	rsp, rsp
	test	ebp, ebp
	nop	
	je	.label_2400
	jmp	.label_2405
	nop	word ptr cs:[rax + rax]
.label_2426:
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2400
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15]
	nop	dword ptr [rax]
.label_2447:
	add	rsi, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x10]
	nop	
	call	check_node_accept
	test	al, al
	lea	rsi, [rsi]
	je	.label_2411
.label_2400:
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [rax + r13*8]
	lea	rdi, [rsp + 0x40]
	call	re_node_set_insert
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_2418
.label_2411:
	lea	rsi, [rsi]
	inc	r12
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	r12, qword ptr [rax + 0x28]
	jl	.label_2443
	mov	rdi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x60]
.label_2434:
	lea	rsi, [rsi]
	call	free
	nop	
	mov	dword ptr [rsp + 0xc], 0
.label_2429:
	mov	rsp, rsp
	mov	r15, r12
	lea	rbx, [r13 + 1]
	cmp	qword ptr [rsp + 0x48], 0
	nop	
	je	.label_2437
	mov	qword ptr [rsp + 0x60], rbp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x98]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	nop	
	mov	ecx, ebp
	mov	rsp, rsp
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_2413
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8d, ebp
	lea	rsi, [rsi]
	call	expand_bkref_cache
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x60]
	jne	.label_2413
.label_2437:
	test	r13, r13
	nop	
	js	.label_2409
	cmp	qword ptr [r14 + 0x58], r13
	lea	rsi, [rsi]
	je	.label_2451
	lea	rsi, [rsi]
	cmp	dword ptr [r14 + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_2444
	mov	qword ptr [rsp + 0x18], rbx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	r12, r15
	nop	word ptr [rax + rax]
.label_2430:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebx, -1
	jne	.label_2427
	mov	rsp, rsp
	dec	rcx
	test	rcx, rcx
	nop	
	jg	.label_2430
	mov	rsp, rsp
	mov	ecx, dword ptr [r14 + 0x70]
	jmp	.label_2404
	nop	word ptr cs:[rax + rax]
.label_2444:
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x80]
	nop	
	movzx	eax, byte ptr [rax + r13]
	lea	rsi, [rsi]
	mov	dl, al
	mov	rbp, rbp
	shr	dl, 6
	lea	rdi, [rdi]
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	rbp, rbp
	mov	ecx, 1
	bt	rdx, rax
	mov	rbp, rbp
	mov	r12, r15
	lea	rdi, [rdi]
	jb	.label_2404
	xor	ecx, ecx
	mov	rbp, rbp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0xa
	jne	.label_2404
	nop	
	jmp	.label_2422
.label_2427:
	cmp	byte ptr [r14 + 0x8e], 0
	jne	.label_2452
.label_2455:
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	ebx, 0xa
	nop	
	jne	.label_2404
.label_2422:
	mov	ecx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_2404
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_2404
.label_2409:
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0x70]
	mov	r12, r15
	mov	rbp, rbp
	jmp	.label_2404
.label_2451:
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0xa0]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_2404:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xc]
	nop	
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state_context
	mov	rcx, rax
	mov	rsp, rsp
	test	rcx, rcx
	jne	.label_2431
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_2431
	jmp	.label_2413
.label_2424:
	lea	rsi, [rsi]
	mov	rbx, r13
.label_2402:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	nop	
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r14 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [r14 + 0x48], rcx
	mov	rsp, rsp
	je	.label_2440
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	nop	
	jle	.label_2440
	xor	r12d, r12d
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	je	.label_2401
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0xa0]
	nop	
.label_2453:
	lea	rsi, [rdx + rcx]
	mov	rbp, rbp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	mov	rsp, rsp
	jb	.label_2453
	jmp	.label_2421
.label_2418:
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	call	free
	mov	ebp, 0xc
	mov	dword ptr [rsp + 0xc], ebp
	mov	rbp, rbp
	jmp	.label_2413
.label_2405:
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	free
	mov	dword ptr [rsp + 0xc], ebp
.label_2413:
	nop	
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	nop	
	mov	r12d, dword ptr [rsp + 0xc]
	lea	rdi, [rdi]
	jmp	.label_2419
.label_2401:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0xa0]
.label_2421:
	cmp	rdx, -1
	je	.label_2440
	cmp	qword ptr [rax + rdx*8], rbp
	lea	rdi, [rdi]
	je	.label_2419
.label_2440:
	lea	rdi, [rdi]
	mov	r12d, 1
.label_2419:
	mov	eax, r12d
	lea	rdi, [rdi]
	add	rsp, 0xc8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_2403:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_2419
.label_2425:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0xc
	nop	
	mov	r12d, 0xc
	nop	
	jmp	.label_2419
.label_2432:
	mov	rbx, r13
	jmp	.label_2402
.label_2454:
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	nop	
	mov	edx, 1
	je	.label_2445
	test	eax, eax
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_2416
	jmp	.label_2415
.label_2445:
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_2415
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f860

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r15d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_2460
	test	r12, r12
	mov	rbp, rbp
	jle	.label_2457
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_2458
	nop	dword ptr [rax]
.label_2463:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	nop	
	jl	.label_2458
	lea	rsi, [rsi]
	jmp	.label_2457
	nop	word ptr cs:[rax + rax]
.label_2461:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_2462
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	nop	
	jmp	.label_2459
	nop	
.label_2458:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	lea	r9, [rdx + rdx*2]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2462
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	dword ptr [rax]
.label_2464:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbx + rcx + 8]
	lea	rdi, [rdi]
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_2456
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2461
.label_2456:
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jl	.label_2464
.label_2462:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2459:
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	je	.label_2463
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	lea	rsi, [rsi]
	jmp	.label_2460
.label_2457:
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	xor	ebx, ebx
.label_2460:
	mov	eax, ebx
	nop	
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41fa20

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], r14
	nop	
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	mov	rax, qword ptr [r10 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	lea	rdi, [rdi]
	mov	edx, 0
	lea	rdi, [rdi]
	jle	.label_2484
	nop	
	mov	rsi, qword ptr [r10 + 0xd8]
	nop	
	xor	edx, edx
	mov	rdi, r9
	nop	
.label_2465:
	mov	rbp, rbp
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rsp, rsp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbp
	mov	rbp, rbp
	cmp	rdx, rdi
	jl	.label_2465
.label_2484:
	mov	rsp, rsp
	cmp	rdx, r9
	mov	rsp, rsp
	jge	.label_2480
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_2480
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x38], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	mov	rsp, rsp
	jne	.label_2480
	mov	dword ptr [rsp + 0x3c], eax
	mov	rbp, rbp
	jmp	.label_2468
.label_2474:
	mov	rcx, qword ptr [r10 + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_2468:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r13, [rcx + rax*8]
	nop	
.label_2472:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2471
	mov	rdx, qword ptr [r13]
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_2486
	nop	
.label_2493:
	mov	rsp, rsp
	lea	rbp, [rsi + rdi]
	lea	rsi, [rsi]
	shr	rbp, 1
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], rdx
	nop	
	lea	rbx, [rbp + 1]
	lea	rsi, [rsi]
	cmovl	rsi, rbx
	mov	rbp, rbp
	cmovge	rdi, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jb	.label_2493
.label_2486:
	mov	rbp, rbp
	cmp	rsi, -1
	je	.label_2471
	cmp	qword ptr [rax + rsi*8], rdx
	mov	rbp, rbp
	jne	.label_2471
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	cmp	r12, r15
	lea	rsi, [rsi]
	jne	.label_2479
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2496
	nop	dword ptr [rax + rax]
.label_2466:
	lea	rsi, [rdx + rcx]
	lea	rdi, [rdi]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	mov	rsp, rsp
	cmp	rdx, rcx
	jb	.label_2466
.label_2496:
	cmp	rdx, -1
	lea	rdi, [rdi]
	je	.label_2478
	lea	rsi, [rsi]
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_2478
	mov	rbp, r14
	jmp	.label_2487
.label_2479:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_2490
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_2485
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2470
.label_2481:
	lea	rsi, [rdx + rcx]
	mov	rsp, rsp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	lea	rsi, [rsi]
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2481
.label_2470:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2485
	mov	ecx, 4
	mov	rsp, rsp
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2489
.label_2485:
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_2492
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2475
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	nop	
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_2483
.label_2478:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1894]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_2491
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xor	eax, eax
.label_2476:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	ecx, dword ptr [rsp + 0x38]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x5c]
	mov	rsp, rsp
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_2467
.label_2488:
	mov	r14, rbp
	jmp	.label_2487
.label_2490:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1894]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	nop	
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2473
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2477
.label_2492:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
.label_2483:
	mov	rsp, rsp
	xor	ebx, ebx
.label_2494:
	mov	dword ptr [rsp + 0xc], ebx
	mov	rsp, rsp
	lea	rdi, [rsp + 0x40]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_2482
	xor	al, 1
	mov	rsp, rsp
	jne	.label_2482
.label_2477:
	lea	rdi, [rsp + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	nop	
	sete	al
	mov	edx, dword ptr [rsp + 0xc]
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, al
	movzx	ecx, cl
	nop	
	mov	eax, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	cmovne	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
.label_2489:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
.label_2487:
	test	ecx, ecx
	je	.label_2471
	nop	
	cmp	ecx, 4
	nop	
	jne	.label_2495
	nop	dword ptr [rax + rax]
.label_2471:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	rdi, [rdi]
	lea	r13, [r13 + 0x28]
	mov	rbp, rbp
	jne	.label_2472
	nop	
	jmp	.label_2480
.label_2491:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_2476
.label_2467:
	lea	rsi, [rsi]
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], r14d
	mov	rsp, rsp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], r14d
	mov	rbp, rbp
	jmp	.label_2488
.label_2482:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmove	ebx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], ebx
	nop	
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], ebx
	lea	rsi, [rsi]
	jmp	.label_2469
.label_2473:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], 0xc
	lea	rdi, [rdi]
	mov	ecx, 1
.label_2469:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_2487
.label_2475:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	ebx, 0xc
	nop	
	jmp	.label_2494
.label_2495:
	lea	rdi, [rdi]
.label_3114:
	cmp	ecx, 2
	lea	rsi, [rsi]
	je	.label_2474
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x3c]
.label_2480:
	add	rsp, 0x68
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420030

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r15d, r8d
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	nop	
	jmp	.label_2502
	nop	
.label_2503:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_2502:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2504
	mov	rsp, rsp
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_2506
	nop	dword ptr [rax]
.label_2499:
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rax, rsi
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_2499
.label_2506:
	mov	rsp, rsp
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_2504
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2497
.label_2504:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	lea	rdi, [rdi]
	jne	.label_2500
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r14
	je	.label_2505
.label_2500:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	je	.label_2498
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	lea	rbp, [rbp + rbp*2]
	nop	
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2501
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_2503
	jmp	.label_2497
	nop	word ptr cs:[rax + rax]
.label_2501:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2498
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2503
.label_2505:
	cmp	r15d, 9
	jne	.label_2497
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	nop	
	je	.label_2498
.label_2497:
	nop	
	xor	eax, eax
.label_2498:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4201d0

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	nop	
	mov	r8, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r8, r8
	je	.label_2529
	mov	rsp, rsp
	mov	r15, r8
	jle	.label_2528
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2509
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	nop	
	mov	r15, r8
	je	.label_2509
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	rsp, rsp
	mov	eax, ebx
	shr	eax, 2
	lea	rsi, [rsi]
	inc	eax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	test	al, 3
	nop	
	je	.label_2521
	nop	
	lea	ebp, [r8 - 4]
	nop	
	shr	ebp, 2
	nop	
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2535:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	mov	rbp, rbp
	paddq	xmm0, xmm2
	nop	
	paddq	xmm1, xmm3
	add	rdi, 4
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	jne	.label_2535
	jmp	.label_2516
.label_2521:
	pxor	xmm1, xmm1
.label_2516:
	mov	rbp, rbp
	cmp	rbx, 0xc
	mov	rsp, rsp
	jb	.label_2526
	nop	
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rbp, rbp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_2533:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	lea	rsi, [rsi]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	lea	rdi, [rdi]
	paddq	xmm3, xmm1
	nop	
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	lea	rsi, [rsi]
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rbp, rbp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	nop	
	paddq	xmm4, xmm2
	mov	rbp, rbp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	mov	rsp, rsp
	paddq	xmm1, xmm5
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rax, -0x10
	mov	rsp, rsp
	jne	.label_2533
.label_2526:
	lea	rsi, [rsi]
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	mov	rbp, rbp
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2528
.label_2509:
	mov	rdx, r8
	lea	rdi, [rdi]
	sub	rdx, rax
	nop	
	lea	rcx, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_2507:
	add	r15, qword ptr [rcx]
	lea	rsi, [rsi]
	add	rcx, 8
	dec	rdx
	jne	.label_2507
.label_2528:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	mov	rsp, rsp
	and	rcx, r15
	nop	
	lea	rdi, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rdi*8]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2513
	nop	
	xor	edx, edx
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2527
	nop	
	mov	rax, qword ptr [rax + rdi*8 + 0x10]
	nop	dword ptr [rax]
.label_2518:
	mov	r13, qword ptr [rax + rdx*8]
	lea	rsi, [rsi]
	cmp	r15, qword ptr [r13]
	jne	.label_2531
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2531
	nop	
	mov	rdi, r8
	nop	word ptr [rax + rax]
.label_2536:
	test	rdi, rdi
	nop	
	jle	.label_2512
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rbx + rdi*8 - 8]
	lea	rsi, [rsi]
	lea	rdi, [rdi - 1]
	mov	rbp, rbp
	je	.label_2536
	nop	dword ptr [rax]
.label_2531:
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jl	.label_2518
	mov	rbp, rbp
	jmp	.label_2513
.label_2527:
	xor	edx, edx
	cmp	rcx, 0x10
	mov	rsp, rsp
	jb	.label_2524
	xor	edx, edx
	mov	rax, rcx
	and	rax, 0xfffffffffffffff0
	mov	rbp, rbp
	je	.label_2524
	lea	rdx, [rcx - 0x10]
	mov	edi, edx
	shr	edi, 4
	lea	rsi, [rsi]
	inc	edi
	nop	
	xor	ebp, ebp
	test	dil, 7
	je	.label_2530
	lea	edi, [rcx - 0x10]
	shr	edi, 4
	lea	rsi, [rsi]
	inc	edi
	mov	rsp, rsp
	and	edi, 7
	lea	rsi, [rsi]
	neg	rdi
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2514:
	add	rbp, 0x10
	mov	rsp, rsp
	inc	rdi
	mov	rbp, rbp
	jne	.label_2514
.label_2530:
	cmp	rdx, 0x70
	jb	.label_2517
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	and	rdx, 0xfffffffffffffff0
	sub	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_2525:
	lea	rdi, [rdi]
	add	rdx, -0x80
	mov	rsp, rsp
	jne	.label_2525
.label_2517:
	cmp	rcx, rax
	mov	rsp, rsp
	mov	rdx, rax
	je	.label_2513
	nop	word ptr [rax + rax]
.label_2524:
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_2524
.label_2513:
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	edi, 0x70
	lea	rdi, [rdi]
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	nop	
	je	.label_2510
	mov	rbx, r13
	lea	rsi, [rsi]
	add	rbx, 8
	nop	
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	rsp, rsp
	jle	.label_2538
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2520
	mov	qword ptr [rsp + 0x10], r14
	mov	rsp, rsp
	lea	r14, [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rdx, rbp
	mov	rbp, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_2537
.label_2538:
	mov	qword ptr [rsp + 0x10], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	jle	.label_2511
	mov	rsp, rsp
	lea	r14, [r12 + 0x10]
.label_2537:
	mov	rbp, rbp
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2532:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rax*8]
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rdi, [rdi]
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	esi, ebp
	mov	rbp, rbp
	and	esi, 0x3ffff
	mov	rbp, rbp
	cmp	esi, 1
	je	.label_2515
	movzx	esi, bpl
	lea	rdi, [rdi]
	shr	ebp, 0x14
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	mov	rbp, rbp
	or	ebx, ebp
	lea	rsi, [rsi]
	shl	bl, 5
	mov	rbp, rbp
	and	bl, 0x20
	nop	
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r13 + 0x68], cl
	cmp	esi, 0xc
	je	.label_2523
	mov	rbp, rbp
	cmp	esi, 4
	je	.label_2522
	cmp	esi, 2
	mov	rbp, rbp
	jne	.label_2534
	or	cl, 0x10
	mov	rsp, rsp
	jmp	.label_2519
.label_2522:
	or	cl, 0x40
	jmp	.label_2519
.label_2534:
	lea	rdx, [r8 + rdx + 8]
	test	dword ptr [rdx], 0x3ff00
	nop	
	je	.label_2515
.label_2523:
	mov	rbp, rbp
	or	cl, 0x80
.label_2519:
	mov	byte ptr [r13 + 0x68], cl
.label_2515:
	mov	rbp, rbp
	inc	rax
	nop	
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2532
.label_2511:
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, r15
	mov	rbp, rbp
	call	register_state
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2512
	nop	
	mov	rdi, r13
	call	free_state
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_2510
.label_2529:
	mov	dword ptr [r14], 0
	lea	rdi, [rdi]
	jmp	.label_2508
.label_2520:
	nop	
	mov	rdi, r13
	lea	rsi, [rsi]
	call	free
.label_2510:
	mov	rsp, rsp
	mov	dword ptr [r14], 0xc
.label_2508:
	mov	rsp, rsp
	xor	r13d, r13d
.label_2512:
	mov	rbp, rbp
	mov	rax, r13
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420700

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	nop	
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	lea	rdi, [rdi]
	cmp	r10d, 7
	je	.label_2539
	mov	rsp, rsp
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r8d, 1
	lea	rdi, [rdi]
	je	.label_2552
	lea	rax, [rcx + 1]
	nop	
	mov	r11, qword ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	rax, r11
	lea	rsi, [rsi]
	jge	.label_2552
	lea	rax, [rcx*4]
	mov	rbp, rbp
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2560:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2552
	mov	rbp, rbp
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	lea	rdi, [rdi]
	jl	.label_2560
.label_2552:
	cmp	r10d, 5
	jne	.label_2545
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2544
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2549
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	nop	
	cmp	esi, 0xa
	nop	
	je	.label_2544
.label_2549:
	test	al, al
	js	.label_2557
	mov	r14d, ebx
	jmp	.label_2544
.label_2545:
	mov	rsp, rsp
	cmp	ebx, 1
	setg	al
	mov	rbp, rbp
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2544
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2544
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_2543
	cmp	qword ptr [r15 + 0x48], 0
	mov	rbp, rbp
	jne	.label_2543
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2546
.label_2543:
	cmp	r8d, 1
	jne	.label_2554
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	jmp	.label_2546
.label_2554:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2546:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2556
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax]
.label_2562:
	nop	
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	je	.label_2547
	inc	rdx
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_2562
.label_2556:
	cmp	qword ptr [r15 + 0x48], 0
	nop	
	jle	.label_2564
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2555:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	edi, r12d
	call	iswctype
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_2547
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2555
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x40]
.label_2564:
	nop	
	xor	ecx, ecx
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2553
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2565:
	cmp	dword ptr [rax + rdx*4], r12d
	lea	rdi, [rdi]
	jg	.label_2563
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	jle	.label_2548
.label_2563:
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2565
	jmp	.label_2553
.label_2547:
	lea	rsi, [rsi]
	mov	ecx, ebx
.label_2553:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2541
	mov	r14d, ecx
	jmp	.label_2544
.label_2541:
	test	ecx, ecx
	mov	rbp, rbp
	jg	.label_2544
	test	ebx, ebx
	mov	r14d, 1
	mov	rsp, rsp
	cmovg	r14d, ebx
	jmp	.label_2544
.label_2557:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + rcx], 0
	je	.label_2544
	mov	rbp, rbp
	mov	r14d, ebx
	nop	
	jmp	.label_2544
.label_2539:
	mov	rax, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2559
.label_2544:
	mov	rbp, rbp
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_2548:
	nop	
	mov	ecx, ebx
	jmp	.label_2553
.label_2559:
	nop	
	lea	rdi, [rcx + 2]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2544
	mov	bl, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	movzx	edi, sil
	mov	rsp, rsp
	cmp	edi, 0xdf
	mov	rsp, rsp
	ja	.label_2542
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 0xc0
	sbb	eax, eax
	mov	rbp, rbp
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2544
.label_2542:
	cmp	edi, 0xef
	nop	
	ja	.label_2558
	mov	esi, 3
	lea	rdi, [rdi]
	cmp	edi, 0xe0
	jne	.label_2540
	lea	rsi, [rsi]
	movzx	edi, bl
	cmp	edi, 0xa0
	mov	rsp, rsp
	jb	.label_2544
	jmp	.label_2540
.label_2558:
	cmp	edi, 0xf7
	nop	
	ja	.label_2561
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2540
	mov	rsp, rsp
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x90
	lea	rdi, [rdi]
	jb	.label_2544
	jmp	.label_2540
.label_2561:
	mov	rsp, rsp
	cmp	edi, 0xfb
	ja	.label_2551
	nop	
	mov	esi, 5
	lea	rsi, [rsi]
	cmp	edi, 0xf8
	jne	.label_2540
	movzx	edi, bl
	cmp	edi, 0x88
	lea	rdi, [rdi]
	jb	.label_2544
	mov	rsp, rsp
	jmp	.label_2540
.label_2551:
	cmp	edi, 0xfd
	ja	.label_2544
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2540
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x84
	mov	rbp, rbp
	jb	.label_2544
.label_2540:
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rbp, rbp
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	nop	
	jg	.label_2544
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	ecx, 1
.label_2550:
	nop	
	mov	dl, byte ptr [rax + rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	jns	.label_2544
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2544
	mov	rsp, rsp
	inc	rcx
	cmp	rcx, rdi
	mov	rsp, rsp
	jl	.label_2550
	mov	r14d, esi
	jmp	.label_2544
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420af0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	nop	
	movzx	ecx, byte ptr [rax + rdx]
	mov	r15d, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	movzx	esi, r15b
	lea	rdi, [rdi]
	xor	eax, eax
	dec	esi
	cmp	esi, 6
	ja	.label_2566
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_2574]]
.label_3147:
	movzx	eax, byte ptr [r14]
	cmp	eax, ecx
	nop	
	je	.label_2571
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2566
.label_3148:
	mov	rsi, qword ptr [r14]
	mov	al, cl
	mov	rsp, rsp
	shr	al, 6
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + rax*8]
	lea	rdi, [rdi]
	bt	rax, rcx
	jb	.label_2571
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2566
.label_3150:
	test	cl, cl
	nop	
	js	.label_2584
.label_3149:
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	je	.label_2567
	mov	rsp, rsp
	movzx	eax, cl
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_2571
	mov	rax, qword ptr [rbx + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2571
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_2566
.label_2567:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_2579
.label_2571:
	lea	rsi, [rsi]
	shr	r15d, 8
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	r15w, 0x3ff
	je	.label_2566
	mov	rsp, rsp
	test	rdx, rdx
	nop	
	js	.label_2581
	cmp	qword ptr [rbx + 0x58], rdx
	lea	rsi, [rsi]
	je	.label_2583
	mov	rsp, rsp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2582
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
	nop	
.label_2576:
	mov	rsp, rsp
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	lea	rdi, [rdi]
	jne	.label_2573
	nop	
	dec	rdx
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rsp, rsp
	jg	.label_2576
	mov	eax, dword ptr [rbx + 0x70]
	jmp	.label_2575
.label_2582:
	nop	
	mov	rax, qword ptr [rbx + 0x80]
	mov	dl, cl
	mov	rsp, rsp
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	bt	rdx, rcx
	jae	.label_2577
	mov	eax, 1
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_2568
.label_2584:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2566
.label_2573:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8e], 0
	mov	rbp, rbp
	jne	.label_2569
.label_2570:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	ebp, 0xa
	je	.label_2572
	jmp	.label_2575
.label_2577:
	cmp	ecx, 0xa
	jne	.label_2575
.label_2572:
	mov	eax, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rbp, rbp
	jne	.label_2575
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2575
.label_2579:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_2566
.label_2581:
	mov	eax, dword ptr [rbx + 0x70]
	mov	rsp, rsp
	jmp	.label_2575
.label_2583:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0xa0]
	lea	rdi, [rdi]
	and	eax, 2
	lea	rdi, [rdi]
	xor	eax, 0xa
.label_2575:
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	and	ecx, 1
	mov	rsp, rsp
	sete	dl
	test	r15b, 4
	lea	rdi, [rdi]
	je	.label_2568
	test	ecx, ecx
	jne	.label_2568
	xor	eax, eax
	nop	
	jmp	.label_2566
.label_2569:
	mov	edi, ebp
	lea	rsi, [rsi]
	call	iswalnum
	mov	ecx, eax
	mov	rbp, rbp
	xor	edx, edx
	cmp	ebp, 0x5f
	lea	rsi, [rsi]
	mov	eax, 1
	je	.label_2568
	test	ecx, ecx
	je	.label_2570
.label_2568:
	mov	ecx, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	test	dl, dl
	jne	.label_2578
	mov	edx, ecx
	and	edx, 0x800
	je	.label_2578
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2566
.label_2578:
	test	al, 2
	jne	.label_2580
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	and	edx, 0x2000
	je	.label_2580
	xor	eax, eax
	jmp	.label_2566
.label_2580:
	mov	rsp, rsp
	shr	ecx, 8
	lea	rdi, [rdi]
	and	eax, 8
	lea	rsi, [rsi]
	test	cl, cl
	setns	cl
	lea	rdi, [rdi]
	shr	eax, 3
	mov	rsp, rsp
	or	al, cl
.label_2566:
	add	rsp, 8
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x420da0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], r13
	mov	rbx, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2692
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2616
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	r11d, r11d
	mov	rbp, rbp
	mov	r15, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], r15
	nop	word ptr [rax + rax]
.label_2668:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + rdi*8]
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	shl	rsi, 4
	nop	
	lea	r8, [rax + rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], r8
	mov	edx, dword ptr [rax + rsi + 8]
	mov	rsp, rsp
	movzx	r9d, dl
	mov	rsp, rsp
	cmp	r9d, 1
	lea	rdi, [rdi]
	jne	.label_2631
	mov	cl, byte ptr [r8]
	mov	rbp, rbp
	mov	ebx, 1
	mov	rbp, rbp
	shl	rbx, cl
	lea	rdi, [rdi]
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x100], rbx
	jmp	.label_2607
	nop	
.label_2631:
	cmp	r9d, 7
	je	.label_2642
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_2654
	nop	
	cmp	r9d, 3
	jne	.label_2619
	mov	rcx, qword ptr [r8]
	mov	rbx, qword ptr [rcx]
	or	qword ptr [rbp - 0x100], rbx
	mov	rbx, qword ptr [rcx + 8]
	or	qword ptr [rbp - 0xf8], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rcx + 0x10]
	nop	
	or	qword ptr [rbp - 0xf0], rbx
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	or	qword ptr [rbp - 0xe8], rcx
	mov	rsp, rsp
	jmp	.label_2607
.label_2642:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], -1
	mov	rsp, rsp
	mov	rcx, qword ptr [r15 + 0xd8]
	mov	rbx, -2
	nop	
	test	cl, 0x40
	jne	.label_2662
	nop	
	mov	qword ptr [rbp - 0x100], -0x401
	lea	rsi, [rsi]
	mov	rbx, -0x402
.label_2662:
	lea	rdi, [rdi]
	test	cl, cl
	lea	rdi, [rdi]
	jns	.label_2607
	mov	qword ptr [rbp - 0x100], rbx
	jmp	.label_2607
.label_2654:
	mov	rsp, rsp
	cmp	dword ptr [r15 + 0xb4], 2
	nop	
	jl	.label_2680
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 0x78]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	or	rcx, qword ptr [r8]
	mov	qword ptr [rbp - 0x100], rcx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r8 + 8]
	or	qword ptr [rbp - 0xf8], rbx
	mov	rbx, qword ptr [r8 + 0x10]
	lea	rdi, [rdi]
	or	qword ptr [rbp - 0xf0], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r8 + 0x18]
	mov	r8, r14
	lea	rsi, [rsi]
	or	qword ptr [rbp - 0xe8], rbx
	jmp	.label_2684
.label_2680:
	mov	qword ptr [rbp - 0xe8], -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], -1
	mov	qword ptr [rbp - 0xf8], -1
	mov	qword ptr [rbp - 0x100], -1
	mov	rcx, -1
.label_2684:
	mov	rbx, qword ptr [r15 + 0xd8]
	lea	rdi, [rdi]
	test	bl, 0x40
	jne	.label_2600
	mov	rsp, rsp
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x100], rcx
.label_2600:
	test	bl, bl
	jns	.label_2607
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffe
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rcx
	nop	dword ptr [rax + rax]
.label_2607:
	mov	rsp, rsp
	shr	edx, 8
	nop	
	mov	ecx, edx
	lea	rdi, [rdi]
	and	ecx, 0x3ff
	je	.label_2618
	mov	rsp, rsp
	test	dl, 0x20
	je	.label_2621
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	test	ch, 4
	nop	
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	je	.label_2619
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], 0x400
.label_2621:
	mov	rbp, rbp
	test	dl, dl
	js	.label_2593
	lea	rcx, [rax + rsi + 8]
	test	dl, 4
	je	.label_2638
	cmp	r9d, 1
	mov	rbp, rbp
	jne	.label_2643
	test	byte ptr [rcx + 2], 0x40
	nop	
	je	.label_2593
.label_2643:
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_2646
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rax, qword ptr [rsi]
	not	rax
	mov	rbp, rbp
	or	rax, qword ptr [r15 + 0xb8]
	mov	rsp, rsp
	and	rax, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x100], rax
	mov	rbx, qword ptr [rsi + 8]
	nop	
	not	rbx
	or	rbx, qword ptr [r15 + 0xc0]
	lea	rdi, [rdi]
	and	rbx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xf8], rbx
	or	rbx, rax
	mov	rax, qword ptr [rsi + 0x10]
	not	rax
	or	rax, qword ptr [r15 + 0xc8]
	and	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x18]
	nop	
	not	rsi
	mov	rsp, rsp
	or	rsi, qword ptr [r15 + 0xd0]
	and	rsi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rsi
	or	rsi, rax
	jmp	.label_2651
.label_2646:
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x100]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	movq	rsi, xmm0
	pshufd	xmm0, xmm0, 0x4e
	mov	rsp, rsp
	movq	rax, xmm0
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	nop	
	pand	xmm0, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movq	rbx, xmm0
	or	rbx, rsi
	or	rbx, rax
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	pshufd	xmm0, xmm0, 0x4e
	lea	rsi, [rsi]
	movq	rsi, xmm0
.label_2651:
	mov	rbp, rbp
	or	rsi, rbx
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_2619
.label_2638:
	nop	
	test	dl, 8
	lea	rsi, [rsi]
	je	.label_2618
	mov	rbp, rbp
	cmp	r9d, 1
	mov	rbp, rbp
	jne	.label_2590
	test	byte ptr [rcx + 2], 0x40
	mov	rbp, rbp
	jne	.label_2593
.label_2590:
	cmp	dword ptr [r15 + 0xb4], 1
	mov	rsp, rsp
	jle	.label_2599
	nop	
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	and	rdx, qword ptr [r15 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rsi, qword ptr [rcx + 8]
	mov	rbp, rbp
	and	rsi, qword ptr [r15 + 0xc0]
	lea	rsi, [rsi]
	not	rsi
	lea	rsi, [rsi]
	and	rsi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rsi
	or	rsi, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
	and	rdx, qword ptr [r15 + 0xc8]
	nop	
	not	rdx
	lea	rdi, [rdi]
	and	rdx, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	and	rcx, qword ptr [r15 + 0xd0]
	nop	
	not	rcx
	and	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rcx
	or	rcx, rdx
	jmp	.label_2664
	nop	word ptr cs:[rax + rax]
.label_2593:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	jmp	.label_2619
.label_2599:
	nop	
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	nop	
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	mov	rbp, rbp
	movq	rdx, xmm0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	mov	rsp, rsp
	pandn	xmm0, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movq	rsi, xmm0
	mov	rsp, rsp
	or	rsi, rcx
	or	rsi, rdx
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	pshufd	xmm0, xmm0, 0x4e
	nop	
	movq	rcx, xmm0
.label_2664:
	or	rcx, rsi
	test	rcx, rcx
	je	.label_2619
	nop	word ptr cs:[rax + rax]
.label_2618:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	test	r11, r11
	lea	rdi, [rdi]
	jle	.label_2678
	cmp	r9d, 1
	jne	.label_2681
	nop	
	mov	r15, qword ptr [rbp - 0x38]
	mov	rbx, r12
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_2656:
	nop	
	movzx	eax, byte ptr [r8]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	nop	
	mov	rcx, qword ptr [r15 + rcx*8]
	lea	rsi, [rsi]
	bt	rcx, rax
	jae	.label_2598
	mov	qword ptr [rbp - 0x40], rbx
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	mov	r8, qword ptr [r15]
	mov	r13, qword ptr [r15 + 8]
	mov	rsi, r8
	lea	rsi, [rsi]
	and	rsi, r9
	mov	rbp, rbp
	mov	rdi, r13
	and	rdi, rax
	mov	rdx, rdi
	or	rdx, rsi
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rsi, [rsi]
	and	rcx, rax
	or	rdx, rcx
	mov	r10, qword ptr [rbp - 0xe8]
	mov	rbx, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	and	rax, r10
	or	rdx, rax
	je	.label_2690
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x88], rsi
	mov	qword ptr [rbp - 0xc0], r11
	mov	rsp, rsp
	mov	rsi, r10
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r11, r9
	lea	rdi, [rdi]
	not	r11
	and	r11, r8
	lea	rdi, [rdi]
	not	r8
	lea	rdi, [rdi]
	and	r8, r9
	mov	qword ptr [rbp - 0x100], r8
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	r9, rax
	not	r9
	and	r9, r13
	lea	rsi, [rsi]
	mov	rcx, r9
	or	rcx, r11
	not	r13
	and	r13, rax
	mov	qword ptr [rbp - 0xf8], r13
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rax, rdx
	not	rax
	and	rax, r12
	lea	rdi, [rdi]
	or	rcx, rax
	nop	
	not	r12
	mov	rbp, rbp
	and	r12, rdx
	mov	qword ptr [rbp - 0xf0], r12
	mov	rdx, rsi
	mov	rsp, rsp
	not	rdx
	and	rdx, r10
	not	r10
	mov	rsp, rsp
	and	r10, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], r10
	mov	rbp, rbp
	or	rcx, rdx
	mov	rsp, rsp
	je	.label_2612
	mov	qword ptr [rbp - 0x50], r13
	mov	qword ptr [rbp - 0xc8], r8
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rcx, rsi
	nop	
	shl	rcx, 5
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [r10 + rcx], r11
	mov	qword ptr [r10 + rcx + 8], r9
	nop	
	mov	r9, rsi
	lea	rdi, [rdi]
	mov	qword ptr [r10 + rcx + 0x10], rax
	nop	
	mov	qword ptr [r10 + rcx + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [r15 + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x18], rax
	lea	rcx, [r9 + r9*2]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rax, [rdx + rcx*8]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8 + 8], rdi
	mov	r13, qword ptr [rbx + 8]
	nop	
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_2659
	mov	qword ptr [rax], rdi
	nop	
	shl	rdi, 3
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x88], rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2694
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	r13, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rdx, r13
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	jmp	.label_2595
	nop	word ptr [rax + rax]
.label_2690:
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp - 0x40]
	jmp	.label_2598
.label_2612:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], r8
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jmp	.label_2608
.label_2659:
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
.label_2595:
	mov	rsp, rsp
	inc	r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
.label_2608:
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_2635
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	or	rax, qword ptr [rbp - 0xc8]
	or	r12, qword ptr [rbp - 0x70]
	nop	
	or	r12, rax
	mov	r11, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	je	.label_2588
.label_2598:
	mov	rsp, rsp
	inc	r14
	lea	rsi, [rsi]
	add	rbx, 0x18
	mov	rbp, rbp
	add	r15, 0x20
	mov	rsp, rsp
	cmp	r14, r11
	mov	rbp, rbp
	jl	.label_2656
	jmp	.label_2588
.label_2678:
	mov	rbp, rbp
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_2588
.label_2681:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	r10, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	r15, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rbx, r12
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_2603:
	nop	
	mov	qword ptr [rbp - 0xc0], r11
	mov	r12, qword ptr [r15 - 0x18]
	nop	
	mov	r13, qword ptr [r15 - 0x10]
	mov	rdi, r12
	and	rdi, rsi
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	rax, r13
	mov	rsp, rsp
	and	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	or	rax, rdi
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 - 8]
	mov	rdi, r11
	and	rdi, r10
	or	rax, rdi
	mov	r9, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, r9
	and	r8, rcx
	or	rax, r8
	nop	
	je	.label_2673
	mov	qword ptr [rbp - 0x88], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rbx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rbp, rbp
	not	rax
	lea	rsi, [rsi]
	and	rax, r12
	not	r12
	and	r12, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], r12
	mov	rbx, rdx
	nop	
	not	rbx
	lea	rsi, [rsi]
	and	rbx, r13
	mov	rsi, rbx
	or	rsi, rax
	not	r13
	and	r13, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], r13
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], r13
	mov	rdx, r10
	not	rdx
	and	rdx, r11
	nop	
	or	rsi, rdx
	not	r11
	and	r11, r10
	mov	qword ptr [rbp - 0xf0], r11
	mov	rdi, rcx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdi
	nop	
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0xe8], r9
	or	rsi, rcx
	mov	r13, r11
	lea	rdi, [rdi]
	je	.label_2688
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], r12
	mov	r10, qword ptr [rbp - 0xc0]
	mov	rsi, r10
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0x38]
	mov	qword ptr [r12 + rsi], rax
	nop	
	mov	qword ptr [r12 + rsi + 8], rbx
	mov	qword ptr [r12 + rsi + 0x10], rdx
	mov	rsp, rsp
	mov	qword ptr [r12 + rsi + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [r15 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [r15 - 0x10], rax
	mov	rax, r10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [r15 - 8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15], r8
	lea	rsi, [rax + rax*2]
	mov	rbp, rbp
	mov	r12, qword ptr [rbp - 0xa8]
	lea	rcx, [r12 + rsi*8]
	mov	rbx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r12 + rsi*8 + 8], rdi
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2617
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], r13
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	lea	rdi, [rdi]
	mov	r13, rcx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + rcx*8 + 0x10], rax
	test	rax, rax
	je	.label_2658
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	shl	rdx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rbp - 0x98]
	nop	
	jmp	.label_2672
	nop	word ptr cs:[rax + rax]
.label_2673:
	mov	rsp, rsp
	mov	rdi, rcx
	mov	r13, r10
	mov	r12, rsi
	mov	r11, qword ptr [rbp - 0xc0]
	jmp	.label_2691
	nop	dword ptr [rax + rax]
.label_2688:
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x70]
	jmp	.label_2689
.label_2617:
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rcx], xmm0
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x48]
.label_2672:
	inc	rax
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
.label_2689:
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_node_set_insert
	test	al, al
	nop	
	je	.label_2635
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, rdx
	nop	
	or	rax, r12
	mov	rbp, rbp
	mov	rcx, r13
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	or	rcx, rdi
	or	rcx, rax
	mov	r11, qword ptr [rbp - 0xc0]
	je	.label_2588
.label_2691:
	mov	rsp, rsp
	inc	r14
	mov	rbp, rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	add	r15, 0x20
	nop	
	cmp	r14, r11
	nop	
	mov	rcx, rdi
	mov	rbp, rbp
	mov	r10, r13
	mov	rsi, r12
	mov	rbp, rbp
	jl	.label_2603
	nop	word ptr cs:[rax + rax]
.label_2588:
	cmp	r14, r11
	mov	r12, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0xd0]
	mov	r13, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	jne	.label_2619
	mov	rbp, rbp
	mov	rax, r14
	mov	rsp, rsp
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x100]
	movaps	xmm1, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	movups	xmmword ptr [rdx + rax + 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdx + rax], xmm0
	lea	rbx, [r14 + r14*2]
	mov	rax, qword ptr [r13 + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rax + rdi*8]
	mov	r13, r12
	nop	
	mov	r12, rdi
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1894]]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r13 + rbx*8], xmm0
	mov	rsp, rsp
	mov	edi, 8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r13 + rbx*8 + 0x10], rax
	mov	rbp, rbp
	mov	rcx, r13
	test	rax, rax
	je	.label_2652
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	inc	r14
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	mov	r11, r14
	mov	r15, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdi, r12
	mov	r12, rcx
	nop	
.label_2619:
	mov	rsp, rsp
	inc	rdi
	mov	rbp, rbp
	cmp	rdi, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jl	.label_2668
	test	r11, r11
	lea	rdi, [rdi]
	jle	.label_2675
	nop	
	lea	rax, [r11 + 1]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [r11*8 + 8]
	mov	rbx, r11
	mov	qword ptr [rbp - 0xc0], rbx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x58], rax
	xor	ecx, ecx
	nop	
	test	rax, rax
	mov	edx, 0xc
	mov	rbp, rbp
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0xac], edx
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	rbx, rcx
	ja	.label_2650
	test	rax, rax
	je	.label_2650
	lea	rax, [rbx*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	lea	rsi, [rsi]
	cmp	rax, 0xfbf
	lea	rsi, [rsi]
	ja	.label_2693
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], r13
	mov	rsp, rsp
	mov	rax, rsp
	mov	rsp, rsp
	add	rdi, 0xf
	nop	
	and	rdi, 0xfffffffffffffff0
	mov	rbp, rbp
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jmp	.label_2585
.label_2694:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0x48]
.label_2658:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [r13], xmm0
.label_2635:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0xa8]
.label_2636:
	mov	rbp, rbp
	mov	r15, -1
	test	r14, r14
	jle	.label_2616
	mov	rbp, rbp
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2624:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	call	free
	nop	
	add	rbx, 0x18
	dec	r14
	jne	.label_2624
.label_2616:
	mov	rdi, r12
	nop	
	call	free
	lea	rsi, [rsi]
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_2629
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2587
.label_2629:
	mov	edi, 8
	mov	esi, 0x100
	mov	rbp, rbp
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	setne	al
	nop	
	jmp	.label_2587
.label_2692:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2587
.label_2693:
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_2650
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], ecx
.label_2585:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	lea	rax, [rax + rbx*8]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rax, [rax + rbx*8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
.label_2666:
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], r12
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rcx, [rbx + rbx*2]
	nop	
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_2671
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	lea	r13, [rdx + rcx*8 + 8]
	lea	r12, [rdx + rcx*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2589:
	nop	
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + r14*8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	nop	
	je	.label_2685
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	lea	rcx, [rcx + rcx*2]
	nop	
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x68]
	call	re_node_set_merge
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_2597
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
.label_2685:
	inc	r14
	mov	rsp, rsp
	cmp	r14, rax
	jl	.label_2589
.label_2671:
	xor	ecx, ecx
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xac]
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + rbx*8], rax
	nop	
	test	rax, rax
	jne	.label_2602
	mov	ecx, dword ptr [rbp - 0xac]
	nop	
	test	ecx, ecx
	nop	
	jne	.label_2597
.label_2602:
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2610
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + rbx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rcx + rbx*8], rax
	jmp	.label_2613
.label_2610:
	mov	ecx, 1
	mov	rbp, rbp
	lea	rdi, [rbp - 0xac]
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	mov	rsp, rsp
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	jne	.label_2628
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xac]
	test	ecx, ecx
	jne	.label_2597
.label_2628:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + rbx*8], rax
	nop	
	je	.label_2637
	mov	rbp, rbp
	mov	al, 1
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_2641
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
.label_2641:
	mov	qword ptr [rbp - 0x90], rax
.label_2637:
	mov	rsp, rsp
	mov	ecx, 2
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xac]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rcx + rbx*8], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_2613
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2597
.label_2613:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x70]
	or	rdx, qword ptr [rcx + rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x98], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax + 0x18]
	nop	
	inc	rbx
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rbx, rax
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0xa8]
	jl	.label_2666
	mov	rsp, rsp
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0x90]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_2686
	nop	
	mov	qword ptr [rbp - 0x90], rax
	nop	
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2597
	mov	rcx, qword ptr [rbp - 0x40]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	r10, r15
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	je	.label_2695
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_2626
.label_2606:
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	lea	rbx, [rsi + 1]
	nop	
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	lea	rsi, [rsi]
	je	.label_2606
	test	qword ptr [r10 + 0xb8], rdx
	je	.label_2614
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2667
.label_2614:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
.label_2667:
	mov	qword ptr [rax + r9*8], rcx
	nop	
	jmp	.label_2640
.label_2626:
	mov	rbx, -1
	lea	rdi, [rdi]
	test	dil, 1
	mov	rcx, r8
	jne	.label_2606
.label_2640:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	rdi, 1
	nop	
	inc	r9
	test	rdi, rdi
	jne	.label_2626
.label_2695:
	test	r12, r12
	je	.label_2633
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0x40
	lea	rsi, [rsi]
	jmp	.label_2634
.label_2639:
	mov	rbx, rdi
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2639
	mov	rbp, rbp
	test	qword ptr [r10 + 0xc0], rdx
	lea	rsi, [rsi]
	je	.label_2660
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	mov	rbp, rbp
	jmp	.label_2622
.label_2660:
	nop	
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_2622:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2653
.label_2634:
	lea	rdi, [rdi]
	mov	rdi, -1
	lea	rdi, [rdi]
	test	r12b, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rbp, rbp
	jne	.label_2639
.label_2653:
	mov	rbp, rbp
	add	rdx, rdx
	nop	
	shr	r12, 1
	lea	rdi, [rdi]
	inc	rsi
	mov	rbp, rbp
	test	r12, r12
	jne	.label_2634
.label_2633:
	lea	rdi, [rdi]
	mov	r12, r11
	mov	r11, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0xc0]
	mov	r15d, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	je	.label_2665
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	jmp	.label_2670
.label_2677:
	mov	rbx, rdi
	mov	rsp, rsp
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	je	.label_2677
	test	qword ptr [r10 + 0xc8], rdx
	mov	rsp, rsp
	je	.label_2669
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	lea	rsi, [rsi]
	jmp	.label_2682
.label_2669:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + rbx*8 + 8]
.label_2682:
	mov	qword ptr [rax + rsi*8], rcx
	lea	rdi, [rdi]
	jmp	.label_2591
.label_2670:
	mov	rbp, rbp
	mov	rdi, -1
	test	r11b, 1
	mov	rcx, r8
	jne	.label_2677
.label_2591:
	nop	
	add	rdx, rdx
	mov	rsp, rsp
	shr	r11, 1
	inc	rsi
	lea	rsi, [rsi]
	test	r11, r11
	jne	.label_2670
.label_2665:
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, r15d
	je	.label_2615
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	nop	
	mov	esi, 0xc0
	nop	
	jmp	.label_2620
.label_2592:
	mov	rbx, rdi
	lea	rdi, [rdi]
	lea	rdi, [rbx + 1]
	lea	rsi, [rsi]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2592
	test	qword ptr [r10 + 0xd0], rdx
	lea	rsi, [rsi]
	je	.label_2601
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	lea	rdi, [rdi]
	jmp	.label_2661
.label_2601:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_2661:
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8], rcx
	mov	rsp, rsp
	jmp	.label_2609
.label_2620:
	mov	rdi, -1
	mov	rbp, rbp
	test	r13b, 1
	mov	rcx, r8
	jne	.label_2592
.label_2609:
	nop	
	add	rdx, rdx
	mov	rbp, rbp
	shr	r13, 1
	lea	rdi, [rdi]
	inc	rsi
	test	r13, r13
	jne	.label_2620
.label_2615:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	test	ch, 4
	mov	rbp, rbp
	je	.label_2623
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_2632:
	lea	rdi, [rdi]
	test	byte ptr [rdx + 1], 4
	jne	.label_2627
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	add	rdx, 0x20
	cmp	rcx, r9
	lea	rsi, [rsi]
	jl	.label_2632
	mov	rsp, rsp
	jmp	.label_2623
.label_2652:
	mov	rbp, rbp
	mov	r12, rcx
	lea	rax, [r12 + rbx*8]
	nop	
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	jmp	.label_2636
.label_2650:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rax, rbx
	nop	
	jmp	.label_2647
.label_2675:
	lea	rsi, [rsi]
	mov	r15, r11
	jmp	.label_2616
.label_2627:
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2623
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x850], rcx
.label_2623:
	nop	
	mov	r15, r9
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_2645
	mov	rdi, r11
	nop	
	call	free
.label_2645:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rbx, r14
	nop	
	add	rbx, 0x10
.label_2674:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	nop	
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	mov	rbp, rbp
	dec	r15
	nop	
	jne	.label_2674
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	al, 1
	jmp	.label_2587
.label_2686:
	mov	qword ptr [rbp - 0x90], rax
	mov	edi, 8
	nop	
	mov	esi, 0x200
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	nop	
	test	rax, rax
	je	.label_2597
	mov	rcx, qword ptr [rbp - 0x40]
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x70]
	je	.label_2687
	lea	rsi, [rsi]
	lea	r8, [r14 + 0x1800]
	nop	
	mov	edx, 1
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_2644
.label_2597:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	test	al, al
	mov	rbp, rbp
	je	.label_2604
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_2604:
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0xc0]
	test	rax, rax
	mov	r12, qword ptr [rbp - 0xa8]
	nop	
	jle	.label_2596
.label_2647:
	nop	
	mov	rbx, r12
	lea	rsi, [rsi]
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2611:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	r14, rax
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, r14
	add	rbx, 0x18
	dec	rax
	jne	.label_2611
.label_2596:
	mov	rdi, r12
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_2587:
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_2625:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	je	.label_2625
	nop	
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	lea	rsi, [rsi]
	jmp	.label_2630
.label_2644:
	mov	rbx, -1
	nop	
	test	dil, 1
	mov	rcx, r8
	lea	rsi, [rsi]
	jne	.label_2625
.label_2630:
	nop	
	add	rdx, rdx
	shr	rdi, 1
	nop	
	inc	r9
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_2644
.label_2687:
	nop	
	test	r10, r10
	je	.label_2648
	lea	r8, [r14 + 0x1808]
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	esi, 0x40
	jmp	.label_2649
.label_2655:
	mov	rcx, rbx
	nop	
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2655
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2657
.label_2649:
	mov	rbx, -1
	test	r10b, 1
	mov	rdi, r8
	jne	.label_2655
.label_2657:
	mov	rbp, rbp
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	mov	rbp, rbp
	test	r10, r10
	nop	
	jne	.label_2649
.label_2648:
	mov	rcx, qword ptr [rbp - 0x98]
	test	rcx, rcx
	mov	r9, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	je	.label_2676
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0x80
	nop	
	jmp	.label_2679
.label_2683:
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi]
	lea	rdi, [rdi + 0x20]
	je	.label_2683
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2605
.label_2679:
	mov	rbx, -1
	nop	
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_2683
.label_2605:
	add	rdx, rdx
	nop	
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	nop	
	jne	.label_2679
.label_2676:
	test	r13, r13
	je	.label_2615
	nop	
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2586
.label_2594:
	mov	rsp, rsp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	rbx, [rcx + 1]
	mov	rsp, rsp
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi]
	lea	rdi, [rdi + 0x20]
	je	.label_2594
	mov	rbp, rbp
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	lea	rsi, [rsi]
	jmp	.label_2663
.label_2586:
	mov	rsp, rsp
	mov	rbx, -1
	test	r13b, 1
	mov	rsp, rsp
	mov	rdi, r8
	jne	.label_2594
.label_2663:
	nop	
	add	rdx, rdx
	mov	rsp, rsp
	shr	r13, 1
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_2615
	jmp	.label_2586
	nop	
	.section	.text
	.align	32
	#Procedure 0x422690

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x58
	nop	
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1894]]
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2710
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2700
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x20]
	nop	
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], 0
	nop	
.label_2698:
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	jle	.label_2701
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2705
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2707
	nop	dword ptr [rax]
.label_2705:
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	inc	eax
.label_2707:
	lea	rsi, [rsi]
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2711
	mov	dword ptr [rsp + 0x4c], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], 0
	lea	r13, [rdx - 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2703
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2703
	mov	rcx, qword ptr [r14 + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2712:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	r12, qword ptr [rax + rbx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r12
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	shl	r12, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2699
	mov	rax, r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, rbp
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	nop	
	call	check_node_accept_bytes
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_2706
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jle	.label_2709
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	mov	r14, r13
	mov	r13, r15
	mov	rbp, rbp
	mov	r15, rcx
	mov	rsp, rsp
	jmp	.label_2704
.label_2706:
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2704
	mov	rbp, rbp
	jmp	.label_2699
.label_2709:
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + rcx*8]
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14, r13
	mov	rsp, rsp
	mov	r13, r15
	mov	r15, rsi
	nop	
	je	.label_2699
	mov	rsi, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2699
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2708
	nop	word ptr [rax + rax]
.label_2714:
	mov	rbp, rbp
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	mov	rbp, rbp
	cmovge	rsi, rbp
	lea	rsi, [rsi]
	cmp	rdi, rsi
	jb	.label_2714
.label_2708:
	mov	rbp, rbp
	test	eax, eax
	je	.label_2699
	lea	rsi, [rsi]
	cmp	rdi, -1
	nop	
	je	.label_2699
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2704
.label_2699:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	add	r12, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	check_node_accept
	nop	
	test	al, al
	nop	
	je	.label_2696
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2696
	mov	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_2696
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	lea	rsi, [rsi]
	dec	rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	mov	rbp, rbp
	je	.label_2697
.label_2702:
	lea	rdi, [rsi + rax]
	mov	rbp, rbp
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	mov	rbp, rbp
	lea	rbp, [rdi + 1]
	nop	
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	mov	rbp, rbp
	jb	.label_2702
.label_2697:
	lea	rsi, [rsi]
	cmp	rsi, -1
	nop	
	je	.label_2696
	mov	eax, 1
	nop	
	cmp	qword ptr [rdx + rsi*8], rcx
	lea	rsi, [rsi]
	jne	.label_2696
	nop	
.label_2704:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2715
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	add	rcx, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	r8, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + r8*8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	r9, r13
	call	check_dst_limits
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_2696
.label_2715:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	mov	rsp, rsp
	je	.label_2700
.label_2696:
	inc	rbx
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	mov	rbp, rbp
	jl	.label_2712
.label_2703:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r13
	nop	
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_2698
	mov	rbp, rbp
	jmp	.label_2700
.label_2701:
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_2700
.label_2711:
	nop	
	shl	rdx, 3
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
.label_2700:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2713:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2710:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jmp	.label_2713
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x422b00

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	nop	
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rbp
	nop	
	mov	r13, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	cmove	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r11 + 8], 0
	lea	rdi, [rdi]
	je	.label_2716
	mov	qword ptr [rsp + 0x68], rdx
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_2723
	mov	rbp, rbp
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	lea	rsi, [rsi]
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x10]
	nop	
	test	r12d, r12d
	mov	rbp, rbp
	jne	.label_2721
	lea	rdi, [rdi]
	mov	r15, r14
	lea	rsi, [rsi]
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rsp, rsp
	jne	.label_2734
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	shl	rdi, 3
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	mov	rsp, rsp
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], ecx
	je	.label_2721
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2734
	mov	r14, rbp
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
.label_2775:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2761
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jl	.label_2775
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, r14
.label_2734:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp]
	jne	.label_2724
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	je	.label_2723
	mov	qword ptr [rsp + 0x80], r13
	nop	
	mov	r10, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jle	.label_2773
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2760:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	lea	rdi, [rdi]
	jge	.label_2726
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + rax*8 + 8], r10
	lea	rdi, [rdi]
	jl	.label_2726
	mov	rdx, qword ptr [r13 + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12]
	nop	
	shl	rdx, 4
	mov	rsp, rsp
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x48], r8
	mov	rbp, rbp
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2738
	nop	
	test	rax, rax
	nop	
	jle	.label_2726
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	lea	rsi, [rsi]
	mov	rsi, -1
	nop	
.label_2778:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	nop	
	je	.label_2769
	lea	rdi, [rdi]
	cmp	ebx, 8
	jne	.label_2742
	cmp	r8, qword ptr [rcx + rdi]
	mov	rbp, rbp
	je	.label_2768
	mov	rbp, rsi
.label_2768:
	lea	rsi, [rsi]
	mov	rsi, rbp
	jmp	.label_2742
	nop	word ptr cs:[rax + rax]
.label_2769:
	nop	
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2774
	mov	rbp, r14
.label_2774:
	lea	rsi, [rsi]
	mov	r14, rbp
.label_2742:
	mov	rbp, rbp
	add	rdx, 8
	dec	rax
	jne	.label_2778
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rbp, r11
	js	.label_2780
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	lea	rsi, [rsi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2733
.label_2780:
	test	r14, r14
	mov	rbp, rbp
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	js	.label_2726
	mov	rbp, rbp
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2726
	nop	dword ptr [rax]
.label_2740:
	mov	rsp, rsp
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2757
	mov	rbp, rbp
	dec	rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	rbp, rbp
	mov	eax, 0
	je	.label_2771
	nop	dword ptr [rax]
.label_2764:
	mov	rsp, rsp
	lea	rbx, [rax + rdx]
	lea	rdi, [rdi]
	shr	rbx, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	mov	rsp, rsp
	cmovl	rax, rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2764
.label_2771:
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2757
	mov	rbp, rbp
	cmp	qword ptr [rdi + rax*8], r14
	lea	rdi, [rdi]
	je	.label_2770
.label_2757:
	nop	
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	lea	rdi, [rdi]
	test	rdx, rdx
	jle	.label_2739
	nop	
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	lea	rdi, [rdi]
	mov	eax, 0
	je	.label_2762
	nop	dword ptr [rax]
.label_2737:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	nop	
	cmp	qword ptr [rcx + rdi*8], r14
	nop	
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rbx
	cmovge	rdx, rdi
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2737
.label_2762:
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2739
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], r14
	mov	rsp, rsp
	je	.label_2770
.label_2739:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r15
	mov	r15, r13
	nop	
	mov	rdi, r12
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	r12, r10
	nop	
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	nop	
	mov	r12d, eax
	test	r12d, r12d
	nop	
	jne	.label_2733
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	nop	
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x98]
.label_2770:
	inc	rbp
	nop	
	cmp	rbp, r8
	jl	.label_2740
	jmp	.label_2726
.label_2738:
	nop	
	test	rax, rax
	mov	ebp, 0
	jg	.label_2766
	jmp	.label_2726
	nop	dword ptr [rax]
.label_2753:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
.label_2766:
	mov	rbp, rbp
	mov	rdx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	shl	rdx, 4
	nop	
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	mov	rbp, rbp
	and	edi, ebx
	nop	
	or	edi, 1
	cmp	edi, 9
	jne	.label_2729
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2729
	mov	rbp, rbp
	mov	r14, r15
	mov	r15, r13
	mov	rsp, rsp
	mov	rdi, r12
	mov	r13, r12
	mov	rsp, rsp
	mov	rdx, r11
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	r12, r10
	mov	rbx, r11
	lea	rsi, [rsi]
	call	sub_epsilon_src_nodes
	mov	rbp, rbp
	mov	r10, r12
	mov	r12d, eax
	mov	rsp, rsp
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2733
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	r11, rbx
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x48]
.label_2729:
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, rax
	jl	.label_2753
	nop	word ptr cs:[rax + rax]
.label_2726:
	inc	r15
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2760
.label_2773:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	r13, qword ptr [rsp + 0x80]
	mov	rbx, qword ptr [rsp]
.label_2723:
	nop	
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r11
	mov	rbp, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	je	.label_2777
	jmp	.label_2724
.label_2716:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2777:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2732
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	nop	
	je	.label_2732
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	jle	.label_2741
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	
.label_2752:
	mov	rbp, rbp
	lea	rsi, [rax + r15]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	mov	rsp, rsp
	add	rdi, rsi
	sar	rdi, 1
	nop	
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	lea	rdi, [rdi]
	cmovge	rax, rdi
	mov	rbp, rbp
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	lea	rsi, [rsi]
	cmp	r15, rax
	lea	rsi, [rsi]
	jl	.label_2752
.label_2741:
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_2718
	cmp	r15, -1
	nop	
	je	.label_2718
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2718
	mov	qword ptr [rsp + 0x10], 0
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jle	.label_2779
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rdi
	mov	qword ptr [rsp + 0x68], rdx
	nop	
	mov	r10, rbx
	mov	qword ptr [rsp + 0xa8], r10
	mov	rbp, rbp
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	shl	qword ptr [rsp + 0xb0], 3
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_2758:
	mov	qword ptr [rsp + 0x90], r13
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	nop	
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	jne	.label_2747
	cmp	eax, 4
	mov	rbp, rbp
	mov	rcx, rdx
	jne	.label_2759
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2763
	nop	
	jmp	.label_2759
.label_2747:
	nop	
	cmp	eax, 4
	mov	rcx, rdx
	mov	rbp, rbp
	jne	.label_2759
.label_2763:
	mov	rbx, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0xb0]
	mov	r14, r15
	nop	dword ptr [rax]
.label_2717:
	cmp	qword ptr [rbx], rbp
	lea	rsi, [rsi]
	jne	.label_2736
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2776
	mov	rbp, rbp
	mov	rax, qword ptr [r11 + 0x28]
	nop	
	lea	rdx, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2720
	nop	dword ptr [rax]
.label_2776:
	lea	rdi, [rdi]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2720:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2736
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_2736
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_2736
	mov	rsp, rsp
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2746
	nop	dword ptr [rax]
.label_2728:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	nop	
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rdi, [rdi]
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jb	.label_2728
.label_2746:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2722
	nop	
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2722
	mov	qword ptr [rsp + 0x48], r11
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	check_dst_limits
	test	al, al
	lea	rdi, [rdi]
	mov	r10, r12
	je	.label_2772
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_2754
.label_2722:
	lea	rdi, [rdi]
	mov	r10, r12
	nop	
	jmp	.label_2754
.label_2772:
	cmp	qword ptr [rsp], 0
	jne	.label_2719
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0x40], rax
	movups	xmm0, xmmword ptr [r10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r10 + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x30], xmm2
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x38], rbx
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_2725
	mov	rbp, rbp
	mov	rbp, r10
	mov	qword ptr [rsp + 0x30], rbx
	shl	rbx, 3
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	nop	
	je	.label_2751
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	mov	r10, rbp
	jmp	.label_2719
.label_2725:
	lea	rax, [rsp + 0x30]
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
.label_2719:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rbx, r10
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	mov	r12d, 0xc
	test	al, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	je	.label_2735
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rcx
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rdx
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	r10, rbp
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2735
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	je	.label_2744
	lea	rdi, [rdi]
	mov	r13, -1
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x50]
	js	.label_2748
	nop	dword ptr [rax]
.label_2743:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2755
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_2730
	mov	rbp, rbp
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xbc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2735
	mov	rsp, rsp
	lea	rdi, [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0xbc]
	test	r12d, r12d
	nop	
	mov	rcx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp]
	je	.label_2730
	jmp	.label_2735
.label_2755:
	lea	rsi, [rsi]
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2730:
	inc	r13
	cmp	r13, rcx
	jl	.label_2743
.label_2748:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x90]
.label_2744:
	mov	qword ptr [rsp], rbx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	r12, r12
	jle	.label_2749
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2756
	nop	
.label_2731:
	mov	rsp, rsp
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	lea	rdi, [rdi]
	jb	.label_2731
.label_2756:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	nop	
	je	.label_2781
	nop	
	mov	rdi, -1
.label_2781:
	test	rdi, rdi
	mov	rsp, rsp
	js	.label_2749
	lea	rsi, [rsi]
	cmp	r12, rdi
	jle	.label_2749
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rbp
	cmp	rbp, rdi
	nop	
	jle	.label_2749
	mov	rbp, rbp
	dec	r12
	lea	rdi, [rdx + 1]
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rbx, rdi
	nop	
	cmovge	rbx, r12
	lea	rdi, [rdi]
	sub	rbx, rdx
	cmp	rbx, 4
	mov	rbp, rbp
	jb	.label_2727
	nop	
	mov	r8, rbx
	lea	rdi, [rdi]
	and	r8, 0xfffffffffffffffc
	nop	
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	lea	rsi, [rsi]
	je	.label_2727
	mov	qword ptr [rsp + 0xa8], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], r11
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	lea	rsi, [rsi]
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	nop	
	shr	r11, 2
	mov	rsp, rsp
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2745
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2745:
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	je	.label_2765
	mov	rbp, rbp
	cmp	r12, rdi
	lea	rsi, [rsi]
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	nop	
	lea	rsi, [rax + r10*8 + 0x38]
.label_2750:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsi - 0x28], xmm1
	nop	
	movups	xmm0, xmmword ptr [rsi - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	mov	rsp, rsp
	add	rdi, -8
	mov	rbp, rbp
	jne	.label_2750
.label_2765:
	cmp	rbx, r9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	je	.label_2749
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2727:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, rbp
	jl	.label_2727
.label_2749:
	lea	rbx, [r14 + r14*4]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	add	rbx, qword ptr [rdi + 0xd8]
.label_2754:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x98]
	nop	
.label_2736:
	mov	rbp, rbp
	inc	r14
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x20], 0
	mov	rbp, rbp
	lea	rbx, [rbx + 0x28]
	jne	.label_2717
.label_2759:
	mov	rdx, rcx
	nop	
	inc	r13
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2758
.label_2735:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_2767
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	free
.label_2767:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	test	r12d, r12d
	je	.label_2732
	mov	rsp, rsp
	jmp	.label_2724
.label_2718:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_2732:
	xor	r12d, r12d
.label_2724:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_2733:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	jmp	.label_2724
.label_2761:
	mov	dword ptr [rsp + 0x10], eax
.label_2721:
	nop	
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	jmp	.label_2724
.label_2779:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2732
.label_2751:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r12d, 0xc
	jmp	.label_2735
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423950

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2784
	mov	r10, qword ptr [r14 + 8]
	nop	
	test	r10, r10
	je	.label_2784
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	mov	rsp, rsp
	jle	.label_2790
	add	rbx, rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_2784
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	mov	rsp, rsp
	jmp	.label_2794
.label_2790:
	lea	rsi, [rsi]
	lea	r8, [r12 + 0x10]
.label_2794:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2783:
	dec	rdx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, r10
.label_2795:
	lea	rdi, [rdi]
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2800:
	nop	
	cmp	qword ptr [rbx + rdx*8], rax
	lea	rsi, [rsi]
	je	.label_2796
	nop	
	jl	.label_2799
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	lea	rdx, [rdx - 1]
	mov	rsp, rsp
	jg	.label_2800
	nop	
	jmp	.label_2785
	nop	word ptr cs:[rax + rax]
.label_2799:
	nop	
	cmp	rdi, 2
	nop	
	mov	rdi, r10
	jge	.label_2795
	jmp	.label_2785
	nop	dword ptr [rax]
.label_2796:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	lea	rsi, [rsi]
	js	.label_2793
	nop	dword ptr [rax + rax]
.label_2788:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2782
	test	rsi, rsi
	mov	rsp, rsp
	lea	rsi, [rsi - 1]
	nop	
	jg	.label_2788
	mov	rbp, rbp
	jmp	.label_2793
.label_2782:
	test	rsi, rsi
	js	.label_2793
	cmp	rcx, rax
	je	.label_2791
	nop	dword ptr [rax + rax]
.label_2793:
	mov	rbp, rbp
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2791:
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2785
	cmp	rdi, 2
	lea	rdi, [rdi]
	jge	.label_2783
.label_2785:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	jle	.label_2792
	nop	
	test	rax, rax
	js	.label_2792
	lea	rdi, [rdi]
	add	r11, rdx
	mov	rbp, rbp
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2789:
	mov	rsp, rsp
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	dword ptr [rax + rax]
.label_2786:
	mov	rsi, qword ptr [rdi + r14*8]
	nop	
	mov	rbx, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_2798
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	lea	rdi, [rdi]
	jg	.label_2786
	jmp	.label_2787
.label_2798:
	mov	rsp, rsp
	dec	r14
	nop	
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	nop	
	jne	.label_2789
	mov	rbp, rbp
	jmp	.label_2797
.label_2792:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r8]
.label_2787:
	mov	rdx, r10
.label_2797:
	lea	rsi, [rdi + r9*8]
	lea	rsi, [rsi]
	shl	rdx, 3
	call	memcpy
	lea	rdi, [rdi]
	xor	eax, eax
.label_2784:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423bb0

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], 0
	nop	
	lea	rdx, [r15 + r15*2]
	mov	rsp, rsp
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2808
	lea	rsi, [rsi]
	lea	rax, [rcx + rdx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2804:
	mov	rbp, rbp
	mov	r11, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + r13*8]
	lea	rsi, [rsi]
	cmp	rcx, r15
	je	.label_2806
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2806
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	nop	
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	lea	rdi, [rdi]
	jl	.label_2828
	mov	rsp, rsp
	mov	r10, qword ptr [rcx + 8]
.label_2828:
	test	r9, r9
	lea	rsi, [rsi]
	jle	.label_2811
	mov	rcx, r9
	dec	rcx
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_2812
	nop	
.label_2802:
	mov	rbp, rbp
	lea	rbx, [rbp + rcx]
	lea	rdi, [rdi]
	shr	rbx, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	mov	rbp, rbp
	cmovl	rbp, rax
	nop	
	cmovge	rcx, rbx
	mov	rsp, rsp
	cmp	rbp, rcx
	jb	.label_2802
.label_2812:
	cmp	rbp, -1
	je	.label_2811
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2822
.label_2811:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	jle	.label_2822
	lea	rdi, [rdi]
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_2820
	nop	word ptr cs:[rax + rax]
.label_2813:
	lea	rax, [rcx + rbp]
	mov	rbp, rbp
	shr	rax, 1
	nop	
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rsp, rsp
	cmp	rcx, rbp
	mov	rbp, rbp
	jb	.label_2813
.label_2820:
	lea	rdi, [rdi]
	cmp	rcx, -1
	nop	
	je	.label_2822
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdi, [rdi]
	je	.label_2825
.label_2822:
	test	r10, r10
	jle	.label_2806
	test	r9, r9
	mov	rsp, rsp
	jle	.label_2819
	mov	rbp, r9
	mov	rsp, rsp
	dec	rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_2803
	nop	word ptr cs:[rax + rax]
.label_2810:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rbp, rbp
	cmp	rcx, rbp
	lea	rdi, [rdi]
	jb	.label_2810
.label_2803:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2819
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdi, [rdi]
	je	.label_2806
.label_2819:
	mov	rsi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	jle	.label_2806
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2807
	nop	word ptr cs:[rax + rax]
.label_2821:
	nop	
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	mov	rsp, rsp
	cmovge	rsi, rax
	cmp	rcx, rsi
	mov	rbp, rbp
	jb	.label_2821
.label_2807:
	cmp	rcx, -1
	je	.label_2806
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rsi, [rsi]
	jne	.label_2806
.label_2825:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	nop	
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	nop	
	mov	ebp, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_2809
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	word ptr [rax + rax]
.label_2806:
	inc	r13
	cmp	r13, r9
	jl	.label_2804
	test	r9, r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	jle	.label_2808
	lea	r8, [rsp + 0x30]
	mov	rsp, rsp
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r11, [r10 - 1]
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2801:
	lea	rsi, [rsi]
	test	r10, r10
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2816
	lea	rsi, [rsi]
	test	r11, r11
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbp, rbp
	mov	ecx, 0
	je	.label_2827
	nop	word ptr cs:[rax + rax]
.label_2823:
	lea	rdi, [rdi]
	lea	rdi, [rcx + rdx]
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rcx, rbx
	lea	rsi, [rsi]
	cmovge	rdx, rdi
	mov	rsp, rsp
	cmp	rcx, rdx
	jb	.label_2823
.label_2827:
	lea	rdi, [rdi]
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2816
	cmp	qword ptr [rsi + rcx*8], rax
	mov	rsp, rsp
	je	.label_2818
.label_2816:
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_2818
	mov	r15, r14
	dec	r15
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2826
	nop	word ptr cs:[rax + rax]
.label_2824:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	mov	rbp, rbp
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	nop	
	jb	.label_2824
.label_2826:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	mov	rbp, rbp
	je	.label_2814
	nop	
	mov	rax, -1
.label_2814:
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_2818
	cmp	r14, rax
	jle	.label_2818
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2818
	nop	
.label_2817:
	nop	
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2817
	nop	dword ptr [rax + rax]
.label_2818:
	inc	r13
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, qword ptr [rax]
	mov	rsp, rsp
	jl	.label_2801
	jmp	.label_2805
.label_2808:
	mov	rbp, rbp
	lea	r8, [rsp + 0x30]
.label_2805:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2815:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2809:
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2815
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x424050

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	nop	
	mov	qword ptr [rsp + 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	mov	rbp, rbp
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2830
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_2831:
	nop	
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x18]
	nop	
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	nop	
	mov	rdi, rbp
	mov	rdx, r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	rbp, rbp
	mov	al, 1
	jne	.label_2829
	nop	
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	mov	rsp, rsp
	jl	.label_2831
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2829
.label_2830:
	lea	rdi, [rdi]
	xor	eax, eax
.label_2829:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x424190

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	mov	r10, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rsi + rsi*4]
	mov	rbp, rbp
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	r11, r8
	jg	.label_2832
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	rbp, rbp
	mov	eax, 1
	cmp	r10, r8
	mov	rbp, rbp
	jl	.label_2832
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	lea	rdi, [rdi]
	je	.label_2832
	lea	rsi, [rsi]
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_2832:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x424200

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	r12, rdx
	mov	ebx, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_2833
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	eax, 1
	mov	cl, r12b
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], eax
	shr	eax, 1
	cmp	r12, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0x3f], cl
	mov	eax, ebx
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_2835
.label_2850:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x3f], 0
	lea	rdi, [rdi]
	je	.label_2845
	nop	
.label_2849:
	mov	rsp, rsp
	cmp	qword ptr [r14], r13
	mov	rsp, rsp
	jne	.label_2841
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_2843
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	rsp, rsp
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2840
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	cmp	ecx, -1
	mov	rbp, rbp
	jne	.label_2841
	jmp	.label_2834
	nop	word ptr cs:[rax + rax]
.label_2840:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	dword ptr [rsp + 0x18], 0
	jne	.label_2834
.label_2841:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	lea	rsi, [rsi]
	jne	.label_2849
	jmp	.label_2836
	nop	word ptr [rax + rax]
.label_2845:
	cmp	qword ptr [r14], r13
	jne	.label_2847
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	lea	rcx, [r13 + r13*2]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_2843
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp]
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_2844
	mov	rsp, rsp
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmp	ecx, -1
	mov	rsp, rsp
	jne	.label_2847
	mov	rsp, rsp
	jmp	.label_2834
	nop	
.label_2844:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	and	ecx, eax
	mov	rbp, rbp
	mov	word ptr [r14 + 0x22], cx
.label_2847:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	nop	
	jne	.label_2845
	jmp	.label_2836
	nop	dword ptr [rax]
.label_2835:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	r13, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r13
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	lea	rsi, [rsi]
	cmp	eax, 9
	nop	
	je	.label_2838
	cmp	eax, 8
	nop	
	je	.label_2846
	cmp	eax, 4
	jne	.label_2836
	nop	
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2836
	mov	rax, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	lea	r14, [rax + rax*4]
	nop	
	shl	r14, 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	add	r14, qword ptr [rax + 0xd8]
	cmp	r12, 0x3f
	lea	rdi, [rdi]
	jg	.label_2850
	nop	
.label_2848:
	cmp	qword ptr [r14], r13
	jne	.label_2839
	lea	rsi, [rsi]
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	je	.label_2839
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	lea	rcx, [r13 + r13*2]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_2843
	nop	
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, r12
	nop	
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	check_dst_limits_calc_pos_1
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	je	.label_2852
	mov	eax, 0xffffffff
	cmp	ecx, -1
	jne	.label_2837
	jmp	.label_2834
.label_2852:
	cmp	byte ptr [rsp + 0x3f], 0
	je	.label_2837
	xor	eax, eax
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2839
	mov	rbp, rbp
	jmp	.label_2834
	nop	word ptr cs:[rax + rax]
.label_2837:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	and	ecx, eax
	nop	
	mov	word ptr [r14 + 0x22], cx
.label_2839:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2848
	lea	rdi, [rdi]
	jmp	.label_2836
	nop	dword ptr [rax]
.label_2838:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2836
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_2851
	nop	
.label_2846:
	cmp	dword ptr [rsp + 0x1c], 0
	mov	rsp, rsp
	je	.label_2836
	mov	eax, 0xffffffff
.label_2851:
	mov	rsp, rsp
	cmp	qword ptr [rcx], r12
	je	.label_2834
.label_2836:
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r15, qword ptr [rax]
	lea	rsi, [rsi]
	jl	.label_2835
.label_2833:
	shr	ebx, 1
	and	ebx, 1
	jmp	.label_2842
.label_2843:
	nop	
	shl	ebx, 0x1f
	sar	ebx, 0x1f
.label_2842:
	nop	
	mov	eax, ebx
.label_2834:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4245d0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdi, rsi
	je	.label_2853
	nop	dword ptr [rax]
.label_2856:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	rsi, [rsi]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	mov	rsp, rsp
	cmovae	eax, ecx
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi]
	mov	rbp, rbp
	lea	r8d, [rdx - 0x41]
	mov	rbp, rbp
	lea	ecx, [rdx + 0x20]
	lea	rsi, [rsi]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	lea	rsi, [rsi]
	and	eax, 0xff
	mov	rbp, rbp
	je	.label_2854
	inc	rdi
	inc	rsi
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	eax, ecx
	je	.label_2856
	jmp	.label_2855
.label_2854:
	lea	rsi, [rsi]
	movzx	ecx, cl
	xor	eax, eax
.label_2855:
	nop	
	sub	eax, ecx
.label_2853:
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x424650

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
	jne	.label_2857
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_2858
	test	cl, cl
	mov	rsp, rsp
	jne	.label_2858
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_2858
.label_2857:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2858
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_2858:
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
	#Procedure 0x4246e0

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
	je	.label_2860
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2859
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_2861
.label_2859:
	nop	
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_2860
.label_2861:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_2860:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x424730

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
	mov	eax, OFFSET FLAT:.str.1_10
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_2862
	nop	
	mov	rax, rcx
.label_2862:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x424770

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	lea	rdi, [rdi]
	jne	.label_2870
	mov	rsp, rsp
	cmp	byte ptr [rbx + 8], 0
	mov	rbp, rbp
	je	.label_2865
	nop	
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	lea	r14, [rbx + 0xc]
	lea	rsi, [rsi]
	jmp	.label_2872
.label_2865:
	mov	r15, qword ptr [rbx + 0x18]
	nop	
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	lea	rsi, [rsi]
	bt	ecx, eax
	jae	.label_2871
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	lea	rsi, [rsi]
	jmp	.label_2869
.label_2871:
	mov	rbp, rbp
	lea	r14, [rbx + 0xc]
	nop	
	mov	rdi, r14
	call	mbsinit
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2863
	mov	byte ptr [rbx + 8], 1
	mov	rbp, rbp
	lea	r13, [rbx + 0x18]
.label_2872:
	lea	r12, [rbx + 0x2c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx]
	lea	rsi, [rsi]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	lea	rdi, [rdi]
	cmp	rax, -2
	lea	rsi, [rsi]
	je	.label_2873
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2864
	lea	rdi, [rdi]
	cmp	rax, -1
	jne	.label_2867
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	mov	rbp, rbp
	jmp	.label_2869
.label_2873:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_2869
.label_2864:
	mov	qword ptr [rbx + 0x20], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_2866
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	jne	.label_2868
.label_2867:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_2869
	mov	byte ptr [rbx + 8], 0
.label_2869:
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x14], 1
.label_2870:
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
.label_2866:
	mov	edi, OFFSET FLAT:.str.2_4
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_11
	lea	rdi, [rdi]
	mov	edx, 0xa9
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_2868:
	mov	edi, OFFSET FLAT:.str.3_3
	nop	
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_2863:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_11
	nop	
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	nop	
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x424930
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	mov	rbp, rbp
	add	qword ptr [rdi + 0x18], rsi
	lea	rsi, [rsi]
	add	qword ptr [rdi], rsi
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x424940
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	qword ptr [r14], rax
	nop	
	mov	al, byte ptr [rbx + 8]
	lea	rsi, [rsi]
	test	al, al
	mov	byte ptr [r14 + 8], al
	je	.label_2874
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xc]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0xc], rax
	nop	
	jmp	.label_2877
.label_2874:
	mov	qword ptr [r14 + 0xc], 0
.label_2877:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	mov	rbp, rbp
	jne	.label_2875
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rsi, r15
.label_2875:
	nop	
	mov	qword ptr [r14 + 0x18], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	lea	rdi, [rdi]
	je	.label_2876
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_2876:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4249f0

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x178
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rsp, rsp
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rbp, rbp
	jb	.label_2886
	mov	qword ptr [rsp + 0xf0], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rbp
	mov	byte ptr [rsp + 0xe0], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xec], 0
	nop	
	lea	rdi, [rsp + 0xe0]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2898
	shr	rax, 0x20
	jne	.label_2898
	mov	rax, rbx
	jmp	.label_2888
.label_2886:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	mov	r11, rbp
	je	.label_2904
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbp, rbp
	mov	r14b, byte ptr [rbp]
	xor	eax, eax
	test	r14b, r14b
	je	.label_2888
	mov	rbp, rbp
	mov	r10b, 1
	nop	
	xor	r9d, r9d
	lea	rdi, [rdi]
	movzx	r12d, cl
	mov	rsp, rsp
	mov	rdi, r11
	xor	r13d, r13d
	nop	
	xor	r15d, r15d
.label_2897:
	lea	rdi, [rdi]
	cmp	r15, 0xa
	nop	
	jb	.label_2910
	mov	al, r10b
	nop	
	and	al, 1
	nop	
	je	.label_2913
	lea	rax, [r15 + r15*4]
	cmp	r13, rax
	jb	.label_2879
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	mov	rsp, rsp
	mov	rbx, rbp
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_2883
	mov	rsi, r13
	sub	rsi, r9
	mov	rbp, r11
	mov	qword ptr [rsp + 0x170], rdi
	call	strnlen
	nop	
	mov	rdi, qword ptr [rsp + 0x170]
	mov	rbp, rbp
	mov	r11, rbp
	cmp	byte ptr [rdi + rax], 0
	mov	r9, r13
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_2883
	lea	rsi, [rsi]
	add	rdi, rax
	mov	rbp, rbp
	mov	r9, r13
	jne	.label_2890
.label_2883:
	mov	qword ptr [rsp + 0xd8], r13
	mov	rbp, rbp
	mov	r13, r9
	mov	rbp, rbp
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbp, r11
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0xe0]
	lea	rdi, [rdi]
	call	knuth_morris_pratt
	lea	rdi, [rdi]
	test	al, al
	jne	.label_2906
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rbx]
	lea	rdi, [rdi]
	xor	r10d, r10d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	r11, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0xd8]
	jmp	.label_2890
.label_2879:
	mov	rsp, rsp
	mov	rbx, rbp
	lea	rdi, [rdi]
	jmp	.label_2890
.label_2910:
	mov	rbx, rbp
	jmp	.label_2890
.label_2913:
	mov	rsp, rsp
	mov	rbx, rbp
	nop	word ptr [rax + rax]
.label_2890:
	mov	rsp, rsp
	movzx	eax, r14b
	cmp	eax, r12d
	mov	eax, 1
	nop	
	mov	rbp, rbx
	jne	.label_2878
	nop	word ptr cs:[rax + rax]
.label_2892:
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	dl, byte ptr [r11 + rcx]
	test	dl, dl
	je	.label_2885
	mov	rsp, rsp
	mov	bl, byte ptr [rbp + rcx]
	mov	rbp, rbp
	test	bl, bl
	mov	eax, 0
	je	.label_2888
	nop	
	movzx	edx, dl
	movzx	esi, bl
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	lea	rdi, [rdi]
	cmp	esi, edx
	nop	
	je	.label_2892
	lea	r13, [r13 + rcx + 1]
	mov	rbp, rbp
	jmp	.label_2896
	nop	dword ptr [rax]
.label_2878:
	inc	r13
.label_2896:
	inc	r15
	mov	r14b, byte ptr [rbp + 1]
	inc	rbp
	test	r14b, r14b
	nop	
	mov	eax, 0
	jne	.label_2897
	jmp	.label_2888
.label_2898:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x128], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x12c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x134], 0
	nop	
	mov	qword ptr [rsp + 0x68], rbx
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x58], 0
	mov	qword ptr [rsp + 0x5c], 0
	mov	byte ptr [rsp + 0x64], 0
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x168], rcx
	lea	rsi, [rsi]
	test	al, al
	je	.label_2912
	shr	rax, 0x20
	lea	rsi, [rsi]
	je	.label_2880
.label_2912:
	mov	al, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x170], eax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x168], rax
	lea	r13, [rsp + 0x128]
	xor	ebp, ebp
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	r12d, r12d
.label_2894:
	lea	rsi, [rsi]
	mov	r15, r14
	cmp	r12, 0xa
	jb	.label_2891
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x170]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	je	.label_2893
	mov	rbp, rbp
	lea	rax, [r12 + r12*4]
	mov	qword ptr [rsp + 0xd8], r12
	cmp	r15, rax
	lea	rsi, [rsi]
	jb	.label_2881
	lea	rdi, [rdi]
	mov	r14, rsi
	cmp	r15, rbp
	je	.label_2900
	sub	rbp, r15
	nop	word ptr cs:[rax + rax]
.label_2909:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_2905
	nop	
	shr	rax, 0x20
	je	.label_2900
.label_2905:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x140]
	add	qword ptr [rsp + 0x138], rax
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x134], 0
	mov	rbp, rbp
	inc	rbp
	jne	.label_2909
.label_2900:
	nop	
	mov	rdi, r13
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_2914
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	rbp, r15
	mov	rsi, r14
	jne	.label_2881
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r14, rsi
	nop	
	lea	rdx, [rsp + 0x10]
	call	knuth_morris_pratt_multibyte
	test	al, al
	nop	
	jne	.label_2887
	mov	dword ptr [rsp + 0x170], 0
.label_2914:
	mov	rbp, r15
	mov	rsi, r14
	jmp	.label_2881
.label_2891:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xd8], r12
	mov	rsi, qword ptr [rsp + 8]
	mov	rbp, rbp
	jmp	.label_2881
.label_2893:
	nop	
	mov	qword ptr [rsp + 0xd8], r12
	nop	dword ptr [rax + rax]
.label_2881:
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x78]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2895
	mov	rcx, qword ptr [rsp + 0x100]
	test	cl, cl
	mov	rbp, rbp
	je	.label_2895
	nop	
	shr	rcx, 0x20
	mov	rsp, rsp
	shr	rax, 0x20
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2903
	mov	rbp, rbp
	jmp	.label_2901
	nop	word ptr cs:[rax + rax]
.label_2895:
	mov	rdx, qword ptr [rsp + 0x70]
	cmp	rdx, qword ptr [rsp + 0xf8]
	nop	
	jne	.label_2901
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_2901
.label_2903:
	movups	xmm0, xmmword ptr [rsp + 0x58]
	nop	
	movups	xmm1, xmmword ptr [rsp + 0x68]
	movups	xmm2, xmmword ptr [rsp + 0x78]
	movups	xmm3, xmmword ptr [rsp + 0x88]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm3
	movaps	xmmword ptr [rsp + 0x30], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x1c], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0xa8], rax
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x98], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x9c], 0
	mov	byte ptr [rsp + 0xa4], 0
	lea	rdi, [rsp + 0x98]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	mov	rsp, rsp
	je	.label_2899
	lea	rdi, [rdi]
	shr	rax, 0x20
	je	.label_2911
.label_2899:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	add	qword ptr [rsp + 0xa8], rax
	mov	byte ptr [rsp + 0xa4], 0
	lea	rdi, [rsp + 0x98]
	nop	
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	je	.label_2908
	lea	rdi, [rdi]
	shr	rax, 0x20
	nop	
	je	.label_2882
.label_2908:
	add	r15, 2
	mov	rsp, rsp
	mov	r14, r15
	nop	dword ptr [rax]
.label_2902:
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_2915
	test	eax, eax
	mov	rbp, rbp
	je	.label_2880
.label_2915:
	test	cl, cl
	lea	rdi, [rdi]
	sete	dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_2884
	test	dl, dl
	jne	.label_2884
	shr	rcx, 0x20
	nop	
	cmp	eax, ecx
	lea	rsi, [rsi]
	jne	.label_2889
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0xb0]
	jmp	.label_2907
	nop	dword ptr [rax + rax]
.label_2884:
	mov	r13, qword ptr [rsp + 0x28]
	cmp	r13, qword ptr [rsp + 0xb0]
	jne	.label_2889
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0xa8]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	rax, r13
	mov	rbp, rbp
	jne	.label_2889
.label_2907:
	add	r15, rax
	nop	
	mov	qword ptr [rsp + 0x20], r15
	nop	
	mov	byte ptr [rsp + 0x1c], 0
	add	r12, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], r12
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x98]
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0xb8]
	inc	r14
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_2902
	shr	rax, 0x20
	jne	.label_2902
	jmp	.label_2882
.label_2889:
	lea	r13, [rsp + 0x128]
	nop	word ptr cs:[rax + rax]
.label_2901:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0xd8]
	inc	r12
	mov	rax, qword ptr [rsp + 0x70]
	add	qword ptr [rsp + 0x68], rax
	mov	byte ptr [rsp + 0x64], 0
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	mov	rax, qword ptr [rsp + 0x78]
	test	al, al
	je	.label_2894
	shr	rax, 0x20
	mov	rbp, rbp
	jne	.label_2894
.label_2880:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x168]
	jmp	.label_2888
.label_2904:
	mov	rax, rbx
	nop	
	jmp	.label_2888
.label_2885:
	mov	rax, rbp
	jmp	.label_2888
.label_2882:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x168], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x168]
.label_2888:
	mov	rsp, rsp
	add	rsp, 0x178
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2906:
	mov	rax, qword ptr [rsp + 0xe0]
	jmp	.label_2888
.label_2887:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x168], rax
	mov	rax, qword ptr [rsp + 0x168]
	nop	
	jmp	.label_2888
.label_2911:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4251f0

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rdx
	mov	r14, rsi
	mov	rsp, rsp
	mov	r13, rdi
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	mbslen
	nop	
	mov	rbx, rax
	movabs	rax, 0x249249249249249
	lea	rdi, [rdi]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jbe	.label_2926
	nop	
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2934
.label_2926:
	nop	
	imul	rdi, rbx, 0x38
	cmp	rdi, 0xfa0
	ja	.label_2941
	mov	rax, rsp
	add	rdi, 0x2e
	mov	rbp, rbp
	and	rdi, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	lea	rdi, [rdi]
	neg	rdi
	nop	
	lea	r15, [rax + rdi + 0x1f]
	nop	
	and	r15, 0xffffffffffffffe0
	lea	rsi, [rsi]
	jmp	.label_2944
.label_2941:
	lea	rdi, [rdi]
	call	mmalloca
	mov	r15, rax
.label_2944:
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_2921
	mov	qword ptr [rbp - 0x40], r13
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], r12
	lea	rax, [rbx + rbx*2]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rbx
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	shl	rbx, 4
	mov	qword ptr [rbp - 0x70], r14
	mov	byte ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x74], 0
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	mov	rsp, rsp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	je	.label_2948
	shr	rax, 0x20
	je	.label_2949
.label_2948:
	mov	rsp, rsp
	lea	r13, [rbp - 0x58]
	lea	r14, [r15 + 0x18]
	lea	r12, [rbp - 0x80]
	nop	dword ptr [rax]
.label_2917:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, r13
	mov	rsp, rsp
	jne	.label_2946
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rsp, rsp
	call	memcpy
	mov	rax, r14
.label_2946:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	test	al, al
	mov	byte ptr [r14 - 8], al
	je	.label_2932
	shr	rax, 0x20
	mov	rbp, rbp
	mov	dword ptr [r14 - 4], eax
.label_2932:
	mov	rax, qword ptr [rbp - 0x68]
	add	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x74], 0
	lea	rsi, [rsi]
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x60]
	add	r14, 0x30
	test	al, al
	je	.label_2917
	lea	rsi, [rsi]
	shr	rax, 0x20
	jne	.label_2917
.label_2949:
	mov	rbp, rbp
	lea	rsi, [r15 + rbx]
	mov	qword ptr [r15 + rbx + 8], 1
	lea	rdi, [rdi]
	mov	edx, 2
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 3
	jb	.label_2919
	nop	word ptr cs:[rax + rax]
.label_2935:
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	lea	rax, [rdx + rdx*2]
	shl	rax, 4
	mov	rbp, rbp
	lea	r12, [rax + r15 - 0x30]
	lea	rdi, [rax + r15 - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rdi
	nop	
	cmp	byte ptr [rax + r15 - 0x20], 0
	je	.label_2937
	lea	r14, [rax + r15 - 0x1c]
	jmp	.label_2950
	nop	dword ptr [rax + rax]
.label_2942:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_2950:
	lea	rax, [rbx + rbx*2]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + rax + 0x10], 0
	je	.label_2918
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r14]
	cmp	ecx, dword ptr [r15 + rax + 0x14]
	mov	rsp, rsp
	jne	.label_2925
	lea	rsi, [rsi]
	jmp	.label_2928
	nop	word ptr cs:[rax + rax]
.label_2918:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	cmp	rdx, qword ptr [r15 + rax + 8]
	mov	rsp, rsp
	jne	.label_2925
	mov	rdi, qword ptr [r12]
	mov	rsp, rsp
	mov	r13, r12
	mov	rbp, rbp
	mov	r12, rsi
	mov	rsi, qword ptr [r15 + rax]
	call	memcmp
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsi, r12
	nop	
	mov	r12, r13
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_2928
	nop	word ptr cs:[rax + rax]
.label_2925:
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_2942
	jmp	.label_2933
	nop	word ptr cs:[rax + rax]
.label_2937:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rdi]
	jmp	.label_2929
	nop	dword ptr [rax + rax]
.label_2951:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_2929:
	lea	rax, [rbx + rbx*2]
	lea	rsi, [rsi]
	shl	rax, 4
	cmp	r13, qword ptr [r15 + rax + 8]
	lea	rsi, [rsi]
	jne	.label_2940
	mov	rsp, rsp
	mov	rdi, qword ptr [r12]
	mov	rsp, rsp
	mov	r14, rsi
	mov	rsi, qword ptr [r15 + rax]
	mov	rdx, r13
	call	memcmp
	mov	rsi, r14
	test	eax, eax
	je	.label_2928
.label_2940:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_2951
.label_2933:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rdx
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	jmp	.label_2924
.label_2928:
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rax, rdx
	sub	rax, rbx
	mov	rsp, rsp
	mov	qword ptr [rsi + rdx*8], rax
.label_2924:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	inc	rdx
	cmp	rdx, rcx
	nop	
	jne	.label_2935
.label_2919:
	nop	
	mov	qword ptr [rbp - 0x88], rsi
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x80], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x74], 0
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	mov	byte ptr [rbp - 0xc8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc4], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xbc], 0
	lea	rdi, [rbp - 0xc8]
	call	mbuiter_multi_next
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rax, rcx
	mov	rbp, rbp
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_2936
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_2922
.label_2936:
	xor	r13d, r13d
	mov	rsp, rsp
	lea	r12, [rbp - 0x80]
	nop	word ptr cs:[rax + rax]
.label_2938:
	mov	rsp, rsp
	lea	rdx, [r13 + r13*2]
	shl	rdx, 4
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + rdx + 0x10], 0
	mov	rbp, rbp
	je	.label_2916
	nop	
	xor	cl, 1
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2916
	cmp	dword ptr [r15 + rdx + 0x14], eax
	mov	rsp, rsp
	jne	.label_2927
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0xb0]
	jmp	.label_2930
	nop	dword ptr [rax]
.label_2916:
	mov	r14, qword ptr [r15 + rdx + 8]
	nop	
	cmp	r14, qword ptr [rbp - 0xb0]
	jne	.label_2927
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + rdx]
	mov	rbx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r14
	lea	rsi, [rsi]
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2930
.label_2927:
	test	r13, r13
	mov	rbp, rbp
	je	.label_2920
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbx, qword ptr [rax + r13*8]
	mov	rsp, rsp
	sub	r13, rbx
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_2923
	nop	dword ptr [rax + rax]
.label_2947:
	mov	rdi, r12
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_2939
	shr	rax, 0x20
	je	.label_2945
.label_2939:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x74], 0
	mov	rsp, rsp
	dec	rbx
	lea	rdi, [rdi]
	jne	.label_2947
	mov	rbp, rbp
	jmp	.label_2923
	nop	word ptr cs:[rax + rax]
.label_2930:
	inc	r13
	mov	rsp, rsp
	add	rbx, r14
	mov	qword ptr [rbp - 0xb8], rbx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xbc], 0
	lea	rdi, [rdi]
	cmp	r13, qword ptr [rbp - 0x30]
	nop	
	jne	.label_2923
	jmp	.label_2931
	nop	dword ptr [rax]
.label_2920:
	mov	rdi, r12
	mov	rsp, rsp
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_2943
	lea	rsi, [rsi]
	shr	rax, 0x20
	mov	rbp, rbp
	je	.label_2945
.label_2943:
	mov	rax, qword ptr [rbp - 0x68]
	add	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x74], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	add	qword ptr [rbp - 0xb8], rax
	mov	byte ptr [rbp - 0xbc], 0
	xor	r13d, r13d
.label_2923:
	lea	rdi, [rbp - 0xc8]
	nop	
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_2938
	test	eax, eax
	nop	
	jne	.label_2938
	lea	rsi, [rsi]
	jmp	.label_2922
.label_2921:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2934
.label_2931:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0xd8]
	nop	
	mov	qword ptr [rcx], rax
.label_2922:
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	call	freea
	mov	al, 1
.label_2934:
	mov	rbp, rbp
	lea	rsp, [rbp - 0x28]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2945:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425820

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_2960
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2952
.label_2960:
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	lea	rsi, [rsi]
	cmp	rdi, 0xfa0
	ja	.label_2957
	mov	rax, rsp
	mov	rsp, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rbp, rbp
	mov	rsp, rcx
	neg	rdi
	mov	rbp, rbp
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_2963
.label_2957:
	call	mmalloca
	nop	
	mov	rdi, rax
.label_2963:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2962
	mov	qword ptr [rdi + 8], 1
	mov	eax, 2
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	r12, 3
	nop	
	jb	.label_2955
	nop	word ptr [rax + rax]
.label_2965:
	nop	
	movzx	edx, byte ptr [rax + r13 - 1]
	mov	rbp, rbp
	movzx	esi, byte ptr [r13 + rcx]
	cmp	edx, esi
	je	.label_2954
	nop	word ptr cs:[rax + rax]
.label_2966:
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_2961
	mov	rsp, rsp
	sub	rcx, qword ptr [rdi + rcx*8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [r13 + rcx]
	nop	
	movzx	ebx, dl
	mov	rbp, rbp
	cmp	ebx, esi
	mov	rsp, rsp
	jne	.label_2966
.label_2954:
	inc	rcx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rax*8], rdx
	lea	rsi, [rsi]
	jmp	.label_2956
	nop	
.label_2961:
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
.label_2956:
	nop	
	inc	rax
	cmp	rax, r12
	jne	.label_2965
.label_2955:
	mov	qword ptr [r14], 0
	xor	ecx, ecx
	mov	rax, r15
	jmp	.label_2953
.label_2962:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2952
.label_2959:
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi + rcx*8]
	lea	rdi, [rdi]
	add	r15, rdx
	sub	rcx, rdx
	nop	word ptr cs:[rax + rax]
.label_2953:
	nop	
	mov	dl, byte ptr [rax]
	lea	rdi, [rdi]
	test	dl, dl
	nop	
	je	.label_2964
	mov	rbp, rbp
	movzx	esi, byte ptr [r13 + rcx]
	movzx	edx, dl
	cmp	esi, edx
	jne	.label_2967
	lea	rdi, [rdi]
	inc	rcx
	inc	rax
	lea	rdi, [rdi]
	cmp	r12, rcx
	jne	.label_2953
	jmp	.label_2958
.label_2967:
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_2959
	mov	rbp, rbp
	inc	r15
	lea	rdi, [rdi]
	inc	rax
	xor	ecx, ecx
	jmp	.label_2953
.label_2958:
	mov	qword ptr [r14], r15
.label_2964:
	call	freea
	mov	rbp, rbp
	mov	al, 1
.label_2952:
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4259e0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	lea	rsi, [rsi]
	jne	.label_2974
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_2978
	lea	r14, [rbx + 4]
	jmp	.label_2968
.label_2978:
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	mov	rbp, rbp
	bt	ecx, eax
	jae	.label_2970
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_2969
.label_2970:
	lea	rsi, [rsi]
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_2972
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 1
.label_2968:
	lea	r12, [rbx + 0x24]
	nop	
	call	__ctype_get_mb_cur_max
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rax
	call	strnlen1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x18], rax
	nop	
	cmp	rax, -2
	je	.label_2971
	test	rax, rax
	je	.label_2975
	nop	
	cmp	rax, -1
	nop	
	jne	.label_2977
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2969
.label_2971:
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_2969
.label_2975:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_2973
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	lea	rsi, [rsi]
	jne	.label_2976
.label_2977:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	nop	
	call	mbsinit
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_2969
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
.label_2969:
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0xc], 1
.label_2974:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_2973:
	mov	edi, OFFSET FLAT:.str.2_4
	nop	
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	nop	
	call	__assert_fail
.label_2976:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.3_3
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0xb3
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_2972:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_12
	lea	rdi, [rdi]
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x425b80
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425b90
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_2979
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 4]
	nop	
	mov	qword ptr [r14 + 4], rax
	jmp	.label_2982
.label_2979:
	mov	rbp, rbp
	mov	qword ptr [r14 + 4], 0
.label_2982:
	mov	al, byte ptr [rbx + 0xc]
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	mov	rsp, rsp
	cmp	rsi, rax
	jne	.label_2981
	lea	rdi, [rdi]
	lea	r15, [r14 + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r15
.label_2981:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x20], al
	mov	rbp, rbp
	je	.label_2980
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_2980:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425c40

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x1058
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rbp
	mov	r14, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 0x10], r14
	nop	
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_2988
	xor	ebx, ebx
	lea	r12, [rsp + 0x50]
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x10]
	mov	rsp, rsp
	lea	rbp, [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x20]
	nop	
	lea	r13, [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_2993:
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x38], 0x1000
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rbp, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	lea	rdi, [rdi]
	jne	.label_2986
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	mov	rbp, rbp
	jne	.label_2990
.label_2986:
	sub	rbx, r12
	add	rbx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rsp + 0x30], 0
	jne	.label_2993
.label_2988:
	lea	r14, [rsp + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], 0x1000
	xor	ebp, ebp
	lea	rcx, [rsp + 0x20]
	lea	r8, [rsp + 0x38]
	nop	
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x48]
	call	iconv
	nop	
	cmp	rax, -1
	nop	
	je	.label_2994
	lea	rdi, [rdi]
	sub	rbx, r14
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_2983
.label_2994:
	lea	rdi, [rdi]
	mov	ebp, 1
	lea	rdi, [rdi]
	jmp	.label_2983
.label_2990:
	cmp	eax, 0x16
	je	.label_2988
	mov	ebp, 1
.label_2983:
	mov	r12d, 0xffffffff
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_2991
	nop	
	test	rbx, rbx
	je	.label_2995
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	je	.label_2997
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax], rbx
	nop	
	jae	.label_2984
.label_2997:
	mov	rdi, rbx
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_2989
.label_2984:
	mov	qword ptr [rsp + 0x1050], rbp
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	call	iconv
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x30], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2987
	nop	
	lea	r13, [rsp + 0x50]
	lea	rbp, [rsp + 0x10]
	lea	r15, [rsp + 0x30]
	lea	r14, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_2992:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	mov	rsi, r13
	mov	rdx, rbp
	mov	rbp, rbp
	mov	rcx, r15
	mov	rsp, rsp
	mov	r8, r14
	mov	rsp, rsp
	call	iconv
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2985
	nop	
	cmp	qword ptr [rsp + 0x10], 0
	mov	rsp, rsp
	jne	.label_2992
	jmp	.label_2987
.label_2995:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	xor	r12d, r12d
	jmp	.label_2991
.label_2989:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	jmp	.label_2991
.label_2985:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	jne	.label_2996
.label_2987:
	mov	rbp, rbp
	lea	rcx, [rsp + 0x30]
	lea	r8, [rsp + 0x20]
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x48]
	call	iconv
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2996
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_2998
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x1050]
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	lea	rsi, [rsi]
	xor	r12d, r12d
	mov	rbp, rbp
	jmp	.label_2991
.label_2996:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x1050]
	nop	
	cmp	rbp, qword ptr [rax]
	je	.label_2991
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_2991:
	mov	rsp, rsp
	mov	eax, r12d
	add	rsp, 0x1058
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2998:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425fa0

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, rax
	mov	rbp, rbp
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	mov	rbp, rbp
	lea	rbp, [rbx + 1]
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	je	.label_3010
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	nop	
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 0x18], r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	iconv
	mov	rbp, rbp
	cmp	rax, -1
	je	.label_3000
	mov	rbp, rbp
	mov	r13, r12
	mov	rbx, rbp
.label_3009:
	nop	
	lea	rcx, [rsp + 0x18]
	lea	rdi, [rdi]
	lea	r8, [rsp + 8]
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r14
	call	iconv
	nop	
	cmp	rax, -1
	je	.label_3008
	mov	r12, r13
	mov	rbp, rbx
.label_3007:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	sub	rsi, r12
	mov	rbp, rbp
	cmp	rsi, rbp
	lea	rdi, [rdi]
	jae	.label_3004
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	nop	
	jmp	.label_3004
.label_3010:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_3004
.label_3000:
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	r15, rax
	nop	dword ptr [rax]
.label_3003:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	nop	
	jne	.label_3001
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_3005
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_3012
	sub	rbp, r12
	mov	rax, r13
	mov	rsp, rsp
	add	rax, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	lea	rax, [rbx - 1]
	sub	rax, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x10]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x18]
	mov	rbp, rbp
	lea	r8, [rsp + 8]
	call	iconv
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	r12, r13
	nop	
	mov	rbp, rbx
	mov	rsp, rsp
	je	.label_3003
	mov	rsp, rsp
	jmp	.label_3009
.label_3008:
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_3011:
	mov	rbp, rbp
	cmp	dword ptr [r15], 7
	mov	rbp, rbp
	jne	.label_3006
	nop	
	lea	rbp, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbp, rbx
	nop	
	jbe	.label_3002
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, r13
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	realloc
	mov	r12, rax
	nop	
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_3002
	lea	rsi, [rsi]
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	nop	
	lea	rax, [rbp - 1]
	lea	rdi, [rdi]
	sub	rax, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	xor	esi, esi
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp + 8]
	call	iconv
	cmp	rax, -1
	lea	rsi, [rsi]
	mov	r13, r12
	mov	rbx, rbp
	je	.label_3011
	mov	rsp, rsp
	jmp	.label_3007
.label_3002:
	mov	rbp, rbp
	mov	dword ptr [r15], 0xc
	mov	r12, r13
	jmp	.label_2999
.label_3001:
	cmp	eax, 0x16
	mov	r13, r12
	mov	rsp, rsp
	mov	rbx, rbp
	je	.label_3009
	jmp	.label_2999
.label_3005:
	lea	rdi, [rdi]
	mov	dword ptr [r15], 0xc
	jmp	.label_2999
.label_3012:
	mov	rbp, rbp
	mov	dword ptr [r15], 0xc
	lea	rsi, [rsi]
	jmp	.label_2999
.label_3006:
	mov	rsp, rsp
	mov	r12, r13
.label_2999:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r15]
	mov	rsp, rsp
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_3004:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4262e0

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	nop	
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	byte ptr [rbx], 0
	je	.label_3013
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	c_strcasecmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_3013
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	lea	rsi, [rsi]
	call	iconv_open
	mov	r15, rax
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_3016
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_3017
	mov	rdi, r15
	call	iconv_close
	nop	
	test	eax, eax
	jns	.label_3016
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	jmp	.label_3015
.label_3013:
	mov	rdi, rbx
	nop	
	call	__strdup
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_3016
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	jmp	.label_3014
.label_3017:
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	iconv_close
.label_3015:
	lea	rsi, [rsi]
	mov	dword ptr [rbx], ebp
.label_3014:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_3016:
	lea	rdi, [rdi]
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4263f0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, r14
	call	memchr
	lea	rdi, [rdi]
	mov	ecx, 1
	sub	rcx, rbx
	lea	rdi, [rdi]
	add	rcx, rax
	test	rax, rax
	mov	rbp, rbp
	cmove	rcx, r14
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x426440

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
	#Procedure 0x426460

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdi, -0x21
	ja	.label_3018
	push	rax
	lea	rsi, [rsi]
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_3018
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rdi, [rdi]
	lea	rax, [rdx + 0x10]
	lea	rdi, [rdi]
	mov	esi, eax
	sub	esi, ecx
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xf], sil
.label_3018:
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4264c0

	.globl freea
	.type freea, @function
freea:
	mov	rsp, rsp
	test	dil, 0xf
	jne	.label_3019
	test	dil, 0x10
	mov	rsp, rsp
	jne	.label_3020
	lea	rsi, [rsi]
	ret	
.label_3020:
	nop	
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_3019:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4264f0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_3021
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_3021:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x426520
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	mov	rbp, rbp
	cmp	rsi, rax
	mov	rsp, rsp
	jne	.label_3022
	mov	rbp, rbp
	lea	r15, [r14 + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_3022:
	mov	qword ptr [r14], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x10], al
	mov	rsp, rsp
	je	.label_3023
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_3023:
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4265a0
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	rsp, rsp
	mov	eax, edi
	mov	rbp, rbp
	shr	eax, 3
	mov	rsp, rsp
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	nop	
	bt	eax, edi
	mov	rsp, rsp
	setb	al
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	32
	#Procedure 0x4265d0

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_3025
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	lea	rsi, [rsi]
	je	.label_3027
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	rbp, rbp
	je	.label_3026
.label_3027:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	dword ptr [rax]
.label_3024:
	mov	rbp, rbp
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	rdi, r14
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	al, al
	je	.label_3024
	nop	
	shr	rax, 0x20
	jne	.label_3024
.label_3026:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_3025:
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	jmp	strlen
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]