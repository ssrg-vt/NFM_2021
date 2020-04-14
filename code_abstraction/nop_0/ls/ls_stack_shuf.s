	.section	.text
	.align	32
	#Procedure 0x402800

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rsi]
	nop	
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_1
	call	setlocale
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	call	bindtextdomain
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	call	textdomain
	mov	rbp, rbp
	mov	edi, 2
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	call	initialize_exit_failure
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	mov	dword ptr [dword ptr [exit_status]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_dir_name]],  1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [pending_dirs]],  0
	mov	qword ptr [word ptr [current_time]],  rsi
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [label_51]],  -1
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
	call	decode_switches
	mov	dword ptr [rbp - 0x14], eax
	nop	
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_12
	mov	rbp, rbp
	call	parse_ls_color
.label_12:
	test	byte ptr [byte ptr [directories_first]],  1
	je	.label_17
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
	lea	rdi, [rdi]
	jmp	.label_9
.label_17:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_with_color]],  1
	lea	rsi, [rsi]
	je	.label_26
	nop	
	mov	edi, 0xd
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	jne	.label_29
	lea	rsi, [rsi]
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	mov	rbp, rbp
	jne	.label_33
	nop	
	jmp	.label_36
.label_33:
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_29
.label_36:
	mov	edi, 0xc
	call	is_colored
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_47
	jmp	.label_27
.label_47:
	cmp	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	jne	.label_27
.label_29:
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
.label_27:
	jmp	.label_26
.label_26:
	jmp	.label_9
.label_9:
	nop	
	cmp	dword ptr [dword ptr [dereference]],  1
	mov	rsp, rsp
	jne	.label_53
	mov	al, 1
	mov	rsp, rsp
	test	byte ptr [byte ptr [immediate_dirs]],  1
	mov	byte ptr [rbp - 0x39], al
	nop	
	jne	.label_8
	mov	al, 1
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [indicator_style]],  3
	mov	byte ptr [rbp - 0x39], al
	nop	
	je	.label_8
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], al
.label_8:
	nop	
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [dword ptr [dereference]],  ecx
.label_53:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [recursive]],  1
	lea	rdi, [rdi]
	je	.label_28
	mov	eax, 0x1e
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_ino_hash
	nop	
	movabs	rcx, OFFSET FLAT:dev_ino_compare
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:dev_ino_free
	call	hash_initialize
	mov	rbp, rbp
	mov	qword ptr [word ptr [active_dir_set]],  rax
	cmp	qword ptr [word ptr [active_dir_set]],  0
	jne	.label_45
	nop	
	call	xalloc_die
.label_45:
	movabs	rdi, OFFSET FLAT:dev_ino_obstack
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	call	_obstack_begin
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
.label_28:
	movabs	rdi, OFFSET FLAT:.str_0
	call	getenv
	mov	rdi, rax
	nop	
	call	tzalloc
	nop	
	mov	cl, 1
	mov	qword ptr [word ptr [localtz]],  rax
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [sort_type]],  4
	mov	byte ptr [rbp - 0x51], cl
	je	.label_15
	mov	rsp, rsp
	mov	al, 1
	cmp	dword ptr [dword ptr [sort_type]],  2
	mov	byte ptr [rbp - 0x51], al
	mov	rbp, rbp
	je	.label_15
	mov	al, 1
	cmp	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], al
	lea	rsi, [rsi]
	je	.label_15
	nop	
	mov	al, 1
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_scontext]],  1
	mov	byte ptr [rbp - 0x51], al
	jne	.label_15
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [print_block_size]]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], al
.label_15:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x51]
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	and	al, 1
	mov	byte ptr [byte ptr [format_needs_stat]],  al
	test	byte ptr [byte ptr [format_needs_stat]],  1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa2], dl
	lea	rsi, [rsi]
	jne	.label_44
	mov	rsp, rsp
	mov	al, 1
	test	byte ptr [byte ptr [recursive]],  1
	nop	
	mov	byte ptr [rbp - 0xa1], al
	jne	.label_7
	mov	al, 1
	nop	
	test	byte ptr [byte ptr [print_with_color]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], al
	nop	
	jne	.label_7
	mov	rbp, rbp
	mov	al, 1
	cmp	dword ptr [dword ptr [indicator_style]],  0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa1], al
	jne	.label_7
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [directories_first]]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa1], al
.label_7:
	mov	al, byte ptr [rbp - 0xa1]
	mov	byte ptr [rbp - 0xa2], al
.label_44:
	mov	al, byte ptr [rbp - 0xa2]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [format_needs_type]],  al
	nop	
	test	byte ptr [byte ptr [dired]],  1
	je	.label_20
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:dired_obstack
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:malloc
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	_obstack_begin
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:subdired_obstack
	mov	rsp, rsp
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	ecx, r9d
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:malloc
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:free
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x24], eax
	call	_obstack_begin
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
.label_20:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_25
	nop	
	call	file_escape_init
	call	xgethostname
	mov	rsp, rsp
	mov	qword ptr [word ptr [hostname]],  rax
	cmp	qword ptr [word ptr [hostname]],  0
	mov	rbp, rbp
	jne	.label_13
	nop	
	movabs	rax, OFFSET FLAT:.str_1
	mov	qword ptr [word ptr [hostname]],  rax
.label_13:
	jmp	.label_25
.label_25:
	mov	eax, 0xc8
	lea	rsi, [rsi]
	mov	esi, eax
	mov	qword ptr [word ptr [cwd_n_alloc]],  0x64
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [cwd_n_alloc]]
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [cwd_file]],  rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [cwd_n_used]],  0
	call	clear_files
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x28]
	nop	
	sub	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], ecx
	cmp	dword ptr [rbp - 0xac], 0
	mov	rbp, rbp
	jg	.label_39
	mov	rsp, rsp
	test	byte ptr [byte ptr [immediate_dirs]],  1
	je	.label_50
	movabs	rdi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	ecx, 1
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str_1
	mov	rbp, rbp
	call	gobble_file
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_57
.label_50:
	movabs	rdi, OFFSET FLAT:.str
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	queue_directory
.label_57:
	jmp	.label_16
.label_39:
	lea	rdi, [rdi]
	jmp	.label_31
.label_31:
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	ecx, 1
	movabs	r8, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	edi, eax
	mov	rsp, rsp
	add	edi, 1
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	movsxd	r9, eax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [r10 + r9*8]
	lea	rsi, [rsi]
	call	gobble_file
	mov	qword ptr [rbp - 0x50], rax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x28]
	jl	.label_31
	mov	rbp, rbp
	jmp	.label_16
.label_16:
	nop	
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	lea	rdi, [rdi]
	je	.label_40
	nop	
	call	sort_files
	mov	rsp, rsp
	test	byte ptr [byte ptr [immediate_dirs]],  1
	lea	rsi, [rsi]
	jne	.label_48
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	call	extract_dirs_from_files
.label_48:
	mov	rsp, rsp
	jmp	.label_40
.label_40:
	nop	
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	nop	
	je	.label_54
	lea	rdi, [rdi]
	call	print_current_files
	mov	rbp, rbp
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_14
	jmp	.label_10
.label_10:
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	jmp	.label_14
.label_14:
	jmp	.label_21
.label_54:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 1
	nop	
	jg	.label_24
	mov	rsp, rsp
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_24
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_24
	mov	byte ptr [byte ptr [print_dir_name]],  0
.label_24:
	jmp	.label_21
.label_21:
	jmp	.label_34
.label_34:
	nop	
	cmp	qword ptr [word ptr [pending_dirs]],  0
	lea	rsi, [rsi]
	je	.label_38
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [pending_dirs]],  rax
	cmp	qword ptr [word ptr [active_dir_set]],  0
	lea	rdi, [rdi]
	je	.label_35
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_42
	call	dev_ino_pop
	lea	rcx, [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rsi, rcx
	call	hash_delete
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_37
	mov	rbp, rbp
	jmp	.label_11
.label_37:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0x640
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	lea	rsi, [rsi]
	call	__assert_fail
.label_11:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	dev_ino_free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	call	free_pending_ent
	jmp	.label_34
.label_42:
	mov	rsp, rsp
	jmp	.label_35
.label_35:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x10]
	and	cl, 1
	movzx	edx, cl
	call	print_dir
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	call	free_pending_ent
	mov	byte ptr [byte ptr [print_dir_name]],  1
	lea	rsi, [rsi]
	jmp	.label_34
.label_38:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_52
	mov	rbp, rbp
	test	byte ptr [byte ptr [used_color]],  1
	je	.label_52
	cmp	qword ptr [word ptr [color_indicator]],  2
	jne	.label_19
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_56]]
	movzx	ecx, word ptr [rax]
	nop	
	sub	ecx, 0x5b1b
	setne	dl
	mov	rsp, rsp
	movzx	esi, dl
	lea	rdi, [rdi]
	cmp	esi, 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa8], ecx
	lea	rdi, [rdi]
	jne	.label_19
	cmp	qword ptr [word ptr [label_18]],  1
	lea	rsi, [rsi]
	jne	.label_19
	mov	rax,  qword ptr [word ptr [label_22]]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x6d
	je	.label_23
.label_19:
	nop	
	call	restore_default_color
.label_23:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	mov	dword ptr [rbp - 8], eax
	nop	
	call	signal_restore
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 0x40], eax
.label_43:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_32
	lea	rsi, [rsi]
	mov	edi, 0x13
	mov	rbp, rbp
	call	raise
	mov	dword ptr [rbp - 0x2c], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	jmp	.label_43
.label_32:
	mov	eax,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_49
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x40]
	nop	
	call	raise
	mov	dword ptr [rbp - 0xb0], eax
.label_49:
	lea	rdi, [rdi]
	jmp	.label_52
.label_52:
	test	byte ptr [byte ptr [dired]],  1
	nop	
	je	.label_55
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:dired_obstack
	call	dired_dump_obstack
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:subdired_obstack
	nop	
	call	dired_dump_obstack
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	nop	
	call	get_quoting_style
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + quoting_style_args]]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	dword ptr [rbp - 0x30], eax
.label_55:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [active_dir_set]],  0
	mov	rbp, rbp
	je	.label_30
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_41
	jmp	.label_46
.label_41:
	movabs	rdi, OFFSET FLAT:.str.11
	movabs	rsi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edx, 0x674
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_46:
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	lea	rdi, [rdi]
	call	hash_free
.label_30:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_status]]
	mov	rsp, rsp
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403300

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 1
	nop	
	je	.label_58
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_58:
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl decode_switches
	.type decode_switches, @function
decode_switches:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x280
	mov	dword ptr [rbp - 0x1b0], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a5], 0
	mov	byte ptr [byte ptr [rip + qmark_funny_chars]],  0
	mov	edi,  dword ptr [dword ptr [rip + ls_mode]]
	mov	eax, edi
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x264], edi
	mov	dword ptr [rbp - 0xb4], eax
	lea	rdi, [rdi]
	je	.label_206
	mov	rbp, rbp
	jmp	.label_226
.label_226:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x264]
	lea	rdi, [rdi]
	sub	eax, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x218], eax
	je	.label_229
	jmp	.label_235
.label_235:
	mov	eax, dword ptr [rbp - 0x264]
	sub	eax, 3
	mov	dword ptr [rbp - 0x17c], eax
	nop	
	je	.label_237
	lea	rsi, [rsi]
	jmp	.label_239
.label_229:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	jmp	.label_66
.label_237:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	call	set_quoting_style
	mov	rbp, rbp
	jmp	.label_66
.label_206:
	mov	edi, 1
	call	isatty
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_70
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, eax
	mov	esi, 3
	nop	
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	mov	rbp, rbp
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	jmp	.label_77
.label_70:
	mov	dword ptr [dword ptr [format]],  1
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
.label_77:
	jmp	.label_66
.label_239:
	lea	rdi, [rdi]
	call	abort
.label_66:
	mov	dword ptr [dword ptr [time_type]],  0
	mov	dword ptr [dword ptr [sort_type]],  0
	mov	byte ptr [byte ptr [sort_reverse]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [numeric_ids]],  0
	mov	byte ptr [byte ptr [print_block_size]],  0
	mov	rsp, rsp
	mov	dword ptr [dword ptr [indicator_style]],  0
	mov	byte ptr [byte ptr [print_inode]],  0
	mov	dword ptr [dword ptr [dereference]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [recursive]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [immediate_dirs]],  0
	mov	rbp, rbp
	mov	dword ptr [dword ptr [ignore_mode]],  0
	mov	qword ptr [word ptr [ignore_patterns]],  0
	nop	
	mov	qword ptr [word ptr [hide_patterns]],  0
	mov	byte ptr [byte ptr [print_scontext]],  0
	nop	
	call	getenv_quoting_style
	movabs	rdi, OFFSET FLAT:.str.63
	mov	qword ptr [word ptr [line_length]],  0x50
	nop	
	call	getenv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x228], rax
	cmp	qword ptr [rbp - 0x228], 0
	nop	
	je	.label_62
	mov	rax, qword ptr [rbp - 0x228]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_62
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rsp, rsp
	call	set_line_length
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_62
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	call	quote
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_62:
	lea	rsi, [rsi]
	mov	edi, 1
	mov	eax, 0x5413
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdx, [rbp - 0x210]
	mov	rsp, rsp
	mov	al, 0
	call	ioctl
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_148
	nop	
	xor	eax, eax
	movzx	ecx, word ptr [rbp - 0x20e]
	cmp	eax, ecx
	jge	.label_148
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbp - 0x20e]
	mov	ecx, eax
	mov	rbp, rbp
	movzx	eax, word ptr [rbp - 0x20e]
	nop	
	mov	edx, eax
	nop	
	cmp	rcx, rdx
	jne	.label_148
	lea	rdi, [rdi]
	movzx	eax, word ptr [rbp - 0x20e]
	nop	
	mov	ecx, eax
	mov	qword ptr [word ptr [line_length]],  rcx
.label_148:
	nop	
	movabs	rdi, OFFSET FLAT:.str.65
	nop	
	call	getenv
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [tabsize]],  8
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1d8], 0
	je	.label_168
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	lea	rsi, [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rbp - 0x1d8]
	nop	
	mov	qword ptr [rbp - 0x150], rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	xstrtoul
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_190
	cmp	qword ptr [rbp - 0x68], -1
	lea	rsi, [rsi]
	ja	.label_190
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [word ptr [tabsize]],  rax
	lea	rsi, [rsi]
	jmp	.label_193
.label_190:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.66
	call	gettext
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	qword ptr [rbp - 0x140], rax
	nop	
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_193:
	jmp	.label_168
.label_168:
	jmp	.label_187
.label_187:
	movabs	rdx, OFFSET FLAT:.str.67
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x130]
	mov	dword ptr [rbp - 0x130], 0xffffffff
	mov	edi, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	call	getopt_long
	mov	dword ptr [rbp - 0x80], eax
	cmp	dword ptr [rbp - 0x80], -1
	jne	.label_220
	jmp	.label_225
.label_220:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x170], eax
	mov	dword ptr [rbp - 0x194], ecx
	mov	rbp, rbp
	je	.label_227
	jmp	.label_164
.label_164:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0xffffff7e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_172
	mov	rsp, rsp
	jmp	.label_241
.label_241:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x31
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1dc], eax
	mov	rsp, rsp
	je	.label_242
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x41
	nop	
	mov	dword ptr [rbp - 0x114], eax
	mov	rbp, rbp
	je	.label_61
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x42
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18c], eax
	lea	rsi, [rsi]
	je	.label_68
	mov	rbp, rbp
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	eax, 0x43
	nop	
	mov	dword ptr [rbp - 0xf8], eax
	mov	rbp, rbp
	je	.label_76
	jmp	.label_79
.label_79:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x170]
	nop	
	sub	eax, 0x44
	nop	
	mov	dword ptr [rbp - 0x188], eax
	je	.label_82
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x46
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], eax
	mov	rbp, rbp
	je	.label_211
	lea	rsi, [rsi]
	jmp	.label_87
.label_87:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_89
	lea	rdi, [rdi]
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	eax, 0x48
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	je	.label_94
	lea	rdi, [rdi]
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0x170]
	nop	
	sub	eax, 0x49
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_98
	nop	
	jmp	.label_100
.label_100:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x170]
	nop	
	sub	eax, 0x4c
	nop	
	mov	dword ptr [rbp - 0x110], eax
	je	.label_171
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x220], eax
	je	.label_109
	jmp	.label_111
.label_111:
	nop	
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x51
	mov	dword ptr [rbp - 0x15c], eax
	mov	rbp, rbp
	je	.label_112
	lea	rsi, [rsi]
	jmp	.label_116
.label_116:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	je	.label_117
	lea	rdi, [rdi]
	jmp	.label_123
.label_123:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x234], eax
	je	.label_124
	jmp	.label_126
.label_126:
	nop	
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x178], eax
	mov	rbp, rbp
	je	.label_127
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	eax, 0x55
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_136
	lea	rdi, [rdi]
	jmp	.label_231
.label_231:
	nop	
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	je	.label_146
	lea	rsi, [rsi]
	jmp	.label_151
.label_151:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x1ec], eax
	lea	rdi, [rdi]
	je	.label_153
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_114
	mov	rsp, rsp
	jmp	.label_161
.label_161:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x154], eax
	lea	rsi, [rsi]
	je	.label_163
	lea	rdi, [rdi]
	jmp	.label_170
.label_170:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x270], eax
	je	.label_173
	lea	rsi, [rsi]
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x64
	nop	
	mov	dword ptr [rbp - 0x1ac], eax
	je	.label_182
	lea	rsi, [rsi]
	jmp	.label_185
.label_185:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x66
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	je	.label_186
	jmp	.label_191
.label_191:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	je	.label_102
	jmp	.label_194
.label_194:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x158], eax
	je	.label_196
	jmp	.label_199
.label_199:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x69
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_200
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x12c], eax
	je	.label_205
	mov	rsp, rsp
	jmp	.label_233
.label_233:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_212
	jmp	.label_216
.label_216:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x1a0], eax
	je	.label_218
	jmp	.label_221
.label_221:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_224
	jmp	.label_230
.label_230:
	mov	eax, dword ptr [rbp - 0x170]
	nop	
	sub	eax, 0x6f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x198], eax
	je	.label_232
	mov	rsp, rsp
	jmp	.label_236
.label_236:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	eax, 0x70
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x214], eax
	lea	rsi, [rsi]
	je	.label_238
	jmp	.label_243
.label_243:
	mov	eax, dword ptr [rbp - 0x170]
	nop	
	sub	eax, 0x71
	nop	
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_244
	jmp	.label_60
.label_60:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	eax, 0x72
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x120], eax
	je	.label_72
	mov	rbp, rbp
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0xd0], eax
	mov	rsp, rsp
	je	.label_71
	lea	rsi, [rsi]
	jmp	.label_75
.label_75:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x180], eax
	mov	rsp, rsp
	je	.label_135
	mov	rbp, rbp
	jmp	.label_177
.label_177:
	mov	eax, dword ptr [rbp - 0x170]
	nop	
	sub	eax, 0x75
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	je	.label_83
	mov	rsp, rsp
	jmp	.label_85
.label_85:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_217
	jmp	.label_88
.label_88:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x77
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x190], eax
	lea	rsi, [rsi]
	je	.label_90
	mov	rbp, rbp
	jmp	.label_93
.label_93:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_95
	jmp	.label_97
.label_97:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x80
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x268], eax
	nop	
	je	.label_183
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x81
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	je	.label_103
	jmp	.label_108
.label_108:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x82
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x118], eax
	lea	rdi, [rdi]
	je	.label_110
	mov	rbp, rbp
	jmp	.label_113
.label_113:
	nop	
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x83
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], eax
	mov	rbp, rbp
	je	.label_115
	mov	rsp, rsp
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x84
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c0], eax
	nop	
	je	.label_121
	lea	rsi, [rsi]
	jmp	.label_125
.label_125:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_145
	lea	rsi, [rsi]
	jmp	.label_132
.label_132:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_133
	jmp	.label_140
.label_140:
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_142
	jmp	.label_149
.label_149:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x88
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	je	.label_150
	jmp	.label_154
.label_154:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x89
	nop	
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	je	.label_156
	jmp	.label_160
.label_160:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x170]
	nop	
	sub	eax, 0x8a
	mov	dword ptr [rbp - 0x10c], eax
	je	.label_137
	lea	rsi, [rsi]
	jmp	.label_166
.label_166:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x8b
	mov	dword ptr [rbp - 0x144], eax
	je	.label_178
	jmp	.label_175
.label_175:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	eax, 0x8c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], eax
	mov	rsp, rsp
	je	.label_176
	lea	rsi, [rsi]
	jmp	.label_159
.label_159:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x8d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_73
	mov	rbp, rbp
	jmp	.label_189
.label_189:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x8e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	je	.label_104
	mov	rsp, rsp
	jmp	.label_195
.label_195:
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x8f
	mov	dword ptr [rbp - 0x84], eax
	nop	
	je	.label_197
	nop	
	jmp	.label_167
.label_167:
	nop	
	mov	eax, dword ptr [rbp - 0x170]
	sub	eax, 0x90
	nop	
	mov	dword ptr [rbp - 0x1b4], eax
	nop	
	je	.label_184
	jmp	.label_207
.label_114:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [ignore_mode]],  2
	mov	rbp, rbp
	jmp	.label_64
.label_163:
	xor	eax, eax
	mov	edi, eax
	mov	rbp, rbp
	mov	esi, 7
	mov	rbp, rbp
	call	set_quoting_style
	lea	rsi, [rsi]
	jmp	.label_64
.label_173:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [time_type]],  1
	jmp	.label_64
.label_182:
	mov	byte ptr [byte ptr [immediate_dirs]],  1
	jmp	.label_64
.label_186:
	mov	dword ptr [dword ptr [ignore_mode]],  2
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb5], 1
	cmp	dword ptr [dword ptr [format]],  0
	mov	rbp, rbp
	jne	.label_222
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	isatty
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	ecx, 2
	cmp	eax, 0
	mov	rsp, rsp
	cmovne	edi, ecx
	mov	dword ptr [dword ptr [format]],  edi
.label_222:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_block_size]],  0
	mov	byte ptr [byte ptr [print_with_color]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_hyperlink]],  0
	mov	rsp, rsp
	jmp	.label_64
.label_121:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [indicator_style]],  2
	jmp	.label_64
.label_102:
	mov	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_owner]],  0
	lea	rsi, [rsi]
	jmp	.label_64
.label_196:
	nop	
	mov	dword ptr [dword ptr [human_output_opts]],  0xb0
	mov	dword ptr [dword ptr [file_human_output_opts]],  0xb0
	nop	
	mov	qword ptr [word ptr [output_block_size]],  1
	mov	qword ptr [word ptr [file_output_block_size]],  1
	jmp	.label_64
.label_200:
	mov	byte ptr [byte ptr [print_inode]],  1
	jmp	.label_64
.label_205:
	mov	byte ptr [rbp - 0x1a5], 1
	mov	rsp, rsp
	jmp	.label_64
.label_212:
	mov	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	jmp	.label_64
.label_218:
	mov	dword ptr [dword ptr [format]],  4
	jmp	.label_64
.label_224:
	mov	byte ptr [byte ptr [numeric_ids]],  1
	nop	
	mov	dword ptr [dword ptr [format]],  0
	jmp	.label_64
.label_232:
	mov	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [print_group]],  0
	jmp	.label_64
.label_238:
	mov	dword ptr [dword ptr [indicator_style]],  1
	mov	rbp, rbp
	jmp	.label_64
.label_244:
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	mov	rbp, rbp
	jmp	.label_64
.label_72:
	mov	byte ptr [byte ptr [sort_reverse]],  1
	mov	rsp, rsp
	jmp	.label_64
.label_71:
	mov	byte ptr [byte ptr [print_block_size]],  1
	jmp	.label_64
.label_135:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [sort_type]],  4
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], 1
	mov	rbp, rbp
	jmp	.label_64
.label_83:
	mov	dword ptr [dword ptr [time_type]],  2
	jmp	.label_64
.label_217:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [sort_type]],  3
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb5], 1
	lea	rsi, [rsi]
	jmp	.label_64
.label_90:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_line_length
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_122
	nop	
	movabs	rdi, OFFSET FLAT:.str.69
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x260], rax
	mov	rbp, rbp
	call	quote
	lea	rsi, [rsi]
	mov	edi, 2
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	rcx, qword ptr [rbp - 0x260]
	mov	rsp, rsp
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_122:
	lea	rsi, [rsi]
	jmp	.label_64
.label_95:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [format]],  3
	nop	
	jmp	.label_64
.label_61:
	mov	dword ptr [dword ptr [ignore_mode]],  1
	mov	rbp, rbp
	jmp	.label_64
.label_68:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.70
	mov	rsp, rsp
	call	add_ignore_pattern
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.71
	call	add_ignore_pattern
	mov	rbp, rbp
	jmp	.label_64
.label_76:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [format]],  2
	jmp	.label_64
.label_82:
	nop	
	mov	byte ptr [byte ptr [dired]],  1
	mov	rbp, rbp
	jmp	.label_64
.label_211:
	mov	dword ptr [dword ptr [indicator_style]],  3
	mov	rsp, rsp
	jmp	.label_64
.label_89:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_group]],  0
	lea	rsi, [rsi]
	jmp	.label_64
.label_94:
	mov	dword ptr [dword ptr [dereference]],  3
	lea	rsi, [rsi]
	jmp	.label_64
.label_115:
	mov	dword ptr [dword ptr [dereference]],  4
	jmp	.label_64
.label_98:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_ignore_pattern
	lea	rdi, [rdi]
	jmp	.label_64
.label_171:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [dereference]],  5
	jmp	.label_64
.label_109:
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, eax
	xor	esi, esi
	call	set_quoting_style
	lea	rsi, [rsi]
	jmp	.label_64
.label_112:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, eax
	mov	esi, 5
	lea	rsi, [rsi]
	call	set_quoting_style
	mov	rbp, rbp
	jmp	.label_64
.label_117:
	mov	byte ptr [byte ptr [recursive]],  1
	lea	rdi, [rdi]
	jmp	.label_64
.label_124:
	mov	dword ptr [dword ptr [sort_type]],  2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb5], 1
	jmp	.label_64
.label_127:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.72
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	call	gettext
	nop	
	xor	esi, esi
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rcx, -1
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	r9d, 2
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x21c], r9d
	mov	r9, rax
	mov	dword ptr [rsp], 2
	nop	
	call	xnumtoumax
	mov	qword ptr [word ptr [tabsize]],  rax
	jmp	.label_64
.label_136:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	mov	byte ptr [rbp - 0xb5], 1
	mov	rsp, rsp
	jmp	.label_64
.label_146:
	mov	dword ptr [dword ptr [sort_type]],  1
	mov	byte ptr [rbp - 0xb5], 1
	mov	rbp, rbp
	jmp	.label_64
.label_242:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_245
	mov	dword ptr [dword ptr [format]],  1
.label_245:
	jmp	.label_64
.label_183:
	mov	byte ptr [byte ptr [print_author]],  1
	jmp	.label_64
.label_150:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	edi, eax
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rdi, qword ptr [rbp - 0x168]
	mov	qword ptr [rdi], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [hide_patterns]]
	mov	rdi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [word ptr [hide_patterns]],  rax
	mov	rbp, rbp
	jmp	.label_64
.label_104:
	movabs	rdi, OFFSET FLAT:.str.73
	nop	
	movabs	rdx, OFFSET FLAT:sort_args
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:sort_types
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + sort_types]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [sort_type]],  r10d
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb5], 1
	mov	rbp, rbp
	jmp	.label_64
.label_142:
	mov	byte ptr [byte ptr [directories_first]],  1
	mov	rbp, rbp
	jmp	.label_64
.label_197:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.74
	nop	
	movabs	rdx, OFFSET FLAT:time_args
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:time_types
	mov	rbp, rbp
	mov	ecx, 4
	mov	r8d, ecx
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
	mov	dword ptr [dword ptr [time_type]],  r10d
	jmp	.label_64
.label_145:
	movabs	rdi, OFFSET FLAT:.str.75
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:format_args
	movabs	rax, OFFSET FLAT:format_types
	lea	rdi, [rdi]
	mov	ecx, 4
	nop	
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + format_types]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [format]],  r10d
	lea	rdi, [rdi]
	jmp	.label_64
.label_133:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.76
	mov	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	call	bad_cast
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_64
.label_110:
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rsi, [rsi]
	je	.label_143
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.77
	movabs	rdx, OFFSET FLAT:when_args
	movabs	rax, OFFSET FLAT:when_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + when_types]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c4], r10d
	jmp	.label_130
.label_143:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c4], 1
.label_130:
	mov	al, 1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c4], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x269], al
	je	.label_169
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x1c4], 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b5], cl
	nop	
	jne	.label_208
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x1b5], cl
.label_208:
	mov	al, byte ptr [rbp - 0x1b5]
	mov	byte ptr [rbp - 0x269], al
.label_169:
	mov	al, byte ptr [rbp - 0x269]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [byte ptr [print_with_color]],  al
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	rsp, rsp
	je	.label_188
	mov	qword ptr [word ptr [tabsize]],  0
.label_188:
	nop	
	jmp	.label_64
.label_156:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rsi, [rsi]
	je	.label_198
	nop	
	movabs	rdi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:when_args
	movabs	rax, OFFSET FLAT:when_types
	lea	rdi, [rdi]
	mov	ecx, 4
	mov	r8d, ecx
	nop	
	mov	rsi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	call	__xargmatch_internal
	mov	rsp, rsp
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + when_types]]
	mov	dword ptr [rbp - 0x230], r10d
	jmp	.label_215
.label_198:
	mov	dword ptr [rbp - 0x230], 1
.label_215:
	mov	al, 1
	cmp	dword ptr [rbp - 0x230], 1
	mov	byte ptr [rbp - 0x171], al
	je	.label_219
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x230], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x131], cl
	jne	.label_228
	mov	edi, 1
	call	isatty
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x131], cl
.label_228:
	mov	al, byte ptr [rbp - 0x131]
	mov	byte ptr [rbp - 0x171], al
.label_219:
	mov	al, byte ptr [rbp - 0x171]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [print_hyperlink]],  al
	jmp	.label_64
.label_137:
	movabs	rdi, OFFSET FLAT:.str.79
	movabs	rdx, OFFSET FLAT:indicator_style_args
	nop	
	movabs	rax, OFFSET FLAT:indicator_style_types
	mov	ecx, 4
	mov	rbp, rbp
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + indicator_style_types]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [indicator_style]],  r10d
	jmp	.label_64
.label_178:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.80
	movabs	rdx, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	rbp, rbp
	mov	ecx, 4
	lea	rsi, [rsi]
	mov	r8d, ecx
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	call	__xargmatch_internal
	xor	r10d, r10d
	mov	rsp, rsp
	mov	edi, r10d
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	lea	rsi, [rsi]
	call	set_quoting_style
	jmp	.label_64
.label_184:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_64
.label_176:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
	jmp	.label_64
.label_103:
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	call	human_options
	mov	dword ptr [rbp - 0x22c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x22c], 0
	je	.label_203
	lea	rdi, [rdi]
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:long_options
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x130]
	mov	r8,  qword ptr [word ptr [optarg]]
	call	xstrtol_fatal
.label_203:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
	jmp	.label_64
.label_73:
	nop	
	mov	dword ptr [dword ptr [human_output_opts]],  0x90
	mov	dword ptr [dword ptr [file_human_output_opts]],  0x90
	mov	qword ptr [word ptr [output_block_size]],  1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [file_output_block_size]],  1
	mov	rbp, rbp
	jmp	.label_64
.label_153:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [print_scontext]],  1
	mov	rbp, rbp
	jmp	.label_64
.label_172:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_227:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdout]]
	nop	
	cmp	dword ptr [dword ptr [ls_mode]],  1
	mov	qword ptr [rbp - 0x100], rdi
	jne	.label_139
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.42
	mov	qword ptr [rbp - 0x1f8], rax
	lea	rdi, [rdi]
	jmp	.label_147
.label_139:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.44
	movabs	rcx, OFFSET FLAT:.str.43
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [ls_mode]],  2
	lea	rdi, [rdi]
	cmove	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x1f8], rax
.label_147:
	mov	rax, qword ptr [rbp - 0x1f8]
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.82
	movabs	r9, OFFSET FLAT:.str.83
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	nop	
	mov	rcx,  qword ptr [word ptr [Version]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x128], rsi
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	nop	
	mov	al, 0
	nop	
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_207:
	mov	rbp, rbp
	mov	edi, 2
	call	usage
.label_64:
	jmp	.label_187
.label_225:
	cmp	qword ptr [word ptr [output_block_size]],  0
	jne	.label_129
	movabs	rdi, OFFSET FLAT:.str.84
	lea	rsi, [rsi]
	call	getenv
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	qword ptr [rbp - 0x250], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x250]
	call	human_options
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x250], 0
	mov	dword ptr [rbp - 0x254], eax
	lea	rdi, [rdi]
	jne	.label_202
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	call	getenv
	nop	
	cmp	rax, 0
	je	.label_210
.label_202:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
.label_210:
	test	byte ptr [rbp - 0x1a5], 1
	je	.label_106
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	qword ptr [word ptr [output_block_size]],  0x400
.label_106:
	jmp	.label_129
.label_129:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, eax
	mov	eax, 3
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [line_length]]
	xor	edx, edx
	mov	rbp, rbp
	div	rcx
	nop	
	mov	qword ptr [word ptr [max_idx]],  rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [line_length]]
	mov	rbp, rbp
	xor	esi, esi
	mov	edx, esi
	nop	
	div	rcx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	setne	r8b
	nop	
	and	r8b, 1
	mov	rbp, rbp
	movzx	esi, r8b
	mov	rsp, rsp
	movsxd	rcx, esi
	lea	rsi, [rsi]
	add	rcx,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [word ptr [max_idx]],  rcx
	call	get_quoting_style
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	r8b, sil
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  4
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x201], r8b
	nop	
	je	.label_65
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x201], cl
	je	.label_65
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_78
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  0
	nop	
	mov	byte ptr [rbp - 0x201], cl
	jne	.label_65
.label_78:
	mov	al, 1
	cmp	dword ptr [rbp - 0x1e0], 1
	mov	byte ptr [rbp - 0x169], al
	lea	rdi, [rdi]
	je	.label_86
	mov	al, 1
	cmp	dword ptr [rbp - 0x1e0], 3
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x169], al
	je	.label_86
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1e0], 6
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x169], al
.label_86:
	mov	al, byte ptr [rbp - 0x169]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x201], al
.label_65:
	mov	al, byte ptr [rbp - 0x201]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [byte ptr [align_variable_outer_quotes]],  al
	call	clone_quoting_options
	mov	rbp, rbp
	mov	qword ptr [word ptr [filename_quoting_options]],  rax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1e0], 7
	lea	rsi, [rsi]
	jne	.label_99
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rsp, rsp
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	call	set_char_quoting
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe0], eax
.label_99:
	mov	eax, 2
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	lea	rsi, [rsi]
	ja	.label_138
	movabs	rax, OFFSET FLAT:.str.86
	mov	ecx,  dword ptr [dword ptr [indicator_style]]
	sub	ecx, 2
	lea	rdi, [rdi]
	mov	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	add	rax, rdx
	mov	qword ptr [rbp - 0x200], rax
.label_128:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_120
	nop	
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rax, qword ptr [rbp - 0x200]
	movsx	esi, byte ptr [rax]
	nop	
	call	set_char_quoting
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa8], eax
	mov	rax, qword ptr [rbp - 0x200]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x200], rax
	jmp	.label_128
.label_120:
	nop	
	jmp	.label_138
.label_138:
	xor	eax, eax
	nop	
	mov	edi, eax
	lea	rsi, [rsi]
	call	clone_quoting_options
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	rbp, rbp
	mov	qword ptr [word ptr [dirname_quoting_options]],  rax
	mov	rdi,  qword ptr [word ptr [dirname_quoting_options]]
	call	set_char_quoting
	test	byte ptr [byte ptr [dired]],  1
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_152
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_155
	test	byte ptr [byte ptr [print_hyperlink]],  1
	lea	rdi, [rdi]
	je	.label_152
.label_155:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [dired]],  0
.label_152:
	cmp	dword ptr [dword ptr [time_type]],  1
	je	.label_162
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [time_type]],  2
	jne	.label_165
.label_162:
	test	byte ptr [rbp - 0xb5], 1
	jne	.label_165
	cmp	dword ptr [dword ptr [format]],  0
	nop	
	je	.label_165
	mov	dword ptr [dword ptr [sort_type]],  4
.label_165:
	nop	
	cmp	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	jne	.label_180
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	jne	.label_63
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.87
	lea	rsi, [rsi]
	call	getenv
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_192
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	call	bad_cast
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_192:
	mov	rsp, rsp
	jmp	.label_63
.label_63:
	mov	rbp, rbp
	jmp	.label_201
.label_201:
	movabs	rsi, OFFSET FLAT:decode_switches.posix_prefix
	mov	eax, 6
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_209
	mov	edi, 2
	mov	rsp, rsp
	call	hard_locale
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_213
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0xc0], eax
	lea	rsi, [rsi]
	jmp	.label_214
.label_213:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 6
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_201
.label_209:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_223
	nop	
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strchr
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x240], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x240], 0
	lea	rdi, [rdi]
	jne	.label_234
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_240
.label_234:
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, 1
	mov	rdi, rax
	call	strchr
	cmp	rax, 0
	je	.label_246
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.89
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	call	quote
	mov	rsp, rsp
	mov	edi, 2
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_246:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x240], rcx
	mov	byte ptr [rax], 0
.label_240:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [long_time_format]],  rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x240]
	mov	qword ptr [word ptr [label_80]],  rax
	mov	rbp, rbp
	jmp	.label_81
.label_223:
	movabs	rsi, OFFSET FLAT:time_style_args
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:time_style_types
	mov	ecx, 4
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rdx, rax
	call	argmatch
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	cmp	qword ptr [rbp - 0xf0], 0
	jge	.label_91
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.90
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0xf0]
	nop	
	call	argmatch_invalid
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.91
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdx, OFFSET FLAT:time_style_args
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], rdx
	mov	dword ptr [rbp - 0xdc], eax
.label_118:
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	je	.label_144
	movabs	rsi, OFFSET FLAT:.str.92
	mov	rdi,  qword ptr [word ptr [stderr]]
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rcx, rax
	nop	
	add	rcx, 8
	nop	
	mov	qword ptr [rbp - 0x108], rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	al, 0
	nop	
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x244], eax
	jmp	.label_118
.label_144:
	movabs	rdi, OFFSET FLAT:.str.93
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	edi, 2
	mov	dword ptr [rbp - 0x19c], eax
	lea	rdi, [rdi]
	call	usage
.label_91:
	nop	
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx, rax
	sub	rcx, 3
	nop	
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1d0], rcx
	ja	.label_131
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_141]]
	nop	
	jmp	rcx
.label_2946:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.94
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_80]],  rax
	mov	qword ptr [word ptr [long_time_format]],  rax
	jmp	.label_131
.label_2947:
	movabs	rax, OFFSET FLAT:.str.95
	mov	qword ptr [word ptr [label_80]],  rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [long_time_format]],  rax
	nop	
	jmp	.label_131
.label_2948:
	movabs	rax, OFFSET FLAT:.str.97
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str.96
	mov	qword ptr [word ptr [long_time_format]],  rcx
	mov	qword ptr [word ptr [label_80]],  rax
	nop	
	jmp	.label_131
.label_2949:
	lea	rsi, [rsi]
	mov	edi, 2
	call	hard_locale
	test	al, 1
	nop	
	jne	.label_174
	mov	rsp, rsp
	jmp	.label_158
.label_174:
	mov	dword ptr [rbp - 0x88], 0
.label_105:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x88], 2
	jge	.label_181
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rsp, rsp
	mov	edx, 2
	nop	
	movsxd	rcx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [+ (rcx * 8) + long_time_format]]
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [+ (rcx * 8) + long_time_format]],  rax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, 1
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	jmp	.label_105
.label_181:
	lea	rsi, [rsi]
	jmp	.label_158
.label_158:
	jmp	.label_131
.label_131:
	nop	
	jmp	.label_81
.label_81:
	call	abformat_init
.label_180:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc0], eax
.label_214:
	mov	eax, dword ptr [rbp - 0xc0]
	add	rsp, 0x280
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl parse_ls_color
	.type parse_ls_color, @function
parse_ls_color:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.172
	call	getenv
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_265
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_247
.label_265:
	movabs	rdi, OFFSET FLAT:.str.173
	call	getenv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_252
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_257
.label_252:
	call	known_term_type
	test	al, 1
	jne	.label_257
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [print_with_color]],  0
.label_257:
	jmp	.label_251
.label_247:
	lea	rdi, [rbp - 0x23]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	eax, OFFSET FLAT:.str.174
	mov	esi, eax
	mov	rbp, rbp
	call	strcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [color_buf]],  rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	dword ptr [rbp - 0x60], 1
.label_253:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	dec	eax
	mov	ecx, eax
	sub	eax, 5
	mov	qword ptr [rbp - 0x68], rcx
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	ja	.label_256
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_259]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2867:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x58], ecx
	je	.label_262
	lea	rdi, [rdi]
	jmp	.label_266
.label_266:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x2a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	je	.label_268
	jmp	.label_249
.label_249:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jne	.label_250
	mov	rsp, rsp
	jmp	.label_255
.label_255:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_258
.label_268:
	mov	eax, 0x28
	mov	edi, eax
	nop	
	call	xmalloc
	nop	
	lea	rdi, [rbp - 0x50]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [word ptr [color_ext_list]],  rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	call	get_funky_string
	lea	rsi, [rsi]
	mov	edx, 6
	mov	rsp, rsp
	mov	r8d, 4
	test	al, 1
	lea	rdi, [rdi]
	cmovne	edx, r8d
	mov	dword ptr [rbp - 0x60], edx
	jmp	.label_258
.label_262:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], 5
	jmp	.label_263
.label_250:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x23], dl
	mov	dword ptr [rbp - 0x60], 2
.label_258:
	jmp	.label_248
	.section	.text
	.align	32
	#Procedure 0x4058c0

	.globl is_colored
	.type is_colored, @function
is_colored:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, 1
	movabs	rcx, OFFSET FLAT:color_indicator
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	edx, edi
	lea	rdi, [rdi]
	shl	rdx, 4
	mov	rsi, rcx
	mov	rbp, rbp
	add	rsi, rdx
	mov	rdx, qword ptr [rsi]
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	edx, edi
	shl	rdx, 4
	lea	rsi, [rsi]
	add	rcx, rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x21], al
	je	.label_279
	cmp	qword ptr [rbp - 0x10], 1
	mov	rbp, rbp
	jne	.label_280
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.45
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	mov	cl, 1
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_279
.label_280:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 2
	nop	
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jne	.label_281
	nop	
	movabs	rsi, OFFSET FLAT:.str.46
	lea	rsi, [rsi]
	mov	eax, 2
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_281:
	nop	
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x21], al
.label_279:
	mov	al, byte ptr [rbp - 0x21]
	nop	
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x30
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059e0

	.globl dev_ino_hash
	.type dev_ino_hash, @function
dev_ino_hash:
	nop
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a20

	.globl dev_ino_compare
	.type dev_ino_compare, @function
dev_ino_compare:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 1], cl
	nop	
	jne	.label_282
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], dl
.label_282:
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, 1
	test	al, 1
	nop	
	cmovne	ecx, edx
	cmp	ecx, 0
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ac0

	.globl dev_ino_free
	.type dev_ino_free, @function
dev_ino_free:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405af0

	.globl file_escape_init
	.type file_escape_init, @function
file_escape_init:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	dword ptr [rbp - 8], 0
.label_285:
	cmp	dword ptr [rbp - 8], 0x100
	jge	.label_284
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	c_isalnum
	lea	rsi, [rsi]
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	jne	.label_283
	mov	al, 1
	cmp	dword ptr [rbp - 8], 0x7e
	mov	byte ptr [rbp - 1], al
	je	.label_283
	nop	
	mov	al, 1
	cmp	dword ptr [rbp - 8], 0x2d
	mov	byte ptr [rbp - 1], al
	je	.label_283
	mov	al, 1
	cmp	dword ptr [rbp - 8], 0x2e
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	je	.label_283
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0x5f
	sete	al
	mov	byte ptr [rbp - 1], al
.label_283:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, dword ptr [rbp - 8]
	movsx	esi,  byte ptr [byte ptr [+ (rdx * 1) + RFC3986]]
	or	esi, ecx
	lea	rsi, [rsi]
	mov	al, sil
	mov	rsp, rsp
	mov	byte ptr [byte ptr [+ (rdx * 1) + RFC3986]],  al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	jmp	.label_285
.label_284:
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bc0

	.globl clear_files
	.type clear_files, @function
clear_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_287:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_286
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 8]
	call	free_ent
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_287
.label_286:
	mov	qword ptr [word ptr [cwd_n_used]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [cwd_some_quoted]],  0
	nop	
	mov	byte ptr [byte ptr [any_has_acl]],  0
	mov	dword ptr [dword ptr [inode_number_width]],  0
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [block_size_width]],  0
	mov	rsp, rsp
	mov	dword ptr [dword ptr [nlink_width]],  0
	mov	dword ptr [dword ptr [owner_width]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [group_width]],  0
	mov	dword ptr [dword ptr [author_width]],  0
	mov	rbp, rbp
	mov	dword ptr [dword ptr [scontext_width]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [major_device_number_width]],  0
	mov	dword ptr [dword ptr [minor_device_number_width]],  0
	mov	dword ptr [dword ptr [file_size_width]],  0
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cd0

	.globl gobble_file
	.type gobble_file, @function
gobble_file:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x6d0
	mov	al, cl
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x410], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c4], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3b8], rdx
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3a5], al
	mov	qword ptr [rbp - 0x2f0], r8
	mov	qword ptr [rbp - 0x388], 0
	test	byte ptr [rbp - 0x3a5], 1
	mov	rbp, rbp
	je	.label_332
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x3b8], 0
	mov	rbp, rbp
	jne	.label_346
.label_332:
	mov	rsp, rsp
	jmp	.label_349
.label_346:
	movabs	rdi, OFFSET FLAT:.str.216
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0xc2f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gobble_file
	call	__assert_fail
.label_349:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	cmp	rax,  qword ptr [word ptr [cwd_n_alloc]]
	nop	
	jne	.label_355
	mov	rsp, rsp
	mov	eax, 0x190
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [cwd_file]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [cwd_n_alloc]]
	mov	rdi, rcx
	mov	rsp, rsp
	call	xnrealloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [cwd_file]],  rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [cwd_n_alloc]]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [word ptr [cwd_n_alloc]],  rax
.label_355:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 0xc8
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	nop	
	imul	rcx, rcx, 0xc8
	lea	rsi, [rsi]
	add	rcx,  qword ptr [word ptr [cwd_file]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x438], rcx
	mov	rcx, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memset
	mov	rcx, qword ptr [rbp - 0x3b8]
	mov	rdx, qword ptr [rbp - 0x438]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c4]
	mov	rcx, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0xa8], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x438]
	mov	dword ptr [rcx + 0xc4], 0xffffffff
	mov	rsp, rsp
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	mov	rbp, rbp
	jne	.label_296
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	je	.label_296
	nop	
	mov	rdi, qword ptr [rbp - 0x410]
	call	needs_quoting
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	mov	dword ptr [rdi + 0xc4], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x438]
	lea	rsi, [rsi]
	cmp	dword ptr [rdi + 0xc4], 0
	nop	
	je	.label_348
	mov	byte ptr [byte ptr [cwd_some_quoted]],  1
.label_348:
	mov	rbp, rbp
	jmp	.label_296
.label_296:
	test	byte ptr [rbp - 0x3a5], 1
	jne	.label_306
	test	byte ptr [byte ptr [print_hyperlink]],  1
	lea	rsi, [rsi]
	jne	.label_306
	test	byte ptr [byte ptr [format_needs_stat]],  1
	nop	
	jne	.label_306
	cmp	dword ptr [rbp - 0x3c4], 3
	lea	rdi, [rdi]
	jne	.label_339
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_339
	mov	rbp, rbp
	mov	edi, 0x13
	mov	rsp, rsp
	call	is_colored
	test	al, 1
	jne	.label_306
	nop	
	mov	edi, 0x12
	lea	rsi, [rsi]
	call	is_colored
	test	al, 1
	jne	.label_306
	mov	edi, 0x14
	mov	rbp, rbp
	call	is_colored
	test	al, 1
	mov	rbp, rbp
	jne	.label_306
.label_339:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_inode]],  1
	lea	rsi, [rsi]
	jne	.label_353
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_325
.label_353:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c4], 6
	mov	rsp, rsp
	je	.label_356
	cmp	dword ptr [rbp - 0x3c4], 0
	jne	.label_325
.label_356:
	cmp	dword ptr [dword ptr [dereference]],  5
	lea	rdi, [rdi]
	je	.label_306
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_306
	mov	rsp, rsp
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	lea	rdi, [rdi]
	jne	.label_306
.label_325:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_365
	nop	
	cmp	qword ptr [rbp - 0x3b8], 0
	lea	rdi, [rdi]
	je	.label_306
.label_365:
	mov	rbp, rbp
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_300
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c4], 0
	lea	rsi, [rsi]
	je	.label_306
	test	byte ptr [rbp - 0x3a5], 1
	jne	.label_306
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c4], 5
	jne	.label_300
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [indicator_style]],  3
	je	.label_306
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_300
	nop	
	mov	edi, 0xe
	mov	rsp, rsp
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_306
	lea	rsi, [rsi]
	mov	edi, 0x10
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_306
	mov	edi, 0x11
	call	is_colored
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_306
	nop	
	mov	edi, 0x15
	mov	rbp, rbp
	call	is_colored
	nop	
	test	al, 1
	jne	.label_306
	jmp	.label_300
.label_306:
	mov	rax, qword ptr [rbp - 0x410]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	je	.label_330
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2f0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_342
.label_330:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x410]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3f8], rax
	jmp	.label_336
.label_342:
	mov	rdi, qword ptr [rbp - 0x410]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	call	strlen
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rax, [rdi + rax + 0x11]
	mov	rbp, rbp
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	mov	rbp, rbp
	sub	rcx, rax
	nop	
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x3f8], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x3f8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x410]
	call	attach
.label_336:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	lea	rdi, [rdi]
	je	.label_288
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x3f8]
	call	canonicalize_filename_mode
	mov	rdi, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x438]
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_360
	movabs	rdi, OFFSET FLAT:.str.207
	mov	al, byte ptr [rbp - 0x3a5]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdx, qword ptr [rbp - 0x3f8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 9]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edi, cl
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	call	file_failure
.label_360:
	nop	
	jmp	.label_288
.label_288:
	mov	eax,  dword ptr [dword ptr [rip + dereference]]
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -3
	sub	ecx, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	mov	dword ptr [rbp - 0x3ac], ecx
	jb	.label_290
	jmp	.label_301
.label_301:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 5
	nop	
	mov	dword ptr [rbp - 0x2e4], eax
	jne	.label_304
	jmp	.label_308
.label_308:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x3f8]
	mov	rax, qword ptr [rbp - 0x438]
	add	rax, 0x18
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rsp, rsp
	call	stat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2b4], eax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x439], 1
	mov	rsp, rsp
	jmp	.label_315
.label_290:
	test	byte ptr [rbp - 0x3a5], 1
	mov	rsp, rsp
	je	.label_320
	mov	rdi, qword ptr [rbp - 0x3f8]
	nop	
	mov	rax, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	add	rax, 0x18
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	call	stat
	nop	
	mov	dword ptr [rbp - 0x2b4], eax
	mov	byte ptr [rbp - 0x439], 1
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [dereference]],  3
	lea	rdi, [rdi]
	jne	.label_329
	lea	rdi, [rdi]
	jmp	.label_315
.label_329:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2b4], 0
	jge	.label_352
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 2
	mov	rsp, rsp
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3e4], edx
	lea	rsi, [rsi]
	jmp	.label_341
.label_352:
	mov	rax, qword ptr [rbp - 0x438]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	lea	rdi, [rdi]
	sete	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	nop	
	and	dl, 1
	mov	rsp, rsp
	movzx	ecx, dl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3e4], ecx
.label_341:
	mov	eax, dword ptr [rbp - 0x3e4]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	nop	
	jne	.label_292
	jmp	.label_315
.label_292:
	jmp	.label_320
.label_320:
	jmp	.label_304
.label_304:
	nop	
	mov	rdi, qword ptr [rbp - 0x3f8]
	mov	rax, qword ptr [rbp - 0x438]
	add	rax, 0x18
	lea	rdi, [rdi]
	mov	rsi, rax
	call	__lstat
	mov	dword ptr [rbp - 0x2b4], eax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x439], 0
.label_315:
	cmp	dword ptr [rbp - 0x2b4], 0
	nop	
	je	.label_363
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.217
	nop	
	mov	al, byte ptr [rbp - 0x3a5]
	mov	byte ptr [rbp - 0x429], al
	lea	rsi, [rsi]
	call	gettext
	mov	rdx, qword ptr [rbp - 0x3f8]
	mov	cl, byte ptr [rbp - 0x429]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	movzx	edi, cl
	mov	rsi, rax
	nop	
	call	file_failure
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3a5], 1
	mov	rbp, rbp
	je	.label_289
	mov	qword ptr [rbp - 0x400], 0
	jmp	.label_295
.label_289:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x410]
	lea	rsi, [rsi]
	call	xstrdup
	nop	
	mov	rdi, qword ptr [rbp - 0x438]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	qword ptr [rbp - 0x400], 0
	nop	
	jmp	.label_295
.label_363:
	nop	
	mov	rax, qword ptr [rbp - 0x438]
	nop	
	mov	byte ptr [rax + 0xb8], 1
	cmp	dword ptr [rbp - 0x3c4], 5
	je	.label_293
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x438]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_321
.label_293:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_321
	mov	edi, 0x15
	mov	rbp, rbp
	call	is_colored
	test	al, 1
	jne	.label_331
	jmp	.label_321
.label_331:
	mov	rdi, qword ptr [rbp - 0x3f8]
	mov	rsi, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	call	has_capability_cache
	mov	rsi, qword ptr [rbp - 0x438]
	and	al, 1
	mov	byte ptr [rsi + 0xc0], al
.label_321:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_340
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_scontext]],  1
	lea	rsi, [rsi]
	je	.label_323
.label_340:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2dd], 0
	nop	
	mov	rdi, qword ptr [rbp - 0x3f8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x438]
	mov	al, byte ptr [rbp - 0x439]
	nop	
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	call	getfilecon_cache
	nop	
	mov	dword ptr [rbp - 0x3c8], eax
	cmp	dword ptr [rbp - 0x3c8], 0
	setl	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	dword ptr [rbp - 0x2b4], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2b4], 0
	jne	.label_351
	nop	
	call	is_smack_enabled
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_358
	jmp	.label_361
.label_358:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x438]
	mov	rsi, qword ptr [rax + 0xb0]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.218
	mov	edi, ecx
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
	lea	rsi, [rsi]
	jmp	.label_364
.label_361:
	mov	rax, qword ptr [rbp - 0x438]
	mov	rsi, qword ptr [rax + 0xb0]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.219
	mov	rbp, rbp
	mov	edi, ecx
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	sete	dl
	lea	rsi, [rsi]
	xor	dl, 0xff
	lea	rdi, [rdi]
	and	dl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], dl
.label_364:
	jmp	.label_318
.label_351:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:UNKNOWN_SECURITY_CONTEXT
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x438]
	nop	
	mov	qword ptr [rcx + 0xb0], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	is_ENOTSUP
	test	al, 1
	mov	rsp, rsp
	jne	.label_311
	call	__errno_location
	cmp	dword ptr [rax], 0x3d
	jne	.label_314
.label_311:
	mov	dword ptr [rbp - 0x2b4], 0
.label_314:
	jmp	.label_318
.label_318:
	cmp	dword ptr [rbp - 0x2b4], 0
	jne	.label_319
	cmp	dword ptr [dword ptr [format]],  0
	mov	rbp, rbp
	jne	.label_319
	mov	rdi, qword ptr [rbp - 0x3f8]
	mov	rsi, qword ptr [rbp - 0x438]
	mov	rsp, rsp
	call	file_has_acl_cache
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x41c], eax
	cmp	dword ptr [rbp - 0x41c], 0
	mov	rbp, rbp
	setl	dl
	and	dl, 1
	nop	
	movzx	eax, dl
	mov	dword ptr [rbp - 0x2b4], eax
	cmp	ecx, dword ptr [rbp - 0x41c]
	setl	dl
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2dd], dl
.label_319:
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_333
	mov	rsp, rsp
	test	byte ptr [rbp - 0x2dd], 1
	lea	rdi, [rdi]
	jne	.label_333
	nop	
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x3a4], eax
	jmp	.label_359
.label_333:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	nop	
	mov	byte ptr [rbp - 0x2d1], cl
	nop	
	je	.label_344
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x2dd]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x2d1], al
.label_344:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x2d1]
	mov	ecx, 2
	lea	rsi, [rsi]
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x3a4], ecx
.label_359:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3a4]
	mov	rcx, qword ptr [rbp - 0x438]
	mov	dword ptr [rcx + 0xbc], eax
	mov	rcx, qword ptr [rbp - 0x438]
	cmp	dword ptr [rcx + 0xbc], 0
	setne	dl
	nop	
	and	dl, 1
	movzx	eax, dl
	mov	rsp, rsp
	mov	dl,  byte ptr [byte ptr [any_has_acl]]
	and	dl, 1
	movzx	esi, dl
	nop	
	or	esi, eax
	mov	rsp, rsp
	cmp	esi, 0
	setne	dl
	and	dl, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [any_has_acl]],  dl
	cmp	dword ptr [rbp - 0x2b4], 0
	je	.label_354
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x3f8]
	mov	dword ptr [rbp - 0x418], ecx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rbp - 0x418]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_354:
	mov	rsp, rsp
	jmp	.label_323
.label_323:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x438]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	lea	rsi, [rsi]
	jne	.label_299
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_309
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	lea	rsi, [rsi]
	je	.label_299
.label_309:
	mov	rdi, qword ptr [rbp - 0x3f8]
	nop	
	mov	rsi, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x3a5]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	call	get_link_name
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x3f8]
	mov	rsi, qword ptr [rbp - 0x438]
	mov	rsi, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	call	make_link_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x428], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x428], 0
	nop	
	je	.label_327
	mov	rax, qword ptr [rbp - 0x438]
	nop	
	cmp	dword ptr [rax + 0xc4], 0
	jne	.label_327
	mov	rax, qword ptr [rbp - 0x438]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	needs_quoting
	nop	
	test	al, 1
	jne	.label_338
	mov	rbp, rbp
	jmp	.label_327
.label_338:
	mov	rax, qword ptr [rbp - 0x438]
	mov	rsp, rsp
	mov	dword ptr [rax + 0xc4], 0xffffffff
.label_327:
	cmp	qword ptr [rbp - 0x428], 0
	lea	rdi, [rdi]
	je	.label_326
	mov	rsp, rsp
	mov	eax, 2
	nop	
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	mov	rsp, rsp
	jbe	.label_343
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	je	.label_326
.label_343:
	lea	rsi, [rbp - 0x380]
	mov	rdi, qword ptr [rbp - 0x428]
	mov	rbp, rbp
	call	stat
	cmp	eax, 0
	jne	.label_326
	nop	
	mov	rax, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb9], 1
	mov	ecx, dword ptr [rbp - 0x368]
	mov	rax, qword ptr [rbp - 0x438]
	mov	dword ptr [rax + 0xac], ecx
.label_326:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x428]
	nop	
	call	free
.label_299:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x438]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	nop	
	jne	.label_362
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x438]
	mov	dword ptr [rax + 0xa8], 6
	mov	rsp, rsp
	jmp	.label_316
.label_362:
	mov	rax, qword ptr [rbp - 0x438]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0x4000
	lea	rsi, [rsi]
	jne	.label_367
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3a5], 1
	je	.label_291
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [immediate_dirs]],  1
	lea	rdi, [rdi]
	jne	.label_291
	mov	rax, qword ptr [rbp - 0x438]
	mov	dword ptr [rax + 0xa8], 9
	jmp	.label_303
.label_291:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x438]
	mov	dword ptr [rax + 0xa8], 3
.label_303:
	mov	rbp, rbp
	jmp	.label_313
.label_367:
	mov	rax, qword ptr [rbp - 0x438]
	mov	dword ptr [rax + 0xa8], 5
.label_313:
	nop	
	jmp	.label_316
.label_316:
	mov	rax, qword ptr [rbp - 0x438]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x388], rax
	cmp	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	je	.label_317
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_324
.label_317:
	mov	eax, 0x200
	nop	
	mov	ecx, eax
	lea	rsi, [rbp - 0x2b0]
	mov	rdi, qword ptr [rbp - 0x388]
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	nop	
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	rbp, rbp
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x3ec], eax
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	cmp	eax, dword ptr [rbp - 0x3ec]
	mov	rbp, rbp
	jge	.label_322
	mov	eax, dword ptr [rbp - 0x3ec]
	mov	dword ptr [dword ptr [block_size_width]],  eax
.label_322:
	lea	rdi, [rdi]
	jmp	.label_324
.label_324:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_298
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_owner]],  1
	je	.label_335
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x3bc], eax
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [owner_width]]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x3bc]
	mov	rsp, rsp
	jge	.label_350
	nop	
	mov	eax, dword ptr [rbp - 0x3bc]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [owner_width]],  eax
.label_350:
	jmp	.label_335
.label_335:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_357
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x438]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x38]
	call	format_group_width
	mov	dword ptr [rbp - 0x3e8], eax
	mov	eax,  dword ptr [dword ptr [group_width]]
	cmp	eax, dword ptr [rbp - 0x3e8]
	mov	rbp, rbp
	jge	.label_369
	mov	eax, dword ptr [rbp - 0x3e8]
	mov	dword ptr [dword ptr [group_width]],  eax
.label_369:
	mov	rsp, rsp
	jmp	.label_357
.label_357:
	test	byte ptr [byte ptr [print_author]],  1
	lea	rsi, [rsi]
	je	.label_297
	mov	rax, qword ptr [rbp - 0x438]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x10], eax
	nop	
	mov	eax,  dword ptr [dword ptr [author_width]]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x10]
	jge	.label_370
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [dword ptr [author_width]],  eax
.label_370:
	jmp	.label_297
.label_297:
	lea	rdi, [rdi]
	jmp	.label_298
.label_298:
	test	byte ptr [byte ptr [print_scontext]],  1
	mov	rsp, rsp
	je	.label_302
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x438]
	nop	
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2d8], ecx
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [scontext_width]]
	cmp	ecx, dword ptr [rbp - 0x2d8]
	mov	rbp, rbp
	jge	.label_312
	mov	eax, dword ptr [rbp - 0x2d8]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [scontext_width]],  eax
.label_312:
	mov	rbp, rbp
	jmp	.label_302
.label_302:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_305
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x2d0]
	mov	rax, qword ptr [rbp - 0x438]
	mov	rdi, qword ptr [rax + 0x28]
	mov	rbp, rbp
	call	umaxtostr
	mov	rdi, rax
	nop	
	call	strlen
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x414], ecx
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x414]
	jge	.label_307
	mov	eax, dword ptr [rbp - 0x414]
	mov	dword ptr [dword ptr [nlink_width]],  eax
.label_307:
	mov	rax, qword ptr [rbp - 0x438]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0x2000
	je	.label_368
	mov	rax, qword ptr [rbp - 0x438]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0x6000
	lea	rsi, [rsi]
	jne	.label_345
.label_368:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x438]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x40]
	call	gnu_dev_major
	lea	rsi, [rbp - 0x3e0]
	lea	rdi, [rdi]
	mov	eax, eax
	mov	edi, eax
	mov	rbp, rbp
	call	umaxtostr
	mov	rdi, rax
	mov	rbp, rbp
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x2dc], ecx
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x2dc]
	mov	rsp, rsp
	jge	.label_334
	nop	
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [major_device_number_width]],  eax
.label_334:
	mov	rax, qword ptr [rbp - 0x438]
	mov	rdi, qword ptr [rax + 0x40]
	call	gnu_dev_minor
	lea	rsi, [rbp - 0x3e0]
	mov	rbp, rbp
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x2dc], ecx
	mov	ecx,  dword ptr [dword ptr [minor_device_number_width]]
	cmp	ecx, dword ptr [rbp - 0x2dc]
	nop	
	jge	.label_366
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [minor_device_number_width]],  eax
.label_366:
	mov	eax,  dword ptr [dword ptr [major_device_number_width]]
	mov	rsp, rsp
	add	eax, 2
	lea	rdi, [rdi]
	add	eax,  dword ptr [dword ptr [minor_device_number_width]]
	mov	dword ptr [rbp - 0x2dc], eax
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x2dc]
	mov	rbp, rbp
	jge	.label_294
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_294:
	mov	rsp, rsp
	jmp	.label_310
.label_345:
	nop	
	mov	rax, qword ptr [rbp - 0x438]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsp, rsp
	call	unsigned_file_size
	nop	
	mov	ecx, 1
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x6d0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x408], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x408]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	call	human_readable
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x20], eax
	nop	
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	jge	.label_328
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_328:
	lea	rdi, [rdi]
	jmp	.label_310
.label_310:
	mov	rsp, rsp
	jmp	.label_305
.label_305:
	jmp	.label_300
.label_300:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_337
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x3a0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x438]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c0], ecx
	mov	ecx,  dword ptr [dword ptr [inode_number_width]]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x3c0]
	jge	.label_347
	mov	eax, dword ptr [rbp - 0x3c0]
	nop	
	mov	dword ptr [dword ptr [inode_number_width]],  eax
.label_347:
	lea	rdi, [rdi]
	jmp	.label_337
.label_337:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x410]
	lea	rsi, [rsi]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x438]
	mov	qword ptr [rdi], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	rax, qword ptr [rbp - 0x388]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x400], rax
.label_295:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x400]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fc0

	.globl queue_directory
	.type queue_directory, @function
queue_directory:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	al, dl
	mov	edx, 0x20
	lea	rdi, [rdi]
	mov	ecx, edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	je	.label_371
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_373
.label_371:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_374
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	xstrdup
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_372
.label_374:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 9]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x10], dl
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [word ptr [pending_dirs]],  rax
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070e0

	.globl sort_files
	.type sort_files, @function
sort_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rax,  qword ptr [word ptr [sorted_file_alloc]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	rdx,  qword ptr [word ptr [cwd_n_used]]
	shr	rdx, 1
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_375
	mov	rax,  qword ptr [word ptr [sorted_file]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	ecx, 0x18
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [cwd_n_used]]
	call	xnmalloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [sorted_file]],  rax
	imul	rax,  qword ptr [word ptr [cwd_n_used]],  3
	mov	qword ptr [word ptr [sorted_file_alloc]],  rax
.label_375:
	nop	
	call	initialize_ordering_vector
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [sort_type]],  -1
	jne	.label_376
	lea	rsi, [rsi]
	jmp	.label_381
.label_376:
	movabs	rdi, OFFSET FLAT:failed_strcoll
	lea	rsi, [rsi]
	call	_setjmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_379
	mov	byte ptr [rbp - 1], 0
	jmp	.label_383
.label_379:
	nop	
	mov	byte ptr [rbp - 1], 1
	cmp	dword ptr [dword ptr [sort_type]],  3
	mov	rbp, rbp
	je	.label_377
	lea	rdi, [rdi]
	jmp	.label_380
.label_377:
	movabs	rdi, OFFSET FLAT:.str.222
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0xeea
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.sort_files
	lea	rsi, [rsi]
	call	__assert_fail
.label_380:
	lea	rsi, [rsi]
	call	initialize_ordering_vector
.label_383:
	mov	rdi,  qword ptr [word ptr [sorted_file]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [cwd_n_used]]
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [directories_first]]
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [sort_reverse]]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	r8d, ecx
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	r9d, ecx
	mov	ecx,  dword ptr [dword ptr [sort_type]]
	cmp	dword ptr [dword ptr [sort_type]],  4
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x10], r9
	mov	dword ptr [rbp - 0x14], ecx
	jne	.label_382
	mov	eax,  dword ptr [dword ptr [time_type]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	nop	
	jmp	.label_378
.label_382:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 8], eax
	nop	
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 8]
	movabs	rcx, OFFSET FLAT:sort_functions
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, eax
	nop	
	mov	eax, edx
	mov	esi, eax
	shl	rsi, 6
	mov	rsp, rsp
	add	rcx, rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rsi, 5
	lea	rsi, [rsi]
	add	rcx, rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	shl	rsi, 4
	lea	rsi, [rsi]
	add	rcx, rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rcx + rsi*8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	mpsort
.label_381:
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407310

	.globl extract_dirs_from_files
	.type extract_dirs_from_files, @function
extract_dirs_from_files:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	al, sil
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_387
	nop	
	cmp	qword ptr [word ptr [active_dir_set]],  0
	mov	rbp, rbp
	je	.label_387
	xor	eax, eax
	mov	edi, eax
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	call	queue_directory
.label_387:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x38], rax
.label_389:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	je	.label_385
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	is_directory
	test	al, 1
	jne	.label_386
	mov	rbp, rbp
	jmp	.label_393
.label_386:
	test	byte ptr [rbp - 0x19], 1
	je	.label_394
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	call	basename_is_dot_or_dotdot
	nop	
	test	al, 1
	jne	.label_393
.label_394:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_384
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_388
.label_384:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 0x39]
	and	cl, 1
	movzx	edx, cl
	call	queue_directory
	mov	rbp, rbp
	jmp	.label_390
.label_388:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	file_name_concat
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rbp - 0x39]
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	edx, r8b
	nop	
	call	queue_directory
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
.label_390:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	dword ptr [rax + 0xa8], 9
	lea	rdi, [rdi]
	jne	.label_391
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	free_ent
.label_391:
	jmp	.label_393
.label_393:
	lea	rsi, [rsi]
	jmp	.label_389
.label_385:
	mov	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_392:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	rbp, rbp
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xa8], 9
	mov	rbp, rbp
	setne	sil
	and	sil, 1
	mov	rsp, rsp
	movzx	edi, sil
	mov	rbp, rbp
	movsxd	rax, edi
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_392
.label_395:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075a0

	.globl print_current_files
	.type print_current_files, @function
print_current_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax,  dword ptr [dword ptr [rip + format]]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	sub	rdx, 4
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	ja	.label_396
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_397]]
	mov	rsp, rsp
	jmp	rcx
.label_2964:
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_404:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_402
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	print_file_name_and_frills
	mov	edi, 0xa
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_404
.label_402:
	mov	rbp, rbp
	jmp	.label_396
.label_2965:
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_400
	mov	edi, 0x20
	nop	
	call	print_with_separator
	jmp	.label_403
.label_400:
	lea	rsi, [rsi]
	call	print_many_per_line
.label_403:
	lea	rsi, [rsi]
	jmp	.label_396
.label_2966:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_398
	mov	edi, 0x20
	call	print_with_separator
	lea	rsi, [rsi]
	jmp	.label_401
.label_398:
	call	print_horizontal
.label_401:
	lea	rdi, [rdi]
	jmp	.label_396
.label_2967:
	mov	edi, 0x2c
	call	print_with_separator
	jmp	.label_396
.label_2963:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
.label_405:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_399
	nop	
	call	set_normal_color
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rdi, rax
	call	print_long_format
	mov	rsp, rsp
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_405
.label_399:
	jmp	.label_396
.label_396:
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407770

	.globl dev_ino_pop
	.type dev_ino_pop, @function
dev_ino_pop:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	nop	
	mov	dword ptr [rbp - 4], 0x10
	movsxd	rcx, dword ptr [rbp - 4]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x38]
	nop	
	ja	.label_407
	lea	rsi, [rsi]
	jmp	.label_409
.label_407:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.47
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.6
	nop	
	mov	edx, 0x403
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.dev_ino_pop
	nop	
	call	__assert_fail
.label_409:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	neg	eax
	mov	rcx,  qword ptr [word ptr [rip + label_408]]
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	qword ptr [word ptr [rip + label_408]],  rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rcx + rdx]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x30], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407850

	.globl free_pending_ent
	.type free_pending_ent, @function
free_pending_ent:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078a0

	.globl print_dir
	.type print_dir, @function
print_dir:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x3f0
	lea	rsi, [rsi]
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x398], rsi
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x22], al
	nop	
	mov	qword ptr [rbp - 0x388], 0
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	opendir
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xc0], 0
	jne	.label_447
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.203
	nop	
	mov	al, byte ptr [rbp - 0x22]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	and	cl, 1
	nop	
	movzx	edi, cl
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	call	file_failure
	lea	rsi, [rsi]
	jmp	.label_417
.label_447:
	cmp	qword ptr [word ptr [active_dir_set]],  0
	lea	rsi, [rsi]
	je	.label_444
	mov	rdi, qword ptr [rbp - 0xc0]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38c], eax
	cmp	ecx, dword ptr [rbp - 0x38c]
	lea	rsi, [rsi]
	jg	.label_434
	mov	rbp, rbp
	lea	rsi, [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0x38c]
	call	__fstat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3bc], eax
	jmp	.label_449
.label_434:
	mov	rbp, rbp
	lea	rsi, [rbp - 0xb8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	mov	dword ptr [rbp - 0x3bc], eax
.label_449:
	mov	eax, dword ptr [rbp - 0x3bc]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_442
	nop	
	movabs	rdi, OFFSET FLAT:.str.204
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x22]
	nop	
	mov	byte ptr [rbp - 0x3bd], al
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rbp - 0x3bd]
	mov	rsp, rsp
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	mov	rbp, rbp
	call	file_failure
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc0]
	call	closedir
	mov	dword ptr [rbp - 0x36c], eax
	lea	rdi, [rdi]
	jmp	.label_417
.label_442:
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	visit_dir
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_425
	nop	
	jmp	.label_430
.label_425:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.205
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x380], rax
	call	quotearg_n_style_colon
	nop	
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x380]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	closedir
	mov	edi, 1
	mov	dword ptr [rbp - 0x3d0], eax
	call	set_exit_status
	mov	rsp, rsp
	jmp	.label_417
.label_430:
	nop	
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	dev_ino_push
.label_444:
	mov	rsp, rsp
	call	clear_files
	test	byte ptr [byte ptr [recursive]],  1
	nop	
	jne	.label_445
	nop	
	test	byte ptr [byte ptr [print_dir_name]],  1
	lea	rsi, [rsi]
	je	.label_448
.label_445:
	test	byte ptr [byte ptr [print_dir.first]],  1
	lea	rdi, [rdi]
	jne	.label_411
	lea	rdi, [rdi]
	jmp	.label_416
.label_416:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	nop	
	mov	dword ptr [rbp - 0x374], eax
	jmp	.label_411
.label_411:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_dir.first]],  0
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [dired]],  1
	mov	rbp, rbp
	je	.label_429
	jmp	.label_436
.label_436:
	nop	
	movabs	rdi, OFFSET FLAT:.str.206
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc8], eax
	lea	rsi, [rsi]
	jmp	.label_429
.label_429:
	jmp	.label_428
.label_428:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3b8], 0
	test	byte ptr [byte ptr [print_hyperlink]],  1
	nop	
	je	.label_424
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	canonicalize_filename_mode
	nop	
	mov	qword ptr [rbp - 0x3b8], rax
	cmp	qword ptr [rbp - 0x3b8], 0
	mov	rbp, rbp
	jne	.label_446
	movabs	rdi, OFFSET FLAT:.str.207
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x22]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc1], al
	mov	rbp, rbp
	call	gettext
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	cl, byte ptr [rbp - 0xc1]
	and	cl, 1
	nop	
	movzx	edi, cl
	mov	rsp, rsp
	mov	rsi, rax
	call	file_failure
.label_446:
	nop	
	jmp	.label_424
.label_424:
	cmp	qword ptr [rbp - 0x398], 0
	je	.label_426
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x398]
	mov	qword ptr [rbp - 0x3d8], rax
	mov	rbp, rbp
	jmp	.label_412
.label_426:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x3d8], rax
.label_412:
	mov	rax, qword ptr [rbp - 0x3d8]
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	nop	
	xor	ecx, ecx
	nop	
	mov	r8d, 1
	movabs	r9, OFFSET FLAT:subdired_obstack
	mov	rsi,  qword ptr [word ptr [dirname_quoting_options]]
	mov	rdi, qword ptr [rbp - 0x3b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rsp], rax
	call	quote_name
	mov	rdi, qword ptr [rbp - 0x3b8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3a0], rax
	lea	rdi, [rdi]
	call	free
	movabs	rdi, OFFSET FLAT:.str.208
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	nop	
	add	rsi, 2
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3ac], eax
	mov	rbp, rbp
	jmp	.label_448
.label_448:
	jmp	.label_410
.label_410:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	readdir
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	je	.label_427
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x13
	mov	rdi, rax
	mov	rbp, rbp
	call	file_ignored
	test	al, 1
	jne	.label_435
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3b0], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x12]
	dec	ecx
	mov	eax, ecx
	sub	ecx, 0xd
	mov	qword ptr [rbp - 0x3c8], rax
	mov	dword ptr [rbp - 0x3e0], ecx
	lea	rdi, [rdi]
	ja	.label_413
	mov	rax, qword ptr [rbp - 0x3c8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_440]]
	jmp	rcx
.label_2842:
	mov	dword ptr [rbp - 0x3b0], 4
	mov	rbp, rbp
	jmp	.label_413
.label_2840:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3b0], 2
	jmp	.label_413
.label_2841:
	mov	dword ptr [rbp - 0x3b0], 3
	jmp	.label_413
.label_2839:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3b0], 1
	jmp	.label_413
.label_2844:
	mov	dword ptr [rbp - 0x3b0], 6
	nop	
	jmp	.label_413
.label_2843:
	nop	
	mov	dword ptr [rbp - 0x3b0], 5
	jmp	.label_413
.label_2845:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3b0], 7
	jmp	.label_413
.label_2846:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3b0], 8
.label_413:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 8]
	nop	
	add	rsi, 0x13
	mov	eax, dword ptr [rbp - 0x3b0]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rdi, rsi
	mov	esi, eax
	lea	rdi, [rdi]
	call	gobble_file
	nop	
	add	rax, qword ptr [rbp - 0x388]
	mov	qword ptr [rbp - 0x388], rax
	nop	
	cmp	dword ptr [dword ptr [format]],  1
	jne	.label_415
	cmp	dword ptr [dword ptr [sort_type]],  -1
	nop	
	jne	.label_415
	test	byte ptr [byte ptr [print_block_size]],  1
	nop	
	jne	.label_415
	test	byte ptr [byte ptr [recursive]],  1
	mov	rsp, rsp
	jne	.label_415
	call	sort_files
	mov	rsp, rsp
	call	print_current_files
	call	clear_files
.label_415:
	jmp	.label_435
.label_435:
	jmp	.label_423
.label_427:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_443
	movabs	rdi, OFFSET FLAT:.str.209
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x3d9], al
	call	gettext
	mov	rdx, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rbp - 0x3d9]
	and	cl, 1
	movzx	edi, cl
	mov	rbp, rbp
	mov	rsi, rax
	call	file_failure
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	nop	
	je	.label_438
	jmp	.label_418
.label_438:
	mov	rbp, rbp
	jmp	.label_420
.label_443:
	jmp	.label_418
.label_420:
	mov	rsp, rsp
	jmp	.label_423
.label_423:
	call	process_signals
	mov	rsp, rsp
	jmp	.label_410
.label_418:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	closedir
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_433
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.210
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x3be], al
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rbp - 0x3be]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	mov	rbp, rbp
	call	file_failure
.label_433:
	nop	
	call	sort_files
	test	byte ptr [byte ptr [recursive]],  1
	lea	rdi, [rdi]
	je	.label_432
	nop	
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	extract_dirs_from_files
.label_432:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  0
	lea	rdi, [rdi]
	je	.label_419
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [print_block_size]],  1
	mov	rbp, rbp
	je	.label_441
.label_419:
	lea	rdi, [rdi]
	jmp	.label_439
.label_439:
	nop	
	test	byte ptr [byte ptr [dired]],  1
	mov	rbp, rbp
	je	.label_421
	jmp	.label_414
.label_414:
	movabs	rdi, OFFSET FLAT:.str.206
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_421
.label_421:
	lea	rdi, [rdi]
	jmp	.label_431
.label_431:
	movabs	rdi, OFFSET FLAT:.str.211
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x3a8], rax
	mov	rdi, qword ptr [rbp - 0x3a8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x3a8]
	mov	dword ptr [rbp - 0x364], eax
	lea	rdi, [rdi]
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [dired_pos]],  rax
	mov	rsp, rsp
	jmp	.label_437
.label_437:
	mov	edi, 0x20
	mov	rsp, rsp
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x368], eax
	mov	eax, 0x200
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rbp - 0x360]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x388]
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	mov	rsp, rsp
	call	human_readable
	mov	qword ptr [rbp - 0x3a8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x3a8]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x3a8]
	mov	dword ptr [rbp - 0x370], eax
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [dired_pos]],  rax
	nop	
	jmp	.label_422
.label_422:
	mov	edi, 0xa
	mov	rbp, rbp
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x3cc], eax
	nop	
	jmp	.label_441
.label_441:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	nop	
	je	.label_417
	lea	rsi, [rsi]
	call	print_current_files
.label_417:
	lea	rdi, [rdi]
	add	rsp, 0x3f0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081d0

	.globl restore_default_color
	.type restore_default_color, @function
restore_default_color:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:color_indicator
	lea	rsi, [rsi]
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	mov	rbp, rbp
	add	rdi, 0x10
	call	put_indicator
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408210

	.globl signal_restore
	.type signal_restore, @function
signal_restore:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	xor	edi, edi
	call	signal_setup
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408230

	.globl dired_dump_obstack
	.type dired_dump_obstack, @function
dired_dump_obstack:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsi, qword ptr [rbp - 0x50]
	shr	rsi, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jbe	.label_452
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jne	.label_453
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	cl, byte ptr [rax + 0x50]
	mov	rsp, rsp
	and	cl, 0xfd
	nop	
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_453:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	mov	rsp, rsp
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	sub	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jbe	.label_454
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x18], rax
.label_454:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
.label_450:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x48]
	nop	
	jae	.label_451
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.62
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + rax*8]
	nop	
	mov	al, 0
	nop	
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_450
.label_451:
	lea	rsi, [rsi]
	mov	edi, 0xa
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
.label_452:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408440

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edi
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	je	.label_458
	jmp	.label_459
.label_459:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.12
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], eax
	mov	rbp, rbp
	jmp	.label_456
.label_458:
	nop	
	movabs	rdi, OFFSET FLAT:.str.13
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	call	emit_mandatory_arg_note
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.15
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.18
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x70], eax
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x60], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.26
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.29
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.30
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.31
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.32
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.36
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.37
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.38
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x78], eax
	nop	
	call	emit_size_note
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.40
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.41
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [ls_mode]],  1
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	jne	.label_455
	nop	
	movabs	rax, OFFSET FLAT:.str.42
	nop	
	mov	qword ptr [rbp - 0x58], rax
	nop	
	jmp	.label_457
.label_455:
	movabs	rax, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.43
	cmp	dword ptr [dword ptr [ls_mode]],  2
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
.label_457:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_456:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x408a10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.231
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a60

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.232
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408aa0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
.label_464:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rdx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x35], cl
	je	.label_460
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x35], cl
.label_460:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_461
	jmp	.label_463
.label_461:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_464
.label_463:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_465
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_465:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.241
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x24], eax
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_462
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.243
	lea	rdi, [rdi]
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_462
	movabs	rdi, OFFSET FLAT:.str.244
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
.label_462:
	movabs	rdi, OFFSET FLAT:.str.245
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.246
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	movabs	rsi, OFFSET FLAT:.str.247
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c90

	.globl put_indicator
	.type put_indicator, @function
put_indicator:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	test	byte ptr [byte ptr [used_color]],  1
	jne	.label_466
	lea	rsi, [rsi]
	mov	edi, 1
	mov	byte ptr [byte ptr [used_color]],  1
	lea	rsi, [rsi]
	call	tcgetpgrp
	xor	edi, edi
	cmp	edi, eax
	mov	rsp, rsp
	jg	.label_467
	call	signal_init
.label_467:
	mov	rsp, rsp
	call	prep_non_filename_text
.label_466:
	mov	rbp, rbp
	mov	eax, 1
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d20

	.globl signal_init
	.type signal_init, @function
signal_init:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	edi, 1
	call	signal_setup
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d40

	.globl prep_non_filename_text
	.type prep_non_filename_text, @function
prep_non_filename_text:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [label_468]],  0
	je	.label_469
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:color_indicator
	mov	rbp, rbp
	add	rax, 0x20
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	put_indicator
	lea	rsi, [rsi]
	jmp	.label_470
.label_469:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x30
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_470:
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408dc0

	.globl signal_setup
	.type signal_setup, @function
signal_setup:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xc0
	mov	al, dil
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xad], al
	test	byte ptr [rbp - 0xad], 1
	je	.label_471
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
	nop	
	mov	dword ptr [rbp - 0xb4], eax
.label_474:
	cmp	dword ptr [rbp - 0xc], 0xc
	nop	
	jge	.label_476
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rdx, [rbp - 0xa8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	lea	rsi, [rsi]
	call	sigaction
	mov	edi, 1
	mov	rsp, rsp
	mov	ecx, edi
	cmp	qword ptr [rbp - 0xa8], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], eax
	nop	
	je	.label_483
	movabs	rdi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	mov	rbp, rbp
	call	sigaddset
	mov	dword ptr [rbp - 8], eax
.label_483:
	jmp	.label_472
.label_472:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_474
.label_476:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:caught_signals
	mov	ecx, 0x80
	mov	edx, ecx
	mov	rsp, rsp
	lea	rsi, [rbp - 0xa8]
	lea	rsi, [rsi]
	add	rsi, 8
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rbp - 0x20], 0x10000000
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0
.label_480:
	cmp	dword ptr [rbp - 0xc], 0xc
	nop	
	jge	.label_478
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	lea	rdi, [rdi]
	call	sigismember
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_482
	mov	rsp, rsp
	lea	rsi, [rbp - 0xa8]
	xor	eax, eax
	mov	edx, eax
	nop	
	movabs	rcx, OFFSET FLAT:sighandler
	movabs	rdi, OFFSET FLAT:stophandler
	movsxd	r8, dword ptr [rbp - 0xc]
	cmp	dword ptr [dword ptr [+ (r8 * 4) + signal_setup.sig]],  0x14
	nop	
	cmove	rcx, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	nop	
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	lea	rsi, [rsi]
	call	sigaction
	mov	dword ptr [rbp - 4], eax
.label_482:
	lea	rdi, [rdi]
	jmp	.label_479
.label_479:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_480
.label_478:
	jmp	.label_475
.label_471:
	mov	dword ptr [rbp - 0xc], 0
.label_481:
	cmp	dword ptr [rbp - 0xc], 0xc
	jge	.label_477
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	lea	rdi, [rdi]
	call	sigismember
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_473
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	movsxd	rcx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	signal
	mov	qword ptr [rbp - 0xc0], rax
.label_473:
	jmp	.label_484
.label_484:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	jmp	.label_481
.label_477:
	nop	
	jmp	.label_475
.label_475:
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409030

	.globl stophandler
	.type stophandler, @function
stophandler:
	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	nop	
	cmp	edi, 0
	nop	
	jne	.label_485
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	add	eax, 1
	mov	dword ptr [dword ptr [stop_signal_count]],  eax
.label_485:
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409070

	.globl sighandler
	.type sighandler, @function
sighandler:
	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	cmp	edi, 0
	lea	rdi, [rdi]
	jne	.label_486
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [interrupt_signal]],  eax
.label_486:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090a0

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.98
	lea	rdi, [rdi]
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_488
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	lea	rsi, [rsi]
	mov	ecx, 4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	nop	
	call	argmatch
	xor	r8d, r8d
	nop	
	mov	r9d, eax
	nop	
	mov	dword ptr [rbp - 4], r9d
	cmp	r8d, dword ptr [rbp - 4]
	jg	.label_489
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [+ (rcx * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_487
.label_489:
	nop	
	movabs	rdi, OFFSET FLAT:.str.99
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	call	quote
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
.label_487:
	lea	rsi, [rsi]
	jmp	.label_488
.label_488:
	mov	rbp, rbp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409190

	.globl set_line_length
	.type set_line_length, @function
set_line_length:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	r8d, eax
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	lea	rcx, [rbp - 0x18]
	mov	edx, eax
	nop	
	call	xstrtoumax
	mov	edx, eax
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	nop	
	je	.label_491
	lea	rsi, [rsi]
	jmp	.label_496
.label_496:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_495
	lea	rdi, [rdi]
	jmp	.label_493
.label_491:
	cmp	qword ptr [rbp - 0x18], -1
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_490
.label_494:
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_490
.label_490:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [line_length]],  rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_492
.label_495:
	mov	qword ptr [word ptr [line_length]],  -1
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_492
.label_493:
	mov	byte ptr [rbp - 1], 0
.label_492:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409280

	.globl add_ignore_pattern
	.type add_ignore_pattern, @function
add_ignore_pattern:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	nop	
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [ignore_patterns]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [ignore_patterns]],  rax
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092f0

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409310

	.globl abformat_init
	.type abformat_init, @function
abformat_init:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x660
	mov	dword ptr [rbp - 0xc], 0
.label_500:
	cmp	dword ptr [rbp - 0xc], 2
	lea	rsi, [rsi]
	jge	.label_505
	movsxd	rax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	nop	
	call	first_percent_b
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp + rdi*8 - 0x20], rax
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_500
.label_505:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_506
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jne	.label_506
	jmp	.label_499
.label_506:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x650]
	call	abmon_init
	test	al, 1
	jne	.label_503
	jmp	.label_499
.label_503:
	mov	dword ptr [rbp - 0x48], 0
.label_501:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x48], 2
	jge	.label_508
	movsxd	rax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	dword ptr [rbp - 0x654], 0
.label_498:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x654], 0xc
	jge	.label_504
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:abformat
	nop	
	movsxd	rcx, dword ptr [rbp - 0x654]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x48]
	imul	rdx, rdx, 0x600
	mov	rsp, rsp
	add	rax, rdx
	lea	rsi, [rsi]
	shl	rcx, 7
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rbp + rax*8 - 0x20], 0
	jne	.label_507
	mov	eax, 0x80
	mov	rsp, rsp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	snprintf
	nop	
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_511
.label_507:
	movsxd	rax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + rax*8 - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	cmp	rax, 0x80
	jle	.label_510
	jmp	.label_499
.label_510:
	mov	eax, 0x80
	mov	esi, eax
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.171
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp + rdi*8 - 0x20]
	mov	r8, qword ptr [rbp - 0x30]
	nop	
	sub	rdi, r8
	nop	
	mov	eax, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsxd	r9, dword ptr [rbp - 0x654]
	mov	rsp, rsp
	shl	r9, 7
	mov	rsp, rsp
	add	rcx, r9
	movsxd	r9, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp + r9*8 - 0x20]
	add	r9, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	ecx, eax
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], r9
	nop	
	mov	r9, r10
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 8]
	mov	qword ptr [rsp], r11
	mov	al, 0
	nop	
	call	snprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_511:
	nop	
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 0x34]
	nop	
	jg	.label_512
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 0x80
	lea	rdi, [rdi]
	jl	.label_509
.label_512:
	mov	rsp, rsp
	jmp	.label_499
.label_509:
	mov	rbp, rbp
	jmp	.label_502
.label_502:
	mov	eax, dword ptr [rbp - 0x654]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x654], eax
	jmp	.label_498
.label_504:
	lea	rsi, [rsi]
	jmp	.label_497
.label_497:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x48], eax
	nop	
	jmp	.label_501
.label_508:
	mov	byte ptr [byte ptr [use_abformat]],  1
.label_499:
	lea	rsi, [rsi]
	add	rsp, 0x660
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095c0

	.globl first_percent_b
	.type first_percent_b, @function
first_percent_b:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
.label_513:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_515
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x25
	lea	rdi, [rdi]
	jne	.label_520
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], edx
	je	.label_517
	mov	rsp, rsp
	jmp	.label_516
.label_516:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_521
	mov	rbp, rbp
	jmp	.label_514
.label_514:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_518
.label_517:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_521:
	jmp	.label_520
.label_520:
	mov	rsp, rsp
	jmp	.label_519
.label_519:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_513
.label_515:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_518:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409690

	.globl abmon_init
	.type abmon_init, @function
abmon_init:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], 0xc
.label_528:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 0
.label_530:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0xc
	jge	.label_525
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	ecx, 0x2000e
	mov	edi, ecx
	call	rpl_nl_langinfo
	mov	esi, 0x25
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	strchr
	cmp	rax, 0
	je	.label_523
	mov	byte ptr [rbp - 0x21], 0
	mov	rsp, rsp
	jmp	.label_522
.label_523:
	mov	rax, qword ptr [rbp - 0x58]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	nop	
	movzx	edi, al
	lea	rdi, [rdi]
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	edi, 0x80
	lea	rdi, [rdi]
	mov	edx, edi
	mov	rsp, rsp
	lea	rcx, [rbp - 0x10]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	movzx	r9d, word ptr [rax + r8*2]
	nop	
	and	r9d, 0x800
	cmp	r9d, 0
	lea	rdi, [rdi]
	mov	r9d, edi
	nop	
	cmovne	r9d, esi
	mov	dword ptr [rbp - 0x28], r9d
	mov	rax, qword ptr [rbp - 0x58]
	movsxd	r10, dword ptr [rbp - 0x3c]
	shl	r10, 7
	add	r10, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x4c], edi
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r10
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x4c]
	call	mbsalign
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0x80
	lea	rsi, [rsi]
	jb	.label_529
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 0
	lea	rsi, [rsi]
	jmp	.label_522
.label_529:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jbe	.label_524
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_526
.label_524:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_526:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_530
.label_525:
	jmp	.label_527
.label_527:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	ja	.label_528
	mov	byte ptr [rbp - 0x21], 1
.label_522:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409860

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409880

	.globl known_term_type
	.type known_term_type, @function
known_term_type:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.178
	call	getenv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_536
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	nop	
	jne	.label_535
.label_536:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_531
.label_535:
	movabs	rax, OFFSET FLAT:G_line
	mov	qword ptr [rbp - 0x18], rax
.label_537:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:G_line
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rcx, rax
	mov	rbp, rbp
	cmp	rcx, 0x10c4
	jae	.label_532
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.179
	mov	rbp, rbp
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jne	.label_534
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 5
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	fnmatch
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_533
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_531
.label_533:
	lea	rsi, [rsi]
	jmp	.label_534
.label_534:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_537
.label_532:
	mov	byte ptr [rbp - 1], 0
.label_531:
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099b0

	.globl get_funky_string
	.type get_funky_string, @function
get_funky_string:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	al, dl
	mov	qword ptr [rbp - 0x90], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x65], al
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 9], 0
	mov	dword ptr [rbp - 0x9c], 0
.label_559:
	nop	
	cmp	dword ptr [rbp - 0x9c], 5
	jae	.label_546
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x98], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rbp, rbp
	ja	.label_548
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_556]]
	jmp	rcx
.label_2974:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	nop	
	test	ecx, ecx
	mov	dword ptr [rbp - 0x78], ecx
	je	.label_561
	mov	rbp, rbp
	jmp	.label_566
.label_566:
	nop	
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 0x3a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	je	.label_561
	mov	rsp, rsp
	jmp	.label_568
.label_568:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 0x3d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	je	.label_576
	lea	rsi, [rsi]
	jmp	.label_580
.label_580:
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	sub	eax, 0x5c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	je	.label_582
	nop	
	jmp	.label_587
.label_587:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 0x5e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	je	.label_588
	jmp	.label_560
.label_561:
	mov	dword ptr [rbp - 0x9c], 5
	jmp	.label_539
.label_582:
	mov	dword ptr [rbp - 0x9c], 1
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_539
.label_588:
	nop	
	mov	dword ptr [rbp - 0x9c], 4
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	jmp	.label_539
.label_576:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x65], 1
	mov	rbp, rbp
	je	.label_569
	mov	dword ptr [rbp - 0x9c], 5
	jmp	.label_539
.label_569:
	jmp	.label_560
.label_560:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
	mov	dl, byte ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_539:
	nop	
	jmp	.label_542
.label_2975:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], ecx
	mov	rbp, rbp
	je	.label_578
	jmp	.label_585
.label_585:
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, -0x30
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0xa4], eax
	lea	rsi, [rsi]
	jb	.label_586
	jmp	.label_591
.label_591:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x3f
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_593
	mov	rsp, rsp
	jmp	.label_541
.label_541:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x10], eax
	je	.label_545
	jmp	.label_549
.label_549:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x5f
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
	lea	rsi, [rsi]
	je	.label_550
	jmp	.label_554
.label_554:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x74], eax
	lea	rdi, [rdi]
	je	.label_558
	nop	
	jmp	.label_562
.label_562:
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_564
	lea	rdi, [rdi]
	jmp	.label_570
.label_570:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	je	.label_572
	jmp	.label_575
.label_575:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x66
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_577
	jmp	.label_581
.label_581:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x60], eax
	lea	rsi, [rsi]
	je	.label_584
	jmp	.label_589
.label_589:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x28], eax
	nop	
	je	.label_590
	nop	
	jmp	.label_594
.label_594:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0x34], eax
	je	.label_595
	jmp	.label_543
.label_543:
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_553
	mov	rsp, rsp
	jmp	.label_547
.label_547:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x78
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	je	.label_545
	lea	rdi, [rdi]
	jmp	.label_583
.label_586:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], 2
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	mov	rbp, rbp
	mov	dl, cl
	nop	
	mov	byte ptr [rbp - 9], dl
	jmp	.label_540
.label_545:
	mov	dword ptr [rbp - 0x9c], 3
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_540
.label_558:
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 7
	jmp	.label_540
.label_564:
	mov	byte ptr [rbp - 9], 8
	mov	rsp, rsp
	jmp	.label_540
.label_572:
	mov	byte ptr [rbp - 9], 0x1b
	jmp	.label_540
.label_577:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0xc
	mov	rbp, rbp
	jmp	.label_540
.label_584:
	mov	byte ptr [rbp - 9], 0xa
	jmp	.label_540
.label_590:
	mov	byte ptr [rbp - 9], 0xd
	jmp	.label_540
.label_595:
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], 9
	mov	rbp, rbp
	jmp	.label_540
.label_553:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0xb
	mov	rsp, rsp
	jmp	.label_540
.label_593:
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 0x7f
	lea	rsi, [rsi]
	jmp	.label_540
.label_550:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0x20
	lea	rdi, [rdi]
	jmp	.label_540
.label_578:
	mov	dword ptr [rbp - 0x9c], 6
	jmp	.label_540
.label_583:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 9], cl
.label_540:
	cmp	dword ptr [rbp - 0x9c], 1
	mov	rsp, rsp
	jne	.label_552
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, rcx
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, 1
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x9c], 0
.label_552:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_542
.label_2976:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jl	.label_571
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	lea	rsi, [rsi]
	jle	.label_574
.label_571:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x58], rdx
	mov	rsp, rsp
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x9c], 0
	lea	rdi, [rdi]
	jmp	.label_579
.label_574:
	mov	rsp, rsp
	movsx	eax, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	shl	eax, 3
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	qword ptr [rbp - 0x70], rdx
	nop	
	movsx	esi, byte ptr [rcx]
	lea	rsi, [rsi]
	sub	esi, 0x30
	nop	
	add	eax, esi
	mov	dil, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], dil
.label_579:
	jmp	.label_542
.label_2977:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	add	edx, -0x30
	sub	edx, 0xa
	mov	dword ptr [rbp - 0x20], ecx
	mov	dword ptr [rbp - 0x2c], edx
	jb	.label_551
	mov	rbp, rbp
	jmp	.label_555
.label_555:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x30], eax
	jb	.label_592
	nop	
	jmp	.label_563
.label_563:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, -0x61
	lea	rsi, [rsi]
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_565
	mov	rbp, rbp
	jmp	.label_573
.label_551:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 9]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	qword ptr [rbp - 0x70], rdx
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rcx]
	mov	rbp, rbp
	sub	esi, 0x30
	lea	rdi, [rdi]
	add	eax, esi
	nop	
	mov	dil, al
	mov	byte ptr [rbp - 9], dil
	jmp	.label_538
.label_565:
	movsx	eax, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	shl	eax, 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x70], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x61
	add	eax, esi
	add	eax, 0xa
	mov	dil, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], dil
	jmp	.label_538
.label_592:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 9]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x70], rdx
	mov	rsp, rsp
	movsx	esi, byte ptr [rcx]
	nop	
	sub	esi, 0x41
	add	eax, esi
	lea	rsi, [rsi]
	add	eax, 0xa
	nop	
	mov	dil, al
	mov	byte ptr [rbp - 9], dil
	lea	rsi, [rsi]
	jmp	.label_538
.label_573:
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x58], rdx
	mov	byte ptr [rcx], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x9c], 0
.label_538:
	lea	rdi, [rdi]
	jmp	.label_542
.label_2978:
	mov	dword ptr [rbp - 0x9c], 0
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x40
	jl	.label_567
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7e
	jg	.label_567
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
	movsx	edx, byte ptr [rax]
	lea	rdi, [rdi]
	and	edx, 0x1f
	mov	sil, dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], sil
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	jmp	.label_557
.label_567:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x3f
	mov	rbp, rbp
	jne	.label_596
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x7f
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	jmp	.label_544
.label_596:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], 6
.label_544:
	jmp	.label_557
.label_557:
	jmp	.label_542
.label_548:
	call	abort
.label_542:
	nop	
	jmp	.label_559
.label_546:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c], 6
	setne	dl
	lea	rsi, [rsi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
	lea	rdi, [rdi]
	add	rsp, 0xc0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1c0

	.globl file_failure
	.type file_failure, @function
file_failure:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	al, dil
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	call	__errno_location
	mov	edi, 4
	nop	
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x18], esi
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	al, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	and	al, 1
	movzx	edi, al
	call	set_exit_status
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a250

	.globl visit_dir
	.type visit_dir, @function
visit_dir:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rdi, rcx
	nop	
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_insert
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_598
	lea	rdi, [rdi]
	call	xalloc_die
.label_598:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], cl
	nop	
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	je	.label_597
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_597:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a320

	.globl set_exit_status
	.type set_exit_status, @function
set_exit_status:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	je	.label_599
	mov	dword ptr [dword ptr [exit_status]],  2
	jmp	.label_601
.label_599:
	cmp	dword ptr [dword ptr [exit_status]],  0
	lea	rdi, [rdi]
	jne	.label_600
	mov	dword ptr [dword ptr [exit_status]],  1
.label_600:
	mov	rsp, rsp
	jmp	.label_601
.label_601:
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a380

	.globl dev_ino_push
	.type dev_ino_push, @function
dev_ino_push:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0x10
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 0x24]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	sub	rax, rsi
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_602
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x20]
	call	_obstack_newchunk
.label_602:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax,  qword ptr [word ptr [label_408]]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -0x10
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	nop	
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a460

	.globl quote_name
	.type quote_name, @function
quote_name:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x20f0
	lea	rdi, [rdi]
	mov	al, r8b
	mov	r10, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	lea	r11, [rbp - 0x20d0]
	mov	rbp, rbp
	mov	r8d, 0x2000
	nop	
	mov	ebx, r8d
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r14d, r8d
	lea	rsi, [rsi]
	lea	r15, [rbp - 0x2069]
	lea	r12, [rbp - 0x2060]
	mov	qword ptr [rbp - 0x20f0], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20e0], rsi
	mov	dword ptr [rbp - 0x20b4], edx
	mov	qword ptr [rbp - 0x20a0], rcx
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x20e1], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20b0], r9
	mov	qword ptr [rbp - 0x2090], r10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20d0], r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20f0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20e0]
	mov	r8d, dword ptr [rbp - 0x20b4]
	mov	rsp, rsp
	mov	rdi, r11
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	r9, r14
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	nop	
	call	quote_name_buf
	mov	qword ptr [rbp - 0x48], rax
	test	byte ptr [rbp - 0x2069], 1
	nop	
	je	.label_610
	test	byte ptr [rbp - 0x20e1], 1
	lea	rsi, [rsi]
	je	.label_610
	jmp	.label_613
.label_613:
	nop	
	mov	edi, 0x20
	lea	rsi, [rsi]
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x20f4], eax
	mov	rsp, rsp
	jmp	.label_610
.label_610:
	cmp	qword ptr [rbp - 0x20a0], 0
	mov	rsp, rsp
	je	.label_603
	mov	rdi, qword ptr [rbp - 0x20a0]
	mov	rsp, rsp
	call	print_color_indicator
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x20a5], al
.label_603:
	mov	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2090], 0
	je	.label_620
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	mov	rsp, rsp
	je	.label_612
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	mov	rsp, rsp
	je	.label_612
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2069], 1
	jne	.label_612
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20d0]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
.label_612:
	mov	rbp, rbp
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [hostname]]
	call	file_escape
	mov	esi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x2090]
	call	file_escape
	movabs	rdi, OFFSET FLAT:.str.212
	movabs	rcx, OFFSET FLAT:.str_4
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0x2078], rax
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x2078]
	movsx	r8d, byte ptr [rax]
	cmp	r8d, 0x2f
	lea	rdi, [rdi]
	cmove	rcx, rdx
	mov	rax, qword ptr [rbp - 0x2078]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	call	free
	mov	rdi, qword ptr [rbp - 0x2078]
	lea	rsi, [rsi]
	call	free
.label_620:
	cmp	qword ptr [rbp - 0x20b0], 0
	lea	rdi, [rdi]
	je	.label_608
	jmp	.label_615
.label_615:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_616
	mov	rax, qword ptr [rbp - 0x20b0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20c8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], 8
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20c8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2098], rax
	nop	
	mov	rax, qword ptr [rbp - 0x2098]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x2098]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20d8], rax
	mov	rax, qword ptr [rbp - 0x20d8]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	jae	.label_619
	mov	rdi, qword ptr [rbp - 0x20c8]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	_obstack_newchunk
.label_619:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:dired_pos
	mov	rcx, qword ptr [rbp - 0x20c8]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20c8]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_616:
	jmp	.label_607
.label_607:
	jmp	.label_608
.label_608:
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x20d0]
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0x21]
	and	dl, 1
	nop	
	movzx	eax, dl
	lea	rdi, [rdi]
	movsxd	rdi, eax
	mov	rsp, rsp
	add	rcx, rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	dl, byte ptr [rbp - 0x21]
	and	dl, 1
	nop	
	movzx	eax, dl
	shl	eax, 1
	lea	rsi, [rsi]
	movsxd	r8, eax
	sub	rdi, r8
	nop	
	mov	r8,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	rdi, rcx
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, r8
	call	fwrite_unlocked
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx,  qword ptr [word ptr [dired_pos]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20b0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2068], rax
	mov	rbp, rbp
	je	.label_604
	mov	rbp, rbp
	jmp	.label_611
.label_611:
	test	byte ptr [byte ptr [dired]],  1
	mov	rbp, rbp
	je	.label_614
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20b0]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x20c0], 8
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x2080], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2080]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2080]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x2100], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2100]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20c0]
	lea	rsi, [rsi]
	jae	.label_618
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20c0]
	call	_obstack_newchunk
.label_618:
	movabs	rax, OFFSET FLAT:dired_pos
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20c0]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20c0]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
.label_614:
	jmp	.label_609
.label_609:
	jmp	.label_604
.label_604:
	cmp	qword ptr [rbp - 0x2090], 0
	je	.label_605
	movabs	rdi, OFFSET FLAT:.str.214
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	test	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2084], eax
	nop	
	je	.label_617
	mov	rax, qword ptr [rbp - 0x20d0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax + rcx - 1]
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20a4], eax
.label_617:
	jmp	.label_605
.label_605:
	lea	rax, [rbp - 0x2060]
	nop	
	mov	rcx, qword ptr [rbp - 0x20d0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	je	.label_606
	mov	rax, qword ptr [rbp - 0x20d0]
	nop	
	cmp	rax, qword ptr [rbp - 0x20f0]
	lea	rdi, [rdi]
	je	.label_606
	mov	rdi, qword ptr [rbp - 0x20d0]
	lea	rsi, [rsi]
	call	free
.label_606:
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rbp - 0x2069]
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	nop	
	mov	esi, edx
	add	rax, rsi
	nop	
	add	rsp, 0x20f0
	pop	rbx
	nop	
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa20

	.globl file_ignored
	.type file_ignored, @function
file_ignored:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	cmp	dword ptr [dword ptr [ignore_mode]],  2
	lea	rdi, [rdi]
	je	.label_621
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	jne	.label_621
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [ignore_mode]],  0
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	je	.label_622
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsx	edx, byte ptr [rcx + 1]
	mov	rsp, rsp
	cmp	edx, 0x2e
	nop	
	sete	sil
	lea	rsi, [rsi]
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + rcx], 0
	mov	byte ptr [rbp - 9], al
	lea	rsi, [rsi]
	je	.label_622
.label_621:
	nop	
	cmp	dword ptr [dword ptr [ignore_mode]],  0
	mov	rsp, rsp
	jne	.label_623
	mov	rdi,  qword ptr [word ptr [hide_patterns]]
	mov	rsi, qword ptr [rbp - 8]
	call	patterns_match
	lea	rsi, [rsi]
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 9], cl
	jne	.label_622
.label_623:
	mov	rdi,  qword ptr [word ptr [ignore_patterns]]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	call	patterns_match
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
.label_622:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab20

	.globl process_signals
	.type process_signals, @function
process_signals:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xb0
.label_628:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	nop	
	cmp	ecx, 0
	mov	byte ptr [rbp - 0xa1], al
	jne	.label_629
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	cmp	eax, 0
	nop	
	setne	cl
	mov	byte ptr [rbp - 0xa1], cl
.label_629:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa1]
	test	al, 1
	jne	.label_630
	nop	
	jmp	.label_626
.label_630:
	mov	rsp, rsp
	test	byte ptr [byte ptr [used_color]],  1
	lea	rsi, [rsi]
	je	.label_627
	call	restore_default_color
.label_627:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fflush_unlocked
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:caught_signals
	mov	rbp, rbp
	lea	rdx, [rbp - 0x98]
	mov	dword ptr [rbp - 0xa8], eax
	call	sigprocmask
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 0x14], edi
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	mov	dword ptr [rbp - 0x9c], eax
	nop	
	je	.label_624
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [stop_signal_count]],  eax
	mov	dword ptr [rbp - 4], 0x13
	jmp	.label_625
.label_624:
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	call	signal
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_625:
	mov	edi, dword ptr [rbp - 4]
	call	raise
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rbp, rbp
	lea	rsi, [rbp - 0x98]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa0], eax
	call	sigprocmask
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_628
.label_626:
	lea	rdi, [rdi]
	add	rsp, 0xb0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac60

	.globl quote_name_buf
	.type quote_name_buf, @function
quote_name_buf:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xb0], rdx
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	dword ptr [rbp - 0x70], r8d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], r9
	nop	
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	qword ptr [rbp - 0xc0], 0
	mov	rdi, qword ptr [rbp - 8]
	call	get_quoting_style
	mov	rbp, rbp
	xor	r8d, r8d
	mov	r10b, r8b
	mov	dword ptr [rbp - 0x74], eax
	test	byte ptr [byte ptr [qmark_funny_chars]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x99], r10b
	nop	
	je	.label_656
	mov	al, 1
	cmp	dword ptr [rbp - 0x74], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb2], al
	mov	rbp, rbp
	je	.label_634
	lea	rsi, [rsi]
	mov	al, 1
	cmp	dword ptr [rbp - 0x74], 2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb2], al
	je	.label_634
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x74], 0
	sete	al
	mov	byte ptr [rbp - 0xb2], al
.label_634:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb2]
	mov	byte ptr [rbp - 0x99], al
.label_656:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x99]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	je	.label_644
	mov	rbp, rbp
	mov	rcx, -1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	call	quotearg_buffer
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xc0]
	nop	
	ja	.label_665
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	xmalloc
	lea	rdi, [rdi]
	mov	rcx, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0xb0]
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	quotearg_buffer
	mov	qword ptr [rbp - 0xd0], rax
.label_665:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rcx]
	cmp	edx, esi
	mov	byte ptr [rbp - 0x75], al
	jne	.label_667
	mov	rdi, qword ptr [rbp - 0xb0]
	call	strlen
	cmp	rax, qword ptr [rbp - 0xc0]
	setne	cl
	mov	byte ptr [rbp - 0x75], cl
.label_667:
	mov	al, byte ptr [rbp - 0x75]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0xb1], al
	jmp	.label_633
.label_644:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	je	.label_655
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	call	strlen
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xc0]
	ja	.label_660
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	rbp, rbp
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
.label_660:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rdx, rax
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb1], 0
	lea	rdi, [rdi]
	jmp	.label_651
.label_655:
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	byte ptr [rbp - 0xb1], 0
.label_651:
	nop	
	jmp	.label_633
.label_633:
	nop	
	test	byte ptr [rbp - 0x19], 1
	je	.label_636
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	mov	rbp, rbp
	jbe	.label_640
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
.label_662:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	jae	.label_657
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0xd8], rax
	mov	dword ptr [rbp - 0x6c], ecx
	ja	.label_661
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_637]]
	jmp	rcx
.label_2945:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rax], dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_645
.label_661:
	nop	
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	memset
.label_632:
	lea	rdi, [rbp - 0x84]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rdx, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], -1
	lea	rsi, [rsi]
	jne	.label_647
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_646
.label_647:
	cmp	qword ptr [rbp - 0xe0], -2
	lea	rdi, [rdi]
	jne	.label_669
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_646
.label_669:
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_641
	mov	qword ptr [rbp - 0xe0], 1
.label_641:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x84]
	call	wcwidth
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	jl	.label_631
	jmp	.label_643
.label_643:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	jbe	.label_666
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0xe0], rax
	mov	rbp, rbp
	jmp	.label_643
.label_666:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_659
.label_631:
	nop	
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_659:
	jmp	.label_652
.label_652:
	nop	
	lea	rdi, [rbp - 0x90]
	call	mbsinit
	cmp	eax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	nop	
	jne	.label_632
.label_646:
	jmp	.label_645
.label_645:
	jmp	.label_662
.label_657:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	jmp	.label_638
.label_640:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
.label_639:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0xe8]
	jae	.label_648
	mov	rax, qword ptr [rbp - 0x98]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rsp, rsp
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	lea	rsi, [rsi]
	cmp	edi, 0
	nop	
	jne	.label_663
	mov	rax, qword ptr [rbp - 0x98]
	mov	byte ptr [rax], 0x3f
.label_663:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_639
.label_648:
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_638:
	jmp	.label_650
.label_636:
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_649
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 1
	jbe	.label_658
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc0]
	nop	
	call	mbsnwidth
	nop	
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	jmp	.label_635
.label_658:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
.label_653:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0xc8]
	jae	.label_668
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_664
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_664:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_653
.label_668:
	lea	rsi, [rsi]
	jmp	.label_635
.label_635:
	lea	rdi, [rdi]
	jmp	.label_649
.label_649:
	jmp	.label_650
.label_650:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb3], cl
	je	.label_654
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb3], cl
	lea	rsi, [rsi]
	je	.label_654
	mov	al, byte ptr [rbp - 0xb1]
	lea	rsi, [rsi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0xb3], al
.label_654:
	mov	al, byte ptr [rbp - 0xb3]
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx], al
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	je	.label_642
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_642:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b480

	.globl print_color_indicator
	.type print_color_indicator, @function
print_color_indicator:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_670
	mov	edi, 4
	mov	rsp, rsp
	call	is_colored
	test	al, 1
	nop	
	jne	.label_672
	mov	rsp, rsp
	jmp	.label_671
.label_672:
	call	restore_default_color
.label_671:
	nop	
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	put_indicator
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	nop	
	call	put_indicator
.label_670:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b520

	.globl file_escape
	.type file_escape, @function
file_escape:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	rbp, rbp
	mov	esi, 3
	nop	
	mov	ecx, esi
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	xnmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_677:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_678
	test	byte ptr [rbp - 9], 1
	je	.label_676
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_676
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_675
.label_676:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [+ (rcx * 1) + RFC3986]],  0
	je	.label_674
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	dl, byte ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], dl
	jmp	.label_673
.label_674:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	mov	qword ptr [rbp - 0x20], rdi
	mov	edi, edx
	call	to_uchar
	nop	
	movabs	rsi, OFFSET FLAT:.str.215
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	al, 0
	call	sprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rcx, rsi
	mov	qword ptr [rbp - 0x28], rcx
.label_673:
	mov	rsp, rsp
	jmp	.label_675
.label_675:
	jmp	.label_677
.label_678:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6c0

	.globl patterns_match
	.type patterns_match, @function
patterns_match:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
.label_680:
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_679
	mov	edx, 4
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	fnmatch
	cmp	eax, 0
	nop	
	jne	.label_683
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_681
.label_683:
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_680
.label_679:
	mov	byte ptr [rbp - 0x19], 0
.label_681:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b760

	.globl free_ent
	.type free_ent, @function
free_ent:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	nop	
	call	free
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:UNKNOWN_SECURITY_CONTEXT
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb0], rdi
	lea	rsi, [rsi]
	je	.label_684
	call	is_smack_enabled
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_685
	mov	rsp, rsp
	jmp	.label_686
.label_685:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rbp, rbp
	call	free
	jmp	.label_687
.label_686:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	freecon
.label_687:
	lea	rdi, [rdi]
	jmp	.label_684
.label_684:
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b830

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	and	cl, 1
	movzx	eax, cl
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b850

	.globl needs_quoting
	.type needs_quoting, @function
needs_quoting:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	eax, 2
	mov	esi, eax
	nop	
	mov	rcx, -1
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x22]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r8,  qword ptr [word ptr [filename_quoting_options]]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_buffer
	lea	rsi, [rsi]
	mov	r9b, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	r10d, byte ptr [rax]
	movsx	r11d, byte ptr [rbp - 0x22]
	cmp	r10d, r11d
	nop	
	mov	byte ptr [rbp - 1], r9b
	lea	rsi, [rsi]
	jne	.label_688
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	setne	cl
	mov	byte ptr [rbp - 1], cl
.label_688:
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b900

	.globl attach
	.type attach, @function
attach:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rdx]
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	jne	.label_689
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_690
.label_689:
	jmp	.label_694
.label_694:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	je	.label_695
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], dl
	jmp	.label_694
.label_695:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jbe	.label_692
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_692
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x2f
.label_692:
	jmp	.label_690
.label_690:
	jmp	.label_691
.label_691:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	je	.label_693
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	mov	dl, byte ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_691
.label_693:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba40

	.globl has_capability_cache
	.type has_capability_cache, @function
has_capability_cache:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rbp, rbp
	cmp	rsi,  qword ptr [word ptr [has_capability_cache.unsupported_device]]
	mov	rsp, rsp
	jne	.label_696
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	nop	
	mov	byte ptr [rbp - 9], 0
	nop	
	jmp	.label_699
.label_696:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	has_capability
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	nop	
	jne	.label_697
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_698
	jmp	.label_697
.label_698:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	qword ptr [word ptr [has_capability_cache.unsupported_device]],  rax
.label_697:
	nop	
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	byte ptr [rbp - 9], al
.label_699:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb10

	.globl getfilecon_cache
	.type getfilecon_cache, @function
getfilecon_cache:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	al, dl
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	cmp	rsi,  qword ptr [word ptr [getfilecon_cache.unsupported_device]]
	lea	rsi, [rsi]
	jne	.label_702
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	dword ptr [rbp - 0x20], 0xffffffff
	mov	rbp, rbp
	jmp	.label_700
.label_702:
	mov	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	test	byte ptr [rbp - 0xd], 1
	je	.label_703
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	lea	rsi, [rsi]
	call	getfilecon
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_701
.label_703:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	call	lgetfilecon
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_701:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_704
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	mov	rsp, rsp
	jne	.label_705
	lea	rsi, [rsi]
	jmp	.label_704
.label_705:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [getfilecon_cache.unsupported_device]],  rax
.label_704:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
.label_700:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc40

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	nop	
	cmp	dword ptr [rbp - 8], 0x5f
	mov	byte ptr [rbp - 1], al
	je	.label_706
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	jmp	.label_706
.label_706:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc80

	.globl file_has_acl_cache
	.type file_has_acl_cache, @function
file_has_acl_cache:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	cmp	rsi,  qword ptr [word ptr [file_has_acl_cache.unsupported_device]]
	jne	.label_707
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	nop	
	mov	dword ptr [rbp - 0x1c], 0
	jmp	.label_708
.label_707:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x18
	lea	rsi, [rsi]
	mov	rsi, rax
	call	file_has_acl
	nop	
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	jg	.label_710
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	nop	
	test	al, 1
	jne	.label_709
	lea	rsi, [rsi]
	jmp	.label_710
.label_709:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	qword ptr [word ptr [file_has_acl_cache.unsupported_device]],  rax
.label_710:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_708:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd50

	.globl get_link_name
	.type get_link_name, @function
get_link_name:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x48]
	call	areadlink_with_size
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jne	.label_711
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.220
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], al
	call	gettext
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 2]
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edi, cl
	mov	rsi, rax
	nop	
	call	file_failure
.label_711:
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bdf0

	.globl make_link_name
	.type make_link_name, @function
make_link_name:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_715
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jmp	.label_714
.label_715:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	nop	
	jne	.label_712
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	xstrdup
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_714
.label_712:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	dir_len
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_716
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_714
.label_716:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, rax
	mov	rsp, rsp
	add	rdi, 1
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x2f
	je	.label_713
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_713:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	stpncpy
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rbp, rbp
	call	stpcpy
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_714:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf40

	.globl format_user_width
	.type format_user_width, @function
format_user_width:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_717
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_718
.label_717:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	getuser
	mov	qword ptr [rbp - 8], rax
.label_718:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	esi, ecx
	nop	
	mov	rdi, rax
	call	format_user_or_group_width
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfa0

	.globl format_group_width
	.type format_group_width, @function
format_group_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_719
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	jmp	.label_720
.label_719:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	call	getgroup
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_720:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	nop	
	mov	rdi, rax
	call	format_user_or_group_width
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c000

	.globl unsigned_file_size
	.type unsigned_file_size, @function
unsigned_file_size:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	setl	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	imul	rdx, rdx, 0
	nop	
	add	rdi, rdx
	lea	rdi, [rdi]
	mov	rax, rdi
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c040

	.globl has_capability
	.type has_capability, @function
has_capability:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	dl, cl
	mov	dword ptr [rax], 0x5f
	nop	
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c070

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x16
	mov	byte ptr [rbp - 5], al
	lea	rdi, [rdi]
	je	.label_721
	mov	rbp, rbp
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x26
	mov	byte ptr [rbp - 5], al
	lea	rsi, [rsi]
	je	.label_721
	mov	edi, dword ptr [rbp - 4]
	call	is_ENOTSUP
	mov	byte ptr [rbp - 5], al
.label_721:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c0d0

	.globl format_user_or_group_width
	.type format_user_or_group_width, @function
format_user_or_group_width:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x40], rsi
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_722
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	call	gnu_mbswidth
	xor	esi, esi
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	cmp	esi, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	jle	.label_723
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_724
.label_723:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
.label_724:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_725
.label_722:
	movabs	rsi, OFFSET FLAT:.str.221
	lea	rdi, [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	al, 0
	call	sprintf
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], eax
	nop	
	call	strlen
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], ecx
.label_725:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c190

	.globl is_directory
	.type is_directory, @function
is_directory:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi + 0xa8], 3
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	je	.label_726
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	dword ptr [rax + 0xa8], 9
	lea	rsi, [rsi]
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], cl
.label_726:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c1e0

	.globl basename_is_dot_or_dotdot
	.type basename_is_dot_or_dotdot, @function
basename_is_dot_or_dotdot:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	last_component
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	dot_or_dotdot
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c230

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_727
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	lea	rsi, [rsi]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	sil, byte ptr [rdi + rcx]
	nop	
	mov	byte ptr [rbp - 1], sil
	mov	rbp, rbp
	cmp	byte ptr [rbp - 1], 0
	nop	
	mov	byte ptr [rbp - 0x12], al
	nop	
	je	.label_728
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_728:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x12]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	jmp	.label_729
.label_727:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
.label_729:
	mov	al, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c2e0

	.globl initialize_ordering_vector
	.type initialize_ordering_vector, @function
initialize_ordering_vector:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_730:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_731
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0xc8
	add	rax,  qword ptr [word ptr [cwd_file]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_730
.label_731:
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c350

	.globl xstrcoll_name
	.type xstrcoll_name, @function
xstrcoll_name:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c3a0

	.globl xstrcoll_df_name
	.type xstrcoll_df_name, @function
xstrcoll_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	is_linked_directory
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rsp, rsp
	test	byte ptr [rbp - 1], 1
	je	.label_735
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	jne	.label_735
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_732
.label_735:
	test	byte ptr [rbp - 1], 1
	jne	.label_733
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	je	.label_733
	mov	dword ptr [rbp - 8], 1
	jmp	.label_732
.label_733:
	jmp	.label_734
.label_734:
	movabs	rdx, OFFSET FLAT:xstrcoll
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	cmp_name
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
.label_732:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c470

	.globl rev_xstrcoll_name
	.type rev_xstrcoll_name, @function
rev_xstrcoll_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	cmp_name
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c4c0

	.globl rev_xstrcoll_df_name
	.type rev_xstrcoll_df_name, @function
rev_xstrcoll_df_name:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 8]
	call	is_linked_directory
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x11], 1
	nop	
	je	.label_737
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	jne	.label_737
	mov	dword ptr [rbp - 0x18], 0xffffffff
	jmp	.label_736
.label_737:
	nop	
	test	byte ptr [rbp - 0x11], 1
	nop	
	jne	.label_738
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	je	.label_738
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 1
	jmp	.label_736
.label_738:
	jmp	.label_739
.label_739:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 0x18], eax
.label_736:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c590

	.globl strcmp_name
	.type strcmp_name, @function
strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	cmp_name
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c5e0

	.globl strcmp_df_name
	.type strcmp_df_name, @function
strcmp_df_name:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa], al
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 9], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa], 1
	mov	rsp, rsp
	je	.label_741
	test	byte ptr [rbp - 9], 1
	nop	
	jne	.label_741
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0xffffffff
	jmp	.label_743
.label_741:
	test	byte ptr [rbp - 0xa], 1
	lea	rdi, [rdi]
	jne	.label_740
	mov	rsp, rsp
	test	byte ptr [rbp - 9], 1
	je	.label_740
	mov	dword ptr [rbp - 0x10], 1
	mov	rbp, rbp
	jmp	.label_743
.label_740:
	nop	
	jmp	.label_742
.label_742:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:strcmp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	cmp_name
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
.label_743:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c6b0

	.globl rev_strcmp_name
	.type rev_strcmp_name, @function
rev_strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c700

	.globl rev_strcmp_df_name
	.type rev_strcmp_df_name, @function
rev_strcmp_df_name:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	is_linked_directory
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x10]
	call	is_linked_directory
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], al
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_745
	lea	rdi, [rdi]
	test	byte ptr [rbp - 5], 1
	mov	rsp, rsp
	jne	.label_745
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_744
.label_745:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_746
	test	byte ptr [rbp - 5], 1
	nop	
	je	.label_746
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_744
.label_746:
	jmp	.label_747
.label_747:
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	cmp_name
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_744:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c7e0

	.globl xstrcoll_extension
	.type xstrcoll_extension, @function
xstrcoll_extension:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	call	cmp_extension
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c830

	.globl xstrcoll_df_extension
	.type xstrcoll_df_extension, @function
xstrcoll_df_extension:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	is_linked_directory
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	test	byte ptr [rbp - 9], 1
	je	.label_751
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_751
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], 0xffffffff
	jmp	.label_750
.label_751:
	test	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	jne	.label_749
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	je	.label_749
	mov	dword ptr [rbp - 0x20], 1
	jmp	.label_750
.label_749:
	jmp	.label_748
.label_748:
	movabs	rdx, OFFSET FLAT:xstrcoll
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 0x20], eax
.label_750:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c900

	.globl rev_xstrcoll_extension
	.type rev_xstrcoll_extension, @function
rev_xstrcoll_extension:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:xstrcoll
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	cmp_extension
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c960

	.globl rev_xstrcoll_df_extension
	.type rev_xstrcoll_df_extension, @function
rev_xstrcoll_df_extension:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rbp, rbp
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	je	.label_755
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	jne	.label_755
	mov	dword ptr [rbp - 0x10], 0xffffffff
	jmp	.label_752
.label_755:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	nop	
	jne	.label_753
	test	byte ptr [rbp - 9], 1
	je	.label_753
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_752
.label_753:
	jmp	.label_754
.label_754:
	nop	
	movabs	rdx, OFFSET FLAT:xstrcoll
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 0x10], eax
.label_752:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca30

	.globl strcmp_extension
	.type strcmp_extension, @function
strcmp_extension:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x10]
	call	cmp_extension
	mov	rbp, rbp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca80

	.globl strcmp_df_extension
	.type strcmp_df_extension, @function
strcmp_df_extension:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x16], al
	nop	
	test	byte ptr [rbp - 0x15], 1
	nop	
	je	.label_756
	mov	rsp, rsp
	test	byte ptr [rbp - 0x16], 1
	mov	rbp, rbp
	jne	.label_756
	nop	
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_757
.label_756:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x15], 1
	jne	.label_758
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x16], 1
	je	.label_758
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_757
.label_758:
	jmp	.label_759
.label_759:
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 0x14], eax
.label_757:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb50

	.globl rev_strcmp_extension
	.type rev_strcmp_extension, @function
rev_strcmp_extension:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	cmp_extension
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cba0

	.globl rev_strcmp_df_extension
	.type rev_strcmp_df_extension, @function
rev_strcmp_df_extension:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	is_linked_directory
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 8]
	call	is_linked_directory
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x12], al
	test	byte ptr [rbp - 0x11], 1
	je	.label_763
	test	byte ptr [rbp - 0x12], 1
	jne	.label_763
	mov	dword ptr [rbp - 0x18], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_762
.label_763:
	test	byte ptr [rbp - 0x11], 1
	jne	.label_760
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x12], 1
	je	.label_760
	mov	dword ptr [rbp - 0x18], 1
	jmp	.label_762
.label_760:
	nop	
	jmp	.label_761
.label_761:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	cmp_extension
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
.label_762:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cc70

	.globl xstrcoll_size
	.type xstrcoll_size, @function
xstrcoll_size:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x10]
	call	cmp_size
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ccc0

	.globl xstrcoll_df_size
	.type xstrcoll_df_size, @function
xstrcoll_df_size:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	test	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	je	.label_766
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	jne	.label_766
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_764
.label_766:
	test	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	jne	.label_765
	nop	
	test	byte ptr [rbp - 0x11], 1
	nop	
	je	.label_765
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_764
.label_765:
	lea	rsi, [rsi]
	jmp	.label_767
.label_767:
	movabs	rdx, OFFSET FLAT:xstrcoll
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_764:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cd90

	.globl rev_xstrcoll_size
	.type rev_xstrcoll_size, @function
rev_xstrcoll_size:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:xstrcoll
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 8]
	call	cmp_size
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cdf0

	.globl rev_xstrcoll_df_size
	.type rev_xstrcoll_df_size, @function
rev_xstrcoll_df_size:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	is_linked_directory
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	test	byte ptr [rbp - 0x1a], 1
	je	.label_769
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_769
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_770
.label_769:
	nop	
	test	byte ptr [rbp - 0x1a], 1
	lea	rsi, [rsi]
	jne	.label_768
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	nop	
	je	.label_768
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_770
.label_768:
	lea	rdi, [rdi]
	jmp	.label_771
.label_771:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_770:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ced0

	.globl strcmp_size
	.type strcmp_size, @function
strcmp_size:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cf20

	.globl strcmp_df_size
	.type strcmp_df_size, @function
strcmp_df_size:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	je	.label_774
	test	byte ptr [rbp - 0xd], 1
	mov	rsp, rsp
	jne	.label_774
	mov	dword ptr [rbp - 0xc], 0xffffffff
	jmp	.label_775
.label_774:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_772
	test	byte ptr [rbp - 0xd], 1
	je	.label_772
	mov	dword ptr [rbp - 0xc], 1
	jmp	.label_775
.label_772:
	mov	rbp, rbp
	jmp	.label_773
.label_773:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	call	cmp_size
	mov	dword ptr [rbp - 0xc], eax
.label_775:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cfe0

	.globl rev_strcmp_size
	.type rev_strcmp_size, @function
rev_strcmp_size:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	call	cmp_size
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d030

	.globl rev_strcmp_df_size
	.type rev_strcmp_df_size, @function
rev_strcmp_df_size:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	is_linked_directory
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x12], al
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	is_linked_directory
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x12], 1
	je	.label_777
	mov	rbp, rbp
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	jne	.label_777
	mov	dword ptr [rbp - 0x18], 0xffffffff
	mov	rbp, rbp
	jmp	.label_778
.label_777:
	test	byte ptr [rbp - 0x12], 1
	nop	
	jne	.label_776
	test	byte ptr [rbp - 0x11], 1
	je	.label_776
	mov	dword ptr [rbp - 0x18], 1
	lea	rdi, [rdi]
	jmp	.label_778
.label_776:
	mov	rbp, rbp
	jmp	.label_779
.label_779:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	cmp_size
	mov	dword ptr [rbp - 0x18], eax
.label_778:
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d110

	.globl xstrcoll_version
	.type xstrcoll_version, @function
xstrcoll_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_version
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d150

	.globl xstrcoll_df_version
	.type xstrcoll_df_version, @function
xstrcoll_df_version:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	is_linked_directory
	nop	
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	je	.label_780
	nop	
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	jne	.label_780
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_782
.label_780:
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	jne	.label_783
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_783
	mov	dword ptr [rbp - 8], 1
	jmp	.label_782
.label_783:
	jmp	.label_781
.label_781:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
.label_782:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d210

	.globl rev_xstrcoll_version
	.type rev_xstrcoll_version, @function
rev_xstrcoll_version:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_version
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d260

	.globl rev_xstrcoll_df_version
	.type rev_xstrcoll_df_version, @function
rev_xstrcoll_df_version:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 8]
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 0x11], 1
	je	.label_785
	lea	rsi, [rsi]
	test	byte ptr [rbp - 9], 1
	jne	.label_785
	mov	dword ptr [rbp - 0x10], 0xffffffff
	nop	
	jmp	.label_787
.label_785:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	jne	.label_784
	test	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	je	.label_784
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	mov	rsp, rsp
	jmp	.label_787
.label_784:
	lea	rsi, [rsi]
	jmp	.label_786
.label_786:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_787:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d330

	.globl xstrcoll_mtime
	.type xstrcoll_mtime, @function
xstrcoll_mtime:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	cmp_mtime
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d380

	.globl xstrcoll_df_mtime
	.type xstrcoll_df_mtime, @function
xstrcoll_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	is_linked_directory
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	je	.label_790
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	jne	.label_790
	nop	
	mov	dword ptr [rbp - 0x18], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_789
.label_790:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jne	.label_788
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x11], 1
	je	.label_788
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], 1
	lea	rdi, [rdi]
	jmp	.label_789
.label_788:
	mov	rsp, rsp
	jmp	.label_791
.label_791:
	nop	
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	cmp_mtime
	nop	
	mov	dword ptr [rbp - 0x18], eax
.label_789:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d460

	.globl rev_xstrcoll_mtime
	.type rev_xstrcoll_mtime, @function
rev_xstrcoll_mtime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	cmp_mtime
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d4b0

	.globl rev_xstrcoll_df_mtime
	.type rev_xstrcoll_df_mtime, @function
rev_xstrcoll_df_mtime:
	nop
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x11], 1
	mov	rbp, rbp
	je	.label_793
	test	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	jne	.label_793
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_795
.label_793:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	jne	.label_794
	test	byte ptr [rbp - 0x21], 1
	nop	
	je	.label_794
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_795
.label_794:
	jmp	.label_792
.label_792:
	movabs	rdx, OFFSET FLAT:xstrcoll
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_795:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d580

	.globl strcmp_mtime
	.type strcmp_mtime, @function
strcmp_mtime:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x10]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d5d0

	.globl strcmp_df_mtime
	.type strcmp_df_mtime, @function
strcmp_df_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	is_linked_directory
	nop	
	and	al, 1
	nop	
	mov	byte ptr [rbp - 5], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	nop	
	test	byte ptr [rbp - 5], 1
	nop	
	je	.label_798
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_798
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_797
.label_798:
	mov	rsp, rsp
	test	byte ptr [rbp - 5], 1
	jne	.label_796
	test	byte ptr [rbp - 0x11], 1
	je	.label_796
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_797
.label_796:
	lea	rsi, [rsi]
	jmp	.label_799
.label_799:
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:strcmp
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	cmp_mtime
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_797:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6b0

	.globl rev_strcmp_mtime
	.type rev_strcmp_mtime, @function
rev_strcmp_mtime:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	cmp_mtime
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d700

	.globl rev_strcmp_df_mtime
	.type rev_strcmp_df_mtime, @function
rev_strcmp_df_mtime:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_801
	test	byte ptr [rbp - 1], 1
	jne	.label_801
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_803
.label_801:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_802
	test	byte ptr [rbp - 1], 1
	je	.label_802
	mov	dword ptr [rbp - 8], 1
	jmp	.label_803
.label_802:
	mov	rbp, rbp
	jmp	.label_800
.label_800:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 8], eax
.label_803:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d7c0

	.globl xstrcoll_ctime
	.type xstrcoll_ctime, @function
xstrcoll_ctime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d810

	.globl xstrcoll_df_ctime
	.type xstrcoll_df_ctime, @function
xstrcoll_df_ctime:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	is_linked_directory
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], al
	test	byte ptr [rbp - 0x21], 1
	je	.label_807
	nop	
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	jne	.label_807
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_806
.label_807:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	jne	.label_805
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	je	.label_805
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_806
.label_805:
	nop	
	jmp	.label_804
.label_804:
	nop	
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_806:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8e0

	.globl rev_xstrcoll_ctime
	.type rev_xstrcoll_ctime, @function
rev_xstrcoll_ctime:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d930

	.globl rev_xstrcoll_df_ctime
	.type rev_xstrcoll_df_ctime, @function
rev_xstrcoll_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_linked_directory
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x11], 1
	nop	
	je	.label_809
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jne	.label_809
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_810
.label_809:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	nop	
	jne	.label_808
	test	byte ptr [rbp - 1], 1
	je	.label_808
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], 1
	jmp	.label_810
.label_808:
	lea	rsi, [rsi]
	jmp	.label_811
.label_811:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	cmp_ctime
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
.label_810:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da10

	.globl strcmp_ctime
	.type strcmp_ctime, @function
strcmp_ctime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	call	cmp_ctime
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da60

	.globl strcmp_df_ctime
	.type strcmp_df_ctime, @function
strcmp_df_ctime:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	is_linked_directory
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	je	.label_815
	test	byte ptr [rbp - 1], 1
	jne	.label_815
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0xffffffff
	jmp	.label_812
.label_815:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	jne	.label_813
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	je	.label_813
	nop	
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_812
.label_813:
	jmp	.label_814
.label_814:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 0x24], eax
.label_812:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db30

	.globl rev_strcmp_ctime
	.type rev_strcmp_ctime, @function
rev_strcmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	cmp_ctime
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db80

	.globl rev_strcmp_df_ctime
	.type rev_strcmp_df_ctime, @function
rev_strcmp_df_ctime:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 9], 1
	je	.label_818
	test	byte ptr [rbp - 0x11], 1
	jne	.label_818
	nop	
	mov	dword ptr [rbp - 0x10], 0xffffffff
	jmp	.label_816
.label_818:
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	jne	.label_817
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	je	.label_817
	mov	dword ptr [rbp - 0x10], 1
	nop	
	jmp	.label_816
.label_817:
	mov	rbp, rbp
	jmp	.label_819
.label_819:
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	cmp_ctime
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
.label_816:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc50

	.globl xstrcoll_atime
	.type xstrcoll_atime, @function
xstrcoll_atime:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dca0

	.globl xstrcoll_df_atime
	.type xstrcoll_df_atime, @function
xstrcoll_df_atime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	nop	
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1d], 1
	je	.label_822
	test	byte ptr [rbp - 9], 1
	jne	.label_822
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_821
.label_822:
	test	byte ptr [rbp - 0x1d], 1
	mov	rbp, rbp
	jne	.label_823
	test	byte ptr [rbp - 9], 1
	je	.label_823
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_821
.label_823:
	lea	rdi, [rdi]
	jmp	.label_820
.label_820:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	cmp_atime
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
.label_821:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd70

	.globl rev_xstrcoll_atime
	.type rev_xstrcoll_atime, @function
rev_xstrcoll_atime:
	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cmp_atime
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ddc0

	.globl rev_xstrcoll_df_atime
	.type rev_xstrcoll_df_atime, @function
rev_xstrcoll_df_atime:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 2], al
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	je	.label_826
	test	byte ptr [rbp - 2], 1
	jne	.label_826
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	mov	rbp, rbp
	jmp	.label_827
.label_826:
	test	byte ptr [rbp - 1], 1
	jne	.label_825
	lea	rsi, [rsi]
	test	byte ptr [rbp - 2], 1
	mov	rbp, rbp
	je	.label_825
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_827
.label_825:
	nop	
	jmp	.label_824
.label_824:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	cmp_atime
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_827:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40deb0

	.globl strcmp_atime
	.type strcmp_atime, @function
strcmp_atime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	cmp_atime
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df00

	.globl strcmp_df_atime
	.type strcmp_df_atime, @function
strcmp_df_atime:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 2], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 2], 1
	je	.label_830
	nop	
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jne	.label_830
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	nop	
	jmp	.label_828
.label_830:
	mov	rbp, rbp
	test	byte ptr [rbp - 2], 1
	jne	.label_829
	lea	rsi, [rsi]
	test	byte ptr [rbp - 1], 1
	je	.label_829
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_828
.label_829:
	jmp	.label_831
.label_831:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
.label_828:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dfd0

	.globl rev_strcmp_atime
	.type rev_strcmp_atime, @function
rev_strcmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e020

	.globl rev_strcmp_df_atime
	.type rev_strcmp_df_atime, @function
rev_strcmp_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	is_linked_directory
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x16], al
	mov	rdi, qword ptr [rbp - 8]
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x15], al
	nop	
	test	byte ptr [rbp - 0x16], 1
	je	.label_833
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_833
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rbp, rbp
	jmp	.label_832
.label_833:
	test	byte ptr [rbp - 0x16], 1
	nop	
	jne	.label_834
	test	byte ptr [rbp - 0x15], 1
	mov	rbp, rbp
	je	.label_834
	nop	
	mov	dword ptr [rbp - 0x14], 1
	mov	rsp, rsp
	jmp	.label_832
.label_834:
	jmp	.label_835
.label_835:
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:strcmp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	cmp_atime
	mov	dword ptr [rbp - 0x14], eax
.label_832:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e100

	.globl cmp_name
	.type cmp_name, @function
cmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	nop	
	call	rdx
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e140

	.globl xstrcoll
	.type xstrcoll, @function
xstrcoll:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	strcoll
	mov	dword ptr [rbp - 0x2c], eax
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_836
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.223
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	quote_n
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	xor	edi, edi
	mov	rsp, rsp
	call	set_exit_status
	movabs	rdi, OFFSET FLAT:failed_strcoll
	mov	esi, 1
	nop	
	call	longjmp
.label_836:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e220

	.globl is_linked_directory
	.type is_linked_directory, @function
is_linked_directory:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi + 0xa8], 3
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	je	.label_837
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + 0xa8], 9
	mov	byte ptr [rbp - 1], al
	je	.label_837
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0xac]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], dl
.label_837:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2a0

	.globl cmp_extension
	.type cmp_extension, @function
cmp_extension:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 0x2e
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rdx]
	mov	esi, eax
	lea	rsi, [rsi]
	call	strrchr
	mov	rsp, rsp
	mov	esi, 0x2e
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	call	strrchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	je	.label_842
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_839
.label_842:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_839
.label_839:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x28], rax
	nop	
	je	.label_843
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_840
.label_843:
	movabs	rax, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_840
.label_840:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 8]
	call	rax
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_838
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_841
.label_838:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	call	rax
	mov	dword ptr [rbp - 0x34], eax
.label_841:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e3d0

	.globl cmp_size
	.type cmp_size, @function
cmp_size:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x48]
	mov	rbp, rbp
	jge	.label_844
	mov	rbp, rbp
	mov	eax, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	jmp	.label_847
.label_844:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x48]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 8], esi
.label_847:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	je	.label_845
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_846
.label_845:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	dword ptr [rbp - 0x14], eax
.label_846:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e4a0

	.globl cmp_version
	.type cmp_version, @function
cmp_version:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	call	filevercmp
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e4e0

	.globl cmp_mtime
	.type cmp_mtime, @function
cmp_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, 0x18
	lea	rdi, [rdi]
	mov	rdi, rdx
	nop	
	call	get_stat_mtime
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 0x18
	mov	rdi, rax
	mov	rsp, rsp
	call	get_stat_mtime
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	timespec_cmp
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	je	.label_849
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_848
.label_849:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	lea	rdi, [rdi]
	call	rax
	mov	dword ptr [rbp - 0x24], eax
.label_848:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e5b0

	.globl cmp_ctime
	.type cmp_ctime, @function
cmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rdx, 0x18
	mov	rbp, rbp
	mov	rdi, rdx
	lea	rsi, [rsi]
	call	get_stat_ctime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], rdx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x18
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	get_stat_ctime
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	timespec_cmp
	mov	dword ptr [rbp - 4], eax
	nop	
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	je	.label_850
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_851
.label_850:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_851:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e680

	.globl cmp_atime
	.type cmp_atime, @function
cmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], rdx
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x18
	mov	rdi, rax
	lea	rdi, [rdi]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	call	timespec_cmp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_852
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_853
.label_852:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	call	rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
.label_853:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e740

	.globl print_file_name_and_frills
	.type print_file_name_and_frills, @function
print_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2e0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	call	set_normal_color
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_859
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_863
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x2c4], eax
	mov	rsp, rsp
	jmp	.label_865
.label_863:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [inode_number_width]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c4], eax
.label_865:
	mov	eax, dword ptr [rbp - 0x2c4]
	mov	ecx, 0x28c
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rdi, [rbp - 0x2c0]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 4], eax
	call	format_inode
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.224
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	nop	
	call	printf
	mov	dword ptr [rbp - 0x2d8], eax
.label_859:
	test	byte ptr [byte ptr [print_block_size]],  1
	nop	
	je	.label_860
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  4
	mov	rsp, rsp
	jne	.label_864
	xor	eax, eax
	mov	dword ptr [rbp - 0x2e0], eax
	nop	
	jmp	.label_856
.label_864:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	mov	dword ptr [rbp - 0x2e0], eax
.label_856:
	mov	eax, dword ptr [rbp - 0x2e0]
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0xb8], 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2dc], eax
	jne	.label_861
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.225
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2d0], rax
	jmp	.label_855
.label_861:
	mov	eax, 0x200
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	lea	rsi, [rbp - 0x2c0]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x2d0], rax
.label_855:
	nop	
	mov	rax, qword ptr [rbp - 0x2d0]
	movabs	rdi, OFFSET FLAT:.str.224
	mov	esi, dword ptr [rbp - 0x2dc]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
.label_860:
	mov	rbp, rbp
	test	byte ptr [byte ptr [print_scontext]],  1
	mov	rbp, rbp
	je	.label_854
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_858
	xor	eax, eax
	mov	dword ptr [rbp - 0x2d4], eax
	mov	rsp, rsp
	jmp	.label_862
.label_858:
	nop	
	mov	eax,  dword ptr [dword ptr [scontext_width]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2d4], eax
.label_862:
	nop	
	mov	eax, dword ptr [rbp - 0x2d4]
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.224
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0xb0]
	mov	esi, eax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
.label_854:
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	rsp, rsp
	je	.label_857
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x30]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 0xa8]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edi, cl
	call	print_type_indicator
	and	al, 1
	movzx	edx, al
	mov	r8d, edx
	add	r8, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], r8
.label_857:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x2e0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e9c0

	.globl print_with_separator
	.type print_with_separator, @function
print_with_separator:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 0x39], al
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
.label_870:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	lea	rdi, [rdi]
	jae	.label_869
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [line_length]],  0
	lea	rdi, [rdi]
	je	.label_866
	mov	rdi, qword ptr [rbp - 8]
	call	length_of_file_name_and_frills
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_867
.label_866:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rbp, rbp
	jmp	.label_867
.label_867:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_873
	cmp	qword ptr [word ptr [line_length]],  0
	nop	
	je	.label_872
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 2
	cmp	rax,  qword ptr [word ptr [line_length]]
	jae	.label_871
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x18]
	sub	rax, 2
	nop	
	cmp	rcx, rax
	ja	.label_871
.label_872:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, 2
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	byte ptr [rbp - 0xd], 0x20
	lea	rdi, [rdi]
	jmp	.label_868
.label_871:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], 0xa
.label_868:
	nop	
	movsx	edi, byte ptr [rbp - 0x39]
	call	putchar_unlocked
	movsx	edi, byte ptr [rbp - 0xd]
	mov	dword ptr [rbp - 0x4c], eax
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
.label_873:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	print_file_name_and_frills
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_870
.label_869:
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb70

	.globl print_many_per_line
	.type print_many_per_line, @function
print_many_per_line:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rsp, rsp
	mov	edi, 1
	call	calculate_columns
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, edi
	mov	rsp, rsp
	div	qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, rcx
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, edi
	div	qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rdx, 0
	setne	sil
	mov	rsp, rsp
	and	sil, 1
	lea	rdi, [rdi]
	movzx	edi, sil
	movsxd	rcx, edi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x10], 0
.label_877:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	jae	.label_874
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	qword ptr [rbp - 0x68], 0
.label_875:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	length_of_file_name_and_frills
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	call	print_file_name_and_frills
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jb	.label_876
	mov	rsp, rsp
	jmp	.label_878
.label_876:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	indent
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x68], rax
	nop	
	jmp	.label_875
.label_878:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_877
.label_874:
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed60

	.globl print_horizontal
	.type print_horizontal, @function
print_horizontal:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	xor	edi, edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
	call	calculate_columns
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [column_info]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [sorted_file]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	length_of_file_name_and_frills
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	print_file_name_and_frills
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 1
	mov	qword ptr [rbp - 0x60], rax
.label_882:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_879
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_880
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
	nop	
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_881
.label_880:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	call	indent
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_881:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	print_file_name_and_frills
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	call	length_of_file_name_and_frills
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_882
.label_879:
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
	add	rsp, 0x60
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef10

	.globl set_normal_color
	.type set_normal_color, @function
set_normal_color:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	rsp, rsp
	je	.label_883
	mov	rsp, rsp
	mov	edi, 4
	call	is_colored
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_884
	lea	rdi, [rdi]
	jmp	.label_883
.label_884:
	movabs	rdi, OFFSET FLAT:color_indicator
	lea	rsi, [rsi]
	call	put_indicator
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:color_indicator
	nop	
	add	rdi, 0x40
	lea	rsi, [rsi]
	call	put_indicator
	nop	
	movabs	rdi, OFFSET FLAT:color_indicator
	lea	rsi, [rsi]
	add	rdi, 0x10
	nop	
	call	put_indicator
.label_883:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef90

	.globl print_long_format
	.type print_long_format, @function
print_long_format:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x15a0
	mov	qword ptr [rbp - 0x1588], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x1588]
	test	byte ptr [rdi + 0xb8], 1
	nop	
	je	.label_921
	lea	rsi, [rbp - 0xf5c]
	mov	rax, qword ptr [rbp - 0x1588]
	lea	rsi, [rsi]
	add	rax, 0x18
	mov	rsp, rsp
	mov	rdi, rax
	call	filemodestring
	nop	
	jmp	.label_899
.label_921:
	lea	rsi, [rsi]
	mov	esi, 0x3f
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	edx, eax
	lea	rcx, [rbp - 0xf5c]
	mov	rdi, qword ptr [rbp - 0x1588]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi + 0xa8]
	mov	edi, eax
	mov	r8b,  byte ptr [byte ptr [+ (rdi * 1) + filetype_letter]]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf5c], r8b
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	rdi, rcx
	nop	
	call	memset
	mov	byte ptr [rbp - 0xf51], 0
.label_899:
	test	byte ptr [byte ptr [any_has_acl]],  1
	lea	rdi, [rdi]
	jne	.label_901
	mov	byte ptr [rbp - 0xf52], 0
	jmp	.label_903
.label_901:
	mov	rax, qword ptr [rbp - 0x1588]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xbc], 1
	mov	rsp, rsp
	jne	.label_906
	mov	byte ptr [rbp - 0xf52], 0x2e
	jmp	.label_911
.label_906:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1588]
	cmp	dword ptr [rax + 0xbc], 2
	lea	rdi, [rdi]
	jne	.label_915
	mov	byte ptr [rbp - 0xf52], 0x2b
.label_915:
	jmp	.label_911
.label_911:
	nop	
	jmp	.label_903
.label_903:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	nop	
	test	eax, eax
	mov	dword ptr [rbp - 0xedc], eax
	mov	rsp, rsp
	je	.label_926
	jmp	.label_934
.label_934:
	nop	
	mov	eax, dword ptr [rbp - 0xedc]
	sub	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf78], eax
	je	.label_935
	jmp	.label_940
.label_940:
	mov	eax, dword ptr [rbp - 0xedc]
	lea	rdi, [rdi]
	sub	eax, 2
	mov	dword ptr [rbp - 0xf7c], eax
	lea	rsi, [rsi]
	je	.label_909
	jmp	.label_885
.label_935:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1588]
	add	rax, 0x18
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	get_stat_ctime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x12b8], rax
	nop	
	mov	qword ptr [rbp - 0x12b0], rdx
	mov	rax, qword ptr [rbp - 0x12b8]
	mov	qword ptr [rbp - 0xed8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x12b0]
	mov	qword ptr [rbp - 0xed0], rax
	mov	rsp, rsp
	jmp	.label_895
.label_926:
	mov	rax, qword ptr [rbp - 0x1588]
	mov	rbp, rbp
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xfb8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xfb0], rdx
	mov	rax, qword ptr [rbp - 0xfb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xed8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xfb0]
	mov	qword ptr [rbp - 0xed0], rax
	jmp	.label_895
.label_909:
	nop	
	mov	rax, qword ptr [rbp - 0x1588]
	add	rax, 0x18
	lea	rsi, [rsi]
	mov	rdi, rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0xef0], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xee8], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xef0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xed8], rax
	mov	rax, qword ptr [rbp - 0xee8]
	mov	qword ptr [rbp - 0xed0], rax
	jmp	.label_895
.label_885:
	lea	rdi, [rdi]
	call	abort
.label_895:
	nop	
	lea	rax, [rbp - 0xec0]
	mov	qword ptr [rbp - 0x1288], rax
	nop	
	test	byte ptr [byte ptr [print_inode]],  1
	nop	
	je	.label_944
	mov	rsp, rsp
	mov	eax, 0x15
	mov	esi, eax
	mov	rbp, rbp
	lea	rdi, [rbp - 0xf10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1288]
	mov	edx,  dword ptr [dword ptr [inode_number_width]]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x1588]
	mov	dword ptr [rbp - 0x1578], edx
	mov	rdx, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xfa8], rcx
	mov	rbp, rbp
	call	format_inode
	movabs	rsi, OFFSET FLAT:.str.224
	mov	rdi, qword ptr [rbp - 0xfa8]
	mov	edx, dword ptr [rbp - 0x1578]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	sprintf
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1288]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	strlen
	add	rax, qword ptr [rbp - 0x1288]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1288], rax
.label_944:
	nop	
	test	byte ptr [byte ptr [print_block_size]],  1
	nop	
	je	.label_927
	mov	rax, qword ptr [rbp - 0x1588]
	mov	rbp, rbp
	test	byte ptr [rax + 0xb8], 1
	lea	rdi, [rdi]
	jne	.label_932
	movabs	rax, OFFSET FLAT:.str.225
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	jmp	.label_939
.label_932:
	mov	rbp, rbp
	mov	eax, 0x200
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rbp - 0x1260]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1588]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	lea	rdi, [rdi]
	call	human_readable
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
.label_939:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1268], rax
	mov	ecx,  dword ptr [dword ptr [block_size_width]]
	mov	rdi, qword ptr [rbp - 0x1268]
	mov	dword ptr [rbp - 0x1598], ecx
	call	gnu_mbswidth
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1598]
	lea	rdi, [rdi]
	sub	ecx, eax
	mov	dword ptr [rbp - 0xf14], ecx
.label_919:
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 0xf14]
	lea	rdi, [rdi]
	jge	.label_914
	mov	rax, qword ptr [rbp - 0x1288]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1288], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x20
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xf14]
	add	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf14], eax
	jmp	.label_919
.label_914:
	jmp	.label_890
.label_890:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1268]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x1268], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x1288]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1288], rcx
	mov	byte ptr [rax], dl
	mov	rsp, rsp
	cmp	dl, 0
	je	.label_936
	lea	rdi, [rdi]
	jmp	.label_890
.label_936:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1288]
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0x20
.label_927:
	mov	rbp, rbp
	lea	rdx, [rbp - 0xf5c]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1288]
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	mov	rax, qword ptr [rbp - 0x1588]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xb8], 1
	mov	qword ptr [rbp - 0x1590], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1278], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], ecx
	nop	
	jne	.label_897
	nop	
	movabs	rax, OFFSET FLAT:.str.225
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x12e0], rax
	jmp	.label_913
.label_897:
	lea	rsi, [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x1588]
	mov	rdi, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	call	umaxtostr
	mov	qword ptr [rbp - 0x12e0], rax
.label_913:
	nop	
	mov	rax, qword ptr [rbp - 0x12e0]
	movabs	rsi, OFFSET FLAT:.str.227
	nop	
	mov	rdi, qword ptr [rbp - 0x1278]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1590]
	mov	ecx, dword ptr [rbp - 0x28]
	mov	r8, rax
	mov	al, 0
	call	sprintf
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1288]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	call	strlen
	add	rax, qword ptr [rbp - 0x1288]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1288], rax
	test	byte ptr [byte ptr [dired]],  1
	lea	rsi, [rsi]
	je	.label_898
	jmp	.label_892
.label_892:
	movabs	rdi, OFFSET FLAT:.str.206
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_898
.label_898:
	jmp	.label_904
.label_904:
	test	byte ptr [byte ptr [print_owner]],  1
	jne	.label_905
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_group]],  1
	mov	rsp, rsp
	jne	.label_905
	mov	rbp, rbp
	test	byte ptr [byte ptr [print_author]],  1
	jne	.label_905
	nop	
	test	byte ptr [byte ptr [print_scontext]],  1
	lea	rsi, [rsi]
	je	.label_917
.label_905:
	jmp	.label_924
.label_924:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xec0]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xec0]
	mov	rdi, qword ptr [rbp - 0x1288]
	sub	rdi, rsi
	lea	rsi, [rsi]
	add	rdi,  qword ptr [word ptr [dired_pos]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x127c], eax
	test	byte ptr [byte ptr [print_owner]],  1
	mov	rbp, rbp
	je	.label_930
	mov	rax, qword ptr [rbp - 0x1588]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x34]
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [owner_width]]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1588]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	call	format_user
.label_930:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_900
	mov	rax, qword ptr [rbp - 0x1588]
	mov	edi, dword ptr [rax + 0x38]
	mov	esi,  dword ptr [dword ptr [group_width]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1588]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	call	format_group
.label_900:
	test	byte ptr [byte ptr [print_author]],  1
	nop	
	je	.label_912
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1588]
	mov	rsp, rsp
	mov	edi, dword ptr [rax + 0x34]
	mov	esi,  dword ptr [dword ptr [author_width]]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1588]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	call	format_user
.label_912:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_928
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x1588]
	mov	rdi, qword ptr [rcx + 0xb0]
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [scontext_width]]
	nop	
	call	format_user_or_group
.label_928:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xec0]
	nop	
	mov	qword ptr [rbp - 0x1288], rax
.label_917:
	mov	rax, qword ptr [rbp - 0x1588]
	test	byte ptr [rax + 0xb8], 1
	lea	rsi, [rsi]
	je	.label_907
	nop	
	mov	rax, qword ptr [rbp - 0x1588]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x2000
	mov	rsp, rsp
	je	.label_891
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1588]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x6000
	mov	rbp, rbp
	jne	.label_907
.label_891:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [file_size_width]]
	mov	edx,  dword ptr [dword ptr [major_device_number_width]]
	mov	rsp, rsp
	add	edx, 2
	lea	rsi, [rsi]
	add	edx,  dword ptr [dword ptr [minor_device_number_width]]
	sub	ecx, edx
	mov	dword ptr [rbp - 0xf74], ecx
	mov	rdi, qword ptr [rbp - 0x1288]
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	cmp	eax, dword ptr [rbp - 0xf74]
	mov	dword ptr [rbp - 0xee0], ecx
	mov	qword ptr [rbp - 0x12a8], rdi
	jle	.label_908
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf64], eax
	jmp	.label_902
.label_908:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xf74]
	nop	
	mov	dword ptr [rbp - 0xf64], eax
.label_902:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xf64]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xee0]
	add	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1588]
	nop	
	mov	rdi, qword ptr [rdx + 0x40]
	mov	dword ptr [rbp - 0x12d4], ecx
	mov	rbp, rbp
	call	gnu_dev_major
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x50]
	mov	rsp, rsp
	mov	eax, eax
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	umaxtostr
	lea	rsi, [rsi]
	mov	r8d,  dword ptr [dword ptr [minor_device_number_width]]
	mov	rdx, qword ptr [rbp - 0x1588]
	mov	rdi, qword ptr [rdx + 0x40]
	mov	qword ptr [rbp - 0x1270], rax
	mov	dword ptr [rbp - 0x1574], r8d
	call	gnu_dev_minor
	lea	rsi, [rbp - 0x12a0]
	mov	eax, eax
	mov	edi, eax
	mov	rsp, rsp
	call	umaxtostr
	movabs	rsi, OFFSET FLAT:.str.228
	mov	rdi, qword ptr [rbp - 0x12a8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x12d4]
	mov	rcx, qword ptr [rbp - 0x1270]
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x1574]
	mov	r9, rax
	mov	al, 0
	call	sprintf
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [file_size_width]]
	nop	
	add	edx, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1288]
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	nop	
	mov	qword ptr [rbp - 0x1288], rcx
	mov	dword ptr [rbp - 0xfc0], eax
	mov	rsp, rsp
	jmp	.label_922
.label_907:
	mov	rax, qword ptr [rbp - 0x1588]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_937
	nop	
	movabs	rax, OFFSET FLAT:.str.225
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_942
.label_937:
	mov	rax, qword ptr [rbp - 0x1588]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	call	unsigned_file_size
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rbp - 0x1570]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	human_readable
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
.label_942:
	mov	rax, qword ptr [rbp - 0x60]
	xor	esi, esi
	nop	
	mov	qword ptr [rbp - 0xf70], rax
	mov	ecx,  dword ptr [dword ptr [file_size_width]]
	mov	rdi, qword ptr [rbp - 0xf70]
	mov	dword ptr [rbp - 0x12e4], ecx
	lea	rdi, [rdi]
	call	gnu_mbswidth
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x12e4]
	mov	rsp, rsp
	sub	ecx, eax
	mov	dword ptr [rbp - 0xfc4], ecx
.label_925:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0xfc4]
	lea	rsi, [rsi]
	jge	.label_916
	mov	rax, qword ptr [rbp - 0x1288]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x1288], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0xfc4]
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0xfc4], eax
	nop	
	jmp	.label_925
.label_916:
	jmp	.label_893
.label_893:
	nop	
	mov	rax, qword ptr [rbp - 0xf70]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xf70], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1288]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x1288], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], dl
	cmp	dl, 0
	je	.label_938
	lea	rsi, [rsi]
	jmp	.label_893
.label_938:
	mov	rax, qword ptr [rbp - 0x1288]
	nop	
	mov	byte ptr [rax - 1], 0x20
.label_922:
	nop	
	mov	qword ptr [rbp - 0xfd0], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1288]
	mov	byte ptr [rax], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1588]
	test	byte ptr [rax + 0xb8], 1
	je	.label_886
	lea	rdx, [rbp - 0xf50]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xed8]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [localtz]]
	lea	rsi, [rsi]
	call	localtime_rz
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_886
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [current_time]]
	mov	rsi,  qword ptr [word ptr [label_51]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xed8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xed0]
	call	timespec_cmp
	cmp	eax, 0
	jge	.label_929
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:current_time
	lea	rdi, [rdi]
	call	gettime
.label_929:
	mov	rax,  qword ptr [word ptr [current_time]]
	sub	rax, 0xf0c2ac
	nop	
	mov	qword ptr [rbp - 0x12c8], rax
	mov	rax,  qword ptr [word ptr [label_51]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x12c0], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x12c8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x12c0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xed8]
	mov	rcx, qword ptr [rbp - 0xed0]
	mov	rsp, rsp
	call	timespec_cmp
	mov	rsp, rsp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9b, r8b
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf5d], r9b
	jge	.label_896
	mov	rdi, qword ptr [rbp - 0xed8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xed0]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [current_time]]
	mov	rcx,  qword ptr [word ptr [label_51]]
	call	timespec_cmp
	cmp	eax, 0
	mov	rbp, rbp
	setl	r8b
	mov	byte ptr [rbp - 0xf5d], r8b
.label_896:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xf5d]
	nop	
	mov	ecx, 0x3e9
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0xf50]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xfb9], al
	mov	rdi, qword ptr [rbp - 0x1288]
	mov	al, byte ptr [rbp - 0xfb9]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xed0]
	mov	rbp, rbp
	mov	r9d, edx
	nop	
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	call	align_nstrftime
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xfd0], rax
.label_886:
	cmp	qword ptr [rbp - 0xfd0], 0
	jne	.label_941
	nop	
	mov	rax, qword ptr [rbp - 0x1288]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	jne	.label_943
.label_941:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xfd0]
	add	rax, qword ptr [rbp - 0x1288]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1288], rax
	mov	rax, qword ptr [rbp - 0x1288]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1288], rcx
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1288]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	jmp	.label_887
.label_943:
	nop	
	mov	rdi, qword ptr [rbp - 0x1288]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	call	long_time_expected_width
	mov	rdi, qword ptr [rbp - 0x1588]
	lea	rsi, [rsi]
	test	byte ptr [rdi + 0xb8], 1
	mov	dword ptr [rbp - 0x157c], eax
	mov	rsp, rsp
	jne	.label_910
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	jmp	.label_931
.label_910:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xfa0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xed8]
	lea	rdi, [rdi]
	call	timetostr
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
.label_931:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	movabs	rsi, OFFSET FLAT:.str.224
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x157c]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x1288]
	mov	dword ptr [rbp - 0xec4], eax
	call	strlen
	add	rax, qword ptr [rbp - 0x1288]
	mov	qword ptr [rbp - 0x1288], rax
.label_887:
	mov	rsp, rsp
	jmp	.label_888
.label_888:
	lea	rdi, [rbp - 0xec0]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsp, rsp
	lea	rsi, [rbp - 0xec0]
	mov	rdi, qword ptr [rbp - 0x1288]
	mov	rbp, rbp
	sub	rdi, rsi
	add	rdi,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xef4], eax
	lea	rdi, [rdi]
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:dired_obstack
	lea	rax, [rbp - 0xec0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1588]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1288]
	nop	
	sub	rcx, rax
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x12d0], rax
	mov	rax, qword ptr [rbp - 0x1588]
	nop	
	cmp	dword ptr [rax + 0xa8], 6
	jne	.label_920
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1588]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_889
	nop	
	jmp	.label_933
.label_933:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.229
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 4
	mov	rbp, rbp
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x24], eax
	mov	esi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0xec0]
	mov	rdi, qword ptr [rbp - 0x1588]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x1288]
	nop	
	sub	r8, rcx
	add	r8, qword ptr [rbp - 0x12d0]
	add	r8, 4
	nop	
	mov	rcx, r8
	mov	rbp, rbp
	call	print_name_with_quoting
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	je	.label_923
	mov	edi, 1
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1588]
	nop	
	mov	esi, dword ptr [rax + 0xac]
	call	print_type_indicator
	mov	byte ptr [rbp - 0x1591], al
.label_923:
	mov	rsp, rsp
	jmp	.label_889
.label_889:
	jmp	.label_918
.label_920:
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	rsp, rsp
	je	.label_894
	mov	rax, qword ptr [rbp - 0x1588]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 0x1588]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1588]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0xa8]
	nop	
	and	cl, 1
	movzx	edi, cl
	call	print_type_indicator
	nop	
	mov	byte ptr [rbp - 0x127d], al
.label_894:
	mov	rbp, rbp
	jmp	.label_918
.label_918:
	lea	rdi, [rdi]
	add	rsp, 0x15a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ff00

	.globl format_inode
	.type format_inode, @function
format_inode:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	mov	eax, 0x15
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x18]
	nop	
	ja	.label_945
	jmp	.label_948
.label_945:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.226
	movabs	rsi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edx, 0xfac
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.format_inode
	call	__assert_fail
.label_948:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xb8], 1
	lea	rsi, [rsi]
	je	.label_947
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x20], 0
	nop	
	je	.label_947
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	umaxtostr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_946
.label_947:
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_946
.label_946:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ffe0

	.globl print_name_with_quoting
	.type print_name_with_quoting, @function
print_name_with_quoting:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x70
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdi
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x40], rdx
.label_2952:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	test	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	je	.label_949
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_956
.label_949:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_956:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	nop	
	test	byte ptr [byte ptr [print_with_color]],  1
	nop	
	je	.label_952
	mov	rdi, qword ptr [rbp - 0x48]
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	lea	rsi, [rsi]
	movzx	esi, al
	lea	rsi, [rsi]
	call	get_color_indicator
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_955
.label_952:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_955
.label_955:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	xor	ecx, ecx
	mov	dl, cl
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], dl
	je	.label_950
	lea	rsi, [rsi]
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x2a], al
	mov	rsp, rsp
	jne	.label_951
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	call	is_colored
	nop	
	mov	byte ptr [rbp - 0x2a], al
.label_951:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x2a]
	mov	byte ptr [rbp - 9], al
.label_950:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0xc4]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	xor	al, 0xff
	mov	r9, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, qword ptr [r8 + 0x10]
	mov	rbp, rbp
	mov	r10, rsp
	mov	qword ptr [r10], r8
	and	al, 1
	nop	
	movzx	r8d, al
	mov	rsp, rsp
	call	quote_name
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	process_signals
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_953
	call	prep_non_filename_text
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_954
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rsi, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, rsi
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rsi, rax
	lea	rdi, [rdi]
	je	.label_954
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:color_indicator
	add	rax, 0x170
	mov	rdi, rax
	call	put_indicator
.label_954:
	lea	rsi, [rsi]
	jmp	.label_953
.label_953:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4101f0

	.globl print_type_indicator
	.type print_type_indicator, @function
print_type_indicator:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	al, dil
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], al
	mov	dword ptr [rbp - 8], esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edx
	mov	al, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xc]
	and	al, 1
	movzx	edi, al
	call	get_type_indicator
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 1], 0
	je	.label_957
	jmp	.label_958
.label_958:
	movsx	edi, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	nop	
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_957
.label_957:
	nop	
	cmp	byte ptr [rbp - 1], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4102a0

	.globl get_color_indicator
	.type get_color_indicator, @function
get_color_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	test	byte ptr [rbp - 0x41], 1
	je	.label_1000
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	esi, dword ptr [rdx + 0xac]
	nop	
	mov	dword ptr [rbp - 0x10], esi
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dil, byte ptr [rdx + 0xb9]
	mov	rsp, rsp
	test	dil, 1
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1005
.label_1000:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	mov	rsp, rsp
	je	.label_963
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	test	byte ptr [rax + 0xb9], 1
	je	.label_963
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xac]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_1001
.label_963:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x30]
	mov	dword ptr [rbp - 0x14], ecx
.label_1001:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dl, byte ptr [rcx + 0xb9]
	mov	rbp, rbp
	and	dl, 1
	movzx	eax, dl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1005:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_972
	lea	rdi, [rdi]
	mov	edi, 0xc
	mov	rsp, rsp
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1009
	jmp	.label_972
.label_1009:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 0xc
	jmp	.label_997
.label_972:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	test	byte ptr [rax + 0xb8], 1
	lea	rdi, [rdi]
	jne	.label_1007
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xa8]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + get_color_indicator.filetype_indicator]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], ecx
	jmp	.label_965
.label_1007:
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_960
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 5
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x800
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_964
	mov	edi, 0x10
	nop	
	call	is_colored
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_979
	mov	rbp, rbp
	jmp	.label_964
.label_979:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], 0x10
	jmp	.label_984
.label_964:
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x400
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_987
	mov	edi, 0x11
	nop	
	call	is_colored
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_995
	jmp	.label_987
.label_995:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 0x11
	jmp	.label_994
.label_987:
	mov	edi, 0x15
	lea	rsi, [rsi]
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1003
	jmp	.label_1006
.label_1003:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	test	byte ptr [rax + 0xc0], 1
	mov	rbp, rbp
	je	.label_1006
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], 0x15
	nop	
	jmp	.label_1002
.label_1006:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	eax, 0x49
	cmp	eax, 0
	je	.label_999
	mov	edi, 0xe
	call	is_colored
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_962
	jmp	.label_999
.label_962:
	nop	
	mov	dword ptr [rbp - 0x48], 0xe
	mov	rsp, rsp
	jmp	.label_967
.label_999:
	mov	eax, 1
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rdx + 0x28]
	jae	.label_968
	mov	edi, 0x16
	lea	rsi, [rsi]
	call	is_colored
	nop	
	test	al, 1
	jne	.label_1014
	mov	rbp, rbp
	jmp	.label_968
.label_1014:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], 0x16
.label_968:
	jmp	.label_967
.label_967:
	nop	
	jmp	.label_1002
.label_1002:
	jmp	.label_994
.label_994:
	mov	rsp, rsp
	jmp	.label_984
.label_984:
	jmp	.label_971
.label_960:
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	mov	rbp, rbp
	jne	.label_996
	mov	dword ptr [rbp - 0x48], 6
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x200
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_998
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 2
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_998
	mov	rbp, rbp
	mov	edi, 0x14
	call	is_colored
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1012
	jmp	.label_998
.label_1012:
	nop	
	mov	dword ptr [rbp - 0x48], 0x14
	mov	rsp, rsp
	jmp	.label_976
.label_998:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_959
	mov	rbp, rbp
	mov	edi, 0x13
	call	is_colored
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_970
	mov	rbp, rbp
	jmp	.label_959
.label_970:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], 0x13
	lea	rdi, [rdi]
	jmp	.label_975
.label_959:
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x200
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_981
	nop	
	mov	edi, 0x12
	call	is_colored
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_988
	jmp	.label_981
.label_988:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], 0x12
.label_981:
	jmp	.label_975
.label_975:
	jmp	.label_976
.label_976:
	jmp	.label_993
.label_996:
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	jne	.label_991
	mov	dword ptr [rbp - 0x48], 7
	lea	rsi, [rsi]
	jmp	.label_990
.label_991:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x1000
	mov	rsp, rsp
	jne	.label_982
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 8
	lea	rdi, [rdi]
	jmp	.label_989
.label_982:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0xc000
	jne	.label_1013
	mov	dword ptr [rbp - 0x48], 9
	jmp	.label_986
.label_1013:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x6000
	jne	.label_961
	mov	dword ptr [rbp - 0x48], 0xa
	jmp	.label_969
.label_961:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_973
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], 0xb
	jmp	.label_980
.label_973:
	mov	dword ptr [rbp - 0x48], 0xd
.label_980:
	jmp	.label_969
.label_969:
	mov	rbp, rbp
	jmp	.label_986
.label_986:
	lea	rdi, [rdi]
	jmp	.label_989
.label_989:
	lea	rdi, [rdi]
	jmp	.label_990
.label_990:
	mov	rsp, rsp
	jmp	.label_993
.label_993:
	jmp	.label_971
.label_971:
	mov	rsp, rsp
	jmp	.label_965
.label_965:
	jmp	.label_997
.label_997:
	mov	qword ptr [rbp - 0x28], 0
	cmp	dword ptr [rbp - 0x48], 5
	jne	.label_983
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	qword ptr [rbp - 0x28], rax
.label_978:
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_974
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_1011
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rsi]
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rdx
	mov	rdx, rcx
	nop	
	call	c_strncasecmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1011
	mov	rsp, rsp
	jmp	.label_974
.label_1011:
	jmp	.label_977
.label_977:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_978
.label_974:
	jmp	.label_983
.label_983:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x48], 7
	jne	.label_985
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	jne	.label_985
	nop	
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	mov	rbp, rbp
	jne	.label_992
	mov	rsp, rsp
	mov	edi, 0xd
	mov	rbp, rbp
	call	is_colored
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_992
	jmp	.label_1010
.label_992:
	mov	dword ptr [rbp - 0x48], 0xd
.label_1010:
	mov	rbp, rbp
	jmp	.label_985
.label_985:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_1004
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1008
.label_1004:
	movabs	rax, OFFSET FLAT:color_indicator
	mov	ecx, dword ptr [rbp - 0x48]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
.label_1008:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1015
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_966
.label_1015:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_966
.label_966:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410950

	.globl get_type_indicator
	.type get_type_indicator, @function
get_type_indicator:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	al, dil
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	test	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	je	.label_1033
	nop	
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rsp, rsp
	je	.label_1042
	jmp	.label_1018
.label_1033:
	cmp	dword ptr [rbp - 4], 5
	mov	rsp, rsp
	jne	.label_1018
.label_1042:
	test	byte ptr [rbp - 9], 1
	je	.label_1024
	cmp	dword ptr [dword ptr [indicator_style]],  3
	nop	
	jne	.label_1024
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	and	eax, 0x49
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1024
	mov	byte ptr [rbp - 0xa], 0x2a
	mov	rbp, rbp
	jmp	.label_1035
.label_1024:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa], 0
.label_1035:
	jmp	.label_1041
.label_1018:
	test	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	je	.label_1025
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1022
	mov	rsp, rsp
	jmp	.label_1019
.label_1025:
	cmp	dword ptr [rbp - 4], 3
	je	.label_1022
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	jne	.label_1019
.label_1022:
	mov	byte ptr [rbp - 0xa], 0x2f
	mov	rsp, rsp
	jmp	.label_1029
.label_1019:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [indicator_style]],  1
	jne	.label_1030
	mov	byte ptr [rbp - 0xa], 0
	lea	rsi, [rsi]
	jmp	.label_1034
.label_1030:
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	je	.label_1037
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_1040
	mov	rbp, rbp
	jmp	.label_1017
.label_1037:
	cmp	dword ptr [rbp - 4], 6
	jne	.label_1017
.label_1040:
	mov	byte ptr [rbp - 0xa], 0x40
	mov	rbp, rbp
	jmp	.label_1020
.label_1017:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 9], 1
	je	.label_1023
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x1000
	je	.label_1026
	jmp	.label_1031
.label_1023:
	cmp	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jne	.label_1031
.label_1026:
	mov	byte ptr [rbp - 0xa], 0x7c
	jmp	.label_1036
.label_1031:
	test	byte ptr [rbp - 9], 1
	je	.label_1038
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	lea	rdi, [rdi]
	je	.label_1039
	jmp	.label_1016
.label_1038:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 7
	mov	rbp, rbp
	jne	.label_1016
.label_1039:
	mov	byte ptr [rbp - 0xa], 0x3d
	mov	rbp, rbp
	jmp	.label_1021
.label_1016:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 9], 1
	je	.label_1028
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1027
	jmp	.label_1028
.label_1027:
	mov	byte ptr [rbp - 0xa], 0x3e
	jmp	.label_1032
.label_1028:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa], 0
.label_1032:
	jmp	.label_1021
.label_1021:
	jmp	.label_1036
.label_1036:
	jmp	.label_1020
.label_1020:
	jmp	.label_1034
.label_1034:
	jmp	.label_1029
.label_1029:
	jmp	.label_1041
.label_1041:
	movsx	eax, byte ptr [rbp - 0xa]
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410b90

	.globl length_of_file_name_and_frills
	.type length_of_file_name_and_frills, @function
length_of_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x2d0
	mov	qword ptr [rbp - 0x2b0], rdi
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_1049
	cmp	dword ptr [dword ptr [format]],  4
	mov	rsp, rsp
	jne	.label_1054
	nop	
	lea	rsi, [rbp - 0x2a0]
	nop	
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x2c8], rax
	mov	rbp, rbp
	jmp	.label_1052
.label_1054:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [inode_number_width]]
	mov	qword ptr [rbp - 0x2c8], rax
.label_1052:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2c8]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1049:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_1051
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1045
	mov	rax, qword ptr [rbp - 0x2b0]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_1046
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_1050
.label_1046:
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 0x2b0]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	mov	rsp, rsp
	call	human_readable
	mov	qword ptr [rbp - 0x2c0], rax
.label_1050:
	mov	rax, qword ptr [rbp - 0x2c0]
	mov	rdi, rax
	mov	rbp, rbp
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2b8], rax
	jmp	.label_1044
.label_1045:
	nop	
	movsxd	rax,  dword ptr [dword ptr [block_size_width]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2b8], rax
.label_1044:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2b8]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1051:
	nop	
	test	byte ptr [byte ptr [print_scontext]],  1
	nop	
	je	.label_1043
	cmp	dword ptr [dword ptr [format]],  4
	lea	rdi, [rdi]
	jne	.label_1047
	nop	
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rbp, rbp
	call	strlen
	mov	qword ptr [rbp - 0x2a8], rax
	lea	rsi, [rsi]
	jmp	.label_1053
.label_1047:
	movsxd	rax,  dword ptr [dword ptr [scontext_width]]
	mov	qword ptr [rbp - 0x2a8], rax
.label_1053:
	mov	rax, qword ptr [rbp - 0x2a8]
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1043:
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 0xc4]
	mov	rbp, rbp
	call	quote_name_width
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_1048
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 0x2b0]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0xa8]
	nop	
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edi, cl
	call	get_type_indicator
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rbp - 1]
	cmp	edx, 0
	mov	rsp, rsp
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	r8, edx
	add	r8, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], r8
.label_1048:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x2d0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e40

	.globl quote_name_width
	.type quote_name_width, @function
quote_name_width:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	push	rbx
	sub	rsp, 0x2048
	lea	rax, [rbp - 0x10]
	mov	ecx, 0x2000
	mov	r8d, ecx
	lea	r9, [rbp - 0x2038]
	mov	rsp, rsp
	lea	r10, [rbp - 0x11]
	lea	r11, [rbp - 0x2030]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x203c], edx
	nop	
	mov	qword ptr [rbp - 0x10], r11
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	ebx, dword ptr [rbp - 0x203c]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, r8
	mov	r8d, ebx
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r10
	call	quote_name_buf
	mov	rbp, rbp
	lea	rcx, [rbp - 0x2030]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x2048], rax
	je	.label_1055
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	je	.label_1055
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
.label_1055:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	nop	
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x2038]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2038], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2038]
	lea	rdi, [rdi]
	add	rsp, 0x2048
	nop	
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410f20

	.globl calculate_columns
	.type calculate_columns, @function
calculate_columns:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x70
	nop	
	mov	al, dil
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x41], al
	mov	rcx,  qword ptr [word ptr [max_idx]]
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	lea	rdi, [rdi]
	jae	.label_1066
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1063
.label_1066:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x20], rax
.label_1063:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	call	init_column_info
	mov	qword ptr [rbp - 0x60], 0
.label_1067:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	lea	rsi, [rsi]
	jae	.label_1060
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	call	length_of_file_name_and_frills
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x70], 0
.label_1058:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jae	.label_1057
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [column_info]]
	mov	rbp, rbp
	test	byte ptr [rax], 1
	je	.label_1068
	mov	rbp, rbp
	test	byte ptr [rbp - 0x41], 1
	je	.label_1059
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x70]
	add	rdx, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, rcx
	xor	esi, esi
	mov	qword ptr [rbp - 0x50], rdx
	mov	edx, esi
	mov	rcx, qword ptr [rbp - 0x50]
	div	rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, rdi
	mov	rbp, rbp
	xor	esi, esi
	mov	edx, esi
	mov	r8, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	div	r8
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1064
.label_1059:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	add	rcx, 1
	xor	edx, edx
	div	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
.label_1064:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, 2
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	cmp	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmove	ecx, edx
	movsxd	rsi, ecx
	add	rax, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	imul	rsi, rsi, 0x18
	mov	rbp, rbp
	add	rsi,  qword ptr [word ptr [column_info]]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + rax*8]
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	jae	.label_1071
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	imul	rdx, rdx, 0x18
	mov	rsp, rsp
	add	rdx,  qword ptr [word ptr [column_info]]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	imul	rdx, rdx, 0x18
	add	rdx,  qword ptr [word ptr [column_info]]
	nop	
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [column_info]]
	mov	rax, qword ptr [rax + 8]
	cmp	rax,  qword ptr [word ptr [line_length]]
	setb	sil
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	nop	
	and	sil, 1
	mov	byte ptr [rax], sil
.label_1071:
	jmp	.label_1068
.label_1068:
	jmp	.label_1062
.label_1062:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1058
.label_1057:
	jmp	.label_1065
.label_1065:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1067
.label_1060:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_1056:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jae	.label_1069
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rbp, rbp
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax,  qword ptr [word ptr [column_info]]
	test	byte ptr [rax], 1
	lea	rsi, [rsi]
	je	.label_1061
	jmp	.label_1069
.label_1061:
	jmp	.label_1070
.label_1070:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1056
.label_1069:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411270

	.globl indent
	.type indent, @function
indent:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_1073:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jae	.label_1074
	mov	rsp, rsp
	cmp	qword ptr [word ptr [tabsize]],  0
	nop	
	je	.label_1075
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, 1
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, rsi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, rax
	jbe	.label_1075
	mov	edi, 9
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [tabsize]]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	nop	
	mov	rax, rdx
	xor	edi, edi
	mov	edx, edi
	mov	rbp, rbp
	div	qword ptr [word ptr [tabsize]]
	sub	rcx, rdx
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	jmp	.label_1072
.label_1075:
	nop	
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1072:
	lea	rsi, [rsi]
	jmp	.label_1073
.label_1074:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411370

	.globl init_column_info
	.type init_column_info, @function
init_column_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax,  qword ptr [word ptr [max_idx]]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1084
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1078
.label_1084:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_1078:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	jae	.label_1086
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [max_idx]]
	lea	rdi, [rdi]
	shr	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jae	.label_1081
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [column_info]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	call	xnrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [column_info]],  rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1082
.label_1081:
	mov	rsp, rsp
	mov	eax, 0x18
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [column_info]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [max_idx]]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	xnrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [column_info]],  rax
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_1082:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	add	rax, 1
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_1089
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x48]
	je	.label_1080
.label_1089:
	call	xalloc_die
.label_1080:
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shr	rcx, 1
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 0x40], rax
.label_1088:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1085
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	imul	rcx, rcx, 0x18
	nop	
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	shl	rax, 3
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1088
.label_1085:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [word ptr [init_column_info.column_info_alloc]],  rax
.label_1086:
	mov	qword ptr [rbp - 0x40], 0
.label_1079:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jae	.label_1083
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 1
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	imul	rax, rax, 3
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 8], 0
.label_1076:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	ja	.label_1087
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1076
.label_1087:
	jmp	.label_1077
.label_1077:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1079
.label_1083:
	add	rsp, 0x50
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411670

	.globl format_user
	.type format_user, @function
format_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x18], esi
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_1090
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1091
.label_1090:
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_1093
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	jmp	.label_1092
.label_1093:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	call	getuser
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1092:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1091:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	edx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	format_user_or_group
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411720

	.globl format_group
	.type format_group, @function
format_group:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	al, dl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1094
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1097
.label_1094:
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_1096
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	jmp	.label_1095
.label_1096:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	getgroup
	mov	qword ptr [rbp - 8], rax
.label_1095:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1097:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, rax
	call	format_user_or_group
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4117d0

	.globl format_user_or_group
	.type format_user_or_group, @function
format_user_or_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], edx
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_1101
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	call	gnu_mbswidth
	mov	rbp, rbp
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x3c], ecx
	cmp	esi, dword ptr [rbp - 0x3c]
	jle	.label_1102
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1100
.label_1102:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x24], eax
.label_1100:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	call	strlen
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xc]
	add	rax, rsi
	mov	qword ptr [rbp - 8], rax
.label_1099:
	mov	rsp, rsp
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	nop	
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	jne	.label_1099
	mov	rsp, rsp
	jmp	.label_1098
.label_1101:
	movabs	rdi, OFFSET FLAT:.str.230
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	printf
	nop	
	movsxd	rdx, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rbp - 0x40], eax
.label_1098:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 1
	add	rax,  qword ptr [word ptr [dired_pos]]
	nop	
	mov	qword ptr [word ptr [dired_pos]],  rax
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x411900

	.globl align_nstrftime
	.type align_nstrftime, @function
align_nstrftime:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x28], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], r8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], r9d
	test	byte ptr [byte ptr [use_abformat]],  1
	lea	rsi, [rsi]
	je	.label_1103
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:abformat
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x31]
	lea	rdi, [rdi]
	and	dl, 1
	movzx	esi, dl
	mov	edi, esi
	mov	rsp, rsp
	imul	rdi, rdi, 0x600
	add	rax, rdi
	shl	rcx, 7
	add	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1104
.label_1103:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [+ (rdx * 8) + long_time_format]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
.label_1104:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9d, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	call	nstrftime
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4119f0

	.globl long_time_expected_width
	.type long_time_expected_width, @function
long_time_expected_width:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x440
	nop	
	cmp	dword ptr [dword ptr [long_time_expected_width.width]],  0
	mov	rbp, rbp
	jge	.label_1106
	lea	rsi, [rbp - 0x48]
	lea	rdx, [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi,  qword ptr [word ptr [localtz]]
	mov	rbp, rbp
	call	localtime_rz
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1105
	mov	eax, 0x3e9
	mov	esi, eax
	xor	eax, eax
	lea	rcx, [rbp - 0x38]
	lea	rdi, [rbp - 0x440]
	mov	r8,  qword ptr [word ptr [localtz]]
	nop	
	mov	edx, eax
	mov	r9d, eax
	lea	rsi, [rsi]
	call	align_nstrftime
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1108
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	lea	rdi, [rbp - 0x440]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	mbsnwidth
	mov	dword ptr [dword ptr [long_time_expected_width.width]],  eax
.label_1108:
	jmp	.label_1105
.label_1105:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [long_time_expected_width.width]],  0
	lea	rsi, [rsi]
	jge	.label_1107
	mov	dword ptr [dword ptr [long_time_expected_width.width]],  0
.label_1107:
	lea	rdi, [rdi]
	jmp	.label_1106
.label_1106:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [long_time_expected_width.width]]
	add	rsp, 0x440
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411ae0

	.globl timetostr
	.type timetostr, @function
timetostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b20

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	mov	qword ptr [rbp - 0x68], 0x400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0x2000
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x50]
	jae	.label_1116
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1114
.label_1116:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_1114:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jae	.label_1121
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1115
.label_1121:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
.label_1115:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_1117:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1112
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
	nop	
	jmp	.label_1111
.label_1112:
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	readlink
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	jge	.label_1120
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x22
	mov	rbp, rbp
	je	.label_1120
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jmp	.label_1111
.label_1120:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_1110
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1111
.label_1110:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	free
	movabs	rdi, 0x3fffffffffffffff
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_1118
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1109
.label_1118:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_1119
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_1113
.label_1119:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1111
.label_1113:
	jmp	.label_1109
.label_1109:
	lea	rdi, [rdi]
	jmp	.label_1117
.label_1111:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411d60

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x411d80

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], -1
	mov	byte ptr [rbp - 0x21], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_1129:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1127
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1124
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_1130
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1122
.label_1130:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1125
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1123
.label_1125:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1131
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x48]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_1132
.label_1131:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_1132:
	lea	rsi, [rsi]
	jmp	.label_1123
.label_1123:
	mov	rbp, rbp
	jmp	.label_1126
.label_1126:
	mov	rsp, rsp
	jmp	.label_1124
.label_1124:
	nop	
	jmp	.label_1128
.label_1128:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_1129
.label_1127:
	test	byte ptr [rbp - 0x21], 1
	je	.label_1133
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_1122
.label_1133:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1122:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411f30

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1134
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_1135
.label_1134:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_1135:
	mov	rax, qword ptr [rbp - 0x38]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412010

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 8], eax
.label_1139:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_1137
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1136
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1141
.label_1136:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1138
.label_1141:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_1138:
	jmp	.label_1140
.label_1140:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1139
.label_1137:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4121c0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	jl	.label_1142
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1143
.label_1142:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], -1
.label_1143:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412280
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_1146:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_1148
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1145
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1144
.label_1145:
	lea	rdi, [rdi]
	jmp	.label_1147
.label_1147:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1146
.label_1148:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_1144:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412350

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1149
	jmp	.label_1152
.label_1152:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1149
	jmp	.label_1150
.label_1150:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1151
	jmp	.label_1149
.label_1149:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1153
.label_1151:
	mov	byte ptr [rbp - 1], 0
.label_1153:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4123c0

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1154
	jmp	.label_1157
.label_1157:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1155
	jmp	.label_1154
.label_1154:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1156
.label_1155:
	mov	byte ptr [rbp - 1], 0
.label_1156:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412410
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1158
	jmp	.label_1159
.label_1159:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1160
.label_1158:
	mov	byte ptr [rbp - 1], 0
.label_1160:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412440
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1161
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1161:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412470
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_1162
	jmp	.label_1164
.label_1164:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1165
	jmp	.label_1162
.label_1162:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1163
.label_1165:
	mov	byte ptr [rbp - 1], 0
.label_1163:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4124c0

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1166
	jmp	.label_1168
.label_1168:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1167
.label_1166:
	mov	byte ptr [rbp - 1], 0
.label_1167:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412500
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1169
	jmp	.label_1171
.label_1171:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1170
.label_1169:
	mov	byte ptr [rbp - 1], 0
.label_1170:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412540
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1172
	jmp	.label_1174
.label_1174:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1173
.label_1172:
	mov	byte ptr [rbp - 1], 0
.label_1173:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412580
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1175
	jmp	.label_1177
.label_1177:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1176
.label_1175:
	mov	byte ptr [rbp - 1], 0
.label_1176:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4125c0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x21
	sub	eax, 0xf
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1178
	jmp	.label_1181
.label_1181:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1178
	jmp	.label_1182
.label_1182:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1178
	jmp	.label_1180
.label_1180:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1183
	jmp	.label_1178
.label_1178:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1179
.label_1183:
	mov	byte ptr [rbp - 1], 0
.label_1179:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412640
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1184
	jmp	.label_1187
.label_1187:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1186
	jmp	.label_1184
.label_1184:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1185
.label_1186:
	mov	byte ptr [rbp - 1], 0
.label_1185:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412690
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1188
	jmp	.label_1190
.label_1190:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1189
.label_1188:
	mov	byte ptr [rbp - 1], 0
.label_1189:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4126d0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1191
	jmp	.label_1193
.label_1193:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1191
	jmp	.label_1192
.label_1192:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1194
	jmp	.label_1191
.label_1191:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1195
.label_1194:
	mov	byte ptr [rbp - 1], 0
.label_1195:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412740

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1196
	jmp	.label_1198
.label_1198:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1197
.label_1196:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1197:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412780
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1199
	jmp	.label_1201
.label_1201:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1200
.label_1199:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1200:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4127c0

	.globl c_strncasecmp
	.type c_strncasecmp, @function
c_strncasecmp:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 8]
	nop	
	cmp	rdx, qword ptr [rbp - 0x38]
	je	.label_1202
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_1208
.label_1202:
	mov	dword ptr [rbp - 0x18], 0
	jmp	.label_1206
.label_1208:
	jmp	.label_1203
.label_1203:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	movzx	edi, byte ptr [rax]
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x11], cl
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, -1
	mov	qword ptr [rbp - 0x10], rdx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1204
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1205
.label_1204:
	lea	rsi, [rsi]
	jmp	.label_1207
.label_1205:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x11]
	cmp	eax, ecx
	lea	rsi, [rsi]
	je	.label_1203
.label_1207:
	nop	
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_1206:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4128e0

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x180
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rdi
	mov	dword ptr [rbp - 0x40], esi
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], 0
	mov	esi, dword ptr [rbp - 0x40]
	nop	
	and	esi, 0xfffffffc
	nop	
	mov	dword ptr [rbp - 0x6c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	and	esi, 4
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	mov	esi, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	and	esi, 3
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	ecx, 1
	mov	rbp, rbp
	and	esi, ecx
	mov	rsp, rsp
	cmp	esi, 0
	mov	rbp, rbp
	je	.label_1277
	call	__errno_location
	mov	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jmp	.label_1223
.label_1277:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x178], 0
	jne	.label_1250
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x68], 0
	mov	rsp, rsp
	jmp	.label_1223
.label_1250:
	mov	rax, qword ptr [rbp - 0x178]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1266
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 0x68], 0
	mov	rsp, rsp
	jmp	.label_1223
.label_1266:
	mov	qword ptr [rbp - 0x128], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x178]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_1279
	call	xgetcwd
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_1217
	mov	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jmp	.label_1223
.label_1217:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	strchr
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rdi
	cmp	rax, 0x1000
	mov	rbp, rbp
	jge	.label_1232
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 0x150], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	sub	rsi, rdi
	lea	rsi, [rsi]
	add	rax, rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1248
.label_1232:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], 0
	lea	rdi, [rdi]
	jmp	.label_1272
.label_1279:
	mov	eax, 0x1000
	mov	rbp, rbp
	mov	edi, eax
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 0x1000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x128], 0
	mov	rsp, rsp
	je	.label_1212
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x38], rdx
.label_1212:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
.label_1272:
	mov	rsp, rsp
	jmp	.label_1244
.label_1244:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_1253
	jmp	.label_1268
.label_1268:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2f
	jne	.label_1270
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_1268
.label_1270:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x78], rax
.label_1245:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x41], cl
	je	.label_1209
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	sete	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], dl
.label_1209:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1233
	mov	rbp, rbp
	jmp	.label_1238
.label_1233:
	lea	rsi, [rsi]
	jmp	.label_1243
.label_1243:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1245
.label_1238:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x160]
	sub	rax, rcx
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1247
	mov	rsp, rsp
	jmp	.label_1253
.label_1247:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x160]
	sub	rax, rcx
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1256
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1256
	jmp	.label_1235
.label_1256:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	sub	rax, rcx
	cmp	rax, 2
	mov	rsp, rsp
	jne	.label_1216
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1216
	mov	rax, qword ptr [rbp - 0x160]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	jne	.label_1216
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x128]
	add	rcx, 1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jbe	.label_1224
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_1240:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x161], cl
	mov	rbp, rbp
	jbe	.label_1242
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax - 1]
	mov	rsp, rsp
	cmp	ecx, 0x2f
	sete	dl
	nop	
	xor	dl, 0xff
	nop	
	mov	byte ptr [rbp - 0x161], dl
.label_1242:
	mov	al, byte ptr [rbp - 0x161]
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1255
	jmp	.label_1262
.label_1255:
	lea	rsi, [rsi]
	jmp	.label_1263
.label_1263:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1240
.label_1262:
	jmp	.label_1224
.label_1224:
	lea	rdi, [rdi]
	jmp	.label_1234
.label_1216:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_1275
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax], 0x2f
.label_1275:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	rdx, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rax, rcx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_1211
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x170], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x160]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	cmp	rax, 0x1000
	mov	rsp, rsp
	jle	.label_1227
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_1249
.label_1227:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x18], rax
.label_1249:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x38], rax
.label_1211:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x148], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x160]
	sub	rcx, rdx
	nop	
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x119], 1
	je	.label_1226
	cmp	dword ptr [rbp - 0x40], 2
	jne	.label_1226
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	jmp	.label_1239
.label_1226:
	nop	
	test	byte ptr [rbp - 0x119], 1
	je	.label_1220
	nop	
	lea	rsi, [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	stat
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1260
.label_1220:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x110]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	mov	dword ptr [rbp - 0x7c], eax
.label_1260:
	mov	eax, dword ptr [rbp - 0x7c]
	cmp	eax, 0
	je	.label_1271
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x12c], ecx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jne	.label_1274
	jmp	.label_1225
.label_1274:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1280
	nop	
	movabs	rsi, OFFSET FLAT:.str_4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	call	strspn
	mov	rsi, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rsi + rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_1221
	cmp	dword ptr [rbp - 0x12c], 2
	mov	rbp, rbp
	je	.label_1228
.label_1221:
	jmp	.label_1225
.label_1228:
	jmp	.label_1215
.label_1280:
	mov	dword ptr [rbp - 0xf8], 0
.label_1271:
	jmp	.label_1239
.label_1239:
	mov	eax, dword ptr [rbp - 0xf8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	nop	
	jne	.label_1241
	lea	rdi, [rbp - 0x118]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x110]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	call	seen_triple
	test	al, 1
	jne	.label_1254
	lea	rsi, [rsi]
	jmp	.label_1257
.label_1254:
	cmp	dword ptr [rbp - 0x40], 2
	nop	
	jne	.label_1259
	mov	rbp, rbp
	jmp	.label_1215
.label_1259:
	mov	dword ptr [rbp - 0x12c], 0x28
	jmp	.label_1225
.label_1257:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0xe0]
	call	areadlink_with_size
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x140], 0
	jne	.label_1218
	cmp	dword ptr [rbp - 0x40], 2
	mov	rbp, rbp
	jne	.label_1229
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	je	.label_1229
	lea	rsi, [rsi]
	jmp	.label_1215
.label_1229:
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x12c], ecx
	jmp	.label_1225
.label_1218:
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1219
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	cmp	rax, 0x1000
	mov	rsp, rsp
	jbe	.label_1269
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1246
.label_1269:
	nop	
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_1246
.label_1246:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1213
.label_1219:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jbe	.label_1278
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1278:
	nop	
	jmp	.label_1213
.label_1213:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	memmove
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x138], rax
	mov	rbp, rbp
	call	memcpy
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x178], rax
	mov	rcx, qword ptr [rbp - 0x140]
	nop	
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	mov	rsp, rsp
	jne	.label_1261
	mov	qword ptr [rbp - 0x60], 0
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_1265
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rdx, qword ptr [rbp - 0x60]
	call	memcpy
.label_1265:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	lea	rdi, [rdi]
	jmp	.label_1276
.label_1261:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x128]
	add	rcx, 1
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jbe	.label_1222
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
.label_1267:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x151], cl
	lea	rdi, [rdi]
	jbe	.label_1273
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	sete	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x151], dl
.label_1273:
	mov	al, byte ptr [rbp - 0x151]
	test	al, 1
	nop	
	jne	.label_1258
	mov	rsp, rsp
	jmp	.label_1252
.label_1258:
	mov	rbp, rbp
	jmp	.label_1264
.label_1264:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1267
.label_1252:
	jmp	.label_1222
.label_1222:
	jmp	.label_1276
.label_1276:
	mov	rdi, qword ptr [rbp - 0x140]
	nop	
	call	free
	jmp	.label_1230
.label_1241:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1210
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1210
	cmp	dword ptr [rbp - 0x40], 2
	je	.label_1210
	mov	dword ptr [rbp - 0x12c], 0x14
	lea	rdi, [rdi]
	jmp	.label_1225
.label_1210:
	mov	rbp, rbp
	jmp	.label_1230
.label_1230:
	jmp	.label_1234
.label_1234:
	lea	rdi, [rdi]
	jmp	.label_1235
.label_1235:
	mov	rbp, rbp
	jmp	.label_1237
.label_1237:
	jmp	.label_1215
.label_1215:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_1244
.label_1253:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x128]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_1251
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_1251
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_1251:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_1236
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x10], rax
.label_1236:
	mov	rdi, qword ptr [rbp - 8]
	call	free
	cmp	qword ptr [rbp - 0x118], 0
	nop	
	je	.label_1214
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	call	hash_free
.label_1214:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	jmp	.label_1223
.label_1225:
	mov	rdi, qword ptr [rbp - 8]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	free
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_1231
	nop	
	mov	rdi, qword ptr [rbp - 0x118]
	call	hash_free
.label_1231:
	mov	eax, dword ptr [rbp - 0x12c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
.label_1223:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4135b0

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	jne	.label_1281
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, eax
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:triple_hash
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:triple_compare_ino_str
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:triple_free
	nop	
	mov	qword ptr [rbp - 0x20], 7
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1285
	lea	rdi, [rdi]
	call	xalloc_die
.label_1285:
	jmp	.label_1281
.label_1281:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	seen_file
	mov	rsp, rsp
	test	al, 1
	jne	.label_1282
	jmp	.label_1283
.label_1282:
	mov	byte ptr [rbp - 0x21], 1
	jmp	.label_1284
.label_1283:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	record_file
	nop	
	mov	byte ptr [rbp - 0x21], 0
.label_1284:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4136c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4136f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413720

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	close_stream
	cmp	eax, 0
	je	.label_1286
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1289
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_1286
.label_1289:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_6
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1290
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1287
.label_1290:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_1287:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_1286:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_1288
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1288:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413850

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], 0
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_1291
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_1294
.label_1291:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	nop	
	cmove	eax, ecx
	mov	dword ptr [rbp - 0xc], eax
.label_1294:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	last_component
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1295:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_1296
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_1292
	jmp	.label_1296
.label_1292:
	jmp	.label_1293
.label_1293:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1295
.label_1296:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413940

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_len
	mov	rsp, rsp
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	mov	byte ptr [rbp - 0x22], cl
	je	.label_1298
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x22], cl
	lea	rdi, [rdi]
	jmp	.label_1298
.label_1298:
	mov	al, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	nop	
	mov	esi, edx
	nop	
	add	rcx, rsi
	mov	rsp, rsp
	add	rcx, 1
	mov	rdi, rcx
	nop	
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1300
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_1297
.label_1300:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	je	.label_1299
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0x2e
.label_1299:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1297:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a60

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_1303:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_1306
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1303
.label_1306:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_1302:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1304
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_1301
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_1305
.label_1301:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_1307
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_1307:
	jmp	.label_1305
.label_1305:
	jmp	.label_1308
.label_1308:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1302
.label_1304:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413b30

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1310:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_1309
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], sil
.label_1309:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_1311
	mov	rbp, rbp
	jmp	.label_1312
.label_1311:
	jmp	.label_1313
.label_1313:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1310
.label_1312:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413bf0

	.globl file_has_acl
	.type file_has_acl, @function
file_has_acl:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413c10

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1314
	jmp	.label_1316
.label_1314:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	xstrdup
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1315
	mov	rbp, rbp
	call	xalloc_die
.label_1315:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	je	.label_1316
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	nop	
	call	triple_free
.label_1316:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413cf0

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1317
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1318
.label_1317:
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rax
	call	hash_lookup
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	nop	
	mov	byte ptr [rbp - 9], dl
.label_1318:
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x413d90

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	lea	rdi, [rdi]
	mov	edx, 0x72
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0xc]
	and	r8d, 0x100
	cmp	r8d, 0
	nop	
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 1], al
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	edx, 0x80
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	cmovne	edi, ecx
	mov	al, dil
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 2], al
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	and	ecx, 0x800
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1320
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	edx, 0x40
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_1321
.label_1320:
	lea	rsi, [rsi]
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x18], eax
.label_1321:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	lea	rsi, [rsi]
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 3], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_1323
	mov	eax, 0x53
	mov	rsp, rsp
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 8
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1324
.label_1323:
	nop	
	mov	eax, 0x2d
	mov	rsp, rsp
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	and	edx, 8
	lea	rsi, [rsi]
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_1324:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 6], dil
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 7], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	dil, cl
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	eax, 0x200
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1319
	mov	eax, 0x54
	lea	rsi, [rsi]
	mov	ecx, 0x74
	nop	
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jmp	.label_1322
.label_1319:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 1
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x10], eax
.label_1322:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xb], 0
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414030

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	and	edi, 0xf000
	lea	rdi, [rdi]
	cmp	edi, 0x8000
	jne	.label_1331
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0x2d
	jmp	.label_1326
.label_1331:
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_1325
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0x64
	nop	
	jmp	.label_1326
.label_1325:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1327
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0x62
	nop	
	jmp	.label_1326
.label_1327:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1329
	mov	byte ptr [rbp - 5], 0x63
	jmp	.label_1326
.label_1329:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0xa000
	nop	
	jne	.label_1328
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0x6c
	jmp	.label_1326
.label_1328:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	jne	.label_1330
	mov	byte ptr [rbp - 5], 0x70
	mov	rbp, rbp
	jmp	.label_1326
.label_1330:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	jne	.label_1332
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0x73
	lea	rsi, [rsi]
	jmp	.label_1326
.label_1332:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0x3f
.label_1326:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 5]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414150

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	strmode
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	cmp	edi, 0
	je	.label_1338
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0x46
	jmp	.label_1334
.label_1338:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1336
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x51
	jmp	.label_1333
.label_1336:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1337
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x53
	jmp	.label_1335
.label_1337:
	lea	rsi, [rsi]
	jmp	.label_1335
.label_1335:
	mov	rbp, rbp
	jmp	.label_1333
.label_1333:
	jmp	.label_1334
.label_1334:
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414230

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	call	mfile_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1339
	lea	rsi, [rsi]
	call	xalloc_die
.label_1339:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4142a0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	last_component
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	base_len
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x29], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1341
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	je	.label_1343
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	je	.label_1343
	nop	
	mov	byte ptr [rbp - 0x29], 0x2f
.label_1343:
	jmp	.label_1345
.label_1341:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1346
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], 0x2e
.label_1346:
	jmp	.label_1345
.label_1345:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rbp - 0x29]
	nop	
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1342
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_1340
.label_1342:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	cl, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x29]
	nop	
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_1344
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
.label_1344:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_1340:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414480

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x60], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x60]
	call	strcmp
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jne	.label_1362
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1351
.label_1362:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	jne	.label_1357
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1351
.label_1357:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	jne	.label_1361
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1351
.label_1361:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x3c]
	cmp	ecx, eax
	jne	.label_1353
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1351
.label_1353:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x60]
	mov	ecx, OFFSET FLAT:.str
	mov	edi, ecx
	mov	dword ptr [rbp - 8], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rbp, rbp
	jne	.label_1359
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1351
.label_1359:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	dword ptr [rbp - 0x14], eax
	call	strcmp
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14]
	cmp	ecx, eax
	mov	rsp, rsp
	jne	.label_1349
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1351
.label_1349:
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	ecx, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	dword ptr [rbp - 0x38], eax
	call	strcmp
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x38]
	cmp	ecx, eax
	jne	.label_1355
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1351
.label_1355:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1360
	mov	rax, qword ptr [rbp - 0x60]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	je	.label_1360
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1351
.label_1360:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	je	.label_1352
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	jne	.label_1352
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_1351
.label_1352:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	mov	rsp, rsp
	jne	.label_1356
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1356
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
.label_1356:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	call	match_suffix
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x10]
	mov	qword ptr [rbp - 0x70], rax
	call	match_suffix
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1354
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_1364
.label_1354:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x78], rax
.label_1364:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1350
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1365
.label_1350:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
.label_1365:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	jne	.label_1358
	nop	
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1347
.label_1358:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1347
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x30]
	call	strncmp
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rsp, rsp
	jne	.label_1347
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_1347:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	call	verrevcmp
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], 0
	lea	rdi, [rdi]
	jne	.label_1363
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_1348
.label_1363:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x34], eax
.label_1348:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_1351:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414830

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x11], 0
.label_1369:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_1372
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	je	.label_1367
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_1371
	mov	rsp, rsp
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1371
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1371:
	lea	rdi, [rdi]
	jmp	.label_1373
.label_1367:
	lea	rsi, [rsi]
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	mov	rsp, rsp
	jne	.label_1374
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1368
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1368:
	lea	rdi, [rdi]
	jmp	.label_1370
.label_1374:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	c_isalnum
	test	al, 1
	mov	rbp, rbp
	jne	.label_1366
	lea	rsi, [rsi]
	mov	eax, 0x7e
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1366
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1366:
	nop	
	jmp	.label_1370
.label_1370:
	jmp	.label_1373
.label_1373:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	jmp	.label_1369
.label_1372:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x414990

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdx
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_1401:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x3d], al
	jb	.label_1392
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	setb	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_1392:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_1399
	jmp	.label_1405
.label_1399:
	mov	dword ptr [rbp - 0x5c], 0
.label_1393:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1377
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rcx + rax]
	mov	rbp, rbp
	call	c_isdigit
	mov	rbp, rbp
	mov	dl, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], dl
	jne	.label_1377
	jmp	.label_1385
.label_1377:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x3e], cl
	jae	.label_1394
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edi, byte ptr [rcx + rax]
	nop	
	call	c_isdigit
	xor	al, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], al
.label_1394:
	mov	al, byte ptr [rbp - 0x3e]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], al
.label_1385:
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1378
	jmp	.label_1383
.label_1378:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1395
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1387
.label_1395:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x14], eax
.label_1387:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x60], eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x38]
	jne	.label_1397
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1400
.label_1397:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 4], eax
.label_1400:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	cmp	eax, dword ptr [rbp - 0x3c]
	je	.label_1380
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	jmp	.label_1375
.label_1380:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1393
.label_1383:
	jmp	.label_1379
.label_1379:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x30
	jne	.label_1398
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1379
.label_1398:
	lea	rsi, [rsi]
	jmp	.label_1382
.label_1382:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x30
	jne	.label_1384
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1382
.label_1384:
	jmp	.label_1396
.label_1396:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	rsp, rsp
	mov	dl, dil
	test	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x22], dl
	lea	rsi, [rsi]
	jne	.label_1402
	nop	
	jmp	.label_1391
.label_1402:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x22], al
.label_1391:
	mov	al, byte ptr [rbp - 0x22]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1386
	mov	rbp, rbp
	jmp	.label_1388
.label_1386:
	cmp	dword ptr [rbp - 0x5c], 0
	nop	
	jne	.label_1390
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	esi, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	sub	edx, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], edx
.label_1390:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1396
.label_1388:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	rsp, rsp
	test	al, 1
	jne	.label_1381
	nop	
	jmp	.label_1403
.label_1381:
	mov	dword ptr [rbp - 0x4c], 1
	jmp	.label_1375
.label_1403:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1404
	nop	
	jmp	.label_1389
.label_1404:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1375
.label_1389:
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	je	.label_1376
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_1375
.label_1376:
	mov	rbp, rbp
	jmp	.label_1401
.label_1405:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
.label_1375:
	mov	eax, dword ptr [rbp - 0x4c]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x414d50

	.globl order
	.type order, @function
order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	al, dil
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], al
	movzx	edi, byte ptr [rbp - 5]
	call	c_isdigit
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1409
	jmp	.label_1407
.label_1409:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1408
.label_1407:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 5]
	mov	rbp, rbp
	call	c_isalpha
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_1410
	jmp	.label_1406
.label_1410:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1408
.label_1406:
	movzx	eax, byte ptr [rbp - 5]
	mov	rsp, rsp
	cmp	eax, 0x7e
	jne	.label_1411
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1408
.label_1411:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_1408:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e00

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e40
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	lea	rdi, [rbp - 0x10]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], 1
	mov	edi, dword ptr [rbp - 0xc]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1413
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1414
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1412
.label_1414:
	mov	byte ptr [rbp - 0xd], 0
.label_1412:
	jmp	.label_1413
.label_1413:
	mov	al, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x414f30

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414f50

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414f70

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x414f90

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1419:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_1415
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1418
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_1420:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_1421
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1420
.label_1421:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_1416
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1416:
	jmp	.label_1418
.label_1418:
	mov	rbp, rbp
	jmp	.label_1417
.label_1417:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1419
.label_1415:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415070
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
.label_1426:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1422
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1424
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1427:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_1428
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1427
.label_1428:
	jmp	.label_1424
.label_1424:
	jmp	.label_1425
.label_1425:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1426
.label_1422:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_1423
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1423
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1429
.label_1423:
	mov	byte ptr [rbp - 0x19], 0
.label_1429:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4151a0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r8b, cl
	mov	rsp, rsp
	mov	al, r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, OFFSET FLAT:.str.1_3
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movq	xmm0, rdx
	nop	
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1430]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1431]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1432]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x415320

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1437
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_1433
.label_1437:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_1435:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1438
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_1434
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1434
	mov	rsp, rsp
	jmp	.label_1439
.label_1434:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1433
.label_1439:
	nop	
	jmp	.label_1436
.label_1436:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1435
.label_1438:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_1433:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415410

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1440
	call	abort
.label_1440:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4154a0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1441
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1444
.label_1441:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_1443:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_1442
	lea	rsi, [rsi]
	call	abort
.label_1442:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1447
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1444
.label_1447:
	jmp	.label_1446
.label_1446:
	nop	
	jmp	.label_1445
.label_1445:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1443
.label_1444:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415560
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	safe_hasher
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1452:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1449
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_1449
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1448
.label_1449:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1452
	jmp	.label_1450
.label_1450:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1453
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1451
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1448
.label_1451:
	jmp	.label_1450
.label_1453:
	mov	qword ptr [rbp - 0x28], 0
.label_1448:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415660
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
.label_1454:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1458
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1456
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_1459:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1457
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_1460
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1455
.label_1460:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1459
.label_1457:
	lea	rsi, [rsi]
	jmp	.label_1456
.label_1456:
	jmp	.label_1461
.label_1461:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1454
.label_1458:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_1455:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415770
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x38], rdx
.label_1464:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1462
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1466
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1468:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1469
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1467
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1465
.label_1467:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1468
.label_1469:
	mov	rbp, rbp
	jmp	.label_1466
.label_1466:
	nop	
	jmp	.label_1463
.label_1463:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1464
.label_1462:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_1465:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415880
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1470:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_1471
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1470
.label_1471:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4158f0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [default_tuning]]
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_1472]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_1473]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415940

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1474
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_1474:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1475
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1475:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1476
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1477
.label_1476:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1479
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_1479:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1478
	jmp	.label_1480
.label_1478:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1481
	mov	rsp, rsp
	jmp	.label_1480
.label_1481:
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_1482
	jmp	.label_1480
.label_1482:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1477
.label_1480:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_1477:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415b60

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415bb0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415be0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1483
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1486
.label_1483:
	movss	xmm0,  dword ptr [dword ptr [label_1487]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1485
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1484]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1485
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1484]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1485
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_1485
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1485
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1484]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1485
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	lea	rsi, [rsi]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	mov	rbp, rbp
	jbe	.label_1485
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1486
.label_1485:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1486:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x415d50

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_1488
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1489]]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	nop	
	and	edx, 1
	nop	
	mov	esi, edx
	or	rsi, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm1, rsi
	mov	rsp, rsp
	addss	xmm1, xmm1
	mov	rsp, rsp
	cvtsi2ss	xmm2, rax
	mov	rsp, rsp
	test	rax, rax
	movss	dword ptr [rbp - 0x24], xmm0
	movss	dword ptr [rbp - 0xc], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x10], xmm1
	mov	rbp, rbp
	js	.label_1490
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_1490:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x14], xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	movss	xmm1, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_1494
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1492
.label_1494:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1493]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1488:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_1491
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1492
.label_1491:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1492:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ec0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1498:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1497
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1501
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1500:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1495
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1499
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1499:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1500
.label_1495:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1496
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1496:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_1501:
	jmp	.label_1502
.label_1502:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1498
.label_1497:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416030

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1506
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1506
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1516:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1504
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1507
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_1512:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1513
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1512
.label_1513:
	jmp	.label_1507
.label_1507:
	jmp	.label_1511
.label_1511:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1516
.label_1504:
	jmp	.label_1506
.label_1506:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1508:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1510
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1515:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1503
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1515
.label_1503:
	jmp	.label_1505
.label_1505:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1508
.label_1510:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1509:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1514
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1509
.label_1514:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416220

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x60], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jne	.label_1519
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_1518
.label_1519:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1522
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_1518
.label_1522:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	call	calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_1524
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_1518
.label_1524:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_1523
	lea	rsi, [rsi]
	jmp	.label_1517
.label_1523:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 0x71], 1
	jmp	.label_1518
.label_1517:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_1520
	mov	rbp, rbp
	jmp	.label_1525
.label_1520:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1521
.label_1525:
	call	abort
.label_1521:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_1518:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4164f0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
.label_1538:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1531
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1533
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1539:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1530
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1526
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1537
.label_1526:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1537:
	mov	rbp, rbp
	jmp	.label_1528
.label_1528:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1539
.label_1530:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_1536
	jmp	.label_1529
.label_1536:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1534
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1527
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_1532
.label_1527:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_1535
.label_1534:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1535:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_1533:
	jmp	.label_1529
.label_1529:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_1538
.label_1531:
	mov	byte ptr [rbp - 0x19], 1
.label_1532:
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x416780

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_1540
	lea	rsi, [rsi]
	call	abort
.label_1540:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1548
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1557
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1557:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1541
.label_1548:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	lea	rdi, [rdi]
	mov	edi, edx
	and	edi, 1
	lea	rdi, [rdi]
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x80], rcx
	movss	dword ptr [rbp - 0x88], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1549
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1549:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x80]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	esi, edx
	and	esi, 1
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rsp, rsp
	or	rdi, rcx
	mov	rbp, rbp
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x60], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xbc], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x24], xmm2
	mov	rsp, rsp
	js	.label_1543
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_1543:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_1544
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, r9
	lea	rdi, [rdi]
	addss	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], al
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 8], xmm0
	js	.label_1554
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_1554:
	movss	xmm0, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	lea	rdi, [rdi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x1c], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa4], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x44], xmm3
	movss	dword ptr [rbp - 0x8c], xmm2
	js	.label_1558
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_1558:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1542
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1551
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x40], xmm1
	movss	dword ptr [rbp - 0x84], xmm0
	nop	
	js	.label_1556
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_1556:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_1552
.label_1551:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 1
	mov	esi, edx
	mov	rbp, rbp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	mov	rbp, rbp
	cvtsi2ss	xmm1, rax
	mov	rbp, rbp
	test	rax, rax
	movss	dword ptr [rbp - 0x18], xmm1
	nop	
	movss	dword ptr [rbp - 0x14], xmm0
	lea	rdi, [rdi]
	js	.label_1545
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_1545:
	movss	xmm0, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1552:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1489]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1547
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1541
.label_1547:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1493]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	nop	
	cmova	rax, rcx
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1555
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1541
.label_1555:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1550
	call	abort
.label_1550:
	jmp	.label_1542
.label_1542:
	lea	rdi, [rdi]
	jmp	.label_1544
.label_1544:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_1553
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1546
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1541
.label_1546:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1541
.label_1553:
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1541:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416d70

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_1566
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_1560
.label_1566:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_1567
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_1567
	jmp	.label_1561
.label_1567:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1564
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1569
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_1559
.label_1569:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_1559:
	jmp	.label_1564
.label_1564:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1560
.label_1561:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_1570:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1568
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1563
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1563
	lea	rsi, [rsi]
	jmp	.label_1562
.label_1563:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1565
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1565:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1560
.label_1562:
	mov	rbp, rbp
	jmp	.label_1571
.label_1571:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1570
.label_1568:
	mov	qword ptr [rbp - 0x40], 0
.label_1560:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x416fb0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1572
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1573
.label_1572:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1573:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417030

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], -1
	lea	rdi, [rdi]
	jne	.label_1576
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_1574
.label_1576:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_1577
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1575
.label_1577:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1575:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1574:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4170d0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0xb8]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1581
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1592
.label_1581:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_1590
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	mov	rsp, rsp
	and	edi, 1
	lea	rsi, [rsi]
	mov	r8d, edi
	mov	rbp, rbp
	or	r8, rsi
	mov	rbp, rbp
	cvtsi2ss	xmm0, r8
	mov	rsp, rsp
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x20], rcx
	movss	dword ptr [rbp - 0x2c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_1583
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1583:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	esi, edx
	lea	rsi, [rsi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rsi, [rsi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	movss	dword ptr [rbp - 0x14], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x64], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x5c], xmm2
	lea	rsi, [rsi]
	js	.label_1580
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1580:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_1591
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	lea	rdi, [rdi]
	and	r8d, 1
	mov	rsp, rsp
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	mov	rsp, rsp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x15], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x50], rcx
	movss	dword ptr [rbp - 0x84], xmm1
	movss	dword ptr [rbp - 0x24], xmm0
	nop	
	js	.label_1589
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_1589:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xb0], xmm0
	movss	dword ptr [rbp - 0x94], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa4], xmm3
	movss	dword ptr [rbp - 0x74], xmm2
	js	.label_1586
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_1586:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1578
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_1579
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	lea	rdi, [rdi]
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	mov	rbp, rbp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xc], xmm1
	nop	
	movss	dword ptr [rbp - 0xac], xmm0
	lea	rsi, [rsi]
	js	.label_1587
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1587:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_1593
.label_1579:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	mov	rsp, rsp
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	nop	
	mov	esi, edx
	mov	rsp, rsp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	lea	rsi, [rsi]
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	nop	
	test	rax, rax
	nop	
	movss	dword ptr [rbp - 0x28], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1585
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1585:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x10], xmm0
.label_1593:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1493]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovb	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_1588
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_1582:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_1584
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1582
.label_1584:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_1588:
	lea	rsi, [rsi]
	jmp	.label_1578
.label_1578:
	jmp	.label_1591
.label_1591:
	nop	
	jmp	.label_1590
.label_1590:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1592:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4175a0

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0xa
	jae	.label_1594
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_1594:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1598:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_1596
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_1596:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1597
	jmp	.label_1595
.label_1597:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_1598
.label_1595:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417650

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 8], 3
	mov	rdi, qword ptr [rbp - 8]
	imul	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_1600:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_1599
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], sil
.label_1599:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1602
	jmp	.label_1601
.label_1602:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1600
.label_1601:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x18]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	lea	rdi, [rdi]
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x417750

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0x48]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x48], rsi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4177a0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417810
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	nop
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, rdx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x417850
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_1603
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_1603
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
.label_1603:
	mov	al, byte ptr [rbp - 0x19]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	test	al, 1
	cmovne	ecx, edx
	nop	
	cmp	ecx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417910

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], cl
	lea	rsi, [rsi]
	jne	.label_1604
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	jne	.label_1604
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_1604:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4179f0

	.globl triple_free
	.type triple_free, @function
triple_free:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x417a40

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:.str_1
	movabs	r9, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rsi
	mov	dword ptr [rbp - 0x78], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], r8
	mov	edx, dword ptr [rbp - 0x78]
	and	edx, 3
	mov	dword ptr [rbp - 0x74], edx
	mov	edx, dword ptr [rbp - 0x78]
	and	edx, 0x20
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x54], r10d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], 0xffffffff
	mov	dword ptr [rbp - 0x140], 8
	mov	qword ptr [rbp - 0x118], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	qword ptr [rbp - 0x1b0], rax
	call	localeconv
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0xe0], rcx
	call	strlen
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x108]
	nop	
	jae	.label_1613
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x108], 0x10
	ja	.label_1613
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x118], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x148], rax
.label_1613:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	mov	rsp, rsp
	ja	.label_1639
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b0], rax
.label_1639:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 0x28b
	lea	rdi, [rdi]
	add	rax, -1
	lea	rsi, [rsi]
	add	rax, -3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x1c0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	ja	.label_1645
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x88]
	cmp	rdx, 0
	jne	.label_1609
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x138], rax
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1616
	mov	dword ptr [rbp - 0x150], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], 0
	jmp	.label_1631
.label_1616:
	mov	rbp, rbp
	jmp	.label_1609
.label_1609:
	mov	rsp, rsp
	jmp	.label_1640
.label_1645:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	je	.label_1642
	mov	rax, qword ptr [rbp - 0x88]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa0]
	cmp	rdx, 0
	jne	.label_1642
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x48]
	mov	rsp, rsp
	imul	rdx, rdx, 0xa
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, rdx
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x48]
	shl	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], ecx
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1649
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0xe8]
	nop	
	setb	dl
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	jmp	.label_1637
.label_1649:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xe8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	add	edx, 2
	mov	dword ptr [rbp - 0x64], edx
.label_1637:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	jmp	.label_1631
.label_1642:
	lea	rdi, [rdi]
	jmp	.label_1640
.label_1640:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1655]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0xc8]
	faddp	st(1)
	lea	rsi, [rsi]
	fld	st(0)
	fstp	xword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	nop	
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1655]]
	fild	qword ptr [rbp - 0x50]
	mov	rbp, rbp
	faddp	st(1)
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x28], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1655]]
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x28]
	faddp	st(1)
	fdivrp	st(2)
	nop	
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x190]
	mov	edx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	edx, 0x10
	cmp	edx, 0
	nop	
	jne	.label_1656
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	rcx, rsp
	mov	rsp, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x98], rdi
	mov	edi, eax
	lea	rdi, [rdi]
	call	adjust_value
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.2_2
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.2_2
	nop	
	mov	esi, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	al, r8b
	mov	qword ptr [rbp - 0x70], rcx
	call	sprintf
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x17c], eax
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0x80], 0
	jmp	.label_1610
.label_1656:
	nop	
	fld1	
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x1e0]
	mov	dword ptr [rbp - 0x14c], 0
.label_1608:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x30]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14c]
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x198], rcx
	nop	
	fild	qword ptr [rbp - 0x198]
	fmulp	st(1)
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x190]
	mov	rsp, rsp
	xor	eax, eax
	mov	dl, al
	mov	rsp, rsp
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	byte ptr [rbp - 0x139], dl
	jb	.label_1627
	jmp	.label_1652
.label_1652:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	setl	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x139], cl
.label_1627:
	mov	al, byte ptr [rbp - 0x139]
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1608
	fld	xword ptr [rbp - 0x1e0]
	fld	xword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	fdivrp	st(1)
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rbp - 0x190]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdi
	mov	edi, eax
	nop	
	call	adjust_value
	movabs	rcx, OFFSET FLAT:.str.3_1
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.3_1
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	al, r8b
	mov	qword ptr [rbp - 0x168], rcx
	mov	rbp, rbp
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x180], eax
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0x78]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	nop	
	xor	r8b, 0xff
	mov	rbp, rbp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	movsxd	rcx, r9d
	mov	rbp, rbp
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xf8]
	jb	.label_1643
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1615
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xb8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1615
.label_1643:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_2
	nop	
	mov	ecx, 0xa
	mov	rbp, rbp
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rbp - 0x74]
	fld	xword ptr [rbp - 0x190]
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_1620]]
	mov	rbp, rbp
	fmul	st(1), st(0)
	mov	rsp, rsp
	mov	rsi, rsp
	lea	rsi, [rsi]
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	fstp	xword ptr [rbp - 0x174]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x174]
	mov	rsp, rsp
	fdivp	st(2)
	nop	
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	nop	
	mov	rdi, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	al, r8b
	nop	
	fstp	xword ptr [rbp - 0x15c]
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
.label_1615:
	jmp	.label_1610
.label_1610:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1c0], rdx
	mov	rdi, qword ptr [rbp - 0x1c0]
	nop	
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	call	memmove
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c0]
	nop	
	add	rcx, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rcx
	lea	rdi, [rdi]
	jmp	.label_1624
.label_1631:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1635
	mov	dword ptr [rbp - 0x14c], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x138]
	ja	.label_1641
	nop	
	jmp	.label_1621
.label_1621:
	mov	rax, qword ptr [rbp - 0x138]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x128], rdx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x128]
	div	rsi
	imul	rdx, rdx, 0xa
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x150]
	mov	rbp, rbp
	add	rdx, rdi
	mov	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x1c4], ecx
	mov	ecx, dword ptr [rbp - 0x1c4]
	mov	eax, ecx
	xor	edx, edx
	mov	rbp, rbp
	div	dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shl	edx, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rsp, rsp
	sar	ecx, 1
	lea	rsi, [rsi]
	add	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x178], edx
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	rax, r8
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	div	rdi
	nop	
	mov	qword ptr [rbp - 0x138], rax
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], eax
	mov	eax, dword ptr [rbp - 0x178]
	cmp	eax, dword ptr [rbp - 0x54]
	nop	
	jae	.label_1648
	mov	eax, dword ptr [rbp - 0x178]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0xcc]
	cmp	eax, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_1636
.label_1648:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x178]
	add	ecx, dword ptr [rbp - 0xcc]
	nop	
	cmp	eax, ecx
	nop	
	setb	dl
	and	dl, 1
	mov	rsp, rsp
	movzx	eax, dl
	lea	rdi, [rdi]
	add	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
.label_1636:
	mov	eax, dword ptr [rbp - 0xec]
	mov	dword ptr [rbp - 0xcc], eax
	mov	eax, dword ptr [rbp - 0x14c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14c], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa9], cl
	mov	rsp, rsp
	ja	.label_1654
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	setl	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa9], cl
.label_1654:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1621
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x138], 0xa
	jae	.label_1611
	cmp	dword ptr [rbp - 0x74], 1
	lea	rsi, [rsi]
	jne	.label_1628
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xcc]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x150]
	mov	rsp, rsp
	and	edx, 1
	nop	
	add	ecx, edx
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_1630
	mov	rbp, rbp
	jmp	.label_1623
.label_1628:
	cmp	dword ptr [rbp - 0x74], 0
	jne	.label_1623
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xcc]
	jge	.label_1623
.label_1630:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x150]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x150], eax
	mov	dword ptr [rbp - 0xcc], 0
	nop	
	cmp	dword ptr [rbp - 0x150], 0xa
	lea	rdi, [rdi]
	jne	.label_1638
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], 0
.label_1638:
	lea	rdi, [rdi]
	jmp	.label_1623
.label_1623:
	nop	
	cmp	qword ptr [rbp - 0x138], 0xa
	jae	.label_1614
	cmp	dword ptr [rbp - 0x150], 0
	nop	
	jne	.label_1618
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	and	eax, 8
	cmp	eax, 0
	jne	.label_1614
.label_1618:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x150]
	add	eax, 0x30
	mov	dl, al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x1c0], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dl
	nop	
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x1c0]
	sub	rcx, rsi
	nop	
	add	rdi, rcx
	mov	qword ptr [rbp - 0x1c0], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x1c0]
	nop	
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rbp - 0xcc], 0
	nop	
	mov	dword ptr [rbp - 0x150], 0
.label_1614:
	jmp	.label_1611
.label_1611:
	jmp	.label_1641
.label_1641:
	jmp	.label_1635
.label_1635:
	nop	
	cmp	dword ptr [rbp - 0x74], 1
	jne	.label_1650
	lea	rsi, [rsi]
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x150]
	movsxd	rsi, dword ptr [rbp - 0xcc]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	lea	rsi, [rsi]
	add	ecx, r9d
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_1653
	lea	rsi, [rsi]
	jmp	.label_1606
.label_1650:
	cmp	dword ptr [rbp - 0x74], 0
	jne	.label_1606
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x150]
	add	ecx, dword ptr [rbp - 0xcc]
	nop	
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_1606
.label_1653:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	mov	ecx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	ecx, 0x10
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_1626
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x138]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_1626
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	jge	.label_1626
	mov	eax, dword ptr [rbp - 0x14c]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1646
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x1c0]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	qword ptr [rbp - 0x1c0], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x148]
	call	memcpy
.label_1646:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], 1
.label_1626:
	jmp	.label_1606
.label_1606:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], rax
.label_1632:
	mov	rsp, rsp
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	nop	
	mov	esi, edx
	mov	dword ptr [rbp - 0x3c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x138]
	nop	
	xor	edx, edx
	div	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	cmp	rax, 0
	jne	.label_1632
	lea	rdi, [rdi]
	jmp	.label_1624
.label_1624:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1607
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rcx, qword ptr [rbp - 0x1c0]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x1c0], rax
.label_1607:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 0x80
	nop	
	cmp	eax, 0
	je	.label_1619
	cmp	dword ptr [rbp - 0x14c], 0
	jge	.label_1629
	nop	
	mov	dword ptr [rbp - 0x14c], 0
	mov	qword ptr [rbp - 0xa8], 1
.label_1617:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	jae	.label_1634
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	cmp	eax, dword ptr [rbp - 0x140]
	mov	rsp, rsp
	jne	.label_1644
	lea	rsi, [rsi]
	jmp	.label_1634
.label_1644:
	jmp	.label_1612
.label_1612:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_1617
.label_1634:
	lea	rsi, [rsi]
	jmp	.label_1629
.label_1629:
	mov	eax, dword ptr [rbp - 0x14c]
	nop	
	mov	ecx, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	ecx, 0x100
	lea	rsi, [rsi]
	or	eax, ecx
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1605
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x40
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1605
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
.label_1605:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14c], 0
	je	.label_1622
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x20
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1625
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14c], 1
	lea	rdi, [rdi]
	jne	.label_1625
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	jmp	.label_1633
.label_1625:
	movsxd	rax, dword ptr [rbp - 0x14c]
	mov	rbp, rbp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
.label_1633:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 8], rsi
	mov	byte ptr [rdx], cl
.label_1622:
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	eax, 0x100
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1647
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1651
	cmp	dword ptr [rbp - 0x14c], 0
	je	.label_1651
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x69
.label_1651:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x42
.label_1647:
	jmp	.label_1619
.label_1619:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x1c0]
	add	rsp, 0x1f0
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x418a60

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	fld	xword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 1
	lea	rdi, [rdi]
	je	.label_1657
	nop	
	fld	xword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	fld	xword ptr [word ptr [rip + label_1660]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_1657
	jmp	.label_1658
.label_1658:
	xor	eax, eax
	nop	
	mov	cl, al
	fld	xword ptr [rbp - 0x30]
	mov	rbp, rbp
	fld	dword ptr [dword ptr [rip + label_1493]]
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	fnstcw	word ptr [rbp - 2]
	mov	dx, word ptr [rbp - 2]
	mov	word ptr [rbp - 2], 0xc7f
	fldcw	word ptr [rbp - 2]
	mov	word ptr [rbp - 2], dx
	fistp	qword ptr [rbp - 0x48]
	fldcw	word ptr [rbp - 2]
	mov	rbp, rbp
	fnstcw	word ptr [rbp - 0x5a]
	nop	
	mov	dx, word ptr [rbp - 0x5a]
	mov	rbp, rbp
	mov	word ptr [rbp - 0x5a], 0xc7f
	lea	rdi, [rdi]
	fldcw	word ptr [rbp - 0x5a]
	mov	rsp, rsp
	mov	word ptr [rbp - 0x5a], dx
	fld	st(1)
	mov	rbp, rbp
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x5a]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movabs	rdi, 0x8000000000000000
	nop	
	xor	rsi, rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	lea	rsi, [rsi]
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x58], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x39], cl
	nop	
	jne	.label_1659
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	nop	
	movzx	edx, cl
	mov	eax, edx
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1655]]
	nop	
	fild	qword ptr [rbp - 0x18]
	faddp	st(1)
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x30]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	rsp, rsp
	setp	cl
	lea	rdi, [rdi]
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x39], sil
.label_1659:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rsi
	lea	rsi, [rsi]
	setns	al
	mov	rsp, rsp
	movzx	ecx, al
	mov	edx, ecx
	nop	
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_1655]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x50]
	faddp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x30]
.label_1657:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418bf0

	.globl group_number
	.type group_number, @function
group_number:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x90
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x68], -1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1665:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x81], cl
	cmp	byte ptr [rbp - 0x81], 0
	je	.label_1664
	movzx	eax, byte ptr [rbp - 0x81]
	cmp	eax, 0x7f
	lea	rdi, [rdi]
	jge	.label_1663
	movzx	eax, byte ptr [rbp - 0x81]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	lea	rsi, [rsi]
	jmp	.label_1661
.label_1663:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
.label_1661:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
.label_1664:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	jae	.label_1662
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
.label_1662:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x50]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x60], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	jne	.label_1666
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x90
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1666:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	nop	
	jmp	.label_1665
	.section	.text
	.align	32
	#Procedure 0x418dc0

	.globl human_options
	.type human_options, @function
human_options:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	humblock
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rdx], 0
	jne	.label_1667
	call	default_block_size
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 4
.label_1667:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418e40

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	dword ptr [rbp - 0x24], 0
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jne	.label_1668
	movabs	rdi, OFFSET FLAT:.str.4
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1668
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	rax, 0
	jne	.label_1668
	lea	rdi, [rdi]
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_1675
.label_1668:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x27
	mov	rbp, rbp
	jne	.label_1674
	mov	eax, dword ptr [rbp - 0x24]
	or	eax, 4
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
.label_1674:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	argmatch
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], r9d
	nop	
	cmp	r8d, r9d
	lea	rdi, [rdi]
	jg	.label_1681
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rax], 1
	lea	rsi, [rsi]
	jmp	.label_1672
.label_1681:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	xstrtoumax
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x10], 0
	je	.label_1679
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x38], ecx
	nop	
	jmp	.label_1682
.label_1679:
	jmp	.label_1669
.label_1669:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	jg	.label_1673
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	setle	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], dl
.label_1673:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_1671
	lea	rdi, [rdi]
	jmp	.label_1678
.label_1671:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jne	.label_1680
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	or	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	jne	.label_1670
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x24], eax
.label_1670:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x42
	jne	.label_1676
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x69
	lea	rsi, [rsi]
	jne	.label_1683
.label_1676:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	or	eax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
.label_1683:
	jmp	.label_1678
.label_1680:
	mov	rsp, rsp
	jmp	.label_1677
.label_1677:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_1669
.label_1678:
	jmp	.label_1672
.label_1672:
	jmp	.label_1675
.label_1675:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 0x38], 0
.label_1682:
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419100

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str.9_0
	nop	
	call	getenv
	mov	ecx, 0x400
	lea	rsi, [rsi]
	mov	edx, 0x200
	cmp	rax, 0
	lea	rsi, [rsi]
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419140

	.globl getuser
	.type getuser, @function
getuser:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0x24], edi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [user_alist]]
	mov	qword ptr [rbp - 0x10], rax
.label_1692:
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_1684
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 0x24]
	jne	.label_1689
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1684
.label_1689:
	jmp	.label_1691
.label_1691:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1692
.label_1684:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1688
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	call	getpwuid
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1686
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1687
.label_1686:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_1687
.label_1687:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	strlen
	add	rax, 1
	add	rax, 0x17
	mov	rsp, rsp
	and	rax, 0xfffffffffffffff8
	mov	rbp, rbp
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcpy
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [user_alist]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rdi + 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [user_alist]],  rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1688:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + 0x10]
	nop	
	cmp	ecx, 0
	je	.label_1690
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_1685
.label_1690:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	jmp	.label_1685
.label_1685:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4192f0
	.globl getuidbyname
	.type getuidbyname, @function
getuidbyname:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [user_alist]]
	mov	qword ptr [rbp - 0x10], rdi
.label_1702:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1695
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1698
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	jne	.label_1698
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1697
.label_1698:
	lea	rsi, [rsi]
	jmp	.label_1701
.label_1701:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_1702
.label_1695:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1696:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1699
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_1700
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1700
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_1697
.label_1700:
	lea	rdi, [rdi]
	jmp	.label_1694
.label_1694:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1696
.label_1699:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	getpwnam
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff8
	mov	rbp, rbp
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strcpy
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	je	.label_1693
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [user_alist]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [user_alist]],  rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1697
.label_1693:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [word ptr [nouser_alist]],  rax
	mov	qword ptr [rbp - 0x20], 0
.label_1697:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419520

	.globl getgroup
	.type getgroup, @function
getgroup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x30], 0
	mov	rax,  qword ptr [word ptr [group_alist]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1704:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1703
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x14]
	jne	.label_1710
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1703
.label_1710:
	mov	rbp, rbp
	jmp	.label_1711
.label_1711:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1704
.label_1703:
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_1709
	mov	edi, dword ptr [rbp - 0x14]
	call	getgrgid
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_1705
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1706
.label_1705:
	movabs	rax, OFFSET FLAT:.str_1
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1706
.label_1706:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	strcpy
	nop	
	mov	rsi,  qword ptr [word ptr [group_alist]]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [word ptr [group_alist]],  rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_1709:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax + 0x10]
	cmp	ecx, 0
	je	.label_1707
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1708
.label_1707:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1708
.label_1708:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4196c0
	.globl getgidbyname
	.type getgidbyname, @function
getgidbyname:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [group_alist]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
.label_1714:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1718
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsx	edx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_1720
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1720
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1717
.label_1720:
	jmp	.label_1712
.label_1712:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1714
.label_1718:
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1715:
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1719
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1721
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1721
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1717
.label_1721:
	nop	
	jmp	.label_1713
.label_1713:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1715
.label_1719:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	getgrnam
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcpy
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	je	.label_1716
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [group_alist]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [group_alist]],  rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1717
.label_1716:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [nogroup_alist]],  rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
.label_1717:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4198d0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_1722
	nop	
	jmp	.label_1725
.label_1725:
	mov	eax, 0x30
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	eax, 0xa
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 8]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1725
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax - 1], 0x2d
	mov	rbp, rbp
	jmp	.label_1723
.label_1722:
	jmp	.label_1724
.label_1724:
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1724
	jmp	.label_1723
.label_1723:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419a20

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 0x20], 0
	jae	.label_1726
	jmp	.label_1729
.label_1729:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1729
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1728
.label_1726:
	jmp	.label_1727
.label_1727:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	nop	
	jne	.label_1727
	jmp	.label_1728
.label_1728:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419b60

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0xe0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rdi
	mov	qword ptr [rbp - 0xa0], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0xd8], rcx
	mov	dword ptr [rbp - 0x54], r8d
	nop	
	mov	dword ptr [rbp - 0x14], r9d
	mov	qword ptr [rbp - 0x80], -1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xe0]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0xc0], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 0
	mov	byte ptr [rbp - 0x41], 0
	mov	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x14]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_1738
	nop	
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	lea	rsi, [rsi]
	jbe	.label_1738
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	nop	
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1748
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1752
	nop	
	jmp	.label_1733
.label_1752:
	jmp	.label_1734
.label_1748:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	shl	rax, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	malloc
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xc0], 0
	jne	.label_1740
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1744
	jmp	.label_1733
.label_1744:
	mov	rbp, rbp
	jmp	.label_1734
.label_1740:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mbstowcs
	cmp	rax, 0
	je	.label_1736
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	wc_ensure_printable
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	call	wcswidth
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rcx
.label_1736:
	nop	
	jmp	.label_1738
.label_1738:
	test	byte ptr [rbp - 0x21], 1
	je	.label_1732
	mov	rsp, rsp
	test	byte ptr [rbp - 0x41], 1
	jne	.label_1750
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rcx]
	jbe	.label_1732
.label_1750:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1745
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	call	wcstombs
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1745:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jne	.label_1749
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1753
	lea	rdi, [rdi]
	jmp	.label_1733
.label_1753:
	jmp	.label_1734
.label_1749:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	wc_truncate
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 8]
	call	wcstombs
	mov	qword ptr [rbp - 0x10], rax
.label_1732:
	lea	rsi, [rsi]
	jmp	.label_1733
.label_1733:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jbe	.label_1754
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1754:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x98]
	jbe	.label_1742
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_1742:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd8]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	test	edx, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], edx
	mov	rbp, rbp
	je	.label_1756
	jmp	.label_1739
.label_1739:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	je	.label_1741
	lea	rsi, [rsi]
	jmp	.label_1755
.label_1755:
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 2
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1747
	lea	rsi, [rsi]
	jmp	.label_1731
.label_1756:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1735
.label_1741:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1735
.label_1747:
	jmp	.label_1731
.label_1731:
	mov	rax, qword ptr [rbp - 0x88]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x88]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	shr	rax, 1
	mov	qword ptr [rbp - 0x60], rax
.label_1735:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1751
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_1751:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 8
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1730
	mov	qword ptr [rbp - 0x60], 0
.label_1730:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_1737
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0xb8], rax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa0]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x50], rsi
	jae	.label_1746
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1743
.label_1746:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_1743:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	mbs_align_pad
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rax
.label_1737:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	shl	rcx, 0
	nop	
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_1734:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a170

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
.label_1757:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_1758
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	iswprint
	nop	
	cmp	eax, 0
	jne	.label_1759
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xfffd
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
.label_1759:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 4
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_1757
.label_1758:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a210

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_1762:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1761
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	wcwidth
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], -1
	jne	.label_1760
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0xfffd
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
.label_1760:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1763
	jmp	.label_1761
.label_1763:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 4
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1762
.label_1761:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a2f0

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1765:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, -1
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 9], cl
	nop	
	je	.label_1766
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	setb	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
.label_1766:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1767
	jmp	.label_1764
.label_1767:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
	nop	
	jmp	.label_1765
.label_1764:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a390
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_1770:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jb	.label_1768
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1769
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1768
.label_1769:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x44]
	call	mbsalign
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	mov	rsp, rsp
	jne	.label_1771
	mov	rdi, qword ptr [rbp - 8]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1768
.label_1771:
	mov	rbp, rbp
	jmp	.label_1770
.label_1768:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a4e0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	mbsnwidth
	mov	rbp, rbp
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a530

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], edx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsi, qword ptr [rbp - 0x60]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1797
	jmp	.label_1794
.label_1794:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jae	.label_1800
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x44], ecx
	mov	rbp, rbp
	ja	.label_1776
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1786]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2866:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_1790
.label_1776:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
.label_1801:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x64]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	lea	rdi, [rdi]
	jne	.label_1783
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1789
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	jmp	.label_1784
.label_1789:
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_1772
.label_1783:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1773
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1777
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_1784
.label_1777:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_1772
.label_1773:
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_1792
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
.label_1792:
	mov	edi, dword ptr [rbp - 0x64]
	call	wcwidth
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	cmp	dword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jl	.label_1799
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x68]
	nop	
	sub	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jle	.label_1774
	jmp	.label_1782
.label_1774:
	mov	eax, dword ptr [rbp - 0x68]
	add	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_1781
.label_1799:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1787
	mov	edi, dword ptr [rbp - 0x64]
	call	iswcntrl
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1793
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	lea	rsi, [rsi]
	jne	.label_1795
	jmp	.label_1782
.label_1795:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x58], eax
.label_1793:
	mov	rsp, rsp
	jmp	.label_1779
.label_1787:
	nop	
	mov	dword ptr [rbp - 0x54], 0xffffffff
	nop	
	jmp	.label_1772
.label_1779:
	jmp	.label_1781
.label_1781:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rbp - 0x28]
	mov	rsp, rsp
	call	mbsinit
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1801
.label_1784:
	mov	rsp, rsp
	jmp	.label_1790
.label_1790:
	jmp	.label_1794
.label_1800:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1772
.label_1797:
	jmp	.label_1780
.label_1780:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1791
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 1], dl
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 1]
	nop	
	movsxd	rax, esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_1788
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	jne	.label_1796
	jmp	.label_1782
.label_1796:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_1778
.label_1788:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	and	eax, 2
	cmp	eax, 0
	jne	.label_1775
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 1]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 2
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1785
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	jne	.label_1798
	mov	rsp, rsp
	jmp	.label_1782
.label_1798:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
.label_1785:
	jmp	.label_1802
.label_1775:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_1772
.label_1802:
	jmp	.label_1778
.label_1778:
	lea	rdi, [rdi]
	jmp	.label_1780
.label_1791:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	jmp	.label_1772
.label_1782:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0x7fffffff
.label_1772:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x70
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a950

	.globl mpsort
	.type mpsort, @function
mpsort:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 3
	mov	rsp, rsp
	add	rdx, rax
	nop	
	mov	rcx, qword ptr [rbp - 8]
	call	mpsort_with_tmp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a9b0

	.globl mpsort_with_tmp
	.type mpsort_with_tmp, @function
mpsort_with_tmp:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 2
	ja	.label_1812
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 2
	jne	.label_1807
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	rax
	cmp	eax, 0
	lea	rsi, [rsi]
	jle	.label_1810
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
.label_1810:
	mov	rbp, rbp
	jmp	.label_1807
.label_1807:
	jmp	.label_1805
.label_1812:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shr	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdi, rax
	call	mpsort_with_tmp
	cmp	qword ptr [rbp - 0x10], 2
	jae	.label_1813
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	jmp	.label_1811
.label_1813:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	call	mpsort_into_tmp
.label_1811:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 0x68], 0
.label_1803:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	rax
	cmp	eax, 0
	nop	
	jg	.label_1809
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jne	.label_1808
	jmp	.label_1804
.label_1808:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1814
.label_1809:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_1806
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	shl	rdx, 3
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_1804
.label_1806:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
.label_1814:
	nop	
	jmp	.label_1803
.label_1804:
	jmp	.label_1805
.label_1805:
	mov	rbp, rbp
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aca0

	.globl mpsort_into_tmp
	.type mpsort_into_tmp, @function
mpsort_into_tmp:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x38], 0
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	shl	rdx, 3
	mov	rbp, rbp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rdi
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	mpsort_with_tmp
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	mpsort_with_tmp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x68], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x60], rcx
.label_1819:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	rax
	cmp	eax, 0
	mov	rsp, rsp
	jg	.label_1815
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 8
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1818
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1816
.label_1818:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1817
.label_1815:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	jne	.label_1820
	jmp	.label_1816
.label_1820:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
.label_1817:
	lea	rsi, [rsi]
	jmp	.label_1819
.label_1816:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	add	rsp, 0x70
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aec0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	xor	eax, eax
	nop	
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	lea	r11, [rbp - 0x41]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x38], r8
	nop	
	mov	dword ptr [rbp - 4], r9d
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x38]
	nop	
	mov	r9d, dword ptr [rbp - 4]
	mov	qword ptr [rbp - 0x10], r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	dword ptr [rbp - 0x48], r9d
	nop	
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r11
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], r10d
	call	__strftime_internal
	lea	rdi, [rdi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41af80

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xa48
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rdi
	mov	qword ptr [rbp - 0x398], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x308], rdx
	mov	qword ptr [rbp - 0x2b8], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x29d], al
	mov	dword ptr [rbp - 0x2bc], r9d
	mov	dword ptr [rbp - 0x22c], ebx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x498], r11
	mov	qword ptr [rbp - 0x488], r10
	mov	dword ptr [rbp - 0x9d0], r8d
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	r8d, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2dc], r8d
	mov	qword ptr [rbp - 0x978], 0
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x370], rcx
	mov	qword ptr [rbp - 0xe0], 0
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rcx
	cmp	qword ptr [rbp - 0xe0], 0
	nop	
	jne	.label_2214
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0xe0], rax
.label_2214:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2dc], 0xc
	jle	.label_1851
	mov	eax, dword ptr [rbp - 0x2dc]
	sub	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2dc], eax
	nop	
	jmp	.label_1853
.label_1851:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2dc], 0
	lea	rdi, [rdi]
	jne	.label_1860
	nop	
	mov	dword ptr [rbp - 0x2dc], 0xc
.label_1860:
	mov	rbp, rbp
	jmp	.label_1853
.label_1853:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x308]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
.label_1997:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1878
	nop	
	mov	dword ptr [rbp - 0x9c0], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x230], 0
	mov	byte ptr [rbp - 0x51], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29d]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9e9], al
	nop	
	mov	byte ptr [rbp - 0x339], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	cmp	edx, 0x25
	nop	
	je	.label_1886
	lea	rsi, [rsi]
	jmp	.label_1906
.label_1906:
	mov	qword ptr [rbp - 0x470], 1
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1908
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x274], eax
	jmp	.label_1914
.label_1908:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x274], eax
.label_1914:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x274]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x470]
	cmp	rcx, qword ptr [rbp - 0x158]
	nop	
	jae	.label_1921
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3b0], rax
	nop	
	jmp	.label_1929
.label_1921:
	mov	rax, qword ptr [rbp - 0x470]
	nop	
	mov	qword ptr [rbp - 0x3b0], rax
.label_1929:
	mov	rax, qword ptr [rbp - 0x3b0]
	mov	qword ptr [rbp - 0x468], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x468]
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_1937
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1822
.label_1937:
	nop	
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_2074
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x230], 0
	lea	rsi, [rsi]
	jne	.label_2013
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x470]
	cmp	rax, qword ptr [rbp - 0x158]
	nop	
	jae	.label_2013
	movsxd	rax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x470]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], rax
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rsi, [rsi]
	je	.label_1965
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_1978
.label_1965:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1990
.label_1978:
	lea	rsi, [rsi]
	mov	esi, 0x20
	nop	
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rdx
.label_1990:
	mov	rbp, rbp
	jmp	.label_2013
.label_2013:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x370]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x470]
	nop	
	add	rax, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rax
.label_2074:
	mov	rax, qword ptr [rbp - 0x468]
	nop	
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1995
.label_1886:
	jmp	.label_2024
.label_2024:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rcx
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	esi, edx
	nop	
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x9bc], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa40], esi
	mov	rsp, rsp
	je	.label_2026
	jmp	.label_2040
.label_2040:
	mov	eax, dword ptr [rbp - 0x9bc]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9cc], eax
	je	.label_2041
	jmp	.label_2047
.label_2047:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9bc]
	mov	rsp, rsp
	sub	eax, 0x2d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28c], eax
	je	.label_2041
	nop	
	jmp	.label_2203
.label_2203:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9bc]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x480], eax
	je	.label_2041
	mov	rbp, rbp
	jmp	.label_2057
.label_2057:
	mov	eax, dword ptr [rbp - 0x9bc]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xec], eax
	mov	rbp, rbp
	je	.label_2059
	jmp	.label_2063
.label_2063:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9bc]
	sub	eax, 0x5f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x344], eax
	jne	.label_2064
	jmp	.label_2041
.label_2041:
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x9c0], ecx
	nop	
	jmp	.label_2024
.label_2059:
	nop	
	mov	byte ptr [rbp - 0x9e9], 1
	mov	rbp, rbp
	jmp	.label_2024
.label_2026:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x339], 1
	lea	rdi, [rdi]
	jmp	.label_2024
.label_2064:
	jmp	.label_2075
.label_2075:
	lea	rdi, [rdi]
	jmp	.label_2079
.label_2079:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_2080
	mov	dword ptr [rbp - 0x22c], 0
.label_2101:
	cmp	dword ptr [rbp - 0x22c], 0xccccccc
	lea	rdi, [rdi]
	jg	.label_2084
	cmp	dword ptr [rbp - 0x22c], 0xccccccc
	jne	.label_2083
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_2083
.label_2084:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x22c], 0x7fffffff
	nop	
	jmp	.label_2094
.label_2083:
	imul	eax, dword ptr [rbp - 0x22c], 0xa
	nop	
	mov	dword ptr [rbp - 0x22c], eax
	mov	rcx, qword ptr [rbp - 0x108]
	nop	
	movsx	eax, byte ptr [rcx]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
.label_2094:
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 9
	jbe	.label_2101
	mov	rbp, rbp
	jmp	.label_2080
.label_2080:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x238], ecx
	mov	dword ptr [rbp - 0x7c], edx
	je	.label_2109
	lea	rsi, [rsi]
	jmp	.label_2115
.label_2115:
	mov	eax, dword ptr [rbp - 0x238]
	nop	
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x9ac], eax
	jne	.label_2117
	jmp	.label_2109
.label_2109:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x108], rcx
	nop	
	movsx	edx, byte ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x45c], edx
	jmp	.label_2119
.label_2117:
	mov	dword ptr [rbp - 0x45c], 0
.label_2119:
	mov	rax, qword ptr [rbp - 0x108]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x314], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x318], ecx
	je	.label_2131
	lea	rdi, [rdi]
	jmp	.label_2061
.label_2061:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x25
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	mov	rsp, rsp
	je	.label_2138
	lea	rdi, [rdi]
	jmp	.label_2144
.label_2144:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x294], eax
	je	.label_2146
	nop	
	jmp	.label_2127
.label_2127:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x41
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3d4], eax
	nop	
	je	.label_2135
	jmp	.label_2158
.label_2158:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x42
	nop	
	mov	dword ptr [rbp - 0x474], eax
	je	.label_2170
	lea	rsi, [rsi]
	jmp	.label_2163
.label_2163:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x4bc], eax
	je	.label_2164
	mov	rbp, rbp
	jmp	.label_2167
.label_2167:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xa04], eax
	je	.label_1827
	jmp	.label_2175
.label_2175:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x354], eax
	je	.label_2176
	lea	rdi, [rdi]
	jmp	.label_2180
.label_2180:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x3ec], eax
	je	.label_1830
	mov	rsp, rsp
	jmp	.label_2185
.label_2185:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_1957
	jmp	.label_2192
.label_2192:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x184], eax
	lea	rdi, [rdi]
	je	.label_2193
	jmp	.label_2197
.label_2197:
	mov	eax, dword ptr [rbp - 0x318]
	nop	
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x364], eax
	je	.label_2199
	jmp	.label_2204
.label_2204:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x9b8], eax
	je	.label_2206
	jmp	.label_2212
.label_2212:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	nop	
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x288], eax
	lea	rsi, [rsi]
	je	.label_2213
	lea	rdi, [rdi]
	jmp	.label_2220
.label_2220:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x52
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x118], eax
	je	.label_2222
	jmp	.label_2226
.label_2226:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x124], eax
	mov	rbp, rbp
	je	.label_2160
	jmp	.label_2234
.label_2234:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x54
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2d8], eax
	je	.label_2236
	jmp	.label_2243
.label_2243:
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x55
	nop	
	mov	dword ptr [rbp - 0x9d8], eax
	je	.label_1821
	jmp	.label_1862
.label_1862:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x950], eax
	lea	rsi, [rsi]
	je	.label_1830
	jmp	.label_1836
.label_1836:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x57
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x328], eax
	je	.label_1919
	jmp	.label_1953
.label_1953:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x58
	nop	
	mov	dword ptr [rbp - 0x13c], eax
	lea	rsi, [rsi]
	je	.label_1845
	jmp	.label_1852
.label_1852:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xac], eax
	je	.label_2090
	nop	
	jmp	.label_2036
.label_2036:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x318]
	nop	
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x24c], eax
	lea	rdi, [rdi]
	je	.label_2044
	mov	rbp, rbp
	jmp	.label_1872
.label_1872:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	je	.label_1875
	jmp	.label_1920
.label_1920:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x348], eax
	lea	rdi, [rdi]
	je	.label_1881
	mov	rsp, rsp
	jmp	.label_1887
.label_1887:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x63
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x110], eax
	je	.label_1891
	lea	rsi, [rsi]
	jmp	.label_1898
.label_1898:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2d0], eax
	je	.label_1899
	jmp	.label_1901
.label_1901:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x65
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4a8], eax
	je	.label_1904
	mov	rbp, rbp
	jmp	.label_1912
.label_1912:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x47c], eax
	je	.label_1830
	mov	rbp, rbp
	jmp	.label_1918
.label_1918:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x2d4], eax
	je	.label_1881
	lea	rdi, [rdi]
	jmp	.label_1924
.label_1924:
	nop	
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x16c], eax
	lea	rdi, [rdi]
	je	.label_1926
	jmp	.label_1932
.label_1932:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x214], eax
	mov	rbp, rbp
	je	.label_1933
	mov	rsp, rsp
	jmp	.label_1938
.label_1938:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x4ac], eax
	nop	
	je	.label_1940
	mov	rbp, rbp
	jmp	.label_1943
.label_1943:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x340], eax
	je	.label_1945
	mov	rbp, rbp
	jmp	.label_2077
.label_2077:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x284], eax
	lea	rsi, [rsi]
	je	.label_1954
	jmp	.label_1962
.label_1962:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x70
	nop	
	mov	dword ptr [rbp - 0x338], eax
	lea	rdi, [rdi]
	je	.label_1963
	jmp	.label_1968
.label_1968:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x100], eax
	je	.label_1971
	lea	rdi, [rdi]
	jmp	.label_1977
.label_1977:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x72
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98c], eax
	mov	rsp, rsp
	je	.label_1979
	jmp	.label_1986
.label_1986:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	mov	rbp, rbp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x9d4], eax
	je	.label_1987
	jmp	.label_1994
.label_1994:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa3c], eax
	nop	
	je	.label_1996
	jmp	.label_2003
.label_2003:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c4], eax
	mov	rbp, rbp
	je	.label_2005
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x2cc], eax
	lea	rdi, [rdi]
	je	.label_1959
	jmp	.label_2001
.label_2001:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x914], eax
	je	.label_2016
	lea	rdi, [rdi]
	jmp	.label_2031
.label_2031:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x318]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	je	.label_2019
	jmp	.label_2067
.label_2067:
	mov	eax, dword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	sub	eax, 0x7a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x298], eax
	je	.label_2037
	jmp	.label_2032
.label_2138:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_2033
	mov	rsp, rsp
	jmp	.label_1831
.label_2033:
	jmp	.label_2038
.label_2038:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9e0], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_2147
	xor	eax, eax
	mov	dword ptr [rbp - 0x9f0], eax
	lea	rsi, [rsi]
	jmp	.label_2046
.label_2147:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x9f0], eax
.label_2046:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9f0]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x458], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x9e0]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x458]
	lea	rdi, [rdi]
	jae	.label_2051
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x458]
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_2060
.label_2051:
	nop	
	mov	rax, qword ptr [rbp - 0x9e0]
	nop	
	mov	qword ptr [rbp - 0x1e8], rax
.label_2060:
	mov	rax, qword ptr [rbp - 0x1e8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x968], rax
	nop	
	mov	rax, qword ptr [rbp - 0x968]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_2066
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_1822
.label_2066:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_2073
	cmp	dword ptr [rbp - 0x230], 0
	lea	rsi, [rsi]
	jne	.label_2078
	mov	rax, qword ptr [rbp - 0x9e0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x458]
	mov	rsp, rsp
	jae	.label_2078
	movsxd	rax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x9e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x330], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	nop	
	je	.label_2082
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rsi, [rsi]
	jne	.label_2092
.label_2082:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x330]
	lea	rsi, [rsi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x330]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_2097
.label_2092:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rdx, qword ptr [rbp - 0x330]
	call	memset
	mov	rdx, qword ptr [rbp - 0x330]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_2097:
	jmp	.label_2078
.label_2078:
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x370]
	mov	byte ptr [rax], cl
	nop	
	mov	rax, qword ptr [rbp - 0x9e0]
	add	rax, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rax
.label_2073:
	nop	
	mov	rax, qword ptr [rbp - 0x968]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x978]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x978], rax
	nop	
	jmp	.label_1930
.label_1875:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_1942
	mov	rbp, rbp
	jmp	.label_1831
.label_1942:
	test	byte ptr [rbp - 0x339], 1
	je	.label_2122
	mov	byte ptr [rbp - 0x9e9], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 0
.label_2122:
	mov	rsp, rsp
	jmp	.label_1846
.label_2135:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_2021
	jmp	.label_1831
.label_2021:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x339], 1
	je	.label_2134
	mov	byte ptr [rbp - 0x9e9], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], 0
.label_2134:
	jmp	.label_1846
.label_1881:
	test	byte ptr [rbp - 0x339], 1
	nop	
	je	.label_2141
	nop	
	mov	byte ptr [rbp - 0x9e9], 1
	mov	byte ptr [rbp - 0x51], 0
.label_2141:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_2148
	nop	
	jmp	.label_1831
.label_2148:
	jmp	.label_1846
.label_2170:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_2152
	nop	
	jmp	.label_1831
.label_2152:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x339], 1
	je	.label_2156
	mov	byte ptr [rbp - 0x9e9], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], 0
.label_2156:
	lea	rdi, [rdi]
	jmp	.label_1846
.label_1891:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x4f
	jne	.label_1969
	jmp	.label_1831
.label_1969:
	lea	rsi, [rsi]
	jmp	.label_1846
.label_2111:
	nop	
	mov	dword ptr [rbp - 0x334], 0xffffffff
.label_2244:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, eax
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	r8b, byte ptr [rbp - 0x9e9]
	nop	
	mov	r9d, dword ptr [rbp - 0x9c0]
	mov	eax, dword ptr [rbp - 0x334]
	mov	r10, qword ptr [rbp - 0x498]
	mov	r11, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp - 0x9d0]
	and	r8b, 1
	movzx	r8d, r8b
	nop	
	mov	dword ptr [rsp], eax
	nop	
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], ebx
	mov	rsp, rsp
	call	__strftime_internal
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x390], rax
	mov	rax, qword ptr [rbp - 0x390]
	mov	qword ptr [rbp - 0x48], rax
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_2194
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1dc], eax
	mov	rsp, rsp
	jmp	.label_2200
.label_2194:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x1dc], eax
.label_2200:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x2f8], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x2f8]
	nop	
	jae	.label_2207
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2f8]
	mov	qword ptr [rbp - 0x1b0], rax
	lea	rsi, [rsi]
	jmp	.label_2217
.label_2207:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
.label_2217:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x3f8], rax
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_2225
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1822
.label_2225:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_2229
	cmp	dword ptr [rbp - 0x230], 0
	mov	rbp, rbp
	jne	.label_1825
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2f8]
	lea	rsi, [rsi]
	jae	.label_1825
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4f8], rax
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_1835
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rsi, [rsi]
	jne	.label_1843
.label_1835:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f8]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1857
.label_1843:
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1857:
	mov	rsp, rsp
	jmp	.label_1825
.label_1825:
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x398]
	sub	rax, qword ptr [rbp - 0x978]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0x9e9]
	mov	r9d, dword ptr [rbp - 0x9c0]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x334]
	mov	r10, qword ptr [rbp - 0x498]
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x488]
	mov	ebx, dword ptr [rbp - 0x9d0]
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x111], sil
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14b, byte ptr [rbp - 0x111]
	mov	rbp, rbp
	movzx	r15d, r14b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], r8d
	mov	r8d, r15d
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp - 0x234]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rcx
	mov	qword ptr [rbp - 0x1c8], rax
.label_2229:
	mov	rax, qword ptr [rbp - 0x3f8]
	add	rax, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1930
.label_1846:
	nop	
	lea	rax, [rbp - 0x39d]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x928], rax
	mov	rax, qword ptr [rbp - 0x928]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x928], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x928]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x928], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x45c], 0
	je	.label_1936
	nop	
	mov	eax, dword ptr [rbp - 0x45c]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x928]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x928], rsi
	mov	byte ptr [rdx], cl
.label_1936:
	mov	rbp, rbp
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x39d]
	lea	rdi, [rbp - 0x910]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x314]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x928]
	mov	rsp, rsp
	mov	r9, r8
	add	r9, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x928], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x928]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x2b8]
	call	strftime
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4c8], 0
	nop	
	je	.label_1991
	lea	rdi, [rdi]
	jmp	.label_2000
.label_2000:
	mov	rax, qword ptr [rbp - 0x4c8]
	sub	rax, 1
	mov	qword ptr [rbp - 0xa38], rax
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rsp, rsp
	jge	.label_2002
	xor	eax, eax
	mov	dword ptr [rbp - 0x44c], eax
	jmp	.label_2008
.label_2002:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x44c], eax
.label_2008:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44c]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x180], rcx
	mov	rcx, qword ptr [rbp - 0xa38]
	cmp	rcx, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	jae	.label_2014
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_2025
.label_2014:
	mov	rax, qword ptr [rbp - 0xa38]
	mov	qword ptr [rbp - 0x70], rax
.label_2025:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x3e0], rax
	mov	rax, qword ptr [rbp - 0x3e0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_2022
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1822
.label_2022:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_2039
	nop	
	cmp	dword ptr [rbp - 0x230], 0
	nop	
	jne	.label_2009
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x180]
	jae	.label_2009
	movsxd	rax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xa38]
	mov	qword ptr [rbp - 0x970], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_2184
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	nop	
	jne	.label_2055
.label_2184:
	lea	rdi, [rdi]
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rdx, qword ptr [rbp - 0x970]
	call	memset
	nop	
	mov	rdx, qword ptr [rbp - 0x970]
	add	rdx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1890
.label_2055:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x970]
	call	memset
	mov	rdx, qword ptr [rbp - 0x970]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rdx
.label_1890:
	jmp	.label_2009
.label_2009:
	test	byte ptr [rbp - 0x51], 1
	je	.label_2076
	lea	rax, [rbp - 0x910]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa38]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_2087
.label_2076:
	test	byte ptr [rbp - 0x9e9], 1
	je	.label_2089
	lea	rax, [rbp - 0x910]
	mov	rdi, qword ptr [rbp - 0x370]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0xa38]
	mov	rsi, rax
	nop	
	call	memcpy_uppcase
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3d0], rax
	jmp	.label_2095
.label_2089:
	lea	rax, [rbp - 0x910]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0xa38]
	nop	
	mov	rsi, rax
	call	memcpy
.label_2095:
	jmp	.label_2087
.label_2087:
	mov	rax, qword ptr [rbp - 0xa38]
	add	rax, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rax
.label_2039:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x3e0]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1991
.label_1991:
	jmp	.label_1930
.label_2164:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_2108
	mov	rbp, rbp
	jmp	.label_1846
.label_2108:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x64
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rdx + 0x14]
	nop	
	mov	dword ptr [rbp - 0x9c8], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x9c8]
	idiv	esi
	add	eax, 0x13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9e8], eax
	mov	rdi, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x9a5], cl
	lea	rsi, [rsi]
	jge	.label_2114
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x9e8]
	setl	cl
	mov	byte ptr [rbp - 0x9a5], cl
.label_2114:
	mov	al, byte ptr [rbp - 0x9a5]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x9e8]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x9e8], edx
	mov	dword ptr [rbp - 0x230], 2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa21], cl
	nop	
	mov	edx, dword ptr [rbp - 0x9e8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edx
	lea	rdi, [rdi]
	jmp	.label_1884
.label_2016:
	cmp	dword ptr [rbp - 0x45c], 0x4f
	jne	.label_2113
	mov	rsp, rsp
	jmp	.label_1831
.label_2113:
	lea	rdi, [rdi]
	jmp	.label_1846
.label_1827:
	cmp	dword ptr [rbp - 0x45c], 0
	mov	rsp, rsp
	je	.label_2162
	lea	rsi, [rsi]
	jmp	.label_1831
.label_2162:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2111
.label_1899:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_2169
	jmp	.label_1831
.label_2169:
	jmp	.label_2174
.label_2174:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x3b4], ecx
	lea	rdi, [rdi]
	jmp	.label_1823
.label_1904:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_2182
	jmp	.label_1831
.label_2182:
	jmp	.label_2186
.label_2186:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x230], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x3b4], ecx
	jmp	.label_1864
.label_2149:
	mov	byte ptr [rbp - 0x45d], 1
	lea	rsi, [rsi]
	jmp	.label_2195
.label_1884:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0
	jne	.label_2198
	mov	eax, dword ptr [rbp - 0x2bc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c0], eax
.label_2198:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	mov	byte ptr [rbp - 0x9e1], cl
	jne	.label_2205
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x230], 2
	mov	rbp, rbp
	cmove	ecx, edx
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x14c]
	nop	
	mov	byte ptr [rbp - 0x16d], al
	jb	.label_2211
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x230]
	cmp	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	setl	cl
	mov	byte ptr [rbp - 0x16d], cl
.label_2211:
	mov	al, byte ptr [rbp - 0x16d]
	mov	byte ptr [rbp - 0x9e1], al
.label_2205:
	mov	al, byte ptr [rbp - 0x9e1]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45d], al
	nop	
	jmp	.label_2232
.label_1864:
	cmp	dword ptr [rbp - 0x9c0], 0
	jne	.label_2239
	nop	
	mov	dword ptr [rbp - 0x9c0], 0x5f
.label_2239:
	jmp	.label_1823
.label_1823:
	cmp	dword ptr [rbp - 0x3b4], 0
	nop	
	setl	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa21], al
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x3b4]
	mov	dword ptr [rbp - 0x14c], ecx
.label_1897:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45d], 0
.label_2232:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], 0
.label_2195:
	nop	
	cmp	dword ptr [rbp - 0x45c], 0x4f
	lea	rsi, [rsi]
	jne	.label_1838
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa21], 1
	jne	.label_1838
	lea	rdi, [rdi]
	jmp	.label_1846
.label_1838:
	lea	rax, [rbp - 0xd0]
	add	rax, 0x17
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa00], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa21], 1
	je	.label_1850
	xor	eax, eax
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x14c], eax
.label_1850:
	jmp	.label_1863
.label_1863:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	je	.label_2049
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa00]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xa00], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_2049:
	nop	
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	sar	ecx, 1
	mov	dword ptr [rbp - 0x78], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2a4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2a4]
	div	ecx
	add	edx, 0x30
	mov	rsp, rsp
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xa00]
	mov	r8, rdi
	mov	rsp, rsp
	add	r8, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa00], r8
	mov	byte ptr [rdi - 1], sil
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14c]
	nop	
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x14c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x14c], 0
	mov	byte ptr [rbp - 0x3f9], al
	jne	.label_1880
	cmp	dword ptr [rbp - 0x78], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x3f9], al
.label_1880:
	mov	al, byte ptr [rbp - 0x3f9]
	nop	
	test	al, 1
	jne	.label_1863
	nop	
	jmp	.label_1892
.label_1892:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	jge	.label_1922
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x230], eax
.label_1922:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xa21], 1
	je	.label_1931
	mov	rbp, rbp
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x9b4], eax
	lea	rdi, [rdi]
	jmp	.label_1934
.label_1931:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x2b
	nop	
	mov	dl, byte ptr [rbp - 0x45d]
	mov	rsp, rsp
	test	dl, 1
	cmovne	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9b4], eax
.label_1934:
	nop	
	mov	eax, dword ptr [rbp - 0x9b4]
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 0x4a1], cl
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x2d
	lea	rdi, [rdi]
	jne	.label_1944
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0x4a1], 0
	mov	rsp, rsp
	je	.label_1951
	jmp	.label_1955
.label_1955:
	mov	qword ptr [rbp - 0x1f8], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1956
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50c], eax
	jmp	.label_1964
.label_1956:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	mov	dword ptr [rbp - 0x50c], eax
.label_1964:
	mov	eax, dword ptr [rbp - 0x50c]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2e8], rcx
	mov	rcx, qword ptr [rbp - 0x1f8]
	cmp	rcx, qword ptr [rbp - 0x2e8]
	jae	.label_1972
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	qword ptr [rbp - 0x4d0], rax
	lea	rdi, [rdi]
	jmp	.label_1982
.label_1972:
	nop	
	mov	rax, qword ptr [rbp - 0x1f8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4d0], rax
.label_1982:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4d0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4e0], rax
	mov	rax, qword ptr [rbp - 0x4e0]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_1993
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1822
.label_1993:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_2010
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_1868
	mov	rax, qword ptr [rbp - 0x1f8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2e8]
	nop	
	jae	.label_1868
	nop	
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x1f8]
	nop	
	mov	qword ptr [rbp - 0xa20], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_2133
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	jne	.label_2027
.label_2133:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0xa20]
	call	memset
	mov	rdx, qword ptr [rbp - 0xa20]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x370], rdx
	lea	rsi, [rsi]
	jmp	.label_2035
.label_2027:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0xa20]
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_2035:
	mov	rsp, rsp
	jmp	.label_1868
.label_1868:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x4a1]
	mov	rcx, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1f8]
	nop	
	add	rcx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x370], rcx
.label_2010:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4e0]
	add	rax, qword ptr [rbp - 0x978]
	nop	
	mov	qword ptr [rbp - 0x978], rax
	mov	rsp, rsp
	jmp	.label_1951
.label_1951:
	mov	rsp, rsp
	jmp	.label_2068
.label_1944:
	lea	rax, [rbp - 0xd0]
	movsxd	rcx, dword ptr [rbp - 0x230]
	mov	rbp, rbp
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa00]
	nop	
	sub	rax, rdx
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	byte ptr [rbp - 0x4a1], 0
	lea	rdi, [rdi]
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	mov	rsp, rsp
	and	sil, 1
	movzx	edi, sil
	lea	rdi, [rdi]
	movsxd	rax, edi
	sub	rcx, rax
	mov	rsp, rsp
	mov	edi, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4e8], edi
	cmp	dword ptr [rbp - 0x4e8], 0
	mov	rbp, rbp
	jle	.label_2069
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c0], 0x5f
	nop	
	jne	.label_2085
	movsxd	rax, dword ptr [rbp - 0x4e8]
	mov	rcx, qword ptr [rbp - 0x398]
	nop	
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	nop	
	jb	.label_2129
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_1822
.label_2129:
	cmp	qword ptr [rbp - 0x370], 0
	mov	rsp, rsp
	je	.label_2096
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x4e8]
	call	memset
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x4e8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x370]
	movsxd	rdi, esi
	add	rdx, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x370], rdx
.label_2096:
	movsxd	rax, dword ptr [rbp - 0x4e8]
	add	rax, qword ptr [rbp - 0x978]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x978], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x4e8]
	nop	
	jle	.label_2105
	mov	eax, dword ptr [rbp - 0x22c]
	sub	eax, dword ptr [rbp - 0x4e8]
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_2112
.label_2105:
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	jmp	.label_2112
.label_2112:
	nop	
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
	cmp	byte ptr [rbp - 0x4a1], 0
	nop	
	je	.label_2118
	lea	rdi, [rdi]
	jmp	.label_2121
.label_2121:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x220], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_2123
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x224], eax
	lea	rdi, [rdi]
	jmp	.label_2130
.label_2123:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x224], eax
.label_2130:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x224]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x3c0], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	cmp	rcx, qword ptr [rbp - 0x3c0]
	lea	rsi, [rsi]
	jae	.label_2137
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_2145
.label_2137:
	nop	
	mov	rax, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0xa0], rax
.label_2145:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	nop	
	jb	.label_2154
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_1822
.label_2154:
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_2166
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_2172
	mov	rax, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x3c0]
	mov	rbp, rbp
	jae	.label_2172
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x300], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x30
	mov	rbp, rbp
	je	.label_2179
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	nop	
	jne	.label_2187
.label_2179:
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	lea	rdi, [rdi]
	jmp	.label_2196
.label_2187:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x300]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_2196:
	mov	rbp, rbp
	jmp	.label_2172
.label_2172:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x4a1]
	mov	rcx, qword ptr [rbp - 0x370]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x220]
	add	rcx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rcx
.label_2166:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x978]
	nop	
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_2118
.label_2118:
	jmp	.label_2235
.label_2085:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rbp - 0x398]
	nop	
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_2237
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1822
.label_2237:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x4a1], 0
	je	.label_1865
	nop	
	jmp	.label_1877
.label_1877:
	mov	qword ptr [rbp - 0x930], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rbp, rbp
	jge	.label_1834
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x37c], eax
	jmp	.label_1841
.label_1834:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x37c], eax
.label_1841:
	mov	eax, dword ptr [rbp - 0x37c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	rcx, qword ptr [rbp - 0x930]
	cmp	rcx, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	jae	.label_1849
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rax
	nop	
	jmp	.label_1858
.label_1849:
	mov	rax, qword ptr [rbp - 0x930]
	mov	qword ptr [rbp - 0x4b8], rax
.label_1858:
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x208], rax
	mov	rax, qword ptr [rbp - 0x208]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1871
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1822
.label_1871:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1888
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_1893
	nop	
	mov	rax, qword ptr [rbp - 0x930]
	cmp	rax, qword ptr [rbp - 0x1a0]
	jae	.label_1893
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x930]
	mov	qword ptr [rbp - 0x138], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_1900
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	jne	.label_1910
.label_1900:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	mov	rdx, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	lea	rdi, [rdi]
	jmp	.label_1917
.label_1910:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x138]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1917:
	jmp	.label_1893
.label_1893:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4a1]
	nop	
	mov	rcx, qword ptr [rbp - 0x370]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x930]
	add	rcx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rcx
.label_1888:
	mov	rax, qword ptr [rbp - 0x208]
	add	rax, qword ptr [rbp - 0x978]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1865
.label_1865:
	nop	
	cmp	qword ptr [rbp - 0x370], 0
	lea	rdi, [rdi]
	je	.label_1950
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x4e8]
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4e8]
	mov	rdx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x370], rdx
.label_1950:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x4e8]
	add	rax, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x978], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], 0
.label_2235:
	jmp	.label_1981
.label_2069:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x4a1], 0
	lea	rsi, [rsi]
	je	.label_1983
	jmp	.label_1988
.label_1988:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x948], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_1989
	xor	eax, eax
	mov	dword ptr [rbp - 0x10c], eax
	jmp	.label_1999
.label_1989:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x10c], eax
.label_1999:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10c]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3a8], rcx
	mov	rcx, qword ptr [rbp - 0x948]
	cmp	rcx, qword ptr [rbp - 0x3a8]
	lea	rsi, [rsi]
	jae	.label_2004
	mov	rax, qword ptr [rbp - 0x3a8]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1974
.label_2004:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x948]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
.label_1974:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x2b0], rax
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x978]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_2018
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1822
.label_2018:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_2030
	nop	
	cmp	dword ptr [rbp - 0x230], 0
	mov	rbp, rbp
	jne	.label_2034
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x948]
	cmp	rax, qword ptr [rbp - 0x3a8]
	nop	
	jae	.label_2034
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x948]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x248], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_2043
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_2050
.label_2043:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x248]
	call	memset
	mov	rdx, qword ptr [rbp - 0x248]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_2056
.label_2050:
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x248]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x248]
	add	rdx, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x370], rdx
.label_2056:
	nop	
	jmp	.label_2034
.label_2034:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4a1]
	mov	rcx, qword ptr [rbp - 0x370]
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x948]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rcx
.label_2030:
	mov	rax, qword ptr [rbp - 0x2b0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1983
.label_1983:
	jmp	.label_1981
.label_1981:
	lea	rdi, [rdi]
	jmp	.label_2068
.label_2068:
	mov	rbp, rbp
	jmp	.label_2086
.label_2086:
	lea	rax, [rbp - 0xd0]
	lea	rdi, [rdi]
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa00]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x190], rax
	nop	
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_2088
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x30c], eax
	lea	rsi, [rsi]
	jmp	.label_2126
.label_2088:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x30c], eax
.label_2126:
	mov	eax, dword ptr [rbp - 0x30c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x998], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x998]
	jae	.label_2099
	mov	rax, qword ptr [rbp - 0x998]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x920], rax
	nop	
	jmp	.label_2104
.label_2099:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x920], rax
.label_2104:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x920]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_2110
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1822
.label_2110:
	cmp	qword ptr [rbp - 0x370], 0
	mov	rsp, rsp
	je	.label_2120
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_2124
	mov	rax, qword ptr [rbp - 0x190]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x998]
	mov	rsp, rsp
	jae	.label_2124
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x960], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	nop	
	je	.label_2132
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	mov	rsp, rsp
	jne	.label_2140
.label_2132:
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x960]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x960]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_2150
.label_2140:
	nop	
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x960]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x960]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_2150:
	lea	rdi, [rdi]
	jmp	.label_2124
.label_2124:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x51], 1
	je	.label_1829
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa00]
	nop	
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rbp, rbp
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x508], rax
	jmp	.label_2177
.label_1829:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x9e9], 1
	je	.label_2178
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rsi, qword ptr [rbp - 0xa00]
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	call	memcpy_uppcase
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4d8], rax
	jmp	.label_2189
.label_2178:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa00]
	mov	rdx, qword ptr [rbp - 0x190]
	call	memcpy
.label_2189:
	jmp	.label_2177
.label_2177:
	mov	rax, qword ptr [rbp - 0x190]
	add	rax, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rax
.label_2120:
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1930
.label_2176:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0
	nop	
	je	.label_2209
	jmp	.label_1831
.label_2209:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0
	lea	rdi, [rdi]
	jne	.label_2216
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_2216
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c0], 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x334], 4
	nop	
	jmp	.label_2224
.label_2216:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x334], eax
	nop	
	cmp	dword ptr [rbp - 0x334], 0
	jge	.label_2231
	mov	dword ptr [rbp - 0x334], 0
.label_2231:
	jmp	.label_2224
.label_2224:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_3
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2244
.label_1957:
	cmp	dword ptr [rbp - 0x45c], 0x45
	lea	rsi, [rsi]
	jne	.label_1828
	jmp	.label_1831
.label_1828:
	jmp	.label_1833
.label_1833:
	mov	dword ptr [rbp - 0x230], 2
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x3b4], ecx
	nop	
	jmp	.label_1823
.label_2193:
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rsp, rsp
	jne	.label_1842
	nop	
	jmp	.label_1831
.label_1842:
	jmp	.label_1847
.label_1847:
	mov	dword ptr [rbp - 0x230], 2
	mov	eax, dword ptr [rbp - 0x2dc]
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_1823
.label_1933:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1854
	lea	rsi, [rsi]
	jmp	.label_1831
.label_1854:
	mov	rbp, rbp
	jmp	.label_1859
.label_1859:
	mov	dword ptr [rbp - 0x230], 2
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x3b4], ecx
	nop	
	jmp	.label_1864
.label_1940:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1874
	jmp	.label_1831
.label_1874:
	jmp	.label_1879
.label_1879:
	mov	dword ptr [rbp - 0x230], 2
	nop	
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3b4], eax
	lea	rdi, [rdi]
	jmp	.label_1864
.label_1926:
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_1889
	jmp	.label_1831
.label_1889:
	jmp	.label_1896
.label_1896:
	mov	dword ptr [rbp - 0x230], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x1c], -1
	lea	rdi, [rdi]
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa21], cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rax + 0x1c]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edx
	mov	rsp, rsp
	jmp	.label_1897
.label_2199:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_1913
	lea	rsi, [rsi]
	jmp	.label_1831
.label_1913:
	jmp	.label_1883
.label_1883:
	mov	dword ptr [rbp - 0x230], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x3b4], ecx
	mov	rsp, rsp
	jmp	.label_1823
.label_1945:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1928
	mov	rsp, rsp
	jmp	.label_1831
.label_1928:
	mov	rsp, rsp
	jmp	.label_1975
.label_1975:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x230], 2
	nop	
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa21], cl
	mov	rax, qword ptr [rbp - 0x2b8]
	nop	
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edx
	mov	rbp, rbp
	jmp	.label_1897
.label_2206:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1947
	jmp	.label_1831
.label_1947:
	mov	eax, dword ptr [rbp - 0x9d0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3b4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x22c], -1
	jne	.label_1952
	mov	dword ptr [rbp - 0x22c], 9
	lea	rsi, [rsi]
	jmp	.label_1961
.label_1952:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x358], eax
.label_1973:
	cmp	dword ptr [rbp - 0x358], 9
	lea	rdi, [rdi]
	jge	.label_1967
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x3b4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x9c4]
	idiv	ecx
	mov	dword ptr [rbp - 0x3b4], eax
	mov	eax, dword ptr [rbp - 0x358]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x358], eax
	jmp	.label_1973
.label_1967:
	jmp	.label_1961
.label_1961:
	jmp	.label_1992
.label_1992:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], eax
	mov	eax, dword ptr [rbp - 0x3b4]
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_1823
.label_1954:
	nop	
	jmp	.label_1907
.label_1907:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa10], 1
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rsp, rsp
	jge	.label_2006
	xor	eax, eax
	mov	dword ptr [rbp - 0x97c], eax
	jmp	.label_2012
.label_2006:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x97c], eax
.label_2012:
	nop	
	mov	eax, dword ptr [rbp - 0x97c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x9a0], rcx
	mov	rcx, qword ptr [rbp - 0xa10]
	cmp	rcx, qword ptr [rbp - 0x9a0]
	mov	rbp, rbp
	jae	.label_1998
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x9a0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x938], rax
	mov	rbp, rbp
	jmp	.label_2020
.label_1998:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa10]
	nop	
	mov	qword ptr [rbp - 0x938], rax
.label_2020:
	mov	rax, qword ptr [rbp - 0x938]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x260], rax
	mov	rax, qword ptr [rbp - 0x260]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x398]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_2029
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1822
.label_2029:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x370], 0
	nop	
	je	.label_2045
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_2048
	mov	rax, qword ptr [rbp - 0xa10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x9a0]
	lea	rsi, [rsi]
	jae	.label_2048
	movsxd	rax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0xa10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3e8], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rdi, [rdi]
	je	.label_2054
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	mov	rbp, rbp
	jne	.label_2062
.label_2054:
	mov	esi, 0x30
	nop	
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x370], rdx
	nop	
	jmp	.label_2070
.label_2062:
	lea	rdi, [rdi]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x3e8]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x3e8]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_2070:
	mov	rbp, rbp
	jmp	.label_2048
.label_2048:
	mov	rax, qword ptr [rbp - 0x370]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0xa10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rax
.label_2045:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x260]
	nop	
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1930
.label_2213:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 1
	mov	dword ptr [rbp - 0x314], 0x70
.label_1963:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x339], 1
	mov	rbp, rbp
	je	.label_2143
	mov	byte ptr [rbp - 0x9e9], 0
	mov	byte ptr [rbp - 0x51], 1
.label_2143:
	jmp	.label_1846
.label_1971:
	lea	rdi, [rdi]
	jmp	.label_2100
.label_2100:
	nop	
	mov	dword ptr [rbp - 0x230], 1
	mov	byte ptr [rbp - 0xa21], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b8]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	ecx, 5
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], ecx
	lea	rsi, [rsi]
	jmp	.label_1897
.label_2222:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.3_2
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_2111
.label_1979:
	nop	
	jmp	.label_1846
.label_2160:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	lea	rdi, [rdi]
	jne	.label_2116
	mov	rbp, rbp
	jmp	.label_1831
.label_2116:
	jmp	.label_1866
.label_1866:
	nop	
	mov	dword ptr [rbp - 0x230], 2
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3b4], ecx
	lea	rdi, [rdi]
	jmp	.label_1823
.label_1987:
	mov	rbp, rbp
	lea	rax, [rbp - 0x440]
	lea	rsi, [rsi]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x2c8], rax
	mov	rbp, rbp
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x488]
	mov	rsi, qword ptr [rbp - 0x2c8]
	lea	rsi, [rsi]
	call	mktime_z
	lea	rdx, [rbp - 0xd0]
	mov	qword ptr [rbp - 0x988], rax
	lea	rsi, [rsi]
	add	rdx, 0x17
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa00], rdx
	cmp	qword ptr [rbp - 0x988], 0
	lea	rdi, [rdi]
	setl	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0xa21], r8b
.label_2173:
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x988]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x1bc], esi
	mov	rdx, qword ptr [rbp - 0x988]
	mov	rax, rdx
	cqo	
	idiv	rcx
	nop	
	mov	qword ptr [rbp - 0x988], rax
	test	byte ptr [rbp - 0xa21], 1
	je	.label_2153
	xor	eax, eax
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x1bc]
	mov	dword ptr [rbp - 0x954], eax
	jmp	.label_2165
.label_2153:
	nop	
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	dword ptr [rbp - 0x954], eax
.label_2165:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x954]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa00]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa00], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x988], 0
	mov	rbp, rbp
	jne	.label_2173
	mov	dword ptr [rbp - 0x230], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45d], 0
	lea	rdi, [rdi]
	jmp	.label_1892
.label_1845:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x4f
	nop	
	jne	.label_2190
	jmp	.label_1831
.label_2190:
	jmp	.label_1846
.label_2236:
	movabs	rax, OFFSET FLAT:.str.4_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_2111
.label_1996:
	jmp	.label_2201
.label_2201:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_2202
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4e4], eax
	jmp	.label_2208
.label_2202:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4e4], eax
.label_2208:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4e4]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x350], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	jae	.label_2218
	mov	rax, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x408], rax
	mov	rbp, rbp
	jmp	.label_2228
.label_2218:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x408], rax
.label_2228:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x408]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x378], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x378]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x978]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_2238
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_1822
.label_2238:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1902
	cmp	dword ptr [rbp - 0x230], 0
	lea	rdi, [rdi]
	jne	.label_1840
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x350]
	jae	.label_1840
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x500], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rsi, [rsi]
	je	.label_1966
	nop	
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_1856
.label_1966:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x500]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1870
.label_1856:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1870:
	mov	rbp, rbp
	jmp	.label_1840
.label_1840:
	mov	rax, qword ptr [rbp - 0x370]
	nop	
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rax
.label_1902:
	nop	
	mov	rax, qword ptr [rbp - 0x378]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	mov	rbp, rbp
	jmp	.label_1930
.label_2005:
	jmp	.label_1909
.label_1909:
	mov	eax, 7
	nop	
	mov	dword ptr [rbp - 0x230], 1
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	edx, 1
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x31c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x31c]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3b4], edx
	lea	rdi, [rdi]
	jmp	.label_1823
.label_1821:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x45
	nop	
	jne	.label_1876
	jmp	.label_1831
.label_1876:
	nop	
	jmp	.label_1976
.label_1976:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x230], 2
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x2b8]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9f4], eax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0x9f4]
	idiv	esi
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_1823
.label_1830:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1949
	jmp	.label_1831
.label_1949:
	lea	rdi, [rdi]
	mov	eax, 0xffffff9c
	lea	rdi, [rdi]
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rdx + 0x14], 0
	mov	rbp, rbp
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x12c], esi
	mov	dword ptr [rbp - 0x1a4], 0
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2b8]
	nop	
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x174], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x174], 0
	jge	.label_1980
	nop	
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x1a4], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x12c]
	mov	rbp, rbp
	sub	edi, 1
	mov	dword ptr [rbp - 0x94c], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x94c]
	idiv	edi
	mov	rsp, rsp
	cmp	edx, 0
	mov	dword ptr [rbp - 0x1ec], esi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9ad], cl
	jne	.label_1985
	mov	al, 1
	mov	ecx, 0x64
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x12c]
	sub	edx, 1
	mov	byte ptr [rbp - 0x71], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x71]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x939], sil
	nop	
	jne	.label_2007
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x12c]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x90]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x939], sil
.label_2007:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x939]
	mov	byte ptr [rbp - 0x9ad], al
.label_1985:
	mov	al, byte ptr [rbp - 0x9ad]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x1ec]
	lea	rsi, [rsi]
	add	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x174], eax
	lea	rsi, [rsi]
	jmp	.label_2042
.label_1980:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x2b8]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x12c]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	idiv	edi
	cmp	edx, 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x258], esi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31d], cl
	mov	rbp, rbp
	jne	.label_2155
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x12c]
	nop	
	mov	byte ptr [rbp - 0x489], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0x489]
	mov	byte ptr [rbp - 0x24d], sil
	lea	rsi, [rsi]
	jne	.label_1844
	lea	rdi, [rdi]
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x12c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x228], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x228]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	sete	sil
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x24d], sil
.label_1844:
	mov	al, byte ptr [rbp - 0x24d]
	mov	byte ptr [rbp - 0x31d], al
.label_2155:
	mov	al, byte ptr [rbp - 0x31d]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	edi, edx
	lea	rsi, [rsi]
	call	iso_week_days
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x264], eax
	cmp	ecx, dword ptr [rbp - 0x264]
	jg	.label_2091
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1a4], 1
	mov	eax, dword ptr [rbp - 0x264]
	nop	
	mov	dword ptr [rbp - 0x174], eax
.label_2091:
	lea	rsi, [rsi]
	jmp	.label_2042
.label_2042:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x478], ecx
	mov	dword ptr [rbp - 0x324], edx
	lea	rsi, [rsi]
	je	.label_2098
	jmp	.label_2102
.label_2102:
	mov	eax, dword ptr [rbp - 0x478]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9f8], eax
	lea	rdi, [rdi]
	jne	.label_2103
	mov	rsp, rsp
	jmp	.label_1832
.label_1832:
	nop	
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x29c], eax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x29c]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	add	edx, dword ptr [rbp - 0x1a4]
	nop	
	mov	eax, edx
	cdq	
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x230], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa21], 0
	cmp	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	jg	.label_2107
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2125
.label_2107:
	mov	eax, 0xfffff894
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x1a4]
	cmp	edx, eax
	lea	rdi, [rdi]
	jge	.label_2128
	mov	rsp, rsp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x254], eax
	nop	
	jmp	.label_2136
.label_2128:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x254], eax
.label_2136:
	nop	
	mov	eax, dword ptr [rbp - 0x254]
	mov	dword ptr [rbp - 0x28], eax
.label_2125:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1884
.label_2098:
	nop	
	jmp	.label_2151
.label_2151:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x230], 4
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x1a4]
	nop	
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	mov	byte ptr [rbp - 0xa21], sil
	mov	rcx, qword ptr [rbp - 0x2b8]
	nop	
	mov	eax, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x1a4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1884
.label_2103:
	jmp	.label_2171
.label_2171:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x230], 2
	mov	ecx, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 0x310], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x310]
	lea	rsi, [rsi]
	idiv	ecx
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_1823
.label_1919:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_1927
	jmp	.label_1831
.label_1927:
	lea	rsi, [rsi]
	jmp	.label_2188
.label_2188:
	nop	
	mov	eax, 7
	mov	dword ptr [rbp - 0x230], 2
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	nop	
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	mov	rsp, rsp
	add	esi, 7
	mov	dword ptr [rbp - 0x990], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0x64], edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x990]
	mov	rbp, rbp
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x64]
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	nop	
	mov	eax, edi
	mov	rsp, rsp
	cdq	
	nop	
	idiv	esi
	mov	dword ptr [rbp - 0x3b4], eax
	nop	
	jmp	.label_1823
.label_1959:
	cmp	dword ptr [rbp - 0x45c], 0x45
	jne	.label_2215
	jmp	.label_1831
.label_2215:
	jmp	.label_2219
.label_2219:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], 1
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x3b4], ecx
	jmp	.label_1823
.label_2090:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x45c], 0x45
	mov	rbp, rbp
	jne	.label_2227
	nop	
	jmp	.label_1846
.label_2227:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x45c], 0x4f
	jne	.label_2233
	lea	rdi, [rdi]
	jmp	.label_1831
.label_2233:
	lea	rsi, [rsi]
	jmp	.label_2241
.label_2241:
	mov	dword ptr [rbp - 0x230], 4
	nop	
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0xa21], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x14c], edx
	mov	rbp, rbp
	jmp	.label_1884
.label_2019:
	cmp	dword ptr [rbp - 0x45c], 0x45
	lea	rdi, [rdi]
	jne	.label_1839
	nop	
	jmp	.label_1846
.label_1839:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b8]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x2ec], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2ec]
	lea	rdi, [rdi]
	idiv	esi
	mov	dword ptr [rbp - 0x290], edx
	cmp	dword ptr [rbp - 0x290], 0
	lea	rsi, [rsi]
	jge	.label_2093
	mov	rax, qword ptr [rbp - 0x2b8]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_1861
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x290]
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	jmp	.label_1869
.label_1861:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x290]
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
.label_1869:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x290], eax
.label_2093:
	lea	rdi, [rdi]
	jmp	.label_1882
.label_1882:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x230], 2
	mov	byte ptr [rbp - 0xa21], 0
	mov	eax, dword ptr [rbp - 0x290]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1884
.label_2044:
	test	byte ptr [rbp - 0x339], 1
	mov	rsp, rsp
	je	.label_1894
	nop	
	mov	byte ptr [rbp - 0x9e9], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 1
.label_1894:
	jmp	.label_2183
.label_2183:
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x198], rax
	cmp	dword ptr [rbp - 0x22c], 0
	mov	rsp, rsp
	jge	.label_1905
	xor	eax, eax
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	jmp	.label_1911
.label_1905:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0xd4], eax
.label_1911:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x1b8], rcx
	mov	rcx, qword ptr [rbp - 0x198]
	nop	
	cmp	rcx, qword ptr [rbp - 0x1b8]
	nop	
	jae	.label_1916
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0xa30], rax
	mov	rsp, rsp
	jmp	.label_1925
.label_1916:
	mov	rax, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xa30], rax
.label_1925:
	mov	rax, qword ptr [rbp - 0xa30]
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x4a0]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x978]
	cmp	rax, rcx
	jb	.label_1935
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1822
.label_1935:
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1946
	cmp	dword ptr [rbp - 0x230], 0
	mov	rbp, rbp
	jne	.label_1948
	mov	rax, qword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1b8]
	nop	
	jae	.label_1948
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x360], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	lea	rsi, [rsi]
	je	.label_1960
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	lea	rdi, [rdi]
	jne	.label_1970
.label_1960:
	mov	rsp, rsp
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x360]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x360]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	lea	rdi, [rdi]
	jmp	.label_1984
.label_1970:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x360]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x360]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rdx
.label_1984:
	jmp	.label_1948
.label_1948:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x51], 1
	je	.label_2242
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x198]
	call	memcpy_lowcase
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2015
.label_2242:
	test	byte ptr [rbp - 0x9e9], 1
	lea	rsi, [rsi]
	je	.label_2017
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x370]
	nop	
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x198]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_2023
.label_2017:
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x198]
	call	memcpy
.label_2023:
	mov	rbp, rbp
	jmp	.label_2015
.label_2015:
	mov	rax, qword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x370]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], rax
.label_1946:
	mov	rax, qword ptr [rbp - 0x4a0]
	add	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x978], rax
	jmp	.label_1930
.label_2146:
	mov	qword ptr [rbp - 0x388], 1
.label_2053:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x388]
	mov	rcx, qword ptr [rbp - 0x108]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x3a
	lea	rsi, [rsi]
	jne	.label_2028
	lea	rdi, [rdi]
	jmp	.label_2052
.label_2052:
	mov	rax, qword ptr [rbp - 0x388]
	add	rax, 1
	mov	qword ptr [rbp - 0x388], rax
	jmp	.label_2053
.label_2028:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x388]
	mov	rcx, qword ptr [rbp - 0x108]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x7a
	je	.label_2058
	mov	rbp, rbp
	jmp	.label_1831
.label_2058:
	mov	rax, qword ptr [rbp - 0x388]
	add	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_2065
.label_2037:
	mov	qword ptr [rbp - 0x388], 0
.label_2065:
	mov	rax, qword ptr [rbp - 0x2b8]
	nop	
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_2071
	jmp	.label_1930
.label_2071:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2b8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x400], edx
	cmp	dword ptr [rbp - 0x400], 0
	mov	byte ptr [rbp - 0x125], al
	mov	rsp, rsp
	jl	.label_2072
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x400], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	jne	.label_2081
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf9], dl
.label_2081:
	mov	al, byte ptr [rbp - 0xf9]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x125], al
.label_2072:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x125]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa21], al
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x400]
	lea	rdi, [rdi]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	nop	
	shr	rcx, 0x20
	mov	rsp, rsp
	mov	esi, ecx
	lea	rsi, [rsi]
	add	esi, edx
	mov	rbp, rbp
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	mov	rbp, rbp
	add	esi, edx
	nop	
	movsxd	rcx, esi
	mov	rsp, rsp
	imul	rcx, rcx, -0x77777777
	lea	rdi, [rdi]
	shr	rcx, 0x20
	mov	rbp, rbp
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	lea	rsi, [rsi]
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x150], edx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x400]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	rbp, rbp
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	mov	rsp, rsp
	shr	edx, 0x1f
	lea	rdi, [rdi]
	sar	esi, 5
	mov	rsp, rsp
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	nop	
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0xa14], esi
	movsxd	rcx, dword ptr [rbp - 0x400]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	nop	
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	lea	rsi, [rsi]
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x218], edx
	mov	rcx, qword ptr [rbp - 0x388]
	lea	rsi, [rsi]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x98], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x210], r8
	ja	.label_2139
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2142]]
	lea	rsi, [rsi]
	jmp	rcx
.label_2896:
	jmp	.label_2106
.label_2106:
	mov	dword ptr [rbp - 0x230], 5
	mov	dword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x150], 0x64
	add	eax, dword ptr [rbp - 0xa14]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_2149
.label_2897:
	lea	rsi, [rsi]
	jmp	.label_2157
.label_2157:
	mov	rbp, rbp
	jmp	.label_2159
.label_2159:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x230], 6
	nop	
	mov	dword ptr [rbp - 0x78], 4
	imul	eax, dword ptr [rbp - 0x150], 0x64
	add	eax, dword ptr [rbp - 0xa14]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_2149
.label_2898:
	jmp	.label_2168
.label_2168:
	jmp	.label_1824
.label_1824:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x230], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x78], 0x14
	imul	eax, dword ptr [rbp - 0x150], 0x2710
	imul	ecx, dword ptr [rbp - 0xa14], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x218]
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_2149
.label_2899:
	cmp	dword ptr [rbp - 0x218], 0
	je	.label_2181
	mov	rbp, rbp
	jmp	.label_2168
.label_2181:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa14], 0
	je	.label_1855
	jmp	.label_2157
.label_1855:
	jmp	.label_2191
.label_2191:
	nop	
	mov	dword ptr [rbp - 0x230], 3
	mov	dword ptr [rbp - 0x78], 0
	mov	eax, dword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], eax
	mov	rbp, rbp
	jmp	.label_2149
.label_2139:
	mov	rbp, rbp
	jmp	.label_1831
.label_2131:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, -1
	mov	qword ptr [rbp - 0x108], rax
.label_2032:
	mov	rsp, rsp
	jmp	.label_1831
.label_1831:
	mov	dword ptr [rbp - 0x200], 1
.label_2223:
	mov	rbp, rbp
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x200]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	nop	
	je	.label_2210
	mov	rsp, rsp
	jmp	.label_2221
.label_2221:
	mov	eax, dword ptr [rbp - 0x200]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x200], eax
	jmp	.label_2223
.label_2210:
	mov	rbp, rbp
	jmp	.label_2161
.label_2161:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x200]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x270], rax
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_2230
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x9a4], eax
	jmp	.label_2240
.label_2230:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0x9a4], eax
.label_2240:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9a4]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x270]
	cmp	rcx, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	jae	.label_1826
	nop	
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_1837
.label_1826:
	mov	rax, qword ptr [rbp - 0x270]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rax
.label_1837:
	mov	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf8]
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	cmp	rax, rcx
	jb	.label_1848
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1822
.label_1848:
	nop	
	cmp	qword ptr [rbp - 0x370], 0
	mov	rbp, rbp
	je	.label_1867
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x230], 0
	jne	.label_1873
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	jae	.label_1873
	nop	
	movsxd	rax, dword ptr [rbp - 0x22c]
	sub	rax, qword ptr [rbp - 0x270]
	mov	qword ptr [rbp - 0x4f0], rax
	cmp	dword ptr [rbp - 0x9c0], 0x30
	je	.label_1885
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c0], 0x2b
	jne	.label_1895
.label_1885:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4f0]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f0]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
	jmp	.label_1903
.label_1895:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rdx, qword ptr [rbp - 0x4f0]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x4f0]
	add	rdx, qword ptr [rbp - 0x370]
	mov	qword ptr [rbp - 0x370], rdx
.label_1903:
	lea	rdi, [rdi]
	jmp	.label_1873
.label_1873:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x51], 1
	mov	rbp, rbp
	je	.label_1923
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x370]
	sub	eax, dword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_1939
.label_1923:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x9e9], 1
	lea	rdi, [rdi]
	je	.label_1941
	mov	eax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x370]
	sub	eax, dword ptr [rbp - 0x200]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_uppcase
	nop	
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	jmp	.label_1958
.label_1941:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x200]
	mov	rsp, rsp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_1958:
	jmp	.label_1939
.label_1939:
	mov	rax, qword ptr [rbp - 0x270]
	add	rax, qword ptr [rbp - 0x370]
	nop	
	mov	qword ptr [rbp - 0x370], rax
.label_1867:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x978]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x978], rax
	nop	
	jmp	.label_1930
.label_1930:
	jmp	.label_1995
.label_1995:
	mov	dword ptr [rbp - 0x22c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1997
.label_1878:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x370], 0
	je	.label_1915
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x398], 0
	je	.label_1915
	mov	rax, qword ptr [rbp - 0x370]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_1915:
	mov	rax, qword ptr [rbp - 0x978]
	mov	qword ptr [rbp - 0x20], rax
.label_1822:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0xa48
	pop	rbx
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f340

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
.label_2245:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	cmp	rax, 0
	jbe	.label_2246
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_2245
.label_2246:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f3b0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
.label_2248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	jbe	.label_2247
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	toupper
	mov	dl, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rcx], dl
	lea	rdi, [rdi]
	jmp	.label_2248
.label_2247:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f440

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	sub	edi, dword ptr [rbp - 4]
	add	edi, 4
	lea	rsi, [rsi]
	add	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	lea	rdi, [rdi]
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	nop	
	sub	esi, edx
	lea	rsi, [rsi]
	add	esi, 4
	mov	rbp, rbp
	sub	esi, 1
	mov	rbp, rbp
	mov	eax, esi
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f4a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2249
	movabs	rdi, OFFSET FLAT:.str_9
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_2249:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2252
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2251
.label_2252:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_2251:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_2250
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_2250
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_4
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	cmp	eax, 0
	jne	.label_2253
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_2253:
	jmp	.label_2250
.label_2250:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f620

	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2255
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_2254
.label_2255:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_2254
.label_2254:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f6d0

	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_2256
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_2257
.label_2256:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2257
.label_2257:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f730

	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	je	.label_2258
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2259
.label_2258:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_2259
.label_2259:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f790

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_2260
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_2261
.label_2260:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_2261
.label_2261:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x30]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 8]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f890
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2262
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_2262:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f8f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_2263
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_2263:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_2265
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_2264
.label_2265:
	call	abort
.label_2264:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f990

	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_2266
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2267
.label_2266:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_2267
.label_2267:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	r8d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41fa90

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x168
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x150], rdx
	mov	qword ptr [rbp - 0x68], rcx
	mov	dword ptr [rbp - 0x58], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], r9d
	mov	qword ptr [rbp - 0x100], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], bl
	mov	r8d, dword ptr [rbp - 0xa4]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb7], 1
.label_2436:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_2440
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2449]]
	jmp	rcx
.label_2826:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_2825:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_2456
	jmp	.label_2420
.label_2420:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_2462
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_2462:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_2456
.label_2456:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_2275
.label_2827:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_2275
.label_2828:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_2289
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_2289:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_2305
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_2327:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_2310
	jmp	.label_2312
.label_2312:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_2314
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_2314:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2406
.label_2406:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_2327
.label_2310:
	mov	rbp, rbp
	jmp	.label_2305
.label_2305:
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	jmp	.label_2275
.label_2823:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_2822:
	mov	byte ptr [rbp - 0x3e], 1
.label_2824:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_2349
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_2349:
	jmp	.label_2353
.label_2353:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_2366
	jmp	.label_2358
.label_2358:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_2350
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_2350:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_2366
.label_2366:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_2275
.label_2821:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_2275
.label_2440:
	call	abort
.label_2275:
	mov	qword ptr [rbp - 0xd8], 0
.label_2386:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_2381
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_2382
.label_2381:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_2382:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2400
	mov	rbp, rbp
	jmp	.label_2410
.label_2400:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_2291
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_2291
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_2291
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_2422
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_2422
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_2432
.label_2422:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_2432:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_2291
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_2291
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_2453
	jmp	.label_2268
.label_2453:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_2291:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d], dl
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0x70], rax
.label_2953:
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_2459
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2273]]
	nop	
	jmp	rcx
.label_2847:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_2279
	mov	rsp, rsp
	jmp	.label_2283
.label_2283:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_2286
	jmp	.label_2268
.label_2286:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_2293
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_2293
	nop	
	jmp	.label_2296
.label_2296:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2300
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_2300:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_2306
.label_2306:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_2308
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_2308:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_2316
.label_2316:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2320
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_2320:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_2293:
	lea	rsi, [rsi]
	jmp	.label_2331
.label_2331:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2332
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_2332:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2465
.label_2465:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_2340
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_2340
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_2340
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_2340
	nop	
	jmp	.label_2364
.label_2364:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_2365
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_2365:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2373
.label_2373:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2298
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_2298:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_2340
.label_2340:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_2387
.label_2279:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2390
	mov	rbp, rbp
	jmp	.label_2383
.label_2390:
	jmp	.label_2387
.label_2387:
	jmp	.label_2272
.label_2858:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_2425
	mov	rbp, rbp
	jmp	.label_2405
.label_2405:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_2408
	jmp	.label_2415
.label_2425:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_2416
	jmp	.label_2268
.label_2416:
	jmp	.label_2329
.label_2408:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_2335
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_2335
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_2335
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x144], edx
	mov	dword ptr [rbp - 0xdc], esi
	lea	rdi, [rdi]
	je	.label_2429
	nop	
	jmp	.label_2372
.label_2372:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_2429
	jmp	.label_2442
.label_2442:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_2429
	jmp	.label_2450
.label_2450:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_2429
	jmp	.label_2403
.label_2403:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_2357
	jmp	.label_2429
.label_2429:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_2464
	jmp	.label_2268
.label_2464:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d], dl
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2468
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_2468:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2292
.label_2292:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2297
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_2297:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2303
.label_2303:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2463
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_2463:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2325
.label_2325:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2336
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_2336:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2378
.label_2357:
	jmp	.label_2378
.label_2378:
	jmp	.label_2335
.label_2335:
	jmp	.label_2329
.label_2415:
	jmp	.label_2329
.label_2329:
	jmp	.label_2272
.label_2848:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_2334
.label_2849:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_2334
.label_2853:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_2334
.label_2851:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_2344
.label_2854:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_2344
.label_2850:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_2344
.label_2852:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_2334
.label_2859:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_2351
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_2355
	nop	
	jmp	.label_2268
.label_2355:
	lea	rsi, [rsi]
	jmp	.label_2270
.label_2351:
	test	byte ptr [rbp - 0x89], 1
	je	.label_2362
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_2362
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_2362
	jmp	.label_2270
.label_2362:
	jmp	.label_2344
.label_2344:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_2374
	test	byte ptr [rbp - 0x3e], 1
	je	.label_2374
	jmp	.label_2268
.label_2374:
	mov	rsp, rsp
	jmp	.label_2334
.label_2334:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_2380
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_2274
.label_2380:
	jmp	.label_2272
.label_2860:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_2388
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2391
	jmp	.label_2396
.label_2388:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_2391
.label_2396:
	nop	
	jmp	.label_2272
.label_2391:
	jmp	.label_2401
.label_2401:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_2443
	lea	rsi, [rsi]
	jmp	.label_2272
.label_2443:
	nop	
	jmp	.label_2411
.label_2411:
	mov	byte ptr [rbp - 0x91], 1
.label_2855:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_2414
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_2414
	jmp	.label_2268
.label_2414:
	lea	rsi, [rsi]
	jmp	.label_2272
.label_2857:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_2419
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_2360
	jmp	.label_2268
.label_2360:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2397
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_2397
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_2397:
	jmp	.label_2433
.label_2433:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_2434
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_2434:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2439
.label_2439:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_2445
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_2445:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_2454
.label_2454:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_2458
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_2458:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_2419:
	lea	rsi, [rsi]
	jmp	.label_2272
.label_2856:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_2272
.label_2459:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_2280
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], 1
	movzx	eax, byte ptr [rbp - 0x3d]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40], sil
	lea	rsi, [rsi]
	jmp	.label_2290
.label_2280:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x118]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	jne	.label_2307
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_2307:
	jmp	.label_2315
.label_2315:
	lea	rdi, [rbp - 0x74]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x118]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rbp - 0x150]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	add	rsi, qword ptr [rbp - 0x110]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_2330
	jmp	.label_2339
.label_2330:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_2337
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_2339
.label_2337:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_2343
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_2363:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jae	.label_2302
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_2302:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_2359
	jmp	.label_2413
.label_2359:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_2363
.label_2413:
	jmp	.label_2339
.label_2343:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_2371
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_2371
	mov	qword ptr [rbp - 0xe8], 1
.label_2418:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_2376
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], esi
	jb	.label_2295
	jmp	.label_2393
.label_2393:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_2295
	jmp	.label_2399
.label_2399:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_2295
	jmp	.label_2407
.label_2407:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_2409
	mov	rsp, rsp
	jmp	.label_2295
.label_2295:
	mov	rsp, rsp
	jmp	.label_2268
.label_2409:
	jmp	.label_2417
.label_2417:
	mov	rsp, rsp
	jmp	.label_2319
.label_2319:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_2418
.label_2376:
	mov	rbp, rbp
	jmp	.label_2371
.label_2371:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_2424
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_2424:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_2426
.label_2426:
	lea	rsi, [rsi]
	jmp	.label_2428
.label_2428:
	jmp	.label_2430
.label_2430:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x118]
	nop	
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2315
.label_2339:
	jmp	.label_2290
.label_2290:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_2438
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_2448
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_2448
.label_2438:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_2427:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_2460
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_2460
	jmp	.label_2466
.label_2466:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_2467
	jmp	.label_2268
.label_2467:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_2271
	test	byte ptr [rbp - 0x42], 1
	jne	.label_2271
	lea	rdi, [rdi]
	jmp	.label_2281
.label_2281:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2321
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_2321:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_2368
.label_2368:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2398
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_2398:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_2435
.label_2435:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2348
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_2348:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_2271:
	jmp	.label_2317
.label_2317:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_2318
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_2318:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2379
.label_2379:
	jmp	.label_2326
.label_2326:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2328
	nop	
	movzx	eax, byte ptr [rbp - 0x3d]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_2328:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_2342
.label_2342:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_2346
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	byte ptr [rsi + rdx], cl
.label_2346:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x3d], cl
	jmp	.label_2354
.label_2460:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_2461
	lea	rdi, [rdi]
	jmp	.label_2367
.label_2367:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_2370
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_2370:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_2461:
	nop	
	jmp	.label_2354
.label_2354:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_2324
	jmp	.label_2385
.label_2324:
	lea	rsi, [rsi]
	jmp	.label_2389
.label_2389:
	test	byte ptr [rbp - 0x42], 1
	je	.label_2377
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_2377
	lea	rsi, [rsi]
	jmp	.label_2394
.label_2394:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2395
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_2395:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_2404
.label_2404:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_2412
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_2412:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_2377:
	nop	
	jmp	.label_2421
.label_2421:
	mov	rsp, rsp
	jmp	.label_2361
.label_2361:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_2423
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_2423:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x3d], dl
	jmp	.label_2427
.label_2385:
	mov	rsp, rsp
	jmp	.label_2270
.label_2448:
	lea	rsi, [rsi]
	jmp	.label_2272
.label_2272:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_2384
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_2444
.label_2384:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_2447
.label_2444:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_2447
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x100]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, esi
	and	rcx, 0x1f
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_2451
.label_2447:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_2451
	mov	rsp, rsp
	jmp	.label_2270
.label_2451:
	nop	
	jmp	.label_2274
.label_2274:
	jmp	.label_2276
.label_2276:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_2278
	jmp	.label_2268
.label_2278:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_2282
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_2282
	lea	rdi, [rdi]
	jmp	.label_2288
.label_2288:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_2375
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_2375:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_2301
.label_2301:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2437
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_2437:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_2309
.label_2309:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_2313
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_2313:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_2282:
	jmp	.label_2322
.label_2322:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2323
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_2323:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2333
.label_2333:
	nop	
	jmp	.label_2270
.label_2270:
	jmp	.label_2338
.label_2338:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_2341
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_2341
	lea	rdi, [rdi]
	jmp	.label_2345
.label_2345:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2347
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_2347:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2287
.label_2287:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_2356
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_2356:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_2341:
	jmp	.label_2369
.label_2369:
	nop	
	jmp	.label_2446
.label_2446:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2455
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_2455:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_2311
	mov	byte ptr [rbp - 0xb7], 0
.label_2311:
	mov	rbp, rbp
	jmp	.label_2383
.label_2383:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_2386
.label_2410:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_2392
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_2392
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_2392
	nop	
	jmp	.label_2268
.label_2392:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_2402
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_2402
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_2402
	test	byte ptr [rbp - 0xb7], 1
	je	.label_2304
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0xa4]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_2294
.label_2304:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_2431
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_2431
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_2436
.label_2431:
	jmp	.label_2441
.label_2441:
	mov	rbp, rbp
	jmp	.label_2402
.label_2402:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_2284
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_2284
	mov	rbp, rbp
	jmp	.label_2277
.label_2277:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_2452
	lea	rdi, [rdi]
	jmp	.label_2352
.label_2352:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_2457
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_2457:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_2269
.label_2269:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_2277
.label_2452:
	jmp	.label_2284
.label_2284:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2285
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_2285:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2294
.label_2268:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_2299
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_2299
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_2299:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	r9d, dword ptr [rbp - 0xa4]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_2294:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x421530
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4215a0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_2469
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_2470
.label_2469:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_2470
.label_2470:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x58]
	nop	
	mov	rbx, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	xcharalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x64], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x64]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_2471
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_2471:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421770
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_2476:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_2475
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_2476
.label_2475:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_2474
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_2472]],  rax
.label_2474:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_2473
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_2473:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421880

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4218d0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 0x64], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_2483
	call	abort
.label_2483:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_2478
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0xc]
	cmp	edx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	jge	.label_2479
	call	xalloc_die
.label_2479:
	test	byte ptr [rbp - 0x51], 1
	je	.label_2480
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_2484
.label_2480:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_2484:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x64]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_2482
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_2472]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_2482:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 0x64]
	nop	
	add	edx, 1
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x64]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_2478:
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x28]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	ja	.label_2481
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x64]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	je	.label_2477
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_2477:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	xcharalloc
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
.label_2481:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421c00

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421c40
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421c70
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421cb0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x40]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421d10

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], esi
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 0x44], 0xa
	jne	.label_2485
	call	abort
.label_2485:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421db0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], edi
	nop	
	mov	dword ptr [rbp - 0x44], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x40]
	nop	
	mov	edi, dword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421e20

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421e60
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421ea0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 4]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421f50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421f90

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421fc0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	quotearg_char_mem
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422000

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	dword ptr [rbp - 0x54], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x94], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x94]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x90]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4220e0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	r8, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422130

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x68], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x60], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x38]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4221d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422220
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x422280

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4222c0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quote_n_mem
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422300

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422340

	.globl quote
	.type quote, @function
quote:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quote_n
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422380

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_2489
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2488
.label_2489:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_2487
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2488
.label_2487:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_2486
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2488
.label_2486:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_2488:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4224c0

	.globl same_name
	.type same_name, @function
same_name:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edi, eax
	mov	edx, eax
	lea	rdi, [rdi]
	call	same_nameat
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422510

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x190
	nop	
	mov	dword ptr [rbp - 0x24], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rsi
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], r8b
	lea	rsi, [rsi]
	jne	.label_2494
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	memcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], cl
.label_2494:
	mov	al, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xe2]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd5], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x25], 0
	test	byte ptr [rbp - 0xd5], 1
	lea	rsi, [rsi]
	je	.label_2491
	mov	rdi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	dir_name
	lea	rdx, [rbp - 0xc8]
	mov	qword ptr [rbp - 0x180], rax
	mov	dword ptr [rbp - 0x184], 0x100
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x184]
	call	fstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2492
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_2492:
	nop	
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	dir_name
	lea	rdx, [rbp - 0x178]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	edi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x184]
	call	fstatat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2493
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	al, 0
	nop	
	call	error
.label_2493:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rdx, qword ptr [rbp - 0x170]
	mov	byte ptr [rbp - 9], cl
	lea	rdi, [rdi]
	jne	.label_2490
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
.label_2490:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
.label_2491:
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x190
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422780
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4227b0

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4227c0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4227f0
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x422830
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, esi
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422870

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4228b0

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4228f0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422930
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422970
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4229b0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4229f0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422a30
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x422a70
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x422ab0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ax, dx
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	word ptr [rbp - 0xa], ax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x422b00
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dx, cx
	nop	
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422b30
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422b70
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422b90
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422bb0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x60]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422bd0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422bf0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422c20

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422c50

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422c80
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	qword ptr [rbp - 8], -1
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422cc0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x422ce0
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x422d30

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rbp - 0x10]
	jge	.label_2498
	nop	
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rsp, rsp
	jmp	.label_2495
.label_2498:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jle	.label_2499
	nop	
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_2495
.label_2499:
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2496
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_2496
	mov	rbp, rbp
	jmp	.label_2496
.label_2496:
	mov	rax, -1
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jg	.label_2497
	cmp	qword ptr [rbp - 8], 0x77359400
	lea	rsi, [rsi]
	jg	.label_2497
	lea	rdi, [rdi]
	jmp	.label_2497
.label_2497:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2495:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x422e00
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_2500
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2502
.label_2500:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	jne	.label_2501
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 1], al
.label_2501:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
.label_2502:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422e70
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_2503]]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	mov	rsp, rsp
	movaps	xmm0, xmm1
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422eb0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x48], r9
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_2507
	movabs	rsi, OFFSET FLAT:.str_10
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jmp	.label_2505
.label_2507:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_2505:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_5
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	lea	rsi, [rsi]
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rbp, rbp
	mov	ecx, 0x7e3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_3
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rdx
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rbp, rbp
	ja	.label_2506
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2508]]
	jmp	rcx
.label_2881:
	jmp	.label_2504
.label_2882:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_2
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_2504
.label_2883:
	movabs	rdi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_2504
.label_2884:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_2504
.label_2885:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2504
.label_2886:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], eax
	nop	
	jmp	.label_2504
.label_2887:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_1
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_2504
.label_2888:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0x50], eax
	nop	
	jmp	.label_2504
.label_2889:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	jmp	.label_2504
.label_2890:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_2504
.label_2506:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10c], eax
.label_2504:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4236f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 8], 0
.label_2509:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2510
	mov	rbp, rbp
	jmp	.label_2511
.label_2511:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2509
.label_2510:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4237a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_2513:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_2516
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_2515
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_2514
.label_2515:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_2514:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
.label_2516:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2512
	mov	rsp, rsp
	jmp	.label_2517
.label_2512:
	jmp	.label_2518
.label_2518:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2513
.label_2517:
	nop	
	lea	r8, [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423900

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1d0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x1c0], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	qword ptr [rbp - 0x1a8], r9
	mov	qword ptr [rbp - 0x108], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	je	.label_2519
	movaps	xmm0, xmmword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_2519:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	r8, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	mov	qword ptr [rbp - 0x148], rdx
	lea	rdx, [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], 0x30
	mov	dword ptr [rbp - 0x190], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	r8, [rbp - 0x190]
	call	version_etc_va
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423ac0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423b70

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_2520
	mov	rbp, rbp
	call	xalloc_die
.label_2520:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423bd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_2521
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_2521
	lea	rdi, [rdi]
	call	xalloc_die
.label_2521:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423c30

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_2522
	mov	rsp, rsp
	call	xalloc_die
.label_2522:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423cb0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_2523
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_2523
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_2525
.label_2523:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_2524
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_2524
	lea	rsi, [rsi]
	call	xalloc_die
.label_2524:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_2525:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423d60

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_2526
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2528
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_2528:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_2530
	call	xalloc_die
.label_2530:
	lea	rsi, [rsi]
	jmp	.label_2529
.label_2526:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_2527
	call	xalloc_die
.label_2527:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_2529:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423e90

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423ec0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423f00
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423f50
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_2531
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_2532
.label_2531:
	lea	rsi, [rsi]
	call	xalloc_die
.label_2532:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423fc0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424010

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424070

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4240d0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11d, r10d
	lea	rbx, [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x38], r8
	nop	
	mov	qword ptr [rbp - 0x58], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	r8, qword ptr [rbp - 0x38]
	mov	rsi, r11
	mov	rcx, rbx
	mov	rbp, rbp
	call	xstrtoumax
	nop	
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_2543
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_2546
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2536
.label_2546:
	mov	dword ptr [rbp - 0x50], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0x3fffffff
	jbe	.label_2541
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_2534
.label_2541:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_2534:
	jmp	.label_2536
.label_2536:
	nop	
	jmp	.label_2540
.label_2543:
	cmp	dword ptr [rbp - 0x50], 1
	jne	.label_2542
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_2539
.label_2542:
	cmp	dword ptr [rbp - 0x50], 3
	jne	.label_2535
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2535:
	jmp	.label_2539
.label_2539:
	jmp	.label_2540
.label_2540:
	nop	
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_2538
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2544
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_2537
.label_2544:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2537
.label_2537:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_2545
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2533
.label_2545:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], ecx
.label_2533:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	call	quote
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x40]
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
.label_2538:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4242c0
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], r9d
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x20]
	mov	r10d, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	mov	dword ptr [rsp], r10d
	lea	rsi, [rsi]
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424330

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_2547
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	mov	rbp, rbp
	jne	.label_2547
	call	xalloc_die
.label_2547:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4243a0

	.globl xgethostname
	.type xgethostname, @function
xgethostname:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x30], 0x22
.label_2551:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 8]
	call	x2realloc
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rax], 0
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	gethostname
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_2552
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	jne	.label_2553
	jmp	.label_2548
.label_2553:
	jmp	.label_2549
.label_2552:
	call	__errno_location
	cmp	dword ptr [rax], 0
	nop	
	je	.label_2550
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	je	.label_2550
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	je	.label_2550
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	je	.label_2550
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	free
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xc], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2554
.label_2550:
	jmp	.label_2549
.label_2549:
	jmp	.label_2551
.label_2548:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_2554:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4244f0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0xa4], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	qword ptr [rbp - 0xe0], r8
	mov	dword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0xa4]
	jg	.label_2576
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xa4], 0x24
	mov	rsp, rsp
	jg	.label_2576
	nop	
	jmp	.label_2581
.label_2576:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_11
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x54
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_2581:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2597
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	jmp	.label_2602
.label_2597:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_2602
.label_2602:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x89], cl
.label_2579:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x89]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_2566
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x89], dl
	jmp	.label_2579
.label_2566:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x89]
	nop	
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_2584
	mov	dword ptr [rbp - 0xc8], 4
	nop	
	jmp	.label_2557
.label_2584:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	edx, dword ptr [rbp - 0xa4]
	call	strtoul
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jne	.label_2604
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	je	.label_2563
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_2563
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	call	strchr
	cmp	rax, 0
	je	.label_2563
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 1
	nop	
	jmp	.label_2567
.label_2563:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_2557
.label_2567:
	jmp	.label_2574
.label_2604:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_2611
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_2558
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_2557
.label_2558:
	mov	dword ptr [rbp - 0x18], 1
.label_2611:
	mov	rbp, rbp
	jmp	.label_2574
.label_2574:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_2596
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0xc8], edx
	nop	
	jmp	.label_2557
.label_2596:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2595
	mov	dword ptr [rbp - 0x90], 0x400
	nop	
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_2605
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 0xc8], edx
	jmp	.label_2557
.label_2605:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x45
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	je	.label_2568
	lea	rdi, [rdi]
	jmp	.label_2582
.label_2582:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_2568
	nop	
	jmp	.label_2592
.label_2592:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x74], eax
	nop	
	je	.label_2568
	lea	rsi, [rsi]
	jmp	.label_2601
.label_2601:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_2568
	jmp	.label_2608
.label_2608:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x50
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_2568
	jmp	.label_2613
.label_2613:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	je	.label_2568
	jmp	.label_2620
.label_2620:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	eax, -0x59
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], eax
	jb	.label_2568
	mov	rsp, rsp
	jmp	.label_2603
.label_2603:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x50], eax
	lea	rsi, [rsi]
	je	.label_2568
	lea	rsi, [rsi]
	jmp	.label_2587
.label_2587:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6b
	nop	
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2568
	nop	
	jmp	.label_2585
.label_2585:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	je	.label_2568
	jmp	.label_2594
.label_2594:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	jne	.label_2560
	jmp	.label_2568
.label_2568:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2593
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], ecx
	nop	
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	je	.label_2610
	mov	rsp, rsp
	jmp	.label_2618
.label_2618:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	sub	eax, 0x44
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_2610
	jmp	.label_2562
.label_2562:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xd0], eax
	jne	.label_2565
	lea	rsi, [rsi]
	jmp	.label_2570
.label_2570:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	mov	rbp, rbp
	jne	.label_2572
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2572:
	jmp	.label_2565
.label_2610:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], 0x3e8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2565:
	lea	rsi, [rsi]
	jmp	.label_2593
.label_2593:
	nop	
	jmp	.label_2560
.label_2560:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	nop	
	mov	dword ptr [rbp - 0xec], ecx
	mov	dword ptr [rbp - 4], edx
	nop	
	je	.label_2599
	mov	rbp, rbp
	jmp	.label_2607
.label_2607:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x45
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	je	.label_2609
	lea	rdi, [rdi]
	jmp	.label_2555
.label_2555:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], eax
	je	.label_2616
	jmp	.label_2615
.label_2615:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2583
	lea	rsi, [rsi]
	jmp	.label_2588
.label_2588:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2556
	mov	rsp, rsp
	jmp	.label_2573
.label_2573:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_2577
	jmp	.label_2614
.label_2614:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0x28], eax
	je	.label_2580
	jmp	.label_2590
.label_2590:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rdi, [rdi]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	je	.label_2591
	nop	
	jmp	.label_2571
.label_2571:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	je	.label_2600
	jmp	.label_2619
.label_2619:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_2564
	jmp	.label_2598
.label_2598:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	mov	rbp, rbp
	je	.label_2612
	nop	
	jmp	.label_2617
.label_2617:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_2616
	mov	rbp, rbp
	jmp	.label_2559
.label_2559:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	je	.label_2583
	lea	rsi, [rsi]
	jmp	.label_2569
.label_2569:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	je	.label_2556
	nop	
	jmp	.label_2578
.label_2578:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_2580
	mov	rbp, rbp
	jmp	.label_2586
.label_2586:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2589
	jmp	.label_2606
.label_2564:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x60], eax
	mov	rsp, rsp
	jmp	.label_2561
.label_2599:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	esi, 0x400
	call	bkm_scale
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_2561
.label_2612:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], 0
	jmp	.label_2561
.label_2609:
	lea	rdi, [rbp - 0x70]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_2561
.label_2616:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_2561
.label_2583:
	lea	rdi, [rbp - 0x70]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	jmp	.label_2561
.label_2556:
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_2561
.label_2577:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_2561
.label_2580:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_2561
.label_2589:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	call	bkm_scale
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_2561
.label_2591:
	lea	rdi, [rbp - 0x70]
	nop	
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_2561
.label_2600:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	mov	edx, 7
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_2561
.label_2606:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x18]
	or	edx, 2
	nop	
	mov	dword ptr [rbp - 0xc8], edx
	mov	rbp, rbp
	jmp	.label_2557
.label_2561:
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	or	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_2575
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	or	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_2575:
	lea	rsi, [rsi]
	jmp	.label_2595
.label_2595:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], edx
.label_2557:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc8]
	mov	rbp, rbp
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424ec0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	movsxd	rdi, dword ptr [rbp - 4]
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, esi
	div	rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	mov	rbp, rbp
	jae	.label_2621
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 0x14], 1
	lea	rsi, [rsi]
	jmp	.label_2622
.label_2621:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x14], 0
.label_2622:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424f40

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_2624:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 4], ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2623
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	call	bkm_scale
	lea	rdi, [rdi]
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2624
.label_2623:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x424fb0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	nop	
	movsx	edx, al
	nop	
	call	xstrtol_error
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x425010

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 0x29], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], r9d
	mov	qword ptr [word ptr [rbp - 64]], OFFSET FLAT:.str_12
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	je	.label_2630
	nop	
	jmp	.label_2626
.label_2626:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_2628
	lea	rdi, [rdi]
	jmp	.label_2633
.label_2633:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	je	.label_2627
	lea	rsi, [rsi]
	jmp	.label_2631
.label_2631:
	call	abort
.label_2627:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_9
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_2625
.label_2628:
	movabs	rax, OFFSET FLAT:.str.2_6
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2625
.label_2630:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.3_4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_2625:
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jge	.label_2629
	lea	rax, [rbp - 2]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	r8b, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], r8b
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2632
.label_2629:
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_2632:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x28]
	mov	edi, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	nop	
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4251c0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], edx
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	mov	qword ptr [rbp - 0xd8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x54]
	jg	.label_2635
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_2635
	jmp	.label_2638
.label_2635:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_11
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_2638:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2676
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_2658
.label_2676:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_2658
.label_2658:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x91], cl
.label_2693:
	nop	
	movzx	eax, byte ptr [rbp - 0x91]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_2686
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_2693
.label_2686:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_2636
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_2640
.label_2636:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_2656
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_2663
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_2663
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_2663
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_2659
.label_2663:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_2640
.label_2659:
	lea	rdi, [rdi]
	jmp	.label_2648
.label_2656:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_2699
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_2671
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_2640
.label_2671:
	mov	dword ptr [rbp - 0x60], 1
.label_2699:
	jmp	.label_2648
.label_2648:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_2650
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_2640
.label_2650:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_2637
	mov	dword ptr [rbp - 0x64], 0x400
	mov	dword ptr [rbp - 0xd0], 1
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_2684
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	jmp	.label_2640
.label_2684:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	nop	
	je	.label_2634
	jmp	.label_2641
.label_2641:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_2634
	nop	
	jmp	.label_2651
.label_2651:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_2634
	nop	
	jmp	.label_2662
.label_2662:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_2634
	lea	rsi, [rsi]
	jmp	.label_2667
.label_2667:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_2634
	jmp	.label_2678
.label_2678:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2634
	jmp	.label_2682
.label_2682:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_2634
	mov	rsp, rsp
	jmp	.label_2691
.label_2691:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2634
	jmp	.label_2696
.label_2696:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_2634
	mov	rsp, rsp
	jmp	.label_2644
.label_2644:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_2634
	jmp	.label_2652
.label_2652:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_2653
	jmp	.label_2634
.label_2634:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2665
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], edx
	mov	rsp, rsp
	je	.label_2670
	lea	rsi, [rsi]
	jmp	.label_2681
.label_2681:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2670
	jmp	.label_2688
.label_2688:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_2645
	lea	rsi, [rsi]
	jmp	.label_2694
.label_2694:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_2639
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_2639:
	jmp	.label_2645
.label_2670:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_2645:
	jmp	.label_2665
.label_2665:
	nop	
	jmp	.label_2653
.label_2653:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x68], edx
	mov	rbp, rbp
	je	.label_2654
	jmp	.label_2664
.label_2664:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_2666
	jmp	.label_2672
.label_2672:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_2646
	jmp	.label_2679
.label_2679:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_2673
	nop	
	jmp	.label_2668
.label_2668:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2687
	nop	
	jmp	.label_2692
.label_2692:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2683
	mov	rsp, rsp
	jmp	.label_2698
.label_2698:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_2643
	jmp	.label_2675
.label_2675:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_2649
	mov	rbp, rbp
	jmp	.label_2647
.label_2647:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_2655
	jmp	.label_2657
.label_2657:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2661
	jmp	.label_2669
.label_2669:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_2689
	jmp	.label_2674
.label_2674:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_2646
	jmp	.label_2680
.label_2680:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2673
	jmp	.label_2660
.label_2660:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_2687
	jmp	.label_2690
.label_2690:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_2643
	jmp	.label_2677
.label_2677:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_2695
	jmp	.label_2697
.label_2661:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale_0
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2642
.label_2654:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2642
.label_2689:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_2642
.label_2666:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2642
.label_2646:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2642
.label_2673:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2642
.label_2687:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2642
.label_2683:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_2642
.label_2643:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_2642
.label_2695:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2642
.label_2649:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2642
.label_2655:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2642
.label_2697:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	jmp	.label_2640
.label_2642:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_2685
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_2685:
	jmp	.label_2637
.label_2637:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_2640:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425b50

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_2700
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_2701
.label_2700:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_2701:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425bd0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 8], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
.label_2702:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2703
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2702
.label_2703:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425c50

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_2704
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_2704:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_2705
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_2705
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2705
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x31], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2706
.label_2705:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2706:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425d40

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, 0xffffd828
	lea	rsi, [rsi]
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2707
	jmp	.label_2709
.label_2709:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2708
.label_2707:
	lea	rsi, [rsi]
	jmp	.label_2708
.label_2708:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425da0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], r8
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x50]
	nop	
	and	al, 0xfe
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425e20

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2710
	nop	
	mov	qword ptr [rbp - 0x18], 0x10
.label_2710:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2711
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0x20
	nop	
	sub	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
.label_2711:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_2712
	mov	rbp, rbp
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2712:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x10
	sub	rsi, 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rdi, 1
	lea	rsi, [rsi]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x50]
	mov	rbp, rbp
	and	r8b, 0xfd
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x50], r8b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	r8b, byte ptr [rdx + 0x50]
	lea	rdi, [rdi]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x425fb0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x50], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	_obstack_begin_worker
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426040

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x30]
	add	rsi, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	shr	rdi, 3
	mov	rsp, rsp
	add	rsi, rdi
	add	rsi, 0x64
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 8]
	jae	.label_2713
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_2713:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	jae	.label_2715
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_2715:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	ja	.label_2714
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	ja	.label_2714
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x28], rax
.label_2714:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2716
	nop	
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2716:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	add	rdx, 0x10
	lea	rdi, [rdi]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcpy
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	nop	
	jne	.label_2717
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x10
	mov	rsp, rsp
	sub	rsi, 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_2717
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	call_freefun
.label_2717:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4262d0

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_2718
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2719
.label_2718:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_2719:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426350

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2720
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_2721
.label_2720:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_2721:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4263c0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
.label_2725:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 2], cl
	je	.label_2726
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	jae	.label_2724
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	setb	cl
	nop	
	mov	byte ptr [rbp - 1], cl
.label_2724:
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 2], al
.label_2726:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 2]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2722
	jmp	.label_2723
.label_2722:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2725
.label_2723:
	cmp	qword ptr [rbp - 0x28], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426490

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2734:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0xa], cl
	je	.label_2730
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rbp - 9], al
	jae	.label_2731
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
.label_2731:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa], al
.label_2730:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2728
	mov	rbp, rbp
	jmp	.label_2733
.label_2728:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_freefun
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x50]
	lea	rsi, [rsi]
	and	cl, 0xfd
	lea	rsi, [rsi]
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_2734
.label_2733:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_2732
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	jmp	.label_2727
.label_2732:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_2729
	mov	rbp, rbp
	call	abort
.label_2729:
	jmp	.label_2727
.label_2727:
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4265f0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
.label_2735:
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_2736
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2735
.label_2736:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426670

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_7
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_13
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	nop	
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4266d0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2739
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2738
.label_2739:
	nop	
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	jmp	.label_2738
.label_2738:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0x77
	lea	rdi, [rdi]
	jae	.label_2742
	mov	rbp, rbp
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	jmp	.label_2741
.label_2742:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_2741:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_2737
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 0x20], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 8], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2740
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rbp, rbp
	call	extend_abbrs
.label_2740:
	jmp	.label_2737
.label_2737:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426810

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426860

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	lea	rsi, [rsi]
	je	.label_2743
	mov	rbp, rbp
	jmp	.label_2744
.label_2744:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_2745
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2744
.label_2745:
	jmp	.label_2743
.label_2743:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4268e0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_2746
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	gmtime_r
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2748
.label_2746:
	mov	rdi, qword ptr [rbp - 8]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_2750
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	localtime_r
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	cmp	rax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
	je	.label_2751
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	save_abbr
	mov	byte ptr [rbp - 0x11], al
.label_2751:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2747
	lea	rdi, [rdi]
	jmp	.label_2749
.label_2747:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	je	.label_2749
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2748
.label_2749:
	jmp	.label_2750
.label_2750:
	nop	
	mov	qword ptr [rbp - 0x28], 0
.label_2748:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426a00

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2756
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_2753
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2757
	jmp	.label_2753
.label_2756:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 8], 0
	jne	.label_2753
.label_2757:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2752
.label_2753:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	tzalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2754
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2752
.label_2754:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	change_env
	test	al, 1
	jne	.label_2755
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	tzfree
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_2752
.label_2755:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_2752:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x426b40

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_1
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2758
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	ja	.label_2762
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x38
	nop	
	cmp	rax, rcx
	jae	.label_2762
.label_2758:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_2763
.label_2762:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_2760
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 9
	mov	qword ptr [rbp - 8], rax
.label_2766:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2759
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	jne	.label_2764
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rcx, 9
	cmp	rax, rcx
	nop	
	jne	.label_2765
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_2764
.label_2765:
	lea	rdi, [rdi]
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rdi, 9
	sub	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_2767
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	mov	byte ptr [rbp - 9], 0
	jmp	.label_2763
.label_2767:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	cmp	rax, 0x77
	jae	.label_2770
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	extend_abbrs
	mov	rsp, rsp
	jmp	.label_2769
.label_2770:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2768
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_2763
.label_2768:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_2769:
	jmp	.label_2759
.label_2764:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_2761
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_2761
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2761:
	lea	rdi, [rdi]
	jmp	.label_2766
.label_2759:
	mov	rbp, rbp
	jmp	.label_2760
.label_2760:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	byte ptr [rbp - 9], 1
.label_2763:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426de0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_2771
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2772
.label_2771:
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_2773
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2773:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], dl
.label_2772:
	nop	
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426e90

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x68], rsi
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	jne	.label_2779
	mov	rdi, qword ptr [rbp - 0x68]
	call	timegm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2775
.label_2779:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	set_tz
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	je	.label_2777
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	call	mktime
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], -1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jne	.label_2780
	mov	rsp, rsp
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	call	localtime_r
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2776
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	call	equal_tm
	nop	
	cmp	eax, 0
	je	.label_2776
.label_2780:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	call	save_abbr
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2776
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_2776:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	revert_tz
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2778
	mov	rsp, rsp
	jmp	.label_2774
.label_2778:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2775
.label_2774:
	jmp	.label_2777
.label_2777:
	mov	qword ptr [rbp - 0x18], -1
.label_2775:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x426fd0

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 4]
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	isdst_differ
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 4]
	or	esi, ecx
	lea	rdi, [rdi]
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4270c0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_0
	nop	
	call	getenv
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4270f0

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2781
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2783
.label_2781:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2783
.label_2783:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	setenv_TZ
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2782
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_2784
.label_2782:
	call	tzset
	nop	
	mov	byte ptr [rbp - 0x11], 1
.label_2784:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427180

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_2785
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	setenv
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2786
.label_2785:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_0
	call	unsetenv
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_2786:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4271f0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], esi
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	setne	dl
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	byte ptr [rbp - 1], cl
	je	.label_2787
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	jg	.label_2787
	mov	rsp, rsp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	setle	cl
	mov	byte ptr [rbp - 1], cl
.label_2787:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427280
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, esi
	shl	rdi, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4272d0
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, esi
	nop	
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427320
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	shr	edi, cl
	lea	rdi, [rdi]
	or	esi, edi
	mov	rbp, rbp
	mov	eax, esi
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427370
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	shr	esi, cl
	mov	edi, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 4]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4273b0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	mov	rbp, rbp
	or	rdi, rdx
	mov	rax, rdi
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427410

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 4]
	mov	edx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rdi, cl
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 4]
	mov	r9, qword ptr [rbp - 0x10]
	sub	r9, r8
	nop	
	mov	rcx, r9
	shl	rdx, cl
	mov	rsp, rsp
	or	rdi, rdx
	mov	rsp, rsp
	mov	rax, rdi
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427470
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rsi, [rsi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 6], ax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	movzx	esi, word ptr [rbp - 6]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	shl	esi, cl
	movzx	edx, word ptr [rbp - 6]
	sub	edi, dword ptr [rbp - 4]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4274c0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rdi, [rdi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sar	esi, cl
	nop	
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	lea	rdi, [rdi]
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427510
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	mov	byte ptr [rbp - 5], al
	nop	
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 5]
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	esi, cl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 5]
	mov	rsp, rsp
	sub	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	nop	
	mov	al, sil
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x427570
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	nop	
	mov	ecx, edi
	shl	edx, cl
	lea	rdi, [rdi]
	or	esi, edx
	lea	rsi, [rsi]
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4275c0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jne	.label_2788
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2791
.label_2788:
	mov	rbp, rbp
	jmp	.label_2789
.label_2789:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x19], cl
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0
	jne	.label_2790
	jmp	.label_2792
.label_2790:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	movzx	ecx, byte ptr [rbp - 0x1a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2789
.label_2792:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2791:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4276b0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__fpending
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x16], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_2795
	test	byte ptr [rbp - 0x15], 1
	je	.label_2794
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_2795
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2794
.label_2795:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_2793
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2793:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_2796
.label_2794:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_2796:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427790

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	mdir_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_2797
	lea	rsi, [rsi]
	call	xalloc_die
.label_2797:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4277e0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
.label_2799:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_2798
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movsx	rax, byte ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2799
.label_2798:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427870

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	edi, 0xe
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2801
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_1
	nop	
	mov	qword ptr [rbp - 8], rax
.label_2801:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_2800
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2800:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4278f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_2806
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_2804
.label_2806:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2803
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2802
.label_2803:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2802
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2802:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2805
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_2805:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_2804:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427a10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_2807
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_2808
.label_2807:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2809
.label_2808:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_2809:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x427a80

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2810
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2810:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x427ae0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0xc], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2811
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_2811
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2811
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2812
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_2813
.label_2812:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jmp	.label_2813
.label_2811:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_2813:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x427ca0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x427cb0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x427cc0

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x427cd0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat