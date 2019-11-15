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
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	nop	
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str
	call	setlocale
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	bindtextdomain
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
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
	mov	qword ptr [word ptr [label_46]],  -1
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	decode_switches
	mov	dword ptr [rbp - 0x14], eax
	nop	
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_12
	mov	rbp, rbp
	call	parse_ls_color
.label_12:
	test	byte ptr [byte ptr [directories_first]],  1
	je	.label_18
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
	lea	rdi, [rdi]
	jmp	.label_22
.label_18:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_with_color]],  1
	lea	rsi, [rsi]
	je	.label_23
	nop	
	mov	edi, 0xd
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	jne	.label_31
	lea	rsi, [rsi]
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	mov	rbp, rbp
	jne	.label_36
	nop	
	jmp	.label_38
.label_36:
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_31
.label_38:
	mov	edi, 0xc
	call	is_colored
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_44
	jmp	.label_45
.label_44:
	cmp	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	jne	.label_45
.label_31:
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
.label_45:
	jmp	.label_23
.label_23:
	jmp	.label_22
.label_22:
	nop	
	cmp	dword ptr [dword ptr [dereference]],  1
	mov	rsp, rsp
	jne	.label_51
	mov	al, 1
	mov	rsp, rsp
	test	byte ptr [byte ptr [immediate_dirs]],  1
	mov	byte ptr [rbp - 0x65], al
	nop	
	jne	.label_7
	mov	al, 1
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [indicator_style]],  3
	mov	byte ptr [rbp - 0x65], al
	nop	
	je	.label_7
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x65], al
.label_7:
	nop	
	mov	al, byte ptr [rbp - 0x65]
	lea	rdi, [rdi]
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [dword ptr [dereference]],  ecx
.label_51:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [recursive]],  1
	lea	rdi, [rdi]
	je	.label_54
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
	jne	.label_43
	nop	
	call	xalloc_die
.label_43:
	movabs	rdi, OFFSET FLAT:dev_ino_obstack
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	call	_obstack_begin
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
.label_54:
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
	mov	byte ptr [rbp - 0x75], cl
	je	.label_14
	mov	rsp, rsp
	mov	al, 1
	cmp	dword ptr [dword ptr [sort_type]],  2
	mov	byte ptr [rbp - 0x75], al
	mov	rbp, rbp
	je	.label_14
	mov	al, 1
	cmp	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x75], al
	lea	rsi, [rsi]
	je	.label_14
	nop	
	mov	al, 1
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_scontext]],  1
	mov	byte ptr [rbp - 0x75], al
	jne	.label_14
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [print_block_size]]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x75], al
.label_14:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x75]
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	and	al, 1
	mov	byte ptr [byte ptr [format_needs_stat]],  al
	test	byte ptr [byte ptr [format_needs_stat]],  1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x76], dl
	lea	rsi, [rsi]
	jne	.label_39
	mov	rsp, rsp
	mov	al, 1
	test	byte ptr [byte ptr [recursive]],  1
	nop	
	mov	byte ptr [rbp - 0x77], al
	jne	.label_47
	mov	al, 1
	nop	
	test	byte ptr [byte ptr [print_with_color]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x77], al
	nop	
	jne	.label_47
	mov	rbp, rbp
	mov	al, 1
	cmp	dword ptr [dword ptr [indicator_style]],  0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x77], al
	jne	.label_47
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [directories_first]]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x77], al
.label_47:
	mov	al, byte ptr [rbp - 0x77]
	mov	byte ptr [rbp - 0x76], al
.label_39:
	mov	al, byte ptr [rbp - 0x76]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [format_needs_type]],  al
	nop	
	test	byte ptr [byte ptr [dired]],  1
	je	.label_15
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
	mov	qword ptr [rbp - 0x80], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
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
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x8c], eax
	call	_obstack_begin
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
.label_15:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_20
	nop	
	call	file_escape_init
	call	xgethostname
	mov	rsp, rsp
	mov	qword ptr [word ptr [hostname]],  rax
	cmp	qword ptr [word ptr [hostname]],  0
	mov	rbp, rbp
	jne	.label_57
	nop	
	movabs	rax, OFFSET FLAT:.str
	mov	qword ptr [word ptr [hostname]],  rax
.label_57:
	jmp	.label_20
.label_20:
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
	mov	ecx, dword ptr [rbp - 8]
	nop	
	sub	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], ecx
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	jg	.label_34
	mov	rsp, rsp
	test	byte ptr [byte ptr [immediate_dirs]],  1
	je	.label_40
	movabs	rdi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	ecx, 1
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str
	mov	rbp, rbp
	call	gobble_file
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_53
.label_40:
	movabs	rdi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	queue_directory
.label_53:
	jmp	.label_8
.label_34:
	lea	rdi, [rdi]
	jmp	.label_11
.label_11:
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	ecx, 1
	movabs	r8, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	edi, eax
	mov	rsp, rsp
	add	edi, 1
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	movsxd	r9, eax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [r10 + r9*8]
	lea	rsi, [rsi]
	call	gobble_file
	mov	qword ptr [rbp - 0xa0], rax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 8]
	jl	.label_11
	mov	rbp, rbp
	jmp	.label_8
.label_8:
	nop	
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	lea	rdi, [rdi]
	je	.label_33
	nop	
	call	sort_files
	mov	rsp, rsp
	test	byte ptr [byte ptr [immediate_dirs]],  1
	lea	rsi, [rsi]
	jne	.label_26
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	call	extract_dirs_from_files
.label_26:
	mov	rsp, rsp
	jmp	.label_33
.label_33:
	nop	
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	nop	
	je	.label_48
	lea	rdi, [rdi]
	call	print_current_files
	mov	rbp, rbp
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_52
	jmp	.label_56
.label_56:
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	jmp	.label_52
.label_52:
	jmp	.label_16
.label_48:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 1
	nop	
	jg	.label_19
	mov	rsp, rsp
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_19
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_19
	mov	byte ptr [byte ptr [print_dir_name]],  0
.label_19:
	jmp	.label_16
.label_16:
	jmp	.label_21
.label_21:
	nop	
	cmp	qword ptr [word ptr [pending_dirs]],  0
	lea	rsi, [rsi]
	je	.label_32
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [pending_dirs]],  rax
	cmp	qword ptr [word ptr [active_dir_set]],  0
	lea	rdi, [rdi]
	je	.label_29
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_27
	call	dev_ino_pop
	lea	rcx, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rsi, rcx
	call	hash_delete
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_25
	mov	rbp, rbp
	jmp	.label_17
.label_25:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0x640
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	lea	rsi, [rsi]
	call	__assert_fail
.label_17:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	dev_ino_free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	free_pending_ent
	jmp	.label_21
.label_27:
	mov	rsp, rsp
	jmp	.label_29
.label_29:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x10]
	and	cl, 1
	movzx	edx, cl
	call	print_dir
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	free_pending_ent
	mov	byte ptr [byte ptr [print_dir_name]],  1
	lea	rsi, [rsi]
	jmp	.label_21
.label_32:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_24
	mov	rbp, rbp
	test	byte ptr [byte ptr [used_color]],  1
	je	.label_24
	cmp	qword ptr [word ptr [color_indicator]],  2
	jne	.label_10
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_55]]
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
	jne	.label_10
	cmp	qword ptr [word ptr [label_9]],  1
	lea	rsi, [rsi]
	jne	.label_10
	mov	rax,  qword ptr [word ptr [label_41]]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x6d
	je	.label_42
.label_10:
	nop	
	call	restore_default_color
.label_42:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	mov	dword ptr [rbp - 0xac], eax
	nop	
	call	signal_restore
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 0x44], eax
.label_50:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_13
	lea	rsi, [rsi]
	mov	edi, 0x13
	mov	rbp, rbp
	call	raise
	mov	dword ptr [rbp - 0xb0], eax
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	jmp	.label_50
.label_13:
	mov	eax,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0
	mov	rsp, rsp
	je	.label_30
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x44]
	nop	
	call	raise
	mov	dword ptr [rbp - 0xb4], eax
.label_30:
	lea	rdi, [rdi]
	jmp	.label_24
.label_24:
	test	byte ptr [byte ptr [dired]],  1
	nop	
	je	.label_49
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
	mov	dword ptr [rbp - 0xb8], eax
.label_49:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [active_dir_set]],  0
	mov	rbp, rbp
	je	.label_28
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_35
	jmp	.label_37
.label_35:
	movabs	rdi, OFFSET FLAT:.str.11
	movabs	rsi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edx, 0x674
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_37:
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	lea	rdi, [rdi]
	call	hash_free
.label_28:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_status]]
	mov	rsp, rsp
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032e0

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
	#Procedure 0x403310

	.globl decode_switches
	.type decode_switches, @function
decode_switches:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [byte ptr [rip + qmark_funny_chars]],  0
	mov	edi,  dword ptr [dword ptr [rip + ls_mode]]
	mov	eax, edi
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa8], edi
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	je	.label_204
	mov	rbp, rbp
	jmp	.label_221
.label_221:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_222
	jmp	.label_228
.label_228:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 3
	mov	dword ptr [rbp - 0xb4], eax
	nop	
	je	.label_230
	lea	rsi, [rsi]
	jmp	.label_233
.label_222:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	jmp	.label_74
.label_230:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	call	set_quoting_style
	mov	rbp, rbp
	jmp	.label_74
.label_204:
	mov	edi, 1
	call	isatty
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_60
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, eax
	mov	esi, 3
	nop	
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	mov	rbp, rbp
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	jmp	.label_68
.label_60:
	mov	dword ptr [dword ptr [format]],  1
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
.label_68:
	jmp	.label_74
.label_233:
	lea	rdi, [rdi]
	call	abort
.label_74:
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
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_107
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_107
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	set_line_length
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_107
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	call	quote
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_107:
	lea	rsi, [rsi]
	mov	edi, 1
	mov	eax, 0x5413
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdx, [rbp - 0x30]
	mov	rsp, rsp
	mov	al, 0
	call	ioctl
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_139
	nop	
	xor	eax, eax
	movzx	ecx, word ptr [rbp - 0x2e]
	cmp	eax, ecx
	jge	.label_139
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbp - 0x2e]
	mov	ecx, eax
	mov	rbp, rbp
	movzx	eax, word ptr [rbp - 0x2e]
	nop	
	mov	edx, eax
	nop	
	cmp	rcx, rdx
	jne	.label_139
	lea	rdi, [rdi]
	movzx	eax, word ptr [rbp - 0x2e]
	nop	
	mov	ecx, eax
	mov	qword ptr [word ptr [line_length]],  rcx
.label_139:
	nop	
	movabs	rdi, OFFSET FLAT:.str.65
	nop	
	call	getenv
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [tabsize]],  8
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_157
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	lea	rsi, [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rbp, rbp
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	call	xstrtoul
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_179
	cmp	qword ptr [rbp - 0x40], -1
	lea	rsi, [rsi]
	ja	.label_179
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [word ptr [tabsize]],  rax
	lea	rsi, [rsi]
	jmp	.label_186
.label_179:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.66
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_186:
	jmp	.label_157
.label_157:
	jmp	.label_166
.label_166:
	movabs	rdx, OFFSET FLAT:.str.67
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	getopt_long
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], -1
	jne	.label_209
	jmp	.label_212
.label_209:
	mov	eax, dword ptr [rbp - 0x48]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc], eax
	mov	dword ptr [rbp - 0xe0], ecx
	mov	rbp, rbp
	je	.label_213
	jmp	.label_219
.label_219:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0xffffff7e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_220
	mov	rsp, rsp
	jmp	.label_225
.label_225:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x31
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe8], eax
	mov	rsp, rsp
	je	.label_226
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x41
	nop	
	mov	dword ptr [rbp - 0xec], eax
	mov	rbp, rbp
	je	.label_158
	jmp	.label_239
.label_239:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x42
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	lea	rsi, [rsi]
	je	.label_241
	mov	rbp, rbp
	jmp	.label_227
.label_227:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	sub	eax, 0x43
	nop	
	mov	dword ptr [rbp - 0xf4], eax
	mov	rbp, rbp
	je	.label_246
	jmp	.label_63
.label_63:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	sub	eax, 0x44
	nop	
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_64
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x46
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xfc], eax
	mov	rbp, rbp
	je	.label_70
	lea	rsi, [rsi]
	jmp	.label_75
.label_75:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x100], eax
	nop	
	je	.label_76
	lea	rdi, [rdi]
	jmp	.label_82
.label_82:
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	sub	eax, 0x48
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x104], eax
	lea	rdi, [rdi]
	je	.label_83
	lea	rdi, [rdi]
	jmp	.label_87
.label_87:
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	sub	eax, 0x49
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x108], eax
	je	.label_89
	nop	
	jmp	.label_94
.label_94:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	sub	eax, 0x4c
	nop	
	mov	dword ptr [rbp - 0x10c], eax
	je	.label_95
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x110], eax
	je	.label_99
	jmp	.label_104
.label_104:
	nop	
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x51
	mov	dword ptr [rbp - 0x114], eax
	mov	rbp, rbp
	je	.label_106
	lea	rsi, [rsi]
	jmp	.label_108
.label_108:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_234
	lea	rdi, [rdi]
	jmp	.label_116
.label_116:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_118
	jmp	.label_122
.label_122:
	nop	
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x120], eax
	mov	rbp, rbp
	je	.label_123
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	sub	eax, 0x55
	mov	dword ptr [rbp - 0x124], eax
	je	.label_115
	lea	rdi, [rdi]
	jmp	.label_132
.label_132:
	nop	
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x128], eax
	lea	rdi, [rdi]
	je	.label_133
	lea	rsi, [rsi]
	jmp	.label_178
.label_178:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x12c], eax
	lea	rdi, [rdi]
	je	.label_140
	jmp	.label_182
.label_182:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x130], eax
	je	.label_144
	mov	rsp, rsp
	jmp	.label_150
.label_150:
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x134], eax
	lea	rsi, [rsi]
	je	.label_77
	lea	rdi, [rdi]
	jmp	.label_105
.label_105:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x138], eax
	je	.label_161
	lea	rsi, [rsi]
	jmp	.label_165
.label_165:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x64
	nop	
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_168
	lea	rsi, [rsi]
	jmp	.label_171
.label_171:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x66
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x140], eax
	mov	rbp, rbp
	je	.label_175
	jmp	.label_180
.label_180:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x144], eax
	je	.label_181
	jmp	.label_187
.label_187:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x148], eax
	je	.label_188
	jmp	.label_192
.label_192:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x69
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14c], eax
	je	.label_193
	jmp	.label_195
.label_195:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], eax
	je	.label_197
	mov	rsp, rsp
	jmp	.label_201
.label_201:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x154], eax
	je	.label_203
	jmp	.label_207
.label_207:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x158], eax
	je	.label_208
	jmp	.label_214
.label_214:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_215
	jmp	.label_217
.label_217:
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	sub	eax, 0x6f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x160], eax
	je	.label_218
	mov	rsp, rsp
	jmp	.label_223
.label_223:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	sub	eax, 0x70
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x164], eax
	lea	rsi, [rsi]
	je	.label_224
	jmp	.label_231
.label_231:
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	sub	eax, 0x71
	nop	
	mov	dword ptr [rbp - 0x168], eax
	je	.label_232
	jmp	.label_237
.label_237:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	sub	eax, 0x72
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_238
	mov	rbp, rbp
	jmp	.label_243
.label_243:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x170], eax
	mov	rsp, rsp
	je	.label_244
	lea	rsi, [rsi]
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x174], eax
	mov	rsp, rsp
	je	.label_62
	mov	rbp, rbp
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	sub	eax, 0x75
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x178], eax
	je	.label_111
	mov	rsp, rsp
	jmp	.label_73
.label_73:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_143
	jmp	.label_79
.label_79:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x77
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x180], eax
	lea	rsi, [rsi]
	je	.label_81
	mov	rbp, rbp
	jmp	.label_84
.label_84:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x184], eax
	mov	rsp, rsp
	je	.label_86
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x80
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x188], eax
	nop	
	je	.label_92
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x81
	nop	
	mov	dword ptr [rbp - 0x18c], eax
	lea	rdi, [rdi]
	je	.label_97
	jmp	.label_102
.label_102:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x82
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x190], eax
	lea	rdi, [rdi]
	je	.label_103
	mov	rbp, rbp
	jmp	.label_109
.label_109:
	nop	
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x83
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x194], eax
	mov	rbp, rbp
	je	.label_112
	mov	rsp, rsp
	jmp	.label_117
.label_117:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x84
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x198], eax
	nop	
	je	.label_119
	lea	rsi, [rsi]
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x19c], eax
	je	.label_85
	lea	rsi, [rsi]
	jmp	.label_129
.label_129:
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x1a0], eax
	mov	rsp, rsp
	je	.label_130
	jmp	.label_135
.label_135:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_136
	jmp	.label_141
.label_141:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x88
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1a8], eax
	lea	rsi, [rsi]
	je	.label_142
	jmp	.label_145
.label_145:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x89
	nop	
	mov	dword ptr [rbp - 0x1ac], eax
	mov	rbp, rbp
	je	.label_147
	jmp	.label_154
.label_154:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	sub	eax, 0x8a
	mov	dword ptr [rbp - 0x1b0], eax
	je	.label_156
	lea	rsi, [rsi]
	jmp	.label_160
.label_160:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8b
	mov	dword ptr [rbp - 0x1b4], eax
	je	.label_163
	jmp	.label_169
.label_169:
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	sub	eax, 0x8c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b8], eax
	mov	rsp, rsp
	je	.label_170
	lea	rsi, [rsi]
	jmp	.label_176
.label_176:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1bc], eax
	mov	rsp, rsp
	je	.label_177
	mov	rbp, rbp
	jmp	.label_185
.label_185:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c0], eax
	je	.label_134
	mov	rsp, rsp
	jmp	.label_93
.label_93:
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x8f
	mov	dword ptr [rbp - 0x1c4], eax
	nop	
	je	.label_194
	nop	
	jmp	.label_174
.label_174:
	nop	
	mov	eax, dword ptr [rbp - 0xdc]
	sub	eax, 0x90
	nop	
	mov	dword ptr [rbp - 0x1c8], eax
	nop	
	je	.label_198
	jmp	.label_153
.label_144:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [ignore_mode]],  2
	mov	rbp, rbp
	jmp	.label_71
.label_77:
	xor	eax, eax
	mov	edi, eax
	mov	rbp, rbp
	mov	esi, 7
	mov	rbp, rbp
	call	set_quoting_style
	lea	rsi, [rsi]
	jmp	.label_71
.label_161:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [time_type]],  1
	jmp	.label_71
.label_168:
	mov	byte ptr [byte ptr [immediate_dirs]],  1
	jmp	.label_71
.label_175:
	mov	dword ptr [dword ptr [ignore_mode]],  2
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 1
	cmp	dword ptr [dword ptr [format]],  0
	mov	rbp, rbp
	jne	.label_216
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
.label_216:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_block_size]],  0
	mov	byte ptr [byte ptr [print_with_color]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_hyperlink]],  0
	mov	rsp, rsp
	jmp	.label_71
.label_119:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [indicator_style]],  2
	jmp	.label_71
.label_181:
	mov	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_owner]],  0
	lea	rsi, [rsi]
	jmp	.label_71
.label_188:
	nop	
	mov	dword ptr [dword ptr [human_output_opts]],  0xb0
	mov	dword ptr [dword ptr [file_human_output_opts]],  0xb0
	nop	
	mov	qword ptr [word ptr [output_block_size]],  1
	mov	qword ptr [word ptr [file_output_block_size]],  1
	jmp	.label_71
.label_193:
	mov	byte ptr [byte ptr [print_inode]],  1
	jmp	.label_71
.label_197:
	mov	byte ptr [rbp - 0x1a], 1
	mov	rsp, rsp
	jmp	.label_71
.label_203:
	mov	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	jmp	.label_71
.label_208:
	mov	dword ptr [dword ptr [format]],  4
	jmp	.label_71
.label_215:
	mov	byte ptr [byte ptr [numeric_ids]],  1
	nop	
	mov	dword ptr [dword ptr [format]],  0
	jmp	.label_71
.label_218:
	mov	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [print_group]],  0
	jmp	.label_71
.label_224:
	mov	dword ptr [dword ptr [indicator_style]],  1
	mov	rbp, rbp
	jmp	.label_71
.label_232:
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	mov	rbp, rbp
	jmp	.label_71
.label_238:
	mov	byte ptr [byte ptr [sort_reverse]],  1
	mov	rsp, rsp
	jmp	.label_71
.label_244:
	mov	byte ptr [byte ptr [print_block_size]],  1
	jmp	.label_71
.label_62:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [sort_type]],  4
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	jmp	.label_71
.label_111:
	mov	dword ptr [dword ptr [time_type]],  2
	jmp	.label_71
.label_143:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [sort_type]],  3
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	jmp	.label_71
.label_81:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_line_length
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_120
	nop	
	movabs	rdi, OFFSET FLAT:.str.69
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rbp, rbp
	call	quote
	lea	rsi, [rsi]
	mov	edi, 2
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	rcx, qword ptr [rbp - 0x1d0]
	mov	rsp, rsp
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_120:
	lea	rsi, [rsi]
	jmp	.label_71
.label_86:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [format]],  3
	nop	
	jmp	.label_71
.label_158:
	mov	dword ptr [dword ptr [ignore_mode]],  1
	mov	rbp, rbp
	jmp	.label_71
.label_241:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.70
	mov	rsp, rsp
	call	add_ignore_pattern
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.71
	call	add_ignore_pattern
	mov	rbp, rbp
	jmp	.label_71
.label_246:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [format]],  2
	jmp	.label_71
.label_64:
	nop	
	mov	byte ptr [byte ptr [dired]],  1
	mov	rbp, rbp
	jmp	.label_71
.label_70:
	mov	dword ptr [dword ptr [indicator_style]],  3
	mov	rsp, rsp
	jmp	.label_71
.label_76:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_group]],  0
	lea	rsi, [rsi]
	jmp	.label_71
.label_83:
	mov	dword ptr [dword ptr [dereference]],  3
	lea	rsi, [rsi]
	jmp	.label_71
.label_112:
	mov	dword ptr [dword ptr [dereference]],  4
	jmp	.label_71
.label_89:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_ignore_pattern
	lea	rdi, [rdi]
	jmp	.label_71
.label_95:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [dereference]],  5
	jmp	.label_71
.label_99:
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, eax
	xor	esi, esi
	call	set_quoting_style
	lea	rsi, [rsi]
	jmp	.label_71
.label_106:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, eax
	mov	esi, 5
	lea	rsi, [rsi]
	call	set_quoting_style
	mov	rbp, rbp
	jmp	.label_71
.label_234:
	mov	byte ptr [byte ptr [recursive]],  1
	lea	rdi, [rdi]
	jmp	.label_71
.label_118:
	mov	dword ptr [dword ptr [sort_type]],  2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_71
.label_123:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.72
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d8], rax
	call	gettext
	nop	
	xor	esi, esi
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rcx, -1
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	r9d, 2
	mov	rdi, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1dc], r9d
	mov	r9, rax
	mov	dword ptr [rsp], 2
	nop	
	call	xnumtoumax
	mov	qword ptr [word ptr [tabsize]],  rax
	jmp	.label_71
.label_115:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	mov	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	jmp	.label_71
.label_133:
	mov	dword ptr [dword ptr [sort_type]],  1
	mov	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	jmp	.label_71
.label_226:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_235
	mov	dword ptr [dword ptr [format]],  1
.label_235:
	jmp	.label_71
.label_92:
	mov	byte ptr [byte ptr [print_author]],  1
	jmp	.label_71
.label_142:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	edi, eax
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [hide_patterns]]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [hide_patterns]],  rax
	mov	rbp, rbp
	jmp	.label_71
.label_134:
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
	mov	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	jmp	.label_71
.label_136:
	mov	byte ptr [byte ptr [directories_first]],  1
	mov	rbp, rbp
	jmp	.label_71
.label_194:
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
	jmp	.label_71
.label_85:
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
	jmp	.label_71
.label_130:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.76
	mov	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	call	bad_cast
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_71
.label_103:
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rsi, [rsi]
	je	.label_131
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
	mov	dword ptr [rbp - 0x54], r10d
	jmp	.label_148
.label_131:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], 1
.label_148:
	mov	al, 1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x54], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1dd], al
	je	.label_155
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x54], 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1de], cl
	nop	
	jne	.label_159
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x1de], cl
.label_159:
	mov	al, byte ptr [rbp - 0x1de]
	mov	byte ptr [rbp - 0x1dd], al
.label_155:
	mov	al, byte ptr [rbp - 0x1dd]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [byte ptr [print_with_color]],  al
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	rsp, rsp
	je	.label_172
	mov	qword ptr [word ptr [tabsize]],  0
.label_172:
	nop	
	jmp	.label_71
.label_147:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rsi, [rsi]
	je	.label_236
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
	mov	dword ptr [rbp - 0x58], r10d
	jmp	.label_202
.label_236:
	mov	dword ptr [rbp - 0x58], 1
.label_202:
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 1
	mov	byte ptr [rbp - 0x1df], al
	je	.label_206
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1e0], cl
	jne	.label_210
	mov	edi, 1
	call	isatty
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x1e0], cl
.label_210:
	mov	al, byte ptr [rbp - 0x1e0]
	mov	byte ptr [rbp - 0x1df], al
.label_206:
	mov	al, byte ptr [rbp - 0x1df]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [print_hyperlink]],  al
	jmp	.label_71
.label_156:
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
	jmp	.label_71
.label_163:
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
	jmp	.label_71
.label_198:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_71
.label_170:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
	jmp	.label_71
.label_97:
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	call	human_options
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5c], 0
	je	.label_90
	lea	rdi, [rdi]
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:long_options
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x44]
	mov	r8,  qword ptr [word ptr [optarg]]
	call	xstrtol_fatal
.label_90:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
	jmp	.label_71
.label_177:
	nop	
	mov	dword ptr [dword ptr [human_output_opts]],  0x90
	mov	dword ptr [dword ptr [file_human_output_opts]],  0x90
	mov	qword ptr [word ptr [output_block_size]],  1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [file_output_block_size]],  1
	mov	rbp, rbp
	jmp	.label_71
.label_140:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [print_scontext]],  1
	mov	rbp, rbp
	jmp	.label_71
.label_220:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_213:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdout]]
	nop	
	cmp	dword ptr [dword ptr [ls_mode]],  1
	mov	qword ptr [rbp - 0x1e8], rdi
	jne	.label_78
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.42
	mov	qword ptr [rbp - 0x1f0], rax
	lea	rdi, [rdi]
	jmp	.label_128
.label_78:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.44
	movabs	rcx, OFFSET FLAT:.str.43
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [ls_mode]],  2
	lea	rdi, [rdi]
	cmove	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x1f0], rax
.label_128:
	mov	rax, qword ptr [rbp - 0x1f0]
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
	mov	rdi, qword ptr [rbp - 0x1e8]
	nop	
	mov	qword ptr [rbp - 0x1f8], rsi
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
.label_153:
	mov	rbp, rbp
	mov	edi, 2
	call	usage
.label_71:
	jmp	.label_166
.label_212:
	cmp	qword ptr [word ptr [output_block_size]],  0
	jne	.label_167
	movabs	rdi, OFFSET FLAT:.str.84
	lea	rsi, [rsi]
	call	getenv
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	call	human_options
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	mov	dword ptr [rbp - 0x1fc], eax
	lea	rdi, [rdi]
	jne	.label_184
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	call	getenv
	nop	
	cmp	rax, 0
	je	.label_191
.label_184:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
.label_191:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_199
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	qword ptr [word ptr [output_block_size]],  0x400
.label_199:
	jmp	.label_167
.label_167:
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
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  4
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1fd], r8b
	nop	
	je	.label_229
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1fd], cl
	je	.label_229
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_242
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  0
	nop	
	mov	byte ptr [rbp - 0x1fd], cl
	jne	.label_229
.label_242:
	mov	al, 1
	cmp	dword ptr [rbp - 0x6c], 1
	mov	byte ptr [rbp - 0x1fe], al
	lea	rdi, [rdi]
	je	.label_61
	mov	al, 1
	cmp	dword ptr [rbp - 0x6c], 3
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1fe], al
	je	.label_61
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x6c], 6
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1fe], al
.label_61:
	mov	al, byte ptr [rbp - 0x1fe]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1fd], al
.label_229:
	mov	al, byte ptr [rbp - 0x1fd]
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
	cmp	dword ptr [rbp - 0x6c], 7
	lea	rsi, [rsi]
	jne	.label_80
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rsp, rsp
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	call	set_char_quoting
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x204], eax
.label_80:
	mov	eax, 2
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	lea	rsi, [rsi]
	ja	.label_65
	movabs	rax, OFFSET FLAT:.str.86
	mov	ecx,  dword ptr [dword ptr [indicator_style]]
	sub	ecx, 2
	lea	rdi, [rdi]
	mov	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	add	rax, rdx
	mov	qword ptr [rbp - 0x78], rax
.label_110:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_101
	nop	
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rax, qword ptr [rbp - 0x78]
	movsx	esi, byte ptr [rax]
	nop	
	call	set_char_quoting
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x208], eax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_110
.label_101:
	nop	
	jmp	.label_65
.label_65:
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
	mov	dword ptr [rbp - 0x20c], eax
	je	.label_126
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_113
	test	byte ptr [byte ptr [print_hyperlink]],  1
	lea	rdi, [rdi]
	je	.label_126
.label_113:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [dired]],  0
.label_126:
	cmp	dword ptr [dword ptr [time_type]],  1
	je	.label_137
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [time_type]],  2
	jne	.label_138
.label_137:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_138
	cmp	dword ptr [dword ptr [format]],  0
	nop	
	je	.label_138
	mov	dword ptr [dword ptr [sort_type]],  4
.label_138:
	nop	
	cmp	dword ptr [dword ptr [format]],  0
	mov	rsp, rsp
	jne	.label_240
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	jne	.label_151
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.87
	lea	rsi, [rsi]
	call	getenv
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_162
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	call	bad_cast
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
.label_162:
	mov	rsp, rsp
	jmp	.label_151
.label_151:
	mov	rbp, rbp
	jmp	.label_173
.label_173:
	movabs	rsi, OFFSET FLAT:decode_switches.posix_prefix
	mov	eax, 6
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_183
	mov	edi, 2
	mov	rsp, rsp
	call	hard_locale
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_189
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_190
.label_189:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 6
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_173
.label_183:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_196
	nop	
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x88]
	call	strchr
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	jne	.label_205
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_211
.label_205:
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	rdi, rax
	call	strchr
	cmp	rax, 0
	je	.label_72
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.89
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x218], rax
	call	quote
	mov	rsp, rsp
	mov	edi, 2
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_72:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	mov	byte ptr [rax], 0
.label_211:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [word ptr [long_time_format]],  rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [word ptr [label_125]],  rax
	mov	rbp, rbp
	jmp	.label_200
.label_196:
	movabs	rsi, OFFSET FLAT:time_style_args
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:time_style_types
	mov	ecx, 4
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, rax
	call	argmatch
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jge	.label_66
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.90
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x98]
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
	mov	qword ptr [rbp - 0xa0], rdx
	mov	dword ptr [rbp - 0x21c], eax
.label_100:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	je	.label_88
	movabs	rsi, OFFSET FLAT:.str.92
	mov	rdi,  qword ptr [word ptr [stderr]]
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	nop	
	add	rcx, 8
	nop	
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	al, 0
	nop	
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x220], eax
	jmp	.label_100
.label_88:
	movabs	rdi, OFFSET FLAT:.str.93
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	edi, 2
	mov	dword ptr [rbp - 0x224], eax
	lea	rdi, [rdi]
	call	usage
.label_66:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, rax
	sub	rcx, 3
	nop	
	mov	qword ptr [rbp - 0x230], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rcx
	ja	.label_114
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x230]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_121]]
	nop	
	jmp	rcx
.label_2837:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.94
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_125]],  rax
	mov	qword ptr [word ptr [long_time_format]],  rax
	jmp	.label_114
.label_2838:
	movabs	rax, OFFSET FLAT:.str.95
	mov	qword ptr [word ptr [label_125]],  rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [long_time_format]],  rax
	nop	
	jmp	.label_114
.label_2839:
	movabs	rax, OFFSET FLAT:.str.97
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str.96
	mov	qword ptr [word ptr [long_time_format]],  rcx
	mov	qword ptr [word ptr [label_125]],  rax
	nop	
	jmp	.label_114
.label_2840:
	lea	rsi, [rsi]
	mov	edi, 2
	call	hard_locale
	test	al, 1
	nop	
	jne	.label_146
	mov	rsp, rsp
	jmp	.label_149
.label_146:
	mov	dword ptr [rbp - 0xa4], 0
.label_164:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa4], 2
	jge	.label_152
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rsp, rsp
	mov	edx, 2
	nop	
	movsxd	rcx, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [+ (rcx * 8) + long_time_format]]
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [+ (rcx * 8) + long_time_format]],  rax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	jmp	.label_164
.label_152:
	lea	rsi, [rsi]
	jmp	.label_149
.label_149:
	jmp	.label_114
.label_114:
	nop	
	jmp	.label_200
.label_200:
	call	abformat_init
.label_240:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_190:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x240
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052b0

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
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_261
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_266
.label_261:
	movabs	rdi, OFFSET FLAT:.str.173
	call	getenv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_247
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_252
.label_247:
	call	known_term_type
	test	al, 1
	jne	.label_252
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [print_with_color]],  0
.label_252:
	jmp	.label_259
.label_266:
	lea	rdi, [rbp - 0x17]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	eax, OFFSET FLAT:.str.174
	mov	esi, eax
	mov	rbp, rbp
	call	strcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [color_buf]],  rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	dword ptr [rbp - 0x2c], 1
.label_253:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	dec	eax
	mov	ecx, eax
	sub	eax, 5
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	mov	dword ptr [rbp - 0x54], eax
	ja	.label_251
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_254]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2822:
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x58], ecx
	je	.label_257
	lea	rdi, [rdi]
	jmp	.label_263
.label_263:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x2a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_265
	jmp	.label_267
.label_267:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x60], eax
	lea	rsi, [rsi]
	jne	.label_262
	mov	rsp, rsp
	jmp	.label_249
.label_249:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
.label_265:
	mov	eax, 0x28
	mov	edi, eax
	nop	
	call	xmalloc
	nop	
	lea	rdi, [rbp - 0x10]
	mov	rbp, rbp
	lea	rsi, [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [word ptr [color_ext_list]],  rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	call	get_funky_string
	lea	rsi, [rsi]
	mov	edx, 6
	mov	rsp, rsp
	mov	r8d, 4
	test	al, 1
	lea	rdi, [rdi]
	cmovne	edx, r8d
	mov	dword ptr [rbp - 0x2c], edx
	jmp	.label_250
.label_257:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 5
	jmp	.label_258
.label_262:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x17], dl
	mov	dword ptr [rbp - 0x2c], 2
.label_250:
	jmp	.label_268
.label_4054fd:
	nop	
	.section	.text
	.align	32
	#Procedure 0x4054fe
	.globl sub_4054fe
	.type sub_4054fe, @function
.label_4054fe:

	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_270
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x16], dl
	mov	dword ptr [rbp - 0x2c], 3
	nop	
	jmp	.label_269
.label_270:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], 6
.label_269:
	nop	
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x405546

	.globl sub_405546
	.type sub_405546, @function
.label_405546:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 6
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x3d
	mov	rbp, rbp
	jne	.label_274
	mov	dword ptr [rbp - 0x14], 0
.label_272:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	cmp	qword ptr [word ptr [+ (rax * 8) + indicator_name]],  0
	je	.label_276
	mov	rbp, rbp
	lea	rdi, [rbp - 0x17]
	nop	
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rsi,  qword ptr [word ptr [+ (rax * 8) + indicator_name]]
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_275
	mov	rbp, rbp
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rbp - 8]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:color_indicator
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	r8, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	shl	r8, 4
	nop	
	mov	r9, rax
	add	r9, r8
	mov	qword ptr [r9 + 8], rcx
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, rax
	call	get_funky_string
	mov	edx, 6
	mov	r10d, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	cmovne	edx, r10d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], edx
	jmp	.label_276
.label_275:
	jmp	.label_273
.label_273:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_272
.label_276:
	cmp	dword ptr [rbp - 0x2c], 6
	jne	.label_271
	movabs	rdi, OFFSET FLAT:.str.175
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x17]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	call	quote
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	esi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_271:
	jmp	.label_274
.label_274:
	lea	rsi, [rsi]
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x4056a0

	.globl sub_4056a0
	.type sub_4056a0, @function
.label_4056a0:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	nop	
	cmp	edx, 0x3d
	jne	.label_277
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rbp - 8]
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	rcx, rax
	call	get_funky_string
	mov	edx, 6
	mov	r8d, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	cmovne	edx, r8d
	nop	
	mov	dword ptr [rbp - 0x2c], edx
	jmp	.label_278
.label_277:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 6
.label_278:
	lea	rdi, [rdi]
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x405723

	.globl sub_405723
	.type sub_405723, @function
.label_405723:
	jmp	.label_258
.label_251:
	mov	rbp, rbp
	call	abort
.label_268:
	jmp	.label_253
.label_258:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 6
	jne	.label_255
	movabs	rdi, OFFSET FLAT:.str.176
	nop	
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	rdi,  qword ptr [word ptr [color_buf]]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [color_ext_list]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdx
.label_256:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_248
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	jmp	.label_256
.label_248:
	mov	byte ptr [byte ptr [print_with_color]],  0
.label_255:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [label_260]],  6
	nop	
	jne	.label_259
	movabs	rsi, OFFSET FLAT:.str.177
	mov	eax, 6
	mov	edx, eax
	mov	rdi,  qword ptr [word ptr [label_264]]
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_259
	mov	byte ptr [byte ptr [color_symlink_as_referent]],  1
.label_259:
	lea	rsi, [rsi]
	add	rsp, 0x70
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40581b
	.globl sub_40581b
	.type sub_40581b, @function
.label_40581b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405820

	.globl is_colored
	.type is_colored, @function
is_colored:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
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
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x19], al
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
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	mov	cl, 1
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], cl
	je	.label_279
.label_280:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 2
	nop	
	mov	byte ptr [rbp - 0x1a], cl
	mov	rbp, rbp
	jne	.label_281
	nop	
	movabs	rsi, OFFSET FLAT:.str.46
	lea	rsi, [rsi]
	mov	eax, 2
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	sete	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_281:
	nop	
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_279:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405940

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
	#Procedure 0x405980

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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	jne	.label_282
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], dl
.label_282:
	mov	al, byte ptr [rbp - 0x21]
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
	#Procedure 0x405a20

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
	#Procedure 0x405a50

	.globl file_escape_init
	.type file_escape_init, @function
file_escape_init:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], 0
.label_285:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_284
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	c_isalnum
	lea	rsi, [rsi]
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 5], cl
	lea	rdi, [rdi]
	jne	.label_283
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x7e
	mov	byte ptr [rbp - 5], al
	je	.label_283
	nop	
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2d
	mov	byte ptr [rbp - 5], al
	je	.label_283
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2e
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], al
	je	.label_283
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x5f
	sete	al
	mov	byte ptr [rbp - 5], al
.label_283:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsx	esi,  byte ptr [byte ptr [+ (rdx * 1) + RFC3986]]
	or	esi, ecx
	lea	rsi, [rsi]
	mov	al, sil
	mov	rsp, rsp
	mov	byte ptr [byte ptr [+ (rdx * 1) + RFC3986]],  al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_285
.label_284:
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl clear_files
	.type clear_files, @function
clear_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_287:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_286
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_ent
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
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
	#Procedure 0x405c30

	.globl gobble_file
	.type gobble_file, @function
gobble_file:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x6e0
	mov	al, cl
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], 0
	test	byte ptr [rbp - 0x21], 1
	mov	rbp, rbp
	je	.label_295
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jne	.label_311
.label_295:
	mov	rsp, rsp
	jmp	.label_316
.label_311:
	movabs	rdi, OFFSET FLAT:.str.216
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0xc2f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gobble_file
	call	__assert_fail
.label_316:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	cmp	rax,  qword ptr [word ptr [cwd_n_alloc]]
	nop	
	jne	.label_327
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
.label_327:
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
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0xa8], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xc4], 0xffffffff
	mov	rsp, rsp
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	mov	rbp, rbp
	jne	.label_352
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	je	.label_352
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	needs_quoting
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rdi + 0xc4], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	dword ptr [rdi + 0xc4], 0
	nop	
	je	.label_303
	mov	byte ptr [byte ptr [cwd_some_quoted]],  1
.label_303:
	mov	rbp, rbp
	jmp	.label_352
.label_352:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_288
	test	byte ptr [byte ptr [print_hyperlink]],  1
	lea	rsi, [rsi]
	jne	.label_288
	test	byte ptr [byte ptr [format_needs_stat]],  1
	nop	
	jne	.label_288
	cmp	dword ptr [rbp - 0x14], 3
	lea	rdi, [rdi]
	jne	.label_292
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_292
	mov	rbp, rbp
	mov	edi, 0x13
	mov	rsp, rsp
	call	is_colored
	test	al, 1
	jne	.label_288
	nop	
	mov	edi, 0x12
	lea	rsi, [rsi]
	call	is_colored
	test	al, 1
	jne	.label_288
	mov	edi, 0x14
	mov	rbp, rbp
	call	is_colored
	test	al, 1
	mov	rbp, rbp
	jne	.label_288
.label_292:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_inode]],  1
	lea	rsi, [rsi]
	jne	.label_315
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_300
.label_315:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 6
	mov	rsp, rsp
	je	.label_324
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_300
.label_324:
	cmp	dword ptr [dword ptr [dereference]],  5
	lea	rdi, [rdi]
	je	.label_288
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_288
	mov	rsp, rsp
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	lea	rdi, [rdi]
	jne	.label_288
.label_300:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_335
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_288
.label_335:
	mov	rbp, rbp
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_330
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	je	.label_288
	test	byte ptr [rbp - 0x21], 1
	jne	.label_288
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 5
	jne	.label_330
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [indicator_style]],  3
	je	.label_288
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_330
	nop	
	mov	edi, 0xe
	mov	rsp, rsp
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_288
	lea	rsi, [rsi]
	mov	edi, 0x10
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_288
	mov	edi, 0x11
	call	is_colored
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_288
	nop	
	mov	edi, 0x15
	mov	rbp, rbp
	call	is_colored
	nop	
	test	al, 1
	jne	.label_288
	jmp	.label_330
.label_288:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	je	.label_363
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_368
.label_363:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_370
.label_368:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6b0], rax
	call	strlen
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x6b0]
	lea	rax, [rdi + rax + 0x11]
	mov	rbp, rbp
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	mov	rbp, rbp
	sub	rcx, rax
	nop	
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x48], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	call	attach
.label_370:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	lea	rdi, [rdi]
	je	.label_309
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	call	canonicalize_filename_mode
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_319
	movabs	rdi, OFFSET FLAT:.str.207
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6b1], al
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x6b1]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edi, cl
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	call	file_failure
.label_319:
	nop	
	jmp	.label_309
.label_309:
	mov	eax,  dword ptr [dword ptr [rip + dereference]]
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -3
	sub	ecx, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6b8], eax
	mov	dword ptr [rbp - 0x6bc], ecx
	jb	.label_362
	jmp	.label_342
.label_342:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6b8]
	sub	eax, 5
	nop	
	mov	dword ptr [rbp - 0x6c0], eax
	jne	.label_306
	jmp	.label_348
.label_348:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rsp, rsp
	call	stat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], 1
	mov	rsp, rsp
	jmp	.label_297
.label_362:
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_355
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 0x18
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	call	stat
	nop	
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 1
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [dereference]],  3
	lea	rdi, [rdi]
	jne	.label_360
	lea	rdi, [rdi]
	jmp	.label_297
.label_360:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x50], 0
	jge	.label_357
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 2
	mov	rsp, rsp
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c4], edx
	lea	rsi, [rsi]
	jmp	.label_364
.label_357:
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	dword ptr [rbp - 0x6c4], ecx
.label_364:
	mov	eax, dword ptr [rbp - 0x6c4]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x51], cl
	mov	rbp, rbp
	test	byte ptr [rbp - 0x51], 1
	nop	
	jne	.label_307
	jmp	.label_297
.label_307:
	jmp	.label_355
.label_355:
	jmp	.label_306
.label_306:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	lea	rdi, [rdi]
	mov	rsi, rax
	call	__lstat
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], 0
.label_297:
	cmp	dword ptr [rbp - 0x50], 0
	nop	
	je	.label_314
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.217
	nop	
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x6c5], al
	lea	rsi, [rsi]
	call	gettext
	mov	rdx, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rbp - 0x6c5]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	movzx	edi, cl
	mov	rsi, rax
	nop	
	call	file_failure
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x21], 1
	mov	rbp, rbp
	je	.label_325
	mov	qword ptr [rbp - 8], 0
	jmp	.label_332
.label_325:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	xstrdup
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_332
.label_314:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	byte ptr [rax + 0xb8], 1
	cmp	dword ptr [rbp - 0x14], 5
	je	.label_343
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_347
.label_343:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_347
	mov	edi, 0x15
	mov	rbp, rbp
	call	is_colored
	test	al, 1
	jne	.label_354
	jmp	.label_347
.label_354:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	has_capability_cache
	mov	rsi, qword ptr [rbp - 0x40]
	and	al, 1
	mov	byte ptr [rsi + 0xc0], al
.label_347:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_359
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_scontext]],  1
	lea	rsi, [rsi]
	je	.label_310
.label_359:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x52], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x53], 0
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	al, byte ptr [rbp - 0x49]
	nop	
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	call	getfilecon_cache
	nop	
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	setl	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_369
	nop	
	call	is_smack_enabled
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_291
	jmp	.label_293
.label_291:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	byte ptr [rbp - 0x52], dl
	lea	rsi, [rsi]
	jmp	.label_301
.label_293:
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	byte ptr [rbp - 0x52], dl
.label_301:
	jmp	.label_322
.label_369:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:UNKNOWN_SECURITY_CONTEXT
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
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
	jne	.label_331
	call	__errno_location
	cmp	dword ptr [rax], 0x3d
	jne	.label_333
.label_331:
	mov	dword ptr [rbp - 0x50], 0
.label_333:
	jmp	.label_322
.label_322:
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_337
	cmp	dword ptr [dword ptr [format]],  0
	mov	rbp, rbp
	jne	.label_337
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	file_has_acl_cache
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	setl	dl
	and	dl, 1
	nop	
	movzx	eax, dl
	mov	dword ptr [rbp - 0x50], eax
	cmp	ecx, dword ptr [rbp - 0x5c]
	setl	dl
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x53], dl
.label_337:
	nop	
	test	byte ptr [rbp - 0x52], 1
	lea	rsi, [rsi]
	jne	.label_349
	mov	rsp, rsp
	test	byte ptr [rbp - 0x53], 1
	lea	rdi, [rdi]
	jne	.label_349
	nop	
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x6cc], eax
	jmp	.label_313
.label_349:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x52], 1
	nop	
	mov	byte ptr [rbp - 0x6cd], cl
	nop	
	je	.label_356
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x53]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x6cd], al
.label_356:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x6cd]
	mov	ecx, 2
	lea	rsi, [rsi]
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x6cc], ecx
.label_313:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6cc]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xbc], eax
	mov	rcx, qword ptr [rbp - 0x40]
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
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_317
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x6d4], ecx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rbp - 0x6d4]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_317:
	mov	rsp, rsp
	jmp	.label_310
.label_310:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	lea	rsi, [rsi]
	jne	.label_312
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_321
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	lea	rsi, [rsi]
	je	.label_312
.label_321:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	call	get_link_name
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	call	make_link_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xf8], 0
	nop	
	je	.label_341
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	dword ptr [rax + 0xc4], 0
	jne	.label_341
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	needs_quoting
	nop	
	test	al, 1
	jne	.label_344
	mov	rbp, rbp
	jmp	.label_341
.label_344:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rax + 0xc4], 0xffffffff
.label_341:
	cmp	qword ptr [rbp - 0xf8], 0
	lea	rdi, [rdi]
	je	.label_350
	mov	rsp, rsp
	mov	eax, 2
	nop	
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	mov	rsp, rsp
	jbe	.label_353
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	je	.label_350
.label_353:
	lea	rsi, [rbp - 0xf0]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	call	stat
	cmp	eax, 0
	jne	.label_350
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb9], 1
	mov	ecx, dword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xac], ecx
.label_350:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf8]
	nop	
	call	free
.label_312:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	nop	
	jne	.label_366
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 6
	mov	rsp, rsp
	jmp	.label_318
.label_366:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0x4000
	lea	rsi, [rsi]
	jne	.label_290
	mov	rbp, rbp
	test	byte ptr [rbp - 0x21], 1
	je	.label_296
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [immediate_dirs]],  1
	lea	rdi, [rdi]
	jne	.label_296
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 9
	jmp	.label_304
.label_296:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 3
.label_304:
	mov	rbp, rbp
	jmp	.label_328
.label_290:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 5
.label_328:
	nop	
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [dword ptr [format]],  0
	lea	rsi, [rsi]
	je	.label_320
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_326
.label_320:
	mov	eax, 0x200
	nop	
	mov	ecx, eax
	lea	rsi, [rbp - 0x390]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	nop	
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	rbp, rbp
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x394], eax
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	cmp	eax, dword ptr [rbp - 0x394]
	mov	rbp, rbp
	jge	.label_338
	mov	eax, dword ptr [rbp - 0x394]
	mov	dword ptr [dword ptr [block_size_width]],  eax
.label_338:
	lea	rdi, [rdi]
	jmp	.label_326
.label_326:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_298
	mov	rsp, rsp
	test	byte ptr [byte ptr [print_owner]],  1
	je	.label_351
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x398], eax
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [owner_width]]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x398]
	mov	rsp, rsp
	jge	.label_294
	nop	
	mov	eax, dword ptr [rbp - 0x398]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [owner_width]],  eax
.label_294:
	jmp	.label_351
.label_351:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_358
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x38]
	call	format_group_width
	mov	dword ptr [rbp - 0x39c], eax
	mov	eax,  dword ptr [dword ptr [group_width]]
	cmp	eax, dword ptr [rbp - 0x39c]
	mov	rbp, rbp
	jge	.label_361
	mov	eax, dword ptr [rbp - 0x39c]
	mov	dword ptr [dword ptr [group_width]],  eax
.label_361:
	mov	rsp, rsp
	jmp	.label_358
.label_358:
	test	byte ptr [byte ptr [print_author]],  1
	lea	rsi, [rsi]
	je	.label_302
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x3a0], eax
	nop	
	mov	eax,  dword ptr [dword ptr [author_width]]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x3a0]
	jge	.label_289
	nop	
	mov	eax, dword ptr [rbp - 0x3a0]
	mov	dword ptr [dword ptr [author_width]],  eax
.label_289:
	jmp	.label_302
.label_302:
	lea	rdi, [rdi]
	jmp	.label_298
.label_298:
	test	byte ptr [byte ptr [print_scontext]],  1
	mov	rsp, rsp
	je	.label_299
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3a4], ecx
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [scontext_width]]
	cmp	ecx, dword ptr [rbp - 0x3a4]
	mov	rbp, rbp
	jge	.label_308
	mov	eax, dword ptr [rbp - 0x3a4]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [scontext_width]],  eax
.label_308:
	mov	rbp, rbp
	jmp	.label_299
.label_299:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_323
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x3c0]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x28]
	mov	rbp, rbp
	call	umaxtostr
	mov	rdi, rax
	nop	
	call	strlen
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c4], ecx
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x3c4]
	jge	.label_329
	mov	eax, dword ptr [rbp - 0x3c4]
	mov	dword ptr [dword ptr [nlink_width]],  eax
.label_329:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0x2000
	je	.label_340
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0x6000
	lea	rsi, [rsi]
	jne	.label_334
.label_340:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	dword ptr [rbp - 0x3e4], ecx
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x3e4]
	mov	rsp, rsp
	jge	.label_339
	nop	
	mov	eax, dword ptr [rbp - 0x3e4]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [major_device_number_width]],  eax
.label_339:
	mov	rax, qword ptr [rbp - 0x40]
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
	mov	dword ptr [rbp - 0x3e4], ecx
	mov	ecx,  dword ptr [dword ptr [minor_device_number_width]]
	cmp	ecx, dword ptr [rbp - 0x3e4]
	nop	
	jge	.label_367
	mov	eax, dword ptr [rbp - 0x3e4]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [minor_device_number_width]],  eax
.label_367:
	mov	eax,  dword ptr [dword ptr [major_device_number_width]]
	mov	rsp, rsp
	add	eax, 2
	lea	rdi, [rdi]
	add	eax,  dword ptr [dword ptr [minor_device_number_width]]
	mov	dword ptr [rbp - 0x3e4], eax
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x3e4]
	mov	rbp, rbp
	jge	.label_345
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3e4]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_345:
	mov	rsp, rsp
	jmp	.label_305
.label_334:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsp, rsp
	call	unsigned_file_size
	nop	
	mov	ecx, 1
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x670]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x678], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x678]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	call	human_readable
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x67c], eax
	nop	
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x67c]
	mov	rbp, rbp
	jge	.label_365
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x67c]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_365:
	lea	rdi, [rdi]
	jmp	.label_305
.label_305:
	mov	rsp, rsp
	jmp	.label_323
.label_323:
	jmp	.label_330
.label_330:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_336
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x6a0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x6a4], ecx
	mov	ecx,  dword ptr [dword ptr [inode_number_width]]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x6a4]
	jge	.label_346
	mov	eax, dword ptr [rbp - 0x6a4]
	nop	
	mov	dword ptr [dword ptr [inode_number_width]],  eax
.label_346:
	lea	rdi, [rdi]
	jmp	.label_336
.label_336:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_332:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406dc0

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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_371
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_374
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	xstrdup
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_372
.label_374:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x11]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	and	dl, 1
	mov	byte ptr [rax + 0x10], dl
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [word ptr [pending_dirs]],  rax
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ee0

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
	je	.label_378
	lea	rdi, [rdi]
	jmp	.label_377
.label_378:
	movabs	rdi, OFFSET FLAT:.str.222
	movabs	rsi, OFFSET FLAT:.str.6
	mov	edx, 0xeea
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.sort_files
	lea	rsi, [rsi]
	call	__assert_fail
.label_377:
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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	dword ptr [rbp - 0x34], ecx
	jne	.label_382
	mov	eax,  dword ptr [dword ptr [time_type]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	nop	
	jmp	.label_380
.label_382:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x38], eax
	nop	
	jmp	.label_380
.label_380:
	mov	eax, dword ptr [rbp - 0x38]
	movabs	rcx, OFFSET FLAT:sort_functions
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, eax
	nop	
	mov	eax, edx
	mov	esi, eax
	shl	rsi, 6
	mov	rsp, rsp
	add	rcx, rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rsi, 5
	lea	rsi, [rsi]
	add	rcx, rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	shl	rsi, 4
	lea	rsi, [rsi]
	add	rcx, rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rcx + rsi*8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
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
	#Procedure 0x407110

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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_387
	nop	
	cmp	qword ptr [word ptr [active_dir_set]],  0
	mov	rbp, rbp
	je	.label_387
	xor	eax, eax
	mov	edi, eax
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	call	queue_directory
.label_387:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x18], rax
.label_389:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	je	.label_385
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	is_directory
	test	al, 1
	jne	.label_386
	mov	rbp, rbp
	jmp	.label_393
.label_386:
	test	byte ptr [rbp - 0x21], 1
	je	.label_394
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	call	basename_is_dot_or_dotdot
	nop	
	test	al, 1
	jne	.label_393
.label_394:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_384
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_388
.label_384:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	edx, cl
	call	queue_directory
	mov	rbp, rbp
	jmp	.label_390
.label_388:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	file_name_concat
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rbp - 9]
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	edx, r8b
	nop	
	call	queue_directory
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_390:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	dword ptr [rax + 0xa8], 9
	lea	rdi, [rdi]
	jne	.label_391
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	free_ent
.label_391:
	jmp	.label_393
.label_393:
	lea	rsi, [rsi]
	jmp	.label_389
.label_385:
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
.label_392:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	rbp, rbp
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xa8], 9
	mov	rbp, rbp
	setne	sil
	and	sil, 1
	mov	rsp, rsp
	movzx	edi, sil
	mov	rbp, rbp
	movsxd	rax, edi
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_392
.label_395:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073a0

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
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	ja	.label_396
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_397]]
	mov	rsp, rsp
	jmp	rcx
.label_2869:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_405:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_403
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	print_file_name_and_frills
	mov	edi, 0xa
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_405
.label_403:
	mov	rbp, rbp
	jmp	.label_396
.label_2870:
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_401
	mov	edi, 0x20
	nop	
	call	print_with_separator
	jmp	.label_404
.label_401:
	lea	rsi, [rsi]
	call	print_many_per_line
.label_404:
	lea	rsi, [rsi]
	jmp	.label_396
.label_2871:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_398
	mov	edi, 0x20
	call	print_with_separator
	lea	rsi, [rsi]
	jmp	.label_402
.label_398:
	call	print_horizontal
.label_402:
	lea	rdi, [rdi]
	jmp	.label_396
.label_2872:
	mov	edi, 0x2c
	call	print_with_separator
	jmp	.label_396
.label_2868:
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_406:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_400
	nop	
	call	set_normal_color
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
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
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	jmp	.label_399
.label_399:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_406
.label_400:
	jmp	.label_396
.label_396:
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407570

	.globl dev_ino_pop
	.type dev_ino_pop, @function
dev_ino_pop:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	nop	
	mov	dword ptr [rbp - 0x24], 0x10
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
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
	mov	eax, dword ptr [rbp - 0x24]
	neg	eax
	mov	rcx,  qword ptr [word ptr [rip + label_408]]
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	qword ptr [word ptr [rip + label_408]],  rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rcx + rdx]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407650

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
	#Procedure 0x4076a0

	.globl print_dir
	.type print_dir, @function
print_dir:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x3f0
	lea	rsi, [rsi]
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], al
	nop	
	mov	qword ptr [rbp - 0x30], 0
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	opendir
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_446
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.203
	nop	
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x371], al
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 0x371]
	lea	rsi, [rsi]
	and	cl, 1
	nop	
	movzx	edi, cl
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	call	file_failure
	lea	rsi, [rsi]
	jmp	.label_414
.label_446:
	cmp	qword ptr [word ptr [active_dir_set]],  0
	lea	rsi, [rsi]
	je	.label_425
	mov	rdi, qword ptr [rbp - 0x20]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc4], eax
	cmp	ecx, dword ptr [rbp - 0xc4]
	lea	rsi, [rsi]
	jg	.label_432
	mov	rbp, rbp
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 0xc4]
	call	__fstat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x378], eax
	jmp	.label_437
.label_432:
	mov	rbp, rbp
	lea	rsi, [rbp - 0xc0]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	stat
	mov	dword ptr [rbp - 0x378], eax
.label_437:
	mov	eax, dword ptr [rbp - 0x378]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_440
	nop	
	movabs	rdi, OFFSET FLAT:.str.204
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	nop	
	mov	byte ptr [rbp - 0x379], al
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x379]
	mov	rsp, rsp
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	mov	rbp, rbp
	call	file_failure
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	mov	dword ptr [rbp - 0x380], eax
	lea	rdi, [rdi]
	jmp	.label_414
.label_440:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	call	visit_dir
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_422
	nop	
	jmp	.label_449
.label_422:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.205
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x388], rax
	call	quotearg_n_style_colon
	nop	
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x388]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	closedir
	mov	edi, 1
	mov	dword ptr [rbp - 0x38c], eax
	call	set_exit_status
	mov	rsp, rsp
	jmp	.label_414
.label_449:
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	call	dev_ino_push
.label_425:
	mov	rsp, rsp
	call	clear_files
	test	byte ptr [byte ptr [recursive]],  1
	nop	
	jne	.label_444
	nop	
	test	byte ptr [byte ptr [print_dir_name]],  1
	lea	rsi, [rsi]
	je	.label_447
.label_444:
	test	byte ptr [byte ptr [print_dir.first]],  1
	lea	rdi, [rdi]
	jne	.label_442
	lea	rdi, [rdi]
	jmp	.label_412
.label_412:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	nop	
	mov	dword ptr [rbp - 0x390], eax
	jmp	.label_442
.label_442:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_dir.first]],  0
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [dired]],  1
	mov	rbp, rbp
	je	.label_434
	jmp	.label_431
.label_431:
	nop	
	movabs	rdi, OFFSET FLAT:.str.206
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x394], eax
	lea	rsi, [rsi]
	jmp	.label_434
.label_434:
	jmp	.label_439
.label_439:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], 0
	test	byte ptr [byte ptr [print_hyperlink]],  1
	nop	
	je	.label_419
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	canonicalize_filename_mode
	nop	
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	jne	.label_445
	movabs	rdi, OFFSET FLAT:.str.207
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x395], al
	mov	rbp, rbp
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	cl, byte ptr [rbp - 0x395]
	and	cl, 1
	nop	
	movzx	edi, cl
	mov	rsp, rsp
	mov	rsi, rax
	call	file_failure
.label_445:
	nop	
	jmp	.label_419
.label_419:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_421
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x3a0], rax
	mov	rbp, rbp
	jmp	.label_424
.label_421:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x3a0], rax
.label_424:
	mov	rax, qword ptr [rbp - 0x3a0]
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	nop	
	xor	ecx, ecx
	nop	
	mov	r8d, 1
	movabs	r9, OFFSET FLAT:subdired_obstack
	mov	rsi,  qword ptr [word ptr [dirname_quoting_options]]
	mov	rdi, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3a8], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x3a8]
	mov	qword ptr [rsp], rax
	call	quote_name
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3b0], rax
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
	mov	dword ptr [rbp - 0x3b4], eax
	mov	rbp, rbp
	jmp	.label_447
.label_447:
	jmp	.label_416
.label_416:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	readdir
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_420
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x13
	mov	rdi, rax
	mov	rbp, rbp
	call	file_ignored
	test	al, 1
	jne	.label_427
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax + 0x12]
	dec	ecx
	mov	eax, ecx
	sub	ecx, 0xd
	mov	qword ptr [rbp - 0x3c0], rax
	mov	dword ptr [rbp - 0x3c4], ecx
	lea	rdi, [rdi]
	ja	.label_410
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_441]]
	jmp	rcx
.label_2846:
	mov	dword ptr [rbp - 0xd4], 4
	mov	rbp, rbp
	jmp	.label_410
.label_2844:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], 2
	jmp	.label_410
.label_2845:
	mov	dword ptr [rbp - 0xd4], 3
	jmp	.label_410
.label_2843:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], 1
	jmp	.label_410
.label_2848:
	mov	dword ptr [rbp - 0xd4], 6
	nop	
	jmp	.label_410
.label_2847:
	nop	
	mov	dword ptr [rbp - 0xd4], 5
	jmp	.label_410
.label_2849:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], 7
	jmp	.label_410
.label_2850:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], 8
.label_410:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	add	rsi, 0x13
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	mov	rdi, rsi
	mov	esi, eax
	lea	rdi, [rdi]
	call	gobble_file
	nop	
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	dword ptr [dword ptr [format]],  1
	jne	.label_429
	cmp	dword ptr [dword ptr [sort_type]],  -1
	nop	
	jne	.label_429
	test	byte ptr [byte ptr [print_block_size]],  1
	nop	
	jne	.label_429
	test	byte ptr [byte ptr [recursive]],  1
	mov	rsp, rsp
	jne	.label_429
	call	sort_files
	mov	rsp, rsp
	call	print_current_files
	call	clear_files
.label_429:
	jmp	.label_427
.label_427:
	jmp	.label_418
.label_420:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_443
	movabs	rdi, OFFSET FLAT:.str.209
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x3c5], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x3c5]
	and	cl, 1
	movzx	edi, cl
	mov	rbp, rbp
	mov	rsi, rax
	call	file_failure
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	nop	
	je	.label_413
	jmp	.label_415
.label_413:
	mov	rbp, rbp
	jmp	.label_417
.label_443:
	jmp	.label_415
.label_417:
	mov	rsp, rsp
	jmp	.label_418
.label_418:
	call	process_signals
	mov	rsp, rsp
	jmp	.label_416
.label_415:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	closedir
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_426
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.210
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x3c6], al
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x3c6]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	mov	rbp, rbp
	call	file_failure
.label_426:
	nop	
	call	sort_files
	test	byte ptr [byte ptr [recursive]],  1
	lea	rdi, [rdi]
	je	.label_438
	nop	
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	extract_dirs_from_files
.label_438:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  0
	lea	rdi, [rdi]
	je	.label_433
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [print_block_size]],  1
	mov	rbp, rbp
	je	.label_430
.label_433:
	lea	rdi, [rdi]
	jmp	.label_428
.label_428:
	nop	
	test	byte ptr [byte ptr [dired]],  1
	mov	rbp, rbp
	je	.label_435
	jmp	.label_448
.label_448:
	movabs	rdi, OFFSET FLAT:.str.206
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x3cc], eax
	jmp	.label_435
.label_435:
	lea	rdi, [rdi]
	jmp	.label_423
.label_423:
	movabs	rdi, OFFSET FLAT:.str.211
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x3d0], eax
	lea	rdi, [rdi]
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [dired_pos]],  rax
	mov	rsp, rsp
	jmp	.label_436
.label_436:
	mov	edi, 0x20
	mov	rsp, rsp
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x3d4], eax
	mov	eax, 0x200
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rbp - 0x370]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	mov	rsp, rsp
	call	human_readable
	mov	qword ptr [rbp - 0xe0], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x3d8], eax
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [dired_pos]],  rax
	nop	
	jmp	.label_411
.label_411:
	mov	edi, 0xa
	mov	rbp, rbp
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x3dc], eax
	nop	
	jmp	.label_430
.label_430:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	nop	
	je	.label_414
	lea	rsi, [rsi]
	call	print_current_files
.label_414:
	lea	rdi, [rdi]
	add	rsp, 0x3f0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fb0

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
	#Procedure 0x407ff0

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
	#Procedure 0x408010

	.globl dired_dump_obstack
	.type dired_dump_obstack, @function
dired_dump_obstack:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	shr	rsi, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jbe	.label_452
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_453
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
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
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	mov	rsp, rsp
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	sub	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jbe	.label_454
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x18], rax
.label_454:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
.label_450:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_451
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.62
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + rax*8]
	nop	
	mov	al, 0
	nop	
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_450
.label_451:
	lea	rsi, [rsi]
	mov	edi, 0xa
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
.label_452:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408220

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	nop	
	cmp	dword ptr [rbp - 4], 0
	nop	
	je	.label_456
	jmp	.label_457
.label_457:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.12
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_455
.label_456:
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
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
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
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.18
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
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
	mov	dword ptr [rbp - 0x38], eax
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.26
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 0x50], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.29
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.30
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.31
	mov	dword ptr [rbp - 0x5c], eax
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
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.36
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.37
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.38
	mov	dword ptr [rbp - 0x78], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x7c], eax
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
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.41
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
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
	mov	dword ptr [rbp - 0x88], eax
	jne	.label_459
	nop	
	movabs	rax, OFFSET FLAT:.str.42
	nop	
	mov	qword ptr [rbp - 0x90], rax
	nop	
	jmp	.label_458
.label_459:
	movabs	rax, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.43
	cmp	dword ptr [dword ptr [ls_mode]],  2
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x90], rax
.label_458:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_455:
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4087f0

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
	#Procedure 0x408840

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
	#Procedure 0x408880

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_465:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_462
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_462:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_463
	jmp	.label_464
.label_463:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_465
.label_464:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_461
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_461:
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
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_460
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.243
	lea	rdi, [rdi]
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_460
	movabs	rdi, OFFSET FLAT:.str.244
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
.label_460:
	movabs	rdi, OFFSET FLAT:.str.245
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.246
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str
	movabs	rsi, OFFSET FLAT:.str.247
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a70

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
	#Procedure 0x408b00

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
	#Procedure 0x408b20

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
	#Procedure 0x408ba0

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
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	je	.label_477
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], 0
	nop	
	mov	dword ptr [rbp - 0xa4], eax
.label_478:
	cmp	dword ptr [rbp - 8], 0xc
	nop	
	jge	.label_480
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rdx, [rbp - 0xa0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	lea	rsi, [rsi]
	call	sigaction
	mov	edi, 1
	mov	rsp, rsp
	mov	ecx, edi
	cmp	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	nop	
	je	.label_474
	movabs	rdi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	mov	rbp, rbp
	call	sigaddset
	mov	dword ptr [rbp - 0xac], eax
.label_474:
	jmp	.label_476
.label_476:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_478
.label_480:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:caught_signals
	mov	ecx, 0x80
	mov	edx, ecx
	mov	rsp, rsp
	lea	rsi, [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rsi, 8
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rbp - 0x18], 0x10000000
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], 0
.label_471:
	cmp	dword ptr [rbp - 8], 0xc
	nop	
	jge	.label_483
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	lea	rdi, [rdi]
	call	sigismember
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_484
	mov	rsp, rsp
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	nop	
	movabs	rcx, OFFSET FLAT:sighandler
	movabs	rdi, OFFSET FLAT:stophandler
	movsxd	r8, dword ptr [rbp - 8]
	cmp	dword ptr [dword ptr [+ (r8 * 4) + signal_setup.sig]],  0x14
	nop	
	cmove	rcx, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 8]
	nop	
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	lea	rsi, [rsi]
	call	sigaction
	mov	dword ptr [rbp - 0xb0], eax
.label_484:
	lea	rdi, [rdi]
	jmp	.label_472
.label_472:
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	jmp	.label_471
.label_483:
	jmp	.label_481
.label_477:
	mov	dword ptr [rbp - 8], 0
.label_475:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_482
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	lea	rdi, [rdi]
	call	sigismember
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_479
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	movsxd	rcx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	signal
	mov	qword ptr [rbp - 0xb8], rax
.label_479:
	jmp	.label_473
.label_473:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_475
.label_482:
	nop	
	jmp	.label_481
.label_481:
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e10

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
	#Procedure 0x408e50

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
	#Procedure 0x408e80

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
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_488
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	lea	rsi, [rsi]
	mov	ecx, 4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	nop	
	call	argmatch
	xor	r8d, r8d
	nop	
	mov	r9d, eax
	nop	
	mov	dword ptr [rbp - 0xc], r9d
	cmp	r8d, dword ptr [rbp - 0xc]
	jg	.label_489
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	movsxd	rcx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [+ (rcx * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_487
.label_489:
	nop	
	movabs	rdi, OFFSET FLAT:.str.99
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x18]
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
	#Procedure 0x408f70

	.globl set_line_length
	.type set_line_length, @function
set_line_length:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str
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
	je	.label_493
	lea	rsi, [rsi]
	jmp	.label_496
.label_496:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_495
	lea	rdi, [rdi]
	jmp	.label_492
.label_493:
	cmp	qword ptr [rbp - 0x18], -1
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_490
.label_494:
	mov	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_490
.label_490:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [line_length]],  rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_491
.label_495:
	mov	qword ptr [word ptr [line_length]],  -1
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_491
.label_492:
	mov	byte ptr [rbp - 1], 0
.label_491:
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
	#Procedure 0x409060

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
	#Procedure 0x4090d0

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
	#Procedure 0x4090f0

	.globl abformat_init
	.type abformat_init, @function
abformat_init:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x660
	mov	dword ptr [rbp - 0x14], 0
.label_507:
	cmp	dword ptr [rbp - 0x14], 2
	lea	rsi, [rsi]
	jge	.label_498
	movsxd	rax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	nop	
	call	first_percent_b
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp + rdi*8 - 0x10], rax
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_507
.label_498:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_500
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_500
	jmp	.label_497
.label_500:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x620]
	call	abmon_init
	test	al, 1
	jne	.label_512
	jmp	.label_497
.label_512:
	mov	dword ptr [rbp - 0x624], 0
.label_510:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x624], 2
	jge	.label_502
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x630], rax
	mov	dword ptr [rbp - 0x634], 0
.label_501:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x634], 0xc
	jge	.label_499
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:abformat
	nop	
	movsxd	rcx, dword ptr [rbp - 0x634]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x624]
	imul	rdx, rdx, 0x600
	mov	rsp, rsp
	add	rax, rdx
	lea	rsi, [rsi]
	shl	rcx, 7
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x640], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rsp, rsp
	cmp	qword ptr [rbp + rax*8 - 0x10], 0
	jne	.label_503
	mov	eax, 0x80
	mov	rsp, rsp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x640]
	nop	
	mov	rcx, qword ptr [rbp - 0x630]
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	snprintf
	nop	
	mov	dword ptr [rbp - 0x644], eax
	jmp	.label_505
.label_503:
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + rax*8 - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x630]
	sub	rax, rcx
	cmp	rax, 0x80
	jle	.label_511
	jmp	.label_497
.label_511:
	mov	eax, 0x80
	mov	esi, eax
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.171
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x620]
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x624]
	mov	rdi, qword ptr [rbp + rdi*8 - 0x10]
	mov	r8, qword ptr [rbp - 0x630]
	nop	
	sub	rdi, r8
	nop	
	mov	eax, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x648], eax
	mov	rdi, qword ptr [rbp - 0x640]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x648]
	mov	r8, qword ptr [rbp - 0x630]
	lea	rsi, [rsi]
	movsxd	r9, dword ptr [rbp - 0x634]
	mov	rsp, rsp
	shl	r9, 7
	mov	rsp, rsp
	add	rcx, r9
	movsxd	r9, dword ptr [rbp - 0x624]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp + r9*8 - 0x10]
	add	r9, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x650], rcx
	mov	ecx, eax
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x658], r9
	nop	
	mov	r9, r10
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x658]
	mov	qword ptr [rsp], r11
	mov	al, 0
	nop	
	call	snprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x644], eax
.label_505:
	nop	
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 0x644]
	nop	
	jg	.label_504
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x644], 0x80
	lea	rdi, [rdi]
	jl	.label_508
.label_504:
	mov	rsp, rsp
	jmp	.label_497
.label_508:
	mov	rbp, rbp
	jmp	.label_506
.label_506:
	mov	eax, dword ptr [rbp - 0x634]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x634], eax
	jmp	.label_501
.label_499:
	lea	rsi, [rsi]
	jmp	.label_509
.label_509:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x624]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x624], eax
	nop	
	jmp	.label_510
.label_502:
	mov	byte ptr [byte ptr [use_abformat]],  1
.label_497:
	lea	rsi, [rsi]
	add	rsp, 0x660
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4093f0

	.globl first_percent_b
	.type first_percent_b, @function
first_percent_b:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
.label_513:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_518
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x25
	lea	rdi, [rdi]
	jne	.label_514
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], edx
	je	.label_520
	mov	rsp, rsp
	jmp	.label_519
.label_519:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_515
	mov	rbp, rbp
	jmp	.label_517
.label_517:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_521
.label_520:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_515:
	jmp	.label_514
.label_514:
	mov	rsp, rsp
	jmp	.label_516
.label_516:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_513
.label_518:
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_521:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094c0

	.globl abmon_init
	.type abmon_init, @function
abmon_init:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0xc
.label_523:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
.label_529:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0xc
	jge	.label_528
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	ecx, 0x2000e
	mov	edi, ecx
	call	rpl_nl_langinfo
	mov	esi, 0x25
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	strchr
	cmp	rax, 0
	je	.label_527
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_522
.label_527:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	nop	
	movzx	edi, al
	lea	rdi, [rdi]
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	edi, 0x80
	lea	rdi, [rdi]
	mov	edx, edi
	mov	rsp, rsp
	lea	rcx, [rbp - 0x30]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	movzx	r9d, word ptr [rax + r8*2]
	nop	
	and	r9d, 0x800
	cmp	r9d, 0
	lea	rdi, [rdi]
	mov	r9d, edi
	nop	
	cmovne	r9d, esi
	mov	dword ptr [rbp - 0x3c], r9d
	mov	rax, qword ptr [rbp - 0x38]
	movsxd	r10, dword ptr [rbp - 0x24]
	shl	r10, 7
	add	r10, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x54], edi
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r10
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x54]
	call	mbsalign
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0x80
	lea	rsi, [rsi]
	jb	.label_525
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_522
.label_525:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jbe	.label_524
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_526
.label_524:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_529
.label_528:
	jmp	.label_530
.label_530:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	ja	.label_523
	mov	byte ptr [rbp - 1], 1
.label_522:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409690

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
	#Procedure 0x4096b0

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
	je	.label_533
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	nop	
	jne	.label_532
.label_533:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_535
.label_532:
	movabs	rax, OFFSET FLAT:G_line
	mov	qword ptr [rbp - 0x18], rax
.label_534:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:G_line
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rcx, rax
	mov	rbp, rbp
	cmp	rcx, 0x10c4
	jae	.label_536
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
	jne	.label_531
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 5
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	fnmatch
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_537
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_535
.label_537:
	lea	rsi, [rsi]
	jmp	.label_531
.label_531:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_534
.label_536:
	mov	byte ptr [rbp - 1], 0
.label_535:
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
	#Procedure 0x4097e0

	.globl get_funky_string
	.type get_funky_string, @function
get_funky_string:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	dword ptr [rbp - 0x34], 0
.label_559:
	nop	
	cmp	dword ptr [rbp - 0x34], 5
	jae	.label_554
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdx
	mov	rbp, rbp
	ja	.label_574
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_568]]
	jmp	rcx
.label_2874:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	nop	
	test	ecx, ecx
	mov	dword ptr [rbp - 0x5c], ecx
	je	.label_571
	mov	rbp, rbp
	jmp	.label_575
.label_575:
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	sub	eax, 0x3a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	je	.label_571
	mov	rsp, rsp
	jmp	.label_578
.label_578:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	sub	eax, 0x3d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	je	.label_579
	lea	rsi, [rsi]
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	sub	eax, 0x5c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	je	.label_586
	nop	
	jmp	.label_590
.label_590:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	sub	eax, 0x5e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_541
	jmp	.label_540
.label_571:
	mov	dword ptr [rbp - 0x34], 5
	jmp	.label_543
.label_586:
	mov	dword ptr [rbp - 0x34], 1
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_543
.label_541:
	nop	
	mov	dword ptr [rbp - 0x34], 4
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_543
.label_579:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x11], 1
	mov	rbp, rbp
	je	.label_561
	mov	dword ptr [rbp - 0x34], 5
	jmp	.label_543
.label_561:
	jmp	.label_540
.label_540:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	dl, byte ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_543:
	nop	
	jmp	.label_539
.label_2875:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], ecx
	mov	rbp, rbp
	je	.label_580
	jmp	.label_585
.label_585:
	mov	eax, dword ptr [rbp - 0x70]
	add	eax, -0x30
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	jb	.label_587
	jmp	.label_591
.label_591:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x3f
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], eax
	je	.label_593
	mov	rsp, rsp
	jmp	.label_545
.label_545:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_544
	jmp	.label_549
.label_549:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x5f
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	je	.label_550
	jmp	.label_556
.label_556:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_557
	nop	
	jmp	.label_563
.label_563:
	mov	eax, dword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x88], eax
	je	.label_565
	lea	rdi, [rdi]
	jmp	.label_570
.label_570:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	je	.label_573
	jmp	.label_560
.label_560:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x66
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	je	.label_577
	jmp	.label_594
.label_594:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x70]
	mov	rbp, rbp
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	je	.label_547
	jmp	.label_569
.label_569:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x98], eax
	nop	
	je	.label_584
	nop	
	jmp	.label_588
.label_588:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_592
	jmp	.label_596
.label_596:
	mov	eax, dword ptr [rbp - 0x70]
	mov	rbp, rbp
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_538
	mov	rsp, rsp
	jmp	.label_548
.label_548:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x78
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	je	.label_544
	lea	rdi, [rdi]
	jmp	.label_555
.label_587:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	mov	rbp, rbp
	mov	dl, cl
	nop	
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_558
.label_544:
	mov	dword ptr [rbp - 0x34], 3
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_558
.label_557:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], 7
	jmp	.label_558
.label_565:
	mov	byte ptr [rbp - 0x21], 8
	mov	rsp, rsp
	jmp	.label_558
.label_573:
	mov	byte ptr [rbp - 0x21], 0x1b
	jmp	.label_558
.label_577:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 0xc
	mov	rbp, rbp
	jmp	.label_558
.label_547:
	mov	byte ptr [rbp - 0x21], 0xa
	jmp	.label_558
.label_584:
	mov	byte ptr [rbp - 0x21], 0xd
	jmp	.label_558
.label_592:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], 9
	mov	rbp, rbp
	jmp	.label_558
.label_538:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], 0xb
	mov	rsp, rsp
	jmp	.label_558
.label_593:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], 0x7f
	lea	rsi, [rsi]
	jmp	.label_558
.label_550:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], 0x20
	lea	rdi, [rdi]
	jmp	.label_558
.label_580:
	mov	dword ptr [rbp - 0x34], 6
	jmp	.label_558
.label_555:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
.label_558:
	cmp	dword ptr [rbp - 0x34], 1
	mov	rsp, rsp
	jne	.label_546
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
.label_546:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_539
.label_2876:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jl	.label_567
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	lea	rsi, [rsi]
	jle	.label_583
.label_567:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	rsp, rsp
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	jmp	.label_576
.label_583:
	mov	rsp, rsp
	movsx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	shl	eax, 3
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	nop	
	movsx	esi, byte ptr [rcx]
	lea	rsi, [rsi]
	sub	esi, 0x30
	nop	
	add	eax, esi
	mov	dil, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], dil
.label_576:
	jmp	.label_539
.label_2877:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	add	edx, -0x30
	sub	edx, 0xa
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0xac], edx
	jb	.label_542
	mov	rbp, rbp
	jmp	.label_551
.label_551:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0xb0], eax
	jb	.label_553
	nop	
	jmp	.label_562
.label_562:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	add	eax, -0x61
	lea	rsi, [rsi]
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	jb	.label_564
	mov	rbp, rbp
	jmp	.label_572
.label_542:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rcx]
	mov	rbp, rbp
	sub	esi, 0x30
	lea	rdi, [rdi]
	add	eax, esi
	nop	
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_581
.label_564:
	movsx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	shl	eax, 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x61
	add	eax, esi
	add	eax, 0xa
	mov	dil, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_581
.label_553:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	mov	rsp, rsp
	movsx	esi, byte ptr [rcx]
	nop	
	sub	esi, 0x41
	add	eax, esi
	lea	rsi, [rsi]
	add	eax, 0xa
	nop	
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	lea	rsi, [rsi]
	jmp	.label_581
.label_572:
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
.label_581:
	lea	rdi, [rdi]
	jmp	.label_539
.label_2878:
	mov	dword ptr [rbp - 0x34], 0
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x40
	jl	.label_566
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7e
	jg	.label_566
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsx	edx, byte ptr [rax]
	lea	rdi, [rdi]
	and	edx, 0x1f
	mov	sil, dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], sil
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_552
.label_566:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x3f
	mov	rbp, rbp
	jne	.label_589
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x7f
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_595
.label_589:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 6
.label_595:
	jmp	.label_552
.label_552:
	jmp	.label_539
.label_574:
	call	abort
.label_539:
	nop	
	jmp	.label_559
.label_554:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x34], 6
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
	#Procedure 0x409fa0

	.globl file_failure
	.type file_failure, @function
file_failure:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	al, dil
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	edi, 4
	nop	
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], esi
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	movzx	edi, al
	call	set_exit_status
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a030

	.globl visit_dir
	.type visit_dir, @function
visit_dir:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rdi, rcx
	nop	
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	hash_insert
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_598
	lea	rdi, [rdi]
	call	xalloc_die
.label_598:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_597
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_597:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a100

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
	jmp	.label_600
.label_599:
	cmp	dword ptr [dword ptr [exit_status]],  0
	lea	rdi, [rdi]
	jne	.label_601
	mov	dword ptr [dword ptr [exit_status]],  1
.label_601:
	mov	rsp, rsp
	jmp	.label_600
.label_600:
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a160

	.globl dev_ino_push
	.type dev_ino_push, @function
dev_ino_push:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0x10
	mov	qword ptr [rbp - 0x30], rax
	movsxd	rax, dword ptr [rbp - 0x24]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rsi + 0x18]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_602
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_602:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax,  qword ptr [word ptr [label_408]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	nop	
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a240

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
	sub	rsp, 0x20e0
	lea	rdi, [rdi]
	mov	al, r8b
	mov	r10, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	lea	r11, [rbp - 0x2068]
	mov	rbp, rbp
	mov	r8d, 0x2000
	nop	
	mov	ebx, r8d
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r14d, r8d
	lea	rsi, [rsi]
	lea	r15, [rbp - 0x2071]
	lea	r12, [rbp - 0x2060]
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], edx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x41], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2068], r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	rdi, r11
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	r9, r14
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	nop	
	call	quote_name_buf
	mov	qword ptr [rbp - 0x2070], rax
	test	byte ptr [rbp - 0x2071], 1
	nop	
	je	.label_605
	test	byte ptr [rbp - 0x41], 1
	lea	rsi, [rsi]
	je	.label_605
	jmp	.label_610
.label_610:
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
	mov	dword ptr [rbp - 0x20cc], eax
	mov	rsp, rsp
	jmp	.label_605
.label_605:
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_617
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	print_color_indicator
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x20cd], al
.label_617:
	mov	byte ptr [rbp - 0x2072], 0
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_620
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	mov	rsp, rsp
	je	.label_607
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	mov	rsp, rsp
	je	.label_607
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2071], 1
	jne	.label_607
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2072], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2068]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20d4], eax
.label_607:
	mov	rbp, rbp
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [hostname]]
	call	file_escape
	mov	esi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2080], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	file_escape
	movabs	rdi, OFFSET FLAT:.str.212
	movabs	rcx, OFFSET FLAT:.str_4
	nop	
	movabs	rdx, OFFSET FLAT:.str
	mov	qword ptr [rbp - 0x2088], rax
	nop	
	mov	rsi, qword ptr [rbp - 0x2080]
	mov	rax, qword ptr [rbp - 0x2088]
	movsx	r8d, byte ptr [rax]
	cmp	r8d, 0x2f
	lea	rdi, [rdi]
	cmove	rcx, rdx
	mov	rax, qword ptr [rbp - 0x2088]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x2080]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20d8], eax
	call	free
	mov	rdi, qword ptr [rbp - 0x2088]
	lea	rsi, [rsi]
	call	free
.label_620:
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	je	.label_604
	jmp	.label_613
.label_613:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_609
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2090], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2098], 8
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2090]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20a0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20a0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x20a0]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20a8], rax
	mov	rax, qword ptr [rbp - 0x20a8]
	cmp	rax, qword ptr [rbp - 0x2098]
	lea	rsi, [rsi]
	jae	.label_615
	mov	rdi, qword ptr [rbp - 0x2090]
	mov	rsi, qword ptr [rbp - 0x2098]
	mov	rsp, rsp
	call	_obstack_newchunk
.label_615:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:dired_pos
	mov	rcx, qword ptr [rbp - 0x2090]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2098]
	mov	rsi, rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x2098]
	mov	rcx, qword ptr [rbp - 0x2090]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_609:
	jmp	.label_603
.label_603:
	jmp	.label_604
.label_604:
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x2068]
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0x2072]
	and	dl, 1
	nop	
	movzx	eax, dl
	lea	rdi, [rdi]
	movsxd	rdi, eax
	mov	rsp, rsp
	add	rcx, rdi
	mov	rdi, qword ptr [rbp - 0x2070]
	mov	dl, byte ptr [rbp - 0x2072]
	and	dl, 1
	nop	
	movzx	eax, dl
	shl	eax, 1
	lea	rsi, [rsi]
	movsxd	r8, eax
	sub	rdi, r8
	nop	
	mov	r8,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x20e0], rdi
	nop	
	mov	rdi, rcx
	nop	
	mov	rdx, qword ptr [rbp - 0x20e0]
	mov	rcx, r8
	call	fwrite_unlocked
	nop	
	mov	rcx, qword ptr [rbp - 0x2070]
	add	rcx,  qword ptr [word ptr [dired_pos]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20e8], rax
	mov	rbp, rbp
	je	.label_612
	mov	rbp, rbp
	jmp	.label_614
.label_614:
	test	byte ptr [byte ptr [dired]],  1
	mov	rbp, rbp
	je	.label_618
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x20b0], rax
	mov	qword ptr [rbp - 0x20b8], 8
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20b0]
	mov	qword ptr [rbp - 0x20c0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20c0]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20c0]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x20c8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20c8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20b8]
	lea	rsi, [rsi]
	jae	.label_616
	mov	rdi, qword ptr [rbp - 0x20b0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20b8]
	call	_obstack_newchunk
.label_616:
	movabs	rax, OFFSET FLAT:dired_pos
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20b0]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20b8]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20b8]
	nop	
	mov	rcx, qword ptr [rbp - 0x20b0]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
.label_618:
	jmp	.label_611
.label_611:
	jmp	.label_612
.label_612:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_606
	movabs	rdi, OFFSET FLAT:.str.214
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	test	byte ptr [rbp - 0x2072], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20ec], eax
	nop	
	je	.label_619
	mov	rax, qword ptr [rbp - 0x2068]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2070]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax + rcx - 1]
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20f0], eax
.label_619:
	jmp	.label_606
.label_606:
	lea	rax, [rbp - 0x2060]
	nop	
	mov	rcx, qword ptr [rbp - 0x2068]
	lea	rdi, [rdi]
	cmp	rcx, rax
	je	.label_608
	mov	rax, qword ptr [rbp - 0x2068]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	je	.label_608
	mov	rdi, qword ptr [rbp - 0x2068]
	lea	rsi, [rsi]
	call	free
.label_608:
	mov	rax, qword ptr [rbp - 0x2070]
	mov	cl, byte ptr [rbp - 0x2071]
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	nop	
	mov	esi, edx
	add	rax, rsi
	nop	
	add	rsp, 0x20e0
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
	#Procedure 0x40a810

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
	#Procedure 0x40a910

	.globl process_signals
	.type process_signals, @function
process_signals:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xb0
.label_625:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	nop	
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x89], al
	jne	.label_630
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	cmp	eax, 0
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_630:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_627
	nop	
	jmp	.label_624
.label_627:
	mov	rsp, rsp
	test	byte ptr [byte ptr [used_color]],  1
	lea	rsi, [rsi]
	je	.label_626
	call	restore_default_color
.label_626:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fflush_unlocked
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:caught_signals
	mov	rbp, rbp
	lea	rdx, [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], eax
	call	sigprocmask
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	nop	
	mov	dword ptr [rbp - 0x94], eax
	nop	
	je	.label_628
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [stop_signal_count]],  eax
	mov	dword ptr [rbp - 4], 0x13
	jmp	.label_629
.label_628:
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	call	signal
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_629:
	mov	edi, dword ptr [rbp - 4]
	call	raise
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rbp, rbp
	lea	rsi, [rbp - 0x88]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa4], eax
	call	sigprocmask
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_625
.label_624:
	lea	rdi, [rdi]
	add	rsp, 0xb0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa60

	.globl quote_name_buf
	.type quote_name_buf, @function
quote_name_buf:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	dword ptr [rbp - 0x24], r8d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r9
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	qword ptr [rbp - 0x50], 0
	mov	rdi, qword ptr [rbp - 0x20]
	call	get_quoting_style
	mov	rbp, rbp
	xor	r8d, r8d
	mov	r10b, r8b
	mov	dword ptr [rbp - 0x58], eax
	test	byte ptr [byte ptr [qmark_funny_chars]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb9], r10b
	nop	
	je	.label_642
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xba], al
	mov	rbp, rbp
	je	.label_657
	lea	rsi, [rsi]
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xba], al
	je	.label_657
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0xba], al
.label_657:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb9], al
.label_642:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb9]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	je	.label_644
	mov	rbp, rbp
	mov	rcx, -1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	call	quotearg_buffer
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	nop	
	ja	.label_663
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	xmalloc
	lea	rdi, [rdi]
	mov	rcx, -1
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	r8, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	quotearg_buffer
	mov	qword ptr [rbp - 0xc8], rax
.label_663:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	esi, byte ptr [rcx]
	cmp	edx, esi
	mov	byte ptr [rbp - 0xc9], al
	jne	.label_659
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x50]
	setne	cl
	mov	byte ptr [rbp - 0xc9], cl
.label_659:
	mov	al, byte ptr [rbp - 0xc9]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	jmp	.label_640
.label_644:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x59], 1
	je	.label_639
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_647
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
.label_647:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rdx, rax
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], 0
	lea	rdi, [rdi]
	jmp	.label_636
.label_639:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	byte ptr [rbp - 0x51], 0
.label_636:
	nop	
	jmp	.label_640
.label_640:
	nop	
	test	byte ptr [rbp - 0x59], 1
	je	.label_653
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	mov	rbp, rbp
	jbe	.label_658
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
.label_669:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	jae	.label_641
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0xd8], rax
	mov	dword ptr [rbp - 0xdc], ecx
	ja	.label_664
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_655]]
	jmp	rcx
.label_2978:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x68], rcx
	mov	dl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_661
.label_664:
	nop	
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	memset
.label_666:
	lea	rdi, [rbp - 0x84]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rdx, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	nop	
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x90], -1
	lea	rsi, [rsi]
	jne	.label_665
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_638
.label_665:
	cmp	qword ptr [rbp - 0x90], -2
	lea	rdi, [rdi]
	jne	.label_651
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_638
.label_651:
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_668
	mov	qword ptr [rbp - 0x90], 1
.label_668:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x84]
	call	wcwidth
	nop	
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0x94], 0
	jl	.label_649
	jmp	.label_654
.label_654:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	jbe	.label_656
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rcx
	nop	
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	jmp	.label_654
.label_656:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x94]
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_648
.label_649:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
.label_648:
	jmp	.label_650
.label_650:
	nop	
	lea	rdi, [rbp - 0x80]
	call	mbsinit
	cmp	eax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	nop	
	jne	.label_666
.label_638:
	jmp	.label_661
.label_661:
	jmp	.label_669
.label_641:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_635
.label_658:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
.label_660:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_667
	mov	rax, qword ptr [rbp - 0xa0]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rsp, rsp
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xe8], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	lea	rsi, [rsi]
	cmp	edi, 0
	nop	
	jne	.label_643
	mov	rax, qword ptr [rbp - 0xa0]
	mov	byte ptr [rax], 0x3f
.label_643:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_660
.label_667:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x48], rax
.label_635:
	jmp	.label_634
.label_653:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_633
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 1
	jbe	.label_645
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	call	mbsnwidth
	nop	
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rsi
	jmp	.label_631
.label_645:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
.label_632:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_652
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xf0], rcx
	mov	rbp, rbp
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_646
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_646:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_632
.label_652:
	lea	rsi, [rsi]
	jmp	.label_631
.label_631:
	lea	rdi, [rdi]
	jmp	.label_633
.label_633:
	jmp	.label_634
.label_634:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_637
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xf1], cl
	lea	rsi, [rsi]
	je	.label_637
	mov	al, byte ptr [rbp - 0x51]
	lea	rsi, [rsi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0xf1], al
.label_637:
	mov	al, byte ptr [rbp - 0xf1]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx], al
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_662
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_662:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b240

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
	#Procedure 0x40b2e0

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
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	xnmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_677:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_678
	test	byte ptr [rbp - 9], 1
	je	.label_676
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_676
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_675
.label_676:
	nop	
	mov	rax, qword ptr [rbp - 8]
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
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	dl, byte ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], dl
	jmp	.label_673
.label_674:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, edx
	call	to_uchar
	nop	
	movabs	rsi, OFFSET FLAT:.str.215
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	al, 0
	call	sprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rcx, rsi
	mov	qword ptr [rbp - 0x20], rcx
.label_673:
	mov	rsp, rsp
	jmp	.label_675
.label_675:
	jmp	.label_677
.label_678:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b480

	.globl patterns_match
	.type patterns_match, @function
patterns_match:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
.label_680:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_679
	mov	edx, 4
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	fnmatch
	cmp	eax, 0
	nop	
	jne	.label_683
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	jmp	.label_681
.label_683:
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_680
.label_679:
	mov	byte ptr [rbp - 1], 0
.label_681:
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x40b520

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
	jmp	.label_687
.label_685:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rbp, rbp
	call	free
	jmp	.label_686
.label_687:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	freecon
.label_686:
	lea	rdi, [rdi]
	jmp	.label_684
.label_684:
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5f0

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
	#Procedure 0x40b610

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
	lea	rdx, [rbp - 0xa]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	r8,  qword ptr [word ptr [filename_quoting_options]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	call	quotearg_buffer
	lea	rsi, [rsi]
	mov	r9b, 1
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsx	r10d, byte ptr [rax]
	movsx	r11d, byte ptr [rbp - 0xa]
	cmp	r10d, r11d
	nop	
	mov	byte ptr [rbp - 0x21], r9b
	lea	rsi, [rsi]
	jne	.label_688
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	setne	cl
	mov	byte ptr [rbp - 0x21], cl
.label_688:
	mov	al, byte ptr [rbp - 0x21]
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
	#Procedure 0x40b6c0

	.globl attach
	.type attach, @function
attach:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	jne	.label_689
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	je	.label_695
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
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
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jbe	.label_692
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
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
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	je	.label_693
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
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
	#Procedure 0x40b800

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
	mov	qword ptr [rbp - 0x10], rdi
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
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_699
.label_696:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 1], al
.label_699:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8d0

	.globl getfilecon_cache
	.type getfilecon_cache, @function
getfilecon_cache:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	al, dl
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	cmp	rsi,  qword ptr [word ptr [getfilecon_cache.unsupported_device]]
	lea	rsi, [rsi]
	jne	.label_704
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_700
.label_704:
	mov	dword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	je	.label_705
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	lea	rsi, [rsi]
	call	getfilecon
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	jmp	.label_702
.label_705:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	call	lgetfilecon
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
.label_702:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_703
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	mov	rsp, rsp
	jne	.label_701
	lea	rsi, [rsi]
	jmp	.label_703
.label_701:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [getfilecon_cache.unsupported_device]],  rax
.label_703:
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_700:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba00

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
	mov	dword ptr [rbp - 4], edi
	nop	
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_706
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 5], cl
	lea	rdi, [rdi]
	jmp	.label_706
.label_706:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba40

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
	mov	qword ptr [rbp - 0x10], rdi
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
	mov	dword ptr [rbp - 4], 0
	jmp	.label_708
.label_707:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x18
	lea	rsi, [rsi]
	mov	rsi, rax
	call	file_has_acl
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
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
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_708:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb10

	.globl get_link_name
	.type get_link_name, @function
get_link_name:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
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
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x12]
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
	#Procedure 0x40bbb0

	.globl make_link_name
	.type make_link_name, @function
make_link_name:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_714
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_713
.label_714:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	nop	
	jne	.label_712
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_713
.label_712:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	dir_len
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_716
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_713
.label_716:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	add	rdi, rax
	mov	rsp, rsp
	add	rdi, 1
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x2f
	je	.label_715
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_715:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	stpncpy
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	stpcpy
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_713:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd00

	.globl format_user_width
	.type format_user_width, @function
format_user_width:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_717
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_718
.label_717:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	getuser
	mov	qword ptr [rbp - 0x10], rax
.label_718:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 4]
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
	#Procedure 0x40bd60

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
	#Procedure 0x40bdc0

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
	#Procedure 0x40be00

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
	#Procedure 0x40be30

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
	#Procedure 0x40be90

	.globl format_user_or_group_width
	.type format_user_or_group_width, @function
format_user_or_group_width:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_722
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	gnu_mbswidth
	xor	esi, esi
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	esi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	jle	.label_723
	xor	eax, eax
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_724
.label_723:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
.label_724:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_725
.label_722:
	movabs	rsi, OFFSET FLAT:.str.221
	lea	rdi, [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	sprintf
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x48], eax
	nop	
	call	strlen
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
.label_725:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf50

	.globl is_directory
	.type is_directory, @function
is_directory:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0xa8], 3
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	je	.label_726
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	dword ptr [rax + 0xa8], 9
	lea	rsi, [rsi]
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], cl
.label_726:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfa0

	.globl basename_is_dot_or_dotdot
	.type basename_is_dot_or_dotdot, @function
basename_is_dot_or_dotdot:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	last_component
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
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
	#Procedure 0x40bff0

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
	mov	byte ptr [rbp - 0x11], sil
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x11], 0
	nop	
	mov	byte ptr [rbp - 0x12], al
	nop	
	je	.label_728
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_728:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x12]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	jmp	.label_729
.label_727:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_729:
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c0a0

	.globl initialize_ordering_vector
	.type initialize_ordering_vector, @function
initialize_ordering_vector:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_731:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_730
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
	jmp	.label_731
.label_730:
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c110

	.globl xstrcoll_name
	.type xstrcoll_name, @function
xstrcoll_name:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c160

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
	mov	byte ptr [rbp - 0x19], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	je	.label_735
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	mov	rsp, rsp
	jne	.label_735
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_732
.label_735:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_733
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1a], 1
	je	.label_733
	mov	dword ptr [rbp - 4], 1
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
	mov	dword ptr [rbp - 4], eax
.label_732:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c230

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
	#Procedure 0x40c280

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
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x1a], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	nop	
	je	.label_738
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1a], 1
	mov	rbp, rbp
	jne	.label_738
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_736
.label_738:
	nop	
	test	byte ptr [rbp - 0x19], 1
	nop	
	jne	.label_737
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	lea	rsi, [rsi]
	je	.label_737
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_736
.label_737:
	jmp	.label_739
.label_739:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_736:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c350

	.globl strcmp_name
	.type strcmp_name, @function
strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	cmp_name
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c3a0

	.globl strcmp_df_name
	.type strcmp_df_name, @function
strcmp_df_name:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	je	.label_741
	test	byte ptr [rbp - 0x1a], 1
	nop	
	jne	.label_741
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_743
.label_741:
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	jne	.label_740
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	je	.label_740
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_743
.label_740:
	nop	
	jmp	.label_742
.label_742:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:strcmp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	cmp_name
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_743:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c470

	.globl rev_strcmp_name
	.type rev_strcmp_name, @function
rev_strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
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
	#Procedure 0x40c4c0

	.globl rev_strcmp_df_name
	.type rev_strcmp_df_name, @function
rev_strcmp_df_name:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	is_linked_directory
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_745
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1a], 1
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
	test	byte ptr [rbp - 0x1a], 1
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
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
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
	#Procedure 0x40c5a0

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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c5f0

	.globl xstrcoll_df_extension
	.type xstrcoll_df_extension, @function
xstrcoll_df_extension:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_751
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_751
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_750
.label_751:
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	jne	.label_749
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	mov	rsp, rsp
	je	.label_749
	mov	dword ptr [rbp - 4], 1
	jmp	.label_750
.label_749:
	jmp	.label_748
.label_748:
	movabs	rdx, OFFSET FLAT:xstrcoll
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_750:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c6c0

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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	cmp_extension
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c720

	.globl rev_xstrcoll_df_extension
	.type rev_xstrcoll_df_extension, @function
rev_xstrcoll_df_extension:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x1a], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	je	.label_754
	test	byte ptr [rbp - 0x1a], 1
	lea	rsi, [rsi]
	jne	.label_754
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_752
.label_754:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	nop	
	jne	.label_753
	test	byte ptr [rbp - 0x1a], 1
	je	.label_753
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_752
.label_753:
	jmp	.label_755
.label_755:
	nop	
	movabs	rdx, OFFSET FLAT:xstrcoll
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_752:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c7f0

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	mov	rbp, rbp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c840

	.globl strcmp_df_extension
	.type strcmp_df_extension, @function
strcmp_df_extension:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	nop	
	test	byte ptr [rbp - 0x19], 1
	nop	
	je	.label_756
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	mov	rbp, rbp
	jne	.label_756
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_757
.label_756:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	jne	.label_758
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1a], 1
	je	.label_758
	mov	dword ptr [rbp - 4], 1
	jmp	.label_757
.label_758:
	jmp	.label_759
.label_759:
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_757:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c910

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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	rdi, rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c960

	.globl rev_strcmp_df_extension
	.type rev_strcmp_df_extension, @function
rev_strcmp_df_extension:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	is_linked_directory
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_762
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_762
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_763
.label_762:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_760
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	je	.label_760
	mov	dword ptr [rbp - 4], 1
	jmp	.label_763
.label_760:
	nop	
	jmp	.label_761
.label_761:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	cmp_extension
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_763:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca30

	.globl xstrcoll_size
	.type xstrcoll_size, @function
xstrcoll_size:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca80

	.globl xstrcoll_df_size
	.type xstrcoll_df_size, @function
xstrcoll_df_size:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_766
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_766
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_764
.label_766:
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	jne	.label_765
	nop	
	test	byte ptr [rbp - 0x1a], 1
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
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_764:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb50

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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cbb0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_769
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_769
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_771
.label_769:
	nop	
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	jne	.label_768
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	nop	
	je	.label_768
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_771
.label_768:
	lea	rdi, [rdi]
	jmp	.label_770
.label_770:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_771:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cc90

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
	#Procedure 0x40cce0

	.globl strcmp_df_size
	.type strcmp_df_size, @function
strcmp_df_size:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	je	.label_774
	test	byte ptr [rbp - 0x1a], 1
	mov	rsp, rsp
	jne	.label_774
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_775
.label_774:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_772
	test	byte ptr [rbp - 0x1a], 1
	je	.label_772
	mov	dword ptr [rbp - 4], 1
	jmp	.label_775
.label_772:
	mov	rbp, rbp
	jmp	.label_773
.label_773:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_775:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cda0

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
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	cmp_size
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cdf0

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	is_linked_directory
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	is_linked_directory
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	je	.label_777
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1a], 1
	mov	rsp, rsp
	jne	.label_777
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_779
.label_777:
	test	byte ptr [rbp - 0x19], 1
	nop	
	jne	.label_776
	test	byte ptr [rbp - 0x1a], 1
	je	.label_776
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_779
.label_776:
	mov	rbp, rbp
	jmp	.label_778
.label_778:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_779:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ced0

	.globl xstrcoll_version
	.type xstrcoll_version, @function
xstrcoll_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
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
	#Procedure 0x40cf10

	.globl xstrcoll_df_version
	.type xstrcoll_df_version, @function
xstrcoll_df_version:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	is_linked_directory
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	je	.label_780
	nop	
	test	byte ptr [rbp - 0x1a], 1
	mov	rbp, rbp
	jne	.label_780
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_781
.label_780:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	jne	.label_782
	test	byte ptr [rbp - 0x1a], 1
	lea	rdi, [rdi]
	je	.label_782
	mov	dword ptr [rbp - 4], 1
	jmp	.label_781
.label_782:
	jmp	.label_783
.label_783:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_781:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cfd0

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
	#Procedure 0x40d020

	.globl rev_xstrcoll_df_version
	.type rev_xstrcoll_df_version, @function
rev_xstrcoll_df_version:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_785
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_785
	mov	dword ptr [rbp - 4], 0xffffffff
	nop	
	jmp	.label_787
.label_785:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	jne	.label_784
	test	byte ptr [rbp - 0x1a], 1
	lea	rdi, [rdi]
	je	.label_784
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_787
.label_784:
	lea	rsi, [rsi]
	jmp	.label_786
.label_786:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_787:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d0f0

	.globl xstrcoll_mtime
	.type xstrcoll_mtime, @function
xstrcoll_mtime:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	cmp_mtime
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d140

	.globl xstrcoll_df_mtime
	.type xstrcoll_df_mtime, @function
xstrcoll_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	je	.label_790
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_790
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_789
.label_790:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	jne	.label_788
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	je	.label_788
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
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
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	cmp_mtime
	nop	
	mov	dword ptr [rbp - 4], eax
.label_789:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d220

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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	cmp_mtime
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d270

	.globl rev_xstrcoll_df_mtime
	.type rev_xstrcoll_df_mtime, @function
rev_xstrcoll_df_mtime:
	nop
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_793
	test	byte ptr [rbp - 0x1a], 1
	lea	rdi, [rdi]
	jne	.label_793
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_795
.label_793:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_794
	test	byte ptr [rbp - 0x1a], 1
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
	mov	rax, qword ptr [rbp - 0x18]
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
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d340

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
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d390

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	is_linked_directory
	nop	
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	nop	
	test	byte ptr [rbp - 0x19], 1
	nop	
	je	.label_798
	test	byte ptr [rbp - 0x1a], 1
	lea	rsi, [rsi]
	jne	.label_798
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_797
.label_798:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	jne	.label_796
	test	byte ptr [rbp - 0x1a], 1
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
	mov	rcx, qword ptr [rbp - 0x18]
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
	#Procedure 0x40d470

	.globl rev_strcmp_mtime
	.type rev_strcmp_mtime, @function
rev_strcmp_mtime:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	cmp_mtime
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d4c0

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
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_802
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_802
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_801
.label_802:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_803
	test	byte ptr [rbp - 0x1a], 1
	je	.label_803
	mov	dword ptr [rbp - 4], 1
	jmp	.label_801
.label_803:
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
	mov	dword ptr [rbp - 4], eax
.label_801:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d580

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
	#Procedure 0x40d5d0

	.globl xstrcoll_df_ctime
	.type xstrcoll_df_ctime, @function
xstrcoll_df_ctime:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	is_linked_directory
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_804
	nop	
	test	byte ptr [rbp - 0x1a], 1
	mov	rsp, rsp
	jne	.label_804
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_807
.label_804:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_806
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	je	.label_806
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_807
.label_806:
	nop	
	jmp	.label_805
.label_805:
	nop	
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_807:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6a0

	.globl rev_xstrcoll_ctime
	.type rev_xstrcoll_ctime, @function
rev_xstrcoll_ctime:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
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
	#Procedure 0x40d6f0

	.globl rev_xstrcoll_df_ctime
	.type rev_xstrcoll_df_ctime, @function
rev_xstrcoll_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	is_linked_directory
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x1a], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	nop	
	je	.label_809
	test	byte ptr [rbp - 0x1a], 1
	mov	rbp, rbp
	jne	.label_809
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_810
.label_809:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	nop	
	jne	.label_808
	test	byte ptr [rbp - 0x1a], 1
	je	.label_808
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_810
.label_808:
	lea	rsi, [rsi]
	jmp	.label_811
.label_811:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	cmp_ctime
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_810:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d7d0

	.globl strcmp_ctime
	.type strcmp_ctime, @function
strcmp_ctime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	cmp_ctime
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d820

	.globl strcmp_df_ctime
	.type strcmp_df_ctime, @function
strcmp_df_ctime:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	is_linked_directory
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_815
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_815
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_812
.label_815:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	jne	.label_813
	test	byte ptr [rbp - 0x1a], 1
	lea	rsi, [rsi]
	je	.label_813
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_812
.label_813:
	jmp	.label_814
.label_814:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_812:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8f0

	.globl rev_strcmp_ctime
	.type rev_strcmp_ctime, @function
rev_strcmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	cmp_ctime
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d940

	.globl rev_strcmp_df_ctime
	.type rev_strcmp_df_ctime, @function
rev_strcmp_df_ctime:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	is_linked_directory
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	je	.label_818
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_818
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_816
.label_818:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	jne	.label_817
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1a], 1
	mov	rsp, rsp
	je	.label_817
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_816
.label_817:
	mov	rbp, rbp
	jmp	.label_819
.label_819:
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	cmp_ctime
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_816:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da10

	.globl xstrcoll_atime
	.type xstrcoll_atime, @function
xstrcoll_atime:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da60

	.globl xstrcoll_df_atime
	.type xstrcoll_df_atime, @function
xstrcoll_df_atime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	nop	
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	je	.label_821
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_821
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_823
.label_821:
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	jne	.label_822
	test	byte ptr [rbp - 0x1a], 1
	je	.label_822
	mov	dword ptr [rbp - 4], 1
	jmp	.label_823
.label_822:
	lea	rdi, [rdi]
	jmp	.label_820
.label_820:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	cmp_atime
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_823:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db30

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db80

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
	mov	byte ptr [rbp - 0x19], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	je	.label_826
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_826
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_827
.label_826:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_825
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	mov	rbp, rbp
	je	.label_825
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
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
	mov	dword ptr [rbp - 4], eax
.label_827:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc70

	.globl strcmp_atime
	.type strcmp_atime, @function
strcmp_atime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	cmp_atime
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dcc0

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
	mov	byte ptr [rbp - 0x19], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	is_linked_directory
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_830
	nop	
	test	byte ptr [rbp - 0x1a], 1
	mov	rbp, rbp
	jne	.label_830
	mov	dword ptr [rbp - 4], 0xffffffff
	nop	
	jmp	.label_828
.label_830:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	jne	.label_829
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	je	.label_829
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
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
	mov	dword ptr [rbp - 4], eax
.label_828:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd90

	.globl rev_strcmp_atime
	.type rev_strcmp_atime, @function
rev_strcmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dde0

	.globl rev_strcmp_df_atime
	.type rev_strcmp_df_atime, @function
rev_strcmp_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	is_linked_directory
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x1a], al
	nop	
	test	byte ptr [rbp - 0x19], 1
	je	.label_833
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a], 1
	mov	rsp, rsp
	jne	.label_833
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_832
.label_833:
	test	byte ptr [rbp - 0x19], 1
	nop	
	jne	.label_834
	test	byte ptr [rbp - 0x1a], 1
	mov	rbp, rbp
	je	.label_834
	nop	
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_832
.label_834:
	jmp	.label_835
.label_835:
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:strcmp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_832:
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dec0

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
	#Procedure 0x40df00

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
	mov	dword ptr [rbp - 0x14], eax
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_836
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.223
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], esi
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
	mov	esi, dword ptr [rbp - 0x18]
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
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dfe0

	.globl is_linked_directory
	.type is_linked_directory, @function
is_linked_directory:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0xa8], 3
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	je	.label_837
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + 0xa8], 9
	mov	byte ptr [rbp - 9], al
	je	.label_837
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xac]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], dl
.label_837:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e060

	.globl cmp_extension
	.type cmp_extension, @function
cmp_extension:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 0x2e
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	esi, eax
	lea	rsi, [rsi]
	call	strrchr
	mov	rsp, rsp
	mov	esi, 0x2e
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	call	strrchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	je	.label_842
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_839
.label_842:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_839
.label_839:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x48], rax
	nop	
	je	.label_843
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_840
.label_843:
	movabs	rax, OFFSET FLAT:.str
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_840
.label_840:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	call	rax
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_838
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_841
.label_838:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	call	rax
	mov	dword ptr [rbp - 0x54], eax
.label_841:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e190

	.globl cmp_size
	.type cmp_size, @function
cmp_size:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x48]
	mov	rbp, rbp
	jge	.label_844
	mov	rbp, rbp
	mov	eax, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_847
.label_844:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x48]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x20], esi
.label_847:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	je	.label_845
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_846
.label_845:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	dword ptr [rbp - 0x24], eax
.label_846:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e260

	.globl cmp_version
	.type cmp_version, @function
cmp_version:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	call	filevercmp
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2a0

	.globl cmp_mtime
	.type cmp_mtime, @function
cmp_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	lea	rdi, [rdi]
	mov	rdi, rdx
	nop	
	call	get_stat_mtime
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
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
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_849
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_848
.label_849:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	lea	rdi, [rdi]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_848:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e370

	.globl cmp_ctime
	.type cmp_ctime, @function
cmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rdx, 0x18
	mov	rbp, rbp
	mov	rdi, rdx
	lea	rsi, [rsi]
	call	get_stat_ctime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	get_stat_ctime
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	je	.label_850
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_851
.label_850:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
.label_851:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e440

	.globl cmp_atime
	.type cmp_atime, @function
cmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	lea	rdi, [rdi]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_852
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_853
.label_852:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	call	rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
.label_853:
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e500

	.globl print_file_name_and_frills
	.type print_file_name_and_frills, @function
print_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2e0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	call	set_normal_color
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_858
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_862
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x2ac], eax
	mov	rsp, rsp
	jmp	.label_865
.label_862:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [inode_number_width]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2ac], eax
.label_865:
	mov	eax, dword ptr [rbp - 0x2ac]
	mov	ecx, 0x28c
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rdi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2b0], eax
	call	format_inode
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.224
	mov	esi, dword ptr [rbp - 0x2b0]
	mov	rdx, rax
	mov	al, 0
	nop	
	call	printf
	mov	dword ptr [rbp - 0x2b4], eax
.label_858:
	test	byte ptr [byte ptr [print_block_size]],  1
	nop	
	je	.label_860
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [format]],  4
	mov	rsp, rsp
	jne	.label_864
	xor	eax, eax
	mov	dword ptr [rbp - 0x2b8], eax
	nop	
	jmp	.label_856
.label_864:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	mov	dword ptr [rbp - 0x2b8], eax
.label_856:
	mov	eax, dword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0xb8], 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2bc], eax
	jne	.label_861
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.225
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2c8], rax
	jmp	.label_854
.label_861:
	mov	eax, 0x200
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	lea	rsi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x2c8], rax
.label_854:
	nop	
	mov	rax, qword ptr [rbp - 0x2c8]
	movabs	rdi, OFFSET FLAT:.str.224
	mov	esi, dword ptr [rbp - 0x2bc]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2cc], eax
.label_860:
	mov	rbp, rbp
	test	byte ptr [byte ptr [print_scontext]],  1
	mov	rbp, rbp
	je	.label_855
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_857
	xor	eax, eax
	mov	dword ptr [rbp - 0x2d0], eax
	mov	rsp, rsp
	jmp	.label_863
.label_857:
	nop	
	mov	eax,  dword ptr [dword ptr [scontext_width]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2d0], eax
.label_863:
	nop	
	mov	eax, dword ptr [rbp - 0x2d0]
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.224
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0xb0]
	mov	esi, eax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2d4], eax
.label_855:
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x2a8], rax
	nop	
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	rsp, rsp
	je	.label_859
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	nop	
	mov	rax, qword ptr [rbp - 8]
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
	add	r8, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x2a8], r8
.label_859:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2a8]
	add	rsp, 0x2e0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e7a0

	.globl print_with_separator
	.type print_with_separator, @function
print_with_separator:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
.label_870:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	lea	rdi, [rdi]
	jae	.label_869
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [line_length]],  0
	lea	rdi, [rdi]
	je	.label_866
	mov	rdi, qword ptr [rbp - 0x20]
	call	length_of_file_name_and_frills
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_867
.label_866:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	jmp	.label_867
.label_867:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_873
	cmp	qword ptr [word ptr [line_length]],  0
	nop	
	je	.label_872
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 2
	cmp	rax,  qword ptr [word ptr [line_length]]
	jae	.label_871
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x28]
	sub	rax, 2
	nop	
	cmp	rcx, rax
	ja	.label_871
.label_872:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 2
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	byte ptr [rbp - 0x29], 0x20
	lea	rdi, [rdi]
	jmp	.label_868
.label_871:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], 0xa
.label_868:
	nop	
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	movsx	edi, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
.label_873:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	print_file_name_and_frills
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_870
.label_869:
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e950

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
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, edi
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, rcx
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, edi
	div	qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rdx, 0
	setne	sil
	mov	rsp, rsp
	and	sil, 1
	lea	rdi, [rdi]
	movzx	edi, sil
	movsxd	rcx, edi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 8], 0
.label_877:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_874
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	qword ptr [rbp - 0x38], 0
.label_875:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	length_of_file_name_and_frills
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	print_file_name_and_frills
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jb	.label_876
	mov	rsp, rsp
	jmp	.label_878
.label_876:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	indent
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_875
.label_878:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_877
.label_874:
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb40

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
	mov	qword ptr [rbp - 0x10], 0
	call	calculate_columns
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	nop	
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [column_info]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [sorted_file]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	length_of_file_name_and_frills
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_file_name_and_frills
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 1
	mov	qword ptr [rbp - 0x48], rax
.label_881:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_879
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdx
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_882
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	jmp	.label_880
.label_882:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	call	indent
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_880:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	print_file_name_and_frills
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	call	length_of_file_name_and_frills
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_881
.label_879:
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
	add	rsp, 0x60
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ecf0

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
	#Procedure 0x40ed70

	.globl print_long_format
	.type print_long_format, @function
print_long_format:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x1590
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xb8], 1
	nop	
	je	.label_914
	lea	rsi, [rbp - 0x14]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 0x18
	mov	rsp, rsp
	mov	rdi, rax
	call	filemodestring
	nop	
	jmp	.label_933
.label_914:
	lea	rsi, [rsi]
	mov	esi, 0x3f
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	edx, eax
	lea	rcx, [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi + 0xa8]
	mov	edi, eax
	mov	r8b,  byte ptr [byte ptr [+ (rdi * 1) + filetype_letter]]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x14], r8b
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	rdi, rcx
	nop	
	call	memset
	mov	byte ptr [rbp - 9], 0
.label_933:
	test	byte ptr [byte ptr [any_has_acl]],  1
	lea	rdi, [rdi]
	jne	.label_886
	mov	byte ptr [rbp - 0xa], 0
	jmp	.label_888
.label_886:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xbc], 1
	mov	rsp, rsp
	jne	.label_931
	mov	byte ptr [rbp - 0xa], 0x2e
	jmp	.label_902
.label_931:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xbc], 2
	lea	rdi, [rdi]
	jne	.label_904
	mov	byte ptr [rbp - 0xa], 0x2b
.label_904:
	jmp	.label_902
.label_902:
	nop	
	jmp	.label_888
.label_888:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	nop	
	test	eax, eax
	mov	dword ptr [rbp - 0x14cc], eax
	mov	rsp, rsp
	je	.label_911
	jmp	.label_920
.label_920:
	nop	
	mov	eax, dword ptr [rbp - 0x14cc]
	sub	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14d0], eax
	je	.label_922
	jmp	.label_925
.label_925:
	mov	eax, dword ptr [rbp - 0x14cc]
	lea	rdi, [rdi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x14d4], eax
	lea	rsi, [rsi]
	je	.label_926
	jmp	.label_935
.label_922:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	get_stat_ctime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xeb8], rax
	nop	
	mov	qword ptr [rbp - 0xeb0], rdx
	mov	rax, qword ptr [rbp - 0xeb8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xeb0]
	mov	qword ptr [rbp - 0xe68], rax
	mov	rsp, rsp
	jmp	.label_895
.label_911:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xec8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xec0], rdx
	mov	rax, qword ptr [rbp - 0xec8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xec0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_895
.label_926:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	lea	rsi, [rsi]
	mov	rdi, rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0xed8], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xed0], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xed8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xed0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_895
.label_935:
	lea	rdi, [rdi]
	call	abort
.label_895:
	nop	
	lea	rax, [rbp - 0xe50]
	mov	qword ptr [rbp - 0xe60], rax
	nop	
	test	byte ptr [byte ptr [print_inode]],  1
	nop	
	je	.label_930
	mov	rsp, rsp
	mov	eax, 0x15
	mov	esi, eax
	mov	rbp, rbp
	lea	rdi, [rbp - 0xef0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe60]
	mov	edx,  dword ptr [dword ptr [inode_number_width]]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14d8], edx
	mov	rdx, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x14e0], rcx
	mov	rbp, rbp
	call	format_inode
	movabs	rsi, OFFSET FLAT:.str.224
	mov	rdi, qword ptr [rbp - 0x14e0]
	mov	edx, dword ptr [rbp - 0x14d8]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	sprintf
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x14e4], eax
	lea	rdi, [rdi]
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe60], rax
.label_930:
	nop	
	test	byte ptr [byte ptr [print_block_size]],  1
	nop	
	je	.label_910
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rax + 0xb8], 1
	lea	rdi, [rdi]
	jne	.label_915
	movabs	rax, OFFSET FLAT:.str.225
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x14f0], rax
	lea	rdi, [rdi]
	jmp	.label_923
.label_915:
	mov	rbp, rbp
	mov	eax, 0x200
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rbp - 0x1180]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	lea	rdi, [rdi]
	call	human_readable
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x14f0], rax
.label_923:
	mov	rax, qword ptr [rbp - 0x14f0]
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1188], rax
	mov	ecx,  dword ptr [dword ptr [block_size_width]]
	mov	rdi, qword ptr [rbp - 0x1188]
	mov	dword ptr [rbp - 0x14f4], ecx
	call	gnu_mbswidth
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x14f4]
	lea	rdi, [rdi]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x118c], ecx
.label_942:
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 0x118c]
	lea	rdi, [rdi]
	jge	.label_900
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe60], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x20
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x118c]
	add	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118c], eax
	jmp	.label_942
.label_900:
	jmp	.label_918
.label_918:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1188]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x1188], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], dl
	mov	rsp, rsp
	cmp	dl, 0
	je	.label_921
	lea	rdi, [rdi]
	jmp	.label_918
.label_921:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0x20
.label_910:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xb8], 1
	mov	qword ptr [rbp - 0x1500], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1508], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x150c], ecx
	nop	
	jne	.label_939
	nop	
	movabs	rax, OFFSET FLAT:.str.225
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1518], rax
	jmp	.label_896
.label_939:
	lea	rsi, [rbp - 0x11b0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	call	umaxtostr
	mov	qword ptr [rbp - 0x1518], rax
.label_896:
	nop	
	mov	rax, qword ptr [rbp - 0x1518]
	movabs	rsi, OFFSET FLAT:.str.227
	nop	
	mov	rdi, qword ptr [rbp - 0x1508]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1500]
	mov	ecx, dword ptr [rbp - 0x150c]
	mov	r8, rax
	mov	al, 0
	call	sprintf
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x151c], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe60], rax
	test	byte ptr [byte ptr [dired]],  1
	lea	rsi, [rsi]
	je	.label_929
	jmp	.label_938
.label_938:
	movabs	rdi, OFFSET FLAT:.str.206
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x1520], eax
	jmp	.label_929
.label_929:
	jmp	.label_887
.label_887:
	test	byte ptr [byte ptr [print_owner]],  1
	jne	.label_892
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_group]],  1
	mov	rsp, rsp
	jne	.label_892
	mov	rbp, rbp
	test	byte ptr [byte ptr [print_author]],  1
	jne	.label_892
	nop	
	test	byte ptr [byte ptr [print_scontext]],  1
	lea	rsi, [rsi]
	je	.label_906
.label_892:
	jmp	.label_943
.label_943:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xe50]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 0xe60]
	sub	rdi, rsi
	lea	rsi, [rsi]
	add	rdi,  qword ptr [word ptr [dired_pos]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1524], eax
	test	byte ptr [byte ptr [print_owner]],  1
	mov	rbp, rbp
	je	.label_917
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x34]
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [owner_width]]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	call	format_user
.label_917:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_941
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	esi,  dword ptr [dword ptr [group_width]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	call	format_group
.label_941:
	test	byte ptr [byte ptr [print_author]],  1
	nop	
	je	.label_894
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edi, dword ptr [rax + 0x34]
	mov	esi,  dword ptr [dword ptr [author_width]]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	call	format_user
.label_894:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_909
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0xb0]
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [scontext_width]]
	nop	
	call	format_user_or_group
.label_909:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xe50]
	nop	
	mov	qword ptr [rbp - 0xe60], rax
.label_906:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	lea	rsi, [rsi]
	je	.label_928
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x2000
	mov	rsp, rsp
	je	.label_934
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x6000
	mov	rbp, rbp
	jne	.label_928
.label_934:
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
	mov	dword ptr [rbp - 0x11f4], ecx
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	cmp	eax, dword ptr [rbp - 0x11f4]
	mov	dword ptr [rbp - 0x1528], ecx
	mov	qword ptr [rbp - 0x1530], rdi
	jle	.label_944
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1534], eax
	jmp	.label_908
.label_944:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x11f4]
	nop	
	mov	dword ptr [rbp - 0x1534], eax
.label_908:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1534]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1528]
	add	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdx + 0x40]
	mov	dword ptr [rbp - 0x1538], ecx
	mov	rbp, rbp
	call	gnu_dev_major
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x11d0]
	mov	rsp, rsp
	mov	eax, eax
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	umaxtostr
	lea	rsi, [rsi]
	mov	r8d,  dword ptr [dword ptr [minor_device_number_width]]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x40]
	mov	qword ptr [rbp - 0x1540], rax
	mov	dword ptr [rbp - 0x1544], r8d
	call	gnu_dev_minor
	lea	rsi, [rbp - 0x11f0]
	mov	eax, eax
	mov	edi, eax
	mov	rsp, rsp
	call	umaxtostr
	movabs	rsi, OFFSET FLAT:.str.228
	mov	rdi, qword ptr [rbp - 0x1530]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1538]
	mov	rcx, qword ptr [rbp - 0x1540]
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x1544]
	mov	r9, rax
	mov	al, 0
	call	sprintf
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [file_size_width]]
	nop	
	add	edx, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe60]
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	nop	
	mov	qword ptr [rbp - 0xe60], rcx
	mov	dword ptr [rbp - 0x1548], eax
	mov	rsp, rsp
	jmp	.label_897
.label_928:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_912
	nop	
	movabs	rax, OFFSET FLAT:.str.225
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1550], rax
	lea	rsi, [rsi]
	jmp	.label_919
.label_912:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	call	unsigned_file_size
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rbp - 0x1480]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	human_readable
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1550], rax
.label_919:
	mov	rax, qword ptr [rbp - 0x1550]
	xor	esi, esi
	nop	
	mov	qword ptr [rbp - 0x1488], rax
	mov	ecx,  dword ptr [dword ptr [file_size_width]]
	mov	rdi, qword ptr [rbp - 0x1488]
	mov	dword ptr [rbp - 0x1554], ecx
	lea	rdi, [rdi]
	call	gnu_mbswidth
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1554]
	mov	rsp, rsp
	sub	ecx, eax
	mov	dword ptr [rbp - 0x148c], ecx
.label_903:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x148c]
	lea	rsi, [rsi]
	jge	.label_936
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x148c]
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0x148c], eax
	nop	
	jmp	.label_903
.label_936:
	jmp	.label_905
.label_905:
	nop	
	mov	rax, qword ptr [rbp - 0x1488]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1488], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], dl
	cmp	dl, 0
	je	.label_913
	lea	rsi, [rsi]
	jmp	.label_905
.label_913:
	mov	rax, qword ptr [rbp - 0xe60]
	nop	
	mov	byte ptr [rax - 1], 0x20
.label_897:
	nop	
	mov	qword ptr [rbp - 0xe58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	je	.label_890
	lea	rdx, [rbp - 0xea8]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xe70]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [localtz]]
	lea	rsi, [rsi]
	call	localtime_rz
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_890
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [current_time]]
	mov	rsi,  qword ptr [word ptr [label_46]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xe70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe68]
	call	timespec_cmp
	cmp	eax, 0
	jge	.label_898
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:current_time
	lea	rdi, [rdi]
	call	gettime
.label_898:
	mov	rax,  qword ptr [word ptr [current_time]]
	sub	rax, 0xf0c2ac
	nop	
	mov	qword ptr [rbp - 0x14a0], rax
	mov	rax,  qword ptr [word ptr [label_46]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1498], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x14a0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1498]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe70]
	mov	rcx, qword ptr [rbp - 0xe68]
	mov	rsp, rsp
	call	timespec_cmp
	mov	rsp, rsp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9b, r8b
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1555], r9b
	jge	.label_937
	mov	rdi, qword ptr [rbp - 0xe70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe68]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [current_time]]
	mov	rcx,  qword ptr [word ptr [label_46]]
	call	timespec_cmp
	cmp	eax, 0
	mov	rbp, rbp
	setl	r8b
	mov	byte ptr [rbp - 0x1555], r8b
.label_937:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1555]
	nop	
	mov	ecx, 0x3e9
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0xea8]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x14a1], al
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	al, byte ptr [rbp - 0x14a1]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xe68]
	mov	rbp, rbp
	mov	r9d, edx
	nop	
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	call	align_nstrftime
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe58], rax
.label_890:
	cmp	qword ptr [rbp - 0xe58], 0
	jne	.label_940
	nop	
	mov	rax, qword ptr [rbp - 0xe60]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	jne	.label_924
.label_940:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe58]
	add	rax, qword ptr [rbp - 0xe60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe60], rax
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe60]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	jmp	.label_927
.label_924:
	nop	
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1560], rdi
	call	long_time_expected_width
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rdi + 0xb8], 1
	mov	dword ptr [rbp - 0x1564], eax
	mov	rsp, rsp
	jne	.label_885
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x1570], rax
	lea	rdi, [rdi]
	jmp	.label_893
.label_885:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x14c0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe70]
	lea	rdi, [rdi]
	call	timetostr
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1570], rax
.label_893:
	mov	rax, qword ptr [rbp - 0x1570]
	nop	
	movabs	rsi, OFFSET FLAT:.str.224
	mov	rdi, qword ptr [rbp - 0x1560]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1564]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x1574], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
.label_927:
	mov	rsp, rsp
	jmp	.label_932
.label_932:
	lea	rdi, [rbp - 0xe50]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsp, rsp
	lea	rsi, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	rbp, rbp
	sub	rdi, rsi
	add	rdi,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1578], eax
	lea	rdi, [rdi]
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:dired_obstack
	lea	rax, [rbp - 0xe50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe60]
	nop	
	sub	rcx, rax
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x14c8], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	dword ptr [rax + 0xa8], 6
	jne	.label_891
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_907
	nop	
	jmp	.label_889
.label_889:
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
	mov	dword ptr [rbp - 0x157c], eax
	mov	esi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0xe60]
	nop	
	sub	r8, rcx
	add	r8, qword ptr [rbp - 0x14c8]
	add	r8, 4
	nop	
	mov	rcx, r8
	mov	rbp, rbp
	call	print_name_with_quoting
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1588], rax
	mov	rsp, rsp
	je	.label_901
	mov	edi, 1
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rax + 0xac]
	call	print_type_indicator
	mov	byte ptr [rbp - 0x1589], al
.label_901:
	mov	rsp, rsp
	jmp	.label_907
.label_907:
	jmp	.label_916
.label_891:
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	rsp, rsp
	je	.label_899
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0xa8]
	nop	
	and	cl, 1
	movzx	edi, cl
	call	print_type_indicator
	nop	
	mov	byte ptr [rbp - 0x158a], al
.label_899:
	mov	rbp, rbp
	jmp	.label_916
.label_916:
	lea	rdi, [rdi]
	add	rsp, 0x1590
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fc90

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
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xb8], 1
	lea	rsi, [rsi]
	je	.label_947
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x20], 0
	nop	
	je	.label_947
	mov	rax, qword ptr [rbp - 0x18]
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
	#Procedure 0x40fd70

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
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	je	.label_951
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_950
.label_951:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_950:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	test	byte ptr [byte ptr [print_with_color]],  1
	nop	
	je	.label_949
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rsi, [rsi]
	movzx	esi, al
	lea	rsi, [rsi]
	call	get_color_indicator
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_952
.label_949:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_952
.label_952:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	xor	ecx, ecx
	mov	dl, cl
	mov	qword ptr [rbp - 0x30], rax
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], dl
	je	.label_953
	lea	rsi, [rsi]
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x52], al
	mov	rsp, rsp
	jne	.label_954
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	call	is_colored
	nop	
	mov	byte ptr [rbp - 0x52], al
.label_954:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x52]
	mov	byte ptr [rbp - 0x51], al
.label_953:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0xc4]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	xor	al, 0xff
	mov	r9, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
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
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	call	process_signals
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_955
	call	prep_non_filename_text
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_956
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rsi, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, rsi
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	rsi, rax
	lea	rdi, [rdi]
	je	.label_956
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:color_indicator
	add	rax, 0x170
	mov	rdi, rax
	call	put_indicator
.label_956:
	lea	rsi, [rsi]
	jmp	.label_955
.label_955:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ff80

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
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edx
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xc]
	and	al, 1
	movzx	edi, al
	call	get_type_indicator
	mov	byte ptr [rbp - 0xd], al
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0xd], 0
	je	.label_957
	jmp	.label_958
.label_958:
	movsx	edi, byte ptr [rbp - 0xd]
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
	cmp	byte ptr [rbp - 0xd], 0
.label_2928:
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
	#Procedure 0x410030

	.globl get_color_indicator
	.type get_color_indicator, @function
get_color_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	je	.label_973
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rdx + 0xac]
	nop	
	mov	dword ptr [rbp - 0x2c], esi
	mov	rdx, qword ptr [rbp - 8]
	mov	dil, byte ptr [rdx + 0xb9]
	mov	rsp, rsp
	test	dil, 1
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	jmp	.label_1014
.label_973:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	mov	rsp, rsp
	je	.label_1003
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rax + 0xb9], 1
	je	.label_1003
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xac]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], ecx
	jmp	.label_1013
.label_1003:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	dword ptr [rbp - 0x3c], ecx
.label_1013:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0xb9]
	mov	rbp, rbp
	and	dl, 1
	movzx	eax, dl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
.label_1014:
	cmp	dword ptr [rbp - 0x30], -1
	jne	.label_967
	lea	rdi, [rdi]
	mov	edi, 0xc
	mov	rsp, rsp
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_974
	jmp	.label_967
.label_974:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 0xc
	jmp	.label_969
.label_967:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	test	byte ptr [rax + 0xb8], 1
	lea	rdi, [rdi]
	jne	.label_984
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xa8]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + get_color_indicator.filetype_indicator]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	jmp	.label_989
.label_984:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_1001
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 5
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x800
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_997
	mov	edi, 0x10
	nop	
	call	is_colored
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1011
	mov	rbp, rbp
	jmp	.label_997
.label_1011:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], 0x10
	jmp	.label_964
.label_997:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x400
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_972
	mov	edi, 0x11
	nop	
	call	is_colored
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_996
	jmp	.label_972
.label_996:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 0x11
	jmp	.label_963
.label_972:
	mov	edi, 0x15
	lea	rsi, [rsi]
	call	is_colored
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_979
	jmp	.label_983
.label_979:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rax + 0xc0], 1
	mov	rbp, rbp
	je	.label_983
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], 0x15
	nop	
	jmp	.label_959
.label_983:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	and	eax, 0x49
	cmp	eax, 0
	je	.label_994
	mov	edi, 0xe
	call	is_colored
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_978
	jmp	.label_994
.label_978:
	nop	
	mov	dword ptr [rbp - 0x10], 0xe
	mov	rsp, rsp
	jmp	.label_1005
.label_994:
	mov	eax, 1
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x28]
	jae	.label_985
	mov	edi, 0x16
	lea	rsi, [rsi]
	call	is_colored
	nop	
	test	al, 1
	jne	.label_987
	mov	rbp, rbp
	jmp	.label_985
.label_987:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0x16
.label_985:
	jmp	.label_1005
.label_1005:
	nop	
	jmp	.label_959
.label_959:
	jmp	.label_963
.label_963:
	mov	rsp, rsp
	jmp	.label_964
.label_964:
	jmp	.label_965
.label_1001:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	mov	rbp, rbp
	jne	.label_968
	mov	dword ptr [rbp - 0x10], 6
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x200
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_975
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_975
	mov	rbp, rbp
	mov	edi, 0x14
	call	is_colored
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_991
	jmp	.label_975
.label_991:
	nop	
	mov	dword ptr [rbp - 0x10], 0x14
	mov	rsp, rsp
	jmp	.label_995
.label_975:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1000
	mov	rbp, rbp
	mov	edi, 0x13
	call	is_colored
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1008
	mov	rbp, rbp
	jmp	.label_1000
.label_1008:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], 0x13
	lea	rdi, [rdi]
	jmp	.label_966
.label_1000:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x200
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_960
	nop	
	mov	edi, 0x12
	call	is_colored
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1015
	jmp	.label_960
.label_1015:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0x12
.label_960:
	jmp	.label_966
.label_966:
	jmp	.label_995
.label_995:
	jmp	.label_962
.label_968:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	jne	.label_971
	mov	dword ptr [rbp - 0x10], 7
	lea	rsi, [rsi]
	jmp	.label_976
.label_971:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x1000
	mov	rsp, rsp
	jne	.label_1006
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 8
	lea	rdi, [rdi]
	jmp	.label_981
.label_1006:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0xc000
	jne	.label_992
	mov	dword ptr [rbp - 0x10], 9
	jmp	.label_998
.label_992:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x6000
	jne	.label_1002
	mov	dword ptr [rbp - 0x10], 0xa
	jmp	.label_1007
.label_1002:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_993
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0xb
	jmp	.label_1012
.label_993:
	mov	dword ptr [rbp - 0x10], 0xd
.label_1012:
	jmp	.label_1007
.label_1007:
	mov	rbp, rbp
	jmp	.label_998
.label_998:
	lea	rdi, [rdi]
	jmp	.label_981
.label_981:
	lea	rdi, [rdi]
	jmp	.label_976
.label_976:
	mov	rsp, rsp
	jmp	.label_962
.label_962:
	jmp	.label_965
.label_965:
	mov	rsp, rsp
	jmp	.label_989
.label_989:
	jmp	.label_969
.label_969:
	mov	qword ptr [rbp - 0x18], 0
	cmp	dword ptr [rbp - 0x10], 5
	jne	.label_970
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	qword ptr [rbp - 0x18], rax
.label_1010:
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_986
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_990
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rsi]
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rdx
	mov	rdx, rcx
	nop	
	call	c_strncasecmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_990
	mov	rsp, rsp
	jmp	.label_986
.label_990:
	jmp	.label_1009
.label_1009:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1010
.label_986:
	jmp	.label_970
.label_970:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 7
	jne	.label_977
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_977
	nop	
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	mov	rbp, rbp
	jne	.label_961
	mov	rsp, rsp
	mov	edi, 0xd
	mov	rbp, rbp
	call	is_colored
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_961
	jmp	.label_982
.label_961:
	mov	dword ptr [rbp - 0x10], 0xd
.label_982:
	mov	rbp, rbp
	jmp	.label_977
.label_977:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_980
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_988
.label_980:
	movabs	rax, OFFSET FLAT:color_indicator
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_988:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_999
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1004
.label_999:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_1004
.label_1004:
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4106e0

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
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], edx
	mov	rsp, rsp
	test	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	je	.label_1035
	nop	
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rsp, rsp
	je	.label_1019
	jmp	.label_1023
.label_1035:
	cmp	dword ptr [rbp - 0xc], 5
	mov	rsp, rsp
	jne	.label_1023
.label_1019:
	test	byte ptr [rbp - 1], 1
	je	.label_1029
	cmp	dword ptr [dword ptr [indicator_style]],  3
	nop	
	jne	.label_1029
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	and	eax, 0x49
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1029
	mov	byte ptr [rbp - 0xd], 0x2a
	mov	rbp, rbp
	jmp	.label_1037
.label_1029:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], 0
.label_1037:
	jmp	.label_1017
.label_1023:
	test	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	je	.label_1016
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1020
	mov	rsp, rsp
	jmp	.label_1024
.label_1016:
	cmp	dword ptr [rbp - 0xc], 3
	je	.label_1020
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 9
	lea	rsi, [rsi]
	jne	.label_1024
.label_1020:
	mov	byte ptr [rbp - 0xd], 0x2f
	mov	rsp, rsp
	jmp	.label_1018
.label_1024:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [indicator_style]],  1
	jne	.label_1032
	mov	byte ptr [rbp - 0xd], 0
	lea	rsi, [rsi]
	jmp	.label_1036
.label_1032:
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	je	.label_1039
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_1042
	mov	rbp, rbp
	jmp	.label_1022
.label_1039:
	cmp	dword ptr [rbp - 0xc], 6
	jne	.label_1022
.label_1042:
	mov	byte ptr [rbp - 0xd], 0x40
	mov	rbp, rbp
	jmp	.label_1025
.label_1022:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	je	.label_1027
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x1000
	je	.label_1030
	jmp	.label_1033
.label_1027:
	cmp	dword ptr [rbp - 0xc], 1
	mov	rbp, rbp
	jne	.label_1033
.label_1030:
	mov	byte ptr [rbp - 0xd], 0x7c
	jmp	.label_1038
.label_1033:
	test	byte ptr [rbp - 1], 1
	je	.label_1040
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	lea	rdi, [rdi]
	je	.label_1041
	jmp	.label_1021
.label_1040:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], 7
	mov	rbp, rbp
	jne	.label_1021
.label_1041:
	mov	byte ptr [rbp - 0xd], 0x3d
	mov	rbp, rbp
	jmp	.label_1026
.label_1021:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	je	.label_1028
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1031
	jmp	.label_1028
.label_1031:
	mov	byte ptr [rbp - 0xd], 0x3e
	jmp	.label_1034
.label_1028:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd], 0
.label_1034:
	jmp	.label_1026
.label_1026:
	jmp	.label_1038
.label_1038:
	jmp	.label_1025
.label_1025:
	jmp	.label_1036
.label_1036:
	jmp	.label_1018
.label_1018:
	jmp	.label_1017
.label_1017:
	movsx	eax, byte ptr [rbp - 0xd]
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410920

	.globl length_of_file_name_and_frills
	.type length_of_file_name_and_frills, @function
length_of_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x2d0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_1051
	cmp	dword ptr [dword ptr [format]],  4
	mov	rsp, rsp
	jne	.label_1046
	nop	
	lea	rsi, [rbp - 0x2a0]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x2b0], rax
	mov	rbp, rbp
	jmp	.label_1054
.label_1046:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [inode_number_width]]
	mov	qword ptr [rbp - 0x2b0], rax
.label_1054:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2b0]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1051:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_1052
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1045
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_1049
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x2b8], rax
	jmp	.label_1053
.label_1049:
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	mov	rsp, rsp
	call	human_readable
	mov	qword ptr [rbp - 0x2b8], rax
.label_1053:
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rdi, rax
	mov	rbp, rbp
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_1047
.label_1045:
	nop	
	movsxd	rax,  dword ptr [dword ptr [block_size_width]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2c0], rax
.label_1047:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2c0]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1052:
	nop	
	test	byte ptr [byte ptr [print_scontext]],  1
	nop	
	je	.label_1044
	cmp	dword ptr [dword ptr [format]],  4
	lea	rdi, [rdi]
	jne	.label_1048
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rbp, rbp
	call	strlen
	mov	qword ptr [rbp - 0x2c8], rax
	lea	rsi, [rsi]
	jmp	.label_1043
.label_1048:
	movsxd	rax,  dword ptr [dword ptr [scontext_width]]
	mov	qword ptr [rbp - 0x2c8], rax
.label_1043:
	mov	rax, qword ptr [rbp - 0x2c8]
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1044:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 0xc4]
	mov	rbp, rbp
	call	quote_name_width
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_1050
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0xa8]
	nop	
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edi, cl
	call	get_type_indicator
	mov	byte ptr [rbp - 0x2a1], al
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rbp - 0x2a1]
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
.label_1050:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x2d0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410bb0

	.globl quote_name_width
	.type quote_name_width, @function
quote_name_width:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	push	rbx
	sub	rsp, 0x2048
	lea	rax, [rbp - 0x2028]
	mov	ecx, 0x2000
	mov	r8d, ecx
	lea	r9, [rbp - 0x2030]
	mov	rsp, rsp
	lea	r10, [rbp - 0x2031]
	lea	r11, [rbp - 0x2020]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	nop	
	mov	qword ptr [rbp - 0x2028], r11
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	ebx, dword ptr [rbp - 0x1c]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, r8
	mov	r8d, ebx
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r10
	call	quote_name_buf
	mov	rbp, rbp
	lea	rcx, [rbp - 0x2020]
	mov	rdx, qword ptr [rbp - 0x2028]
	cmp	rdx, rcx
	nop	
	mov	qword ptr [rbp - 0x2040], rax
	je	.label_1055
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2028]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	je	.label_1055
	mov	rdi, qword ptr [rbp - 0x2028]
	call	free
.label_1055:
	mov	al, byte ptr [rbp - 0x2031]
	and	al, 1
	movzx	ecx, al
	nop	
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x2030]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2030], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2030]
	lea	rdi, [rdi]
	add	rsp, 0x2048
	nop	
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410ca0

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
	mov	byte ptr [rbp - 1], al
	mov	rcx,  qword ptr [word ptr [max_idx]]
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	lea	rdi, [rdi]
	jae	.label_1066
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1063
.label_1066:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x50], rax
.label_1063:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	call	init_column_info
	mov	qword ptr [rbp - 0x10], 0
.label_1067:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	lea	rsi, [rsi]
	jae	.label_1060
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	length_of_file_name_and_frills
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_1058:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1057
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [column_info]]
	mov	rbp, rbp
	test	byte ptr [rax], 1
	je	.label_1068
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	je	.label_1059
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, rcx
	xor	esi, esi
	mov	qword ptr [rbp - 0x60], rdx
	mov	edx, esi
	mov	rcx, qword ptr [rbp - 0x60]
	div	rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rax, rdi
	mov	rbp, rbp
	xor	esi, esi
	mov	edx, esi
	mov	r8, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	div	r8
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_1064
.label_1059:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	add	rcx, 1
	xor	edx, edx
	div	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rdx
.label_1064:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	ecx, 2
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	cmp	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmove	ecx, edx
	movsxd	rsi, ecx
	add	rax, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	imul	rsi, rsi, 0x18
	mov	rbp, rbp
	add	rsi,  qword ptr [word ptr [column_info]]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + rax*8]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	jae	.label_1071
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x18
	mov	rsp, rsp
	add	rdx,  qword ptr [word ptr [column_info]]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	imul	rdx, rdx, 0x18
	add	rdx,  qword ptr [word ptr [column_info]]
	nop	
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [column_info]]
	mov	rax, qword ptr [rax + 8]
	cmp	rax,  qword ptr [word ptr [line_length]]
	setb	sil
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
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
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1058
.label_1057:
	jmp	.label_1065
.label_1065:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1067
.label_1060:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1056:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jae	.label_1069
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1056
.label_1069:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410ff0

	.globl indent
	.type indent, @function
indent:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_1072:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_1074
	mov	rsp, rsp
	cmp	qword ptr [word ptr [tabsize]],  0
	nop	
	je	.label_1075
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, rsi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, rax
	jbe	.label_1075
	mov	edi, 9
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [tabsize]]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
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
	jmp	.label_1073
.label_1075:
	nop	
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
.label_1073:
	lea	rsi, [rsi]
	jmp	.label_1072
.label_1074:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4110f0

	.globl init_column_info
	.type init_column_info, @function
init_column_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax,  qword ptr [word ptr [max_idx]]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1085
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1078
.label_1085:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_1078:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jae	.label_1086
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	xnrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [column_info]],  rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rax, 1
	mov	qword ptr [rbp - 0x18], rax
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
	mov	qword ptr [rbp - 0x18], rax
.label_1082:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	add	rax, 1
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_1089
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_1080
.label_1089:
	call	xalloc_die
.label_1080:
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shr	rcx, 1
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 8], rax
.label_1088:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jae	.label_1084
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	nop	
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 1
	shl	rax, 3
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1088
.label_1084:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [word ptr [init_column_info.column_info_alloc]],  rax
.label_1086:
	mov	qword ptr [rbp - 8], 0
.label_1079:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_1083
	mov	rax, qword ptr [rbp - 8]
	nop	
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 1
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	imul	rax, rax, 3
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x40], 0
.label_1076:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	ja	.label_1087
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1076
.label_1087:
	jmp	.label_1077
.label_1077:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1079
.label_1083:
	add	rsp, 0x50
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4113f0

	.globl format_user
	.type format_user, @function
format_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	jne	.label_1090
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.225
	mov	qword ptr [rbp - 0x18], rax
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
	mov	edi, dword ptr [rbp - 4]
	call	getuser
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1092:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1091:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	edx, dword ptr [rbp - 8]
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
	#Procedure 0x4114a0

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
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 9], 1
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
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	jmp	.label_1095
.label_1096:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	getgroup
	mov	qword ptr [rbp - 0x20], rax
.label_1095:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1097:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 8]
	mov	rdi, rax
	call	format_user_or_group
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411550

	.globl format_user_or_group
	.type format_user_or_group, @function
format_user_or_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], edx
	nop	
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1101
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	gnu_mbswidth
	mov	rbp, rbp
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	sub	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	cmp	esi, dword ptr [rbp - 0x24]
	jle	.label_1102
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1100
.label_1102:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x30], eax
.label_1100:
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x28], eax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	call	strlen
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x28]
	add	rax, rsi
	mov	qword ptr [rbp - 0x20], rax
.label_1099:
	mov	rsp, rsp
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	cmp	eax, 0
	jne	.label_1099
	mov	rsp, rsp
	jmp	.label_1098
.label_1101:
	movabs	rdi, OFFSET FLAT:.str.230
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	nop	
	movsxd	rdx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x3c], eax
.label_1098:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
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
	#Procedure 0x411680

	.globl align_nstrftime
	.type align_nstrftime, @function
align_nstrftime:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], r9d
	test	byte ptr [byte ptr [use_abformat]],  1
	lea	rsi, [rsi]
	je	.label_1103
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:abformat
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	and	dl, 1
	movzx	esi, dl
	mov	edi, esi
	mov	rsp, rsp
	imul	rdi, rdi, 0x600
	add	rax, rdi
	shl	rcx, 7
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1104
.label_1103:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [+ (rdx * 8) + long_time_format]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdx
.label_1104:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	call	nstrftime
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411770

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
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	rdi,  qword ptr [word ptr [localtz]]
	mov	rbp, rbp
	call	localtime_rz
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1105
	mov	eax, 0x3e9
	mov	esi, eax
	xor	eax, eax
	lea	rcx, [rbp - 0x40]
	lea	rdi, [rbp - 0x430]
	mov	r8,  qword ptr [word ptr [localtz]]
	nop	
	mov	edx, eax
	mov	r9d, eax
	lea	rsi, [rsi]
	call	align_nstrftime
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x438], rax
	cmp	qword ptr [rbp - 0x438], 0
	je	.label_1108
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	lea	rdi, [rbp - 0x430]
	nop	
	mov	rsi, qword ptr [rbp - 0x438]
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
	#Procedure 0x411870

	.globl timetostr
	.type timetostr, @function
timetostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118b0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], 0x400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0x2000
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_1120
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1118
.label_1120:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_1118:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jae	.label_1111
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1119
.label_1111:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_1119:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_1115:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	jne	.label_1116
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1117
.label_1116:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	readlink
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jge	.label_1110
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x22
	mov	rbp, rbp
	je	.label_1110
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_1117
.label_1110:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_1112
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1117
.label_1112:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	call	free
	movabs	rdi, 0x3fffffffffffffff
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_1114
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1113
.label_1114:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_1109
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_1121
.label_1109:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1117
.label_1121:
	jmp	.label_1113
.label_1113:
	lea	rdi, [rdi]
	jmp	.label_1115
.label_1117:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411af0

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
	#Procedure 0x411b10

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_1131:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1129
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1126
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_1132
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1122
.label_1132:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1127
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_1125
.label_1127:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1133
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_1123
.label_1133:
	nop	
	mov	byte ptr [rbp - 0x41], 1
.label_1123:
	lea	rsi, [rsi]
	jmp	.label_1125
.label_1125:
	mov	rbp, rbp
	jmp	.label_1128
.label_1128:
	mov	rsp, rsp
	jmp	.label_1126
.label_1126:
	nop	
	jmp	.label_1130
.label_1130:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1131
.label_1129:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1124
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1122
.label_1124:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1122:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411cc0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1134
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1135
.label_1134:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1135:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
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
	#Procedure 0x411da0

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_1138:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_1139
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1140
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1137
.label_1140:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1141
.label_1137:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_1141:
	jmp	.label_1136
.label_1136:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1138
.label_1139:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411f50

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1142
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1143
.label_1142:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], -1
.label_1143:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412010
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_1146:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_1148
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x30]
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
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1144
.label_1145:
	lea	rdi, [rdi]
	jmp	.label_1147
.label_1147:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
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
	#Procedure 0x4120e0

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
	jmp	.label_1151
.label_1151:
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
	ja	.label_1152
	jmp	.label_1149
.label_1149:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1153
.label_1152:
	mov	byte ptr [rbp - 1], 0
.label_1153:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412150

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
	#Procedure 0x4121a0
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
	#Procedure 0x4121d0
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
	#Procedure 0x412200
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
	#Procedure 0x412250

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
	#Procedure 0x412290
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
	#Procedure 0x4122d0
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
	#Procedure 0x412310
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
	#Procedure 0x412350
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
	#Procedure 0x4123d0
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
	#Procedure 0x412420
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
	#Procedure 0x412460
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
	jmp	.label_1194
.label_1194:
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
	ja	.label_1193
	jmp	.label_1191
.label_1191:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1195
.label_1193:
	mov	byte ptr [rbp - 1], 0
.label_1195:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4124d0

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
	#Procedure 0x412510
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
	#Procedure 0x412550

	.globl c_strncasecmp
	.type c_strncasecmp, @function
c_strncasecmp:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	cmp	rdx, qword ptr [rbp - 0x30]
	je	.label_1205
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_1204
.label_1205:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1208
.label_1204:
	jmp	.label_1202
.label_1202:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movzx	edi, byte ptr [rax]
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x32], cl
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1206
	movzx	eax, byte ptr [rbp - 0x31]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1207
.label_1206:
	lea	rsi, [rsi]
	jmp	.label_1203
.label_1207:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x31]
	movzx	ecx, byte ptr [rbp - 0x32]
	cmp	eax, ecx
	lea	rsi, [rsi]
	je	.label_1202
.label_1203:
	nop	
	movzx	eax, byte ptr [rbp - 0x31]
	movzx	ecx, byte ptr [rbp - 0x32]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1208:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412670

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x170
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], 0
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	and	esi, 0xfffffffc
	nop	
	mov	dword ptr [rbp - 0x60], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	and	esi, 4
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	esi, 3
	mov	dword ptr [rbp - 0x14], esi
	mov	esi, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	ecx, 1
	mov	rbp, rbp
	and	esi, ecx
	mov	rsp, rsp
	cmp	esi, 0
	mov	rbp, rbp
	je	.label_1249
	call	__errno_location
	mov	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1227
.label_1249:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1216
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1227
.label_1216:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1235
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1227
.label_1235:
	mov	qword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_1247
	call	xgetcwd
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_1253
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_1227
.label_1253:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	call	strchr
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	sub	rax, rdi
	cmp	rax, 0x1000
	mov	rbp, rbp
	jge	.label_1266
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rsi, rdi
	lea	rsi, [rsi]
	add	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_1279
.label_1266:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
.label_1279:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1251
.label_1247:
	mov	eax, 0x1000
	mov	rbp, rbp
	mov	edi, eax
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 0x1000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	je	.label_1250
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rdx
.label_1250:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1251:
	mov	rsp, rsp
	jmp	.label_1268
.label_1268:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_1276
	jmp	.label_1217
.label_1217:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2f
	jne	.label_1220
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1217
.label_1220:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_1262:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x139], cl
	je	.label_1240
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	sete	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x139], dl
.label_1240:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x139]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1241
	mov	rbp, rbp
	jmp	.label_1257
.label_1241:
	lea	rsi, [rsi]
	jmp	.label_1260
.label_1260:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1262
.label_1257:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1269
	mov	rsp, rsp
	jmp	.label_1276
.label_1269:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1209
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1209
	jmp	.label_1223
.label_1209:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rax, rcx
	cmp	rax, 2
	mov	rsp, rsp
	jne	.label_1225
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1225
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	jne	.label_1225
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jbe	.label_1211
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1264:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x13a], cl
	mov	rbp, rbp
	jbe	.label_1256
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	mov	rsp, rsp
	cmp	ecx, 0x2f
	sete	dl
	nop	
	xor	dl, 0xff
	nop	
	mov	byte ptr [rbp - 0x13a], dl
.label_1256:
	mov	al, byte ptr [rbp - 0x13a]
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1273
	jmp	.label_1277
.label_1273:
	lea	rsi, [rsi]
	jmp	.label_1278
.label_1278:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1264
.label_1277:
	jmp	.label_1211
.label_1211:
	lea	rdi, [rdi]
	jmp	.label_1214
.label_1225:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_1218
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
.label_1218:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rax, rcx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	jb	.label_1237
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	cmp	rax, 0x1000
	mov	rsp, rsp
	jle	.label_1280
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	add	rax, 1
	add	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rax
	nop	
	jmp	.label_1265
.label_1280:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x118]
	nop	
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x118], rax
.label_1265:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x118]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x28], rax
.label_1237:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x148], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	nop	
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x61], 1
	je	.label_1254
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_1254
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf0], 0
	lea	rsi, [rsi]
	jmp	.label_1229
.label_1254:
	nop	
	test	byte ptr [rbp - 0x61], 1
	je	.label_1267
	nop	
	lea	rsi, [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	stat
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1275
.label_1267:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x108]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	__lstat
	mov	dword ptr [rbp - 0x14c], eax
.label_1275:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, 0
	je	.label_1210
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], ecx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jne	.label_1222
	jmp	.label_1238
.label_1222:
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_1234
	nop	
	movabs	rsi, OFFSET FLAT:.str_4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	call	strspn
	mov	rsi, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rsi + rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_1221
	cmp	dword ptr [rbp - 0x5c], 2
	mov	rbp, rbp
	je	.label_1233
.label_1221:
	jmp	.label_1238
.label_1233:
	jmp	.label_1239
.label_1234:
	mov	dword ptr [rbp - 0xf0], 0
.label_1210:
	jmp	.label_1229
.label_1229:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0xa000
	nop	
	jne	.label_1255
	lea	rdi, [rbp - 0x58]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x108]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	seen_triple
	test	al, 1
	jne	.label_1270
	lea	rsi, [rsi]
	jmp	.label_1274
.label_1270:
	cmp	dword ptr [rbp - 0x14], 2
	nop	
	jne	.label_1213
	mov	rbp, rbp
	jmp	.label_1239
.label_1213:
	mov	dword ptr [rbp - 0x5c], 0x28
	jmp	.label_1238
.label_1274:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	areadlink_with_size
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_1212
	cmp	dword ptr [rbp - 0x14], 2
	mov	rbp, rbp
	jne	.label_1228
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	je	.label_1228
	lea	rsi, [rsi]
	jmp	.label_1239
.label_1228:
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	jmp	.label_1238
.label_1212:
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1252
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	rsp, rsp
	cmp	rax, 0x1000
	mov	rsp, rsp
	jbe	.label_1258
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_1271
.label_1258:
	nop	
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_1271
.label_1271:
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1226
.label_1252:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	nop	
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	jbe	.label_1231
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1231:
	nop	
	jmp	.label_1226
.label_1226:
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	memmove
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x160], rax
	mov	rbp, rbp
	call	memcpy
	nop	
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x120]
	nop	
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	mov	rsp, rsp
	jne	.label_1272
	mov	qword ptr [rbp - 0x138], 0
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_1243
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcpy
.label_1243:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	jmp	.label_1232
.label_1272:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jbe	.label_1230
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1224:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x161], cl
	lea	rdi, [rdi]
	jbe	.label_1242
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	sete	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x161], dl
.label_1242:
	mov	al, byte ptr [rbp - 0x161]
	test	al, 1
	nop	
	jne	.label_1236
	mov	rsp, rsp
	jmp	.label_1215
.label_1236:
	mov	rbp, rbp
	jmp	.label_1219
.label_1219:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1224
.label_1215:
	jmp	.label_1230
.label_1230:
	jmp	.label_1232
.label_1232:
	mov	rdi, qword ptr [rbp - 0x120]
	nop	
	call	free
	jmp	.label_1261
.label_1255:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1246
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1246
	cmp	dword ptr [rbp - 0x14], 2
	je	.label_1246
	mov	dword ptr [rbp - 0x5c], 0x14
	lea	rdi, [rdi]
	jmp	.label_1238
.label_1246:
	mov	rbp, rbp
	jmp	.label_1261
.label_1261:
	jmp	.label_1214
.label_1214:
	lea	rdi, [rdi]
	jmp	.label_1223
.label_1223:
	mov	rbp, rbp
	jmp	.label_1263
.label_1263:
	jmp	.label_1239
.label_1239:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1268
.label_1276:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_1244
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_1244
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1244:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_1248
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_1248:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	je	.label_1245
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	hash_free
.label_1245:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1227
.label_1238:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1259
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_1259:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x168], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_1227:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413300

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x28], 7
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1285
	lea	rdi, [rdi]
	call	xalloc_die
.label_1285:
	jmp	.label_1281
.label_1281:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	call	seen_file
	mov	rsp, rsp
	test	al, 1
	jne	.label_1283
	jmp	.label_1282
.label_1283:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1284
.label_1282:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	record_file
	nop	
	mov	byte ptr [rbp - 1], 0
.label_1284:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413410
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
	#Procedure 0x413440
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
	#Procedure 0x413470

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
	je	.label_1287
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1290
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_1287
.label_1290:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_6
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1289
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1288
.label_1289:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_1288:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_1287:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_1286
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1286:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4135a0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1291
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_1294
.label_1291:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	nop	
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1294:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1296:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_1295
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_1292
	jmp	.label_1295
.label_1292:
	jmp	.label_1293
.label_1293:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1296
.label_1295:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413690

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	rsp, rsp
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1298
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	lea	rdi, [rdi]
	jmp	.label_1298
.label_1298:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
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
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1300
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_1297
.label_1300:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
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
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_1299:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
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
	#Procedure 0x4137b0

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_1307:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_1304
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1307
.label_1304:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_1306:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1301
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_1305
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_1303
.label_1305:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_1302
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_1302:
	jmp	.label_1303
.label_1303:
	jmp	.label_1308
.label_1308:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1306
.label_1301:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413880

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
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
	mov	byte ptr [rbp - 0x19], cl
	mov	rsp, rsp
	jae	.label_1309
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], sil
.label_1309:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
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
	#Procedure 0x413940

	.globl file_has_acl
	.type file_has_acl, @function
file_has_acl:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413960

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1314
	jmp	.label_1316
.label_1314:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1315
	mov	rbp, rbp
	call	xalloc_die
.label_1315:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
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
	#Procedure 0x413a40

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1317
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1318
.label_1317:
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 1], dl
.label_1318:
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x413ae0

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	lea	rdi, [rdi]
	mov	edx, 0x72
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	nop	
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	edx, 0x80
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	cmovne	edi, ecx
	mov	al, dil
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1320
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	edx, 0x40
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1322
.label_1320:
	lea	rsi, [rsi]
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_1322:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	lea	rsi, [rsi]
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_1321
	mov	eax, 0x53
	mov	rsp, rsp
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_1324
.label_1321:
	nop	
	mov	eax, 0x2d
	mov	rsp, rsp
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	and	edx, 8
	lea	rsi, [rsi]
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_1324:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	dil, cl
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
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
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_1323
.label_1319:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_1323:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xb], 0
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413d80

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	lea	rdi, [rdi]
	cmp	edi, 0x8000
	jne	.label_1325
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_1326
.label_1325:
	mov	eax, dword ptr [rbp - 8]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_1328
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0x64
	nop	
	jmp	.label_1326
.label_1328:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1331
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0x62
	nop	
	jmp	.label_1326
.label_1331:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1330
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_1326
.label_1330:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0xa000
	nop	
	jne	.label_1329
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_1326
.label_1329:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	nop	
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	jne	.label_1332
	mov	byte ptr [rbp - 1], 0x70
	mov	rbp, rbp
	jmp	.label_1326
.label_1332:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	jne	.label_1327
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0x73
	lea	rsi, [rsi]
	jmp	.label_1326
.label_1327:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0x3f
.label_1326:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413ea0

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	cmp	edi, 0
	je	.label_1337
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_1334
.label_1337:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1335
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x51
	jmp	.label_1333
.label_1335:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1336
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x53
	jmp	.label_1338
.label_1336:
	lea	rsi, [rsi]
	jmp	.label_1338
.label_1338:
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
	#Procedure 0x413f80

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
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	mfile_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jne	.label_1339
	lea	rsi, [rsi]
	call	xalloc_die
.label_1339:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413ff0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1345
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x41], 0x2f
.label_1343:
	jmp	.label_1341
.label_1345:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1342
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41], 0x2e
.label_1342:
	jmp	.label_1341
.label_1341:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rbp - 0x41]
	nop	
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1346
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1340
.label_1346:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	cl, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x41]
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
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1344
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
.label_1344:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1340:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4141d0

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcmp
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_1364
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1347
.label_1364:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	jne	.label_1349
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1347
.label_1349:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	jne	.label_1353
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1347
.label_1353:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:.str_1
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x54]
	cmp	ecx, eax
	jne	.label_1362
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1347
.label_1362:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str_1
	mov	edi, ecx
	mov	dword ptr [rbp - 0x58], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rbp, rbp
	jne	.label_1351
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1347
.label_1351:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	call	strcmp
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, eax
	mov	rsp, rsp
	jne	.label_1357
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1347
.label_1357:
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	dword ptr [rbp - 0x60], eax
	call	strcmp
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x60]
	cmp	ecx, eax
	jne	.label_1359
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1347
.label_1359:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1348
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	je	.label_1348
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1347
.label_1348:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	je	.label_1361
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	jne	.label_1361
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_1347
.label_1361:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	mov	rsp, rsp
	jne	.label_1352
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1352
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1352:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	call	match_suffix
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	call	match_suffix
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1363
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	jmp	.label_1356
.label_1363:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x68], rax
.label_1356:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1358
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1365
.label_1358:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
.label_1365:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_1350
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1354
.label_1350:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1354
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rsp, rsp
	jne	.label_1354
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_1354:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	verrevcmp
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	jne	.label_1355
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	nop	
	jmp	.label_1360
.label_1355:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x74], eax
.label_1360:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_1347:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414580

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
.label_1374:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_1373
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	je	.label_1371
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_1366
	mov	rsp, rsp
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1366
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
.label_1366:
	lea	rdi, [rdi]
	jmp	.label_1368
.label_1371:
	lea	rsi, [rsi]
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	mov	rsp, rsp
	jne	.label_1369
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1372
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1372:
	lea	rdi, [rdi]
	jmp	.label_1367
.label_1369:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	c_isalnum
	test	al, 1
	mov	rbp, rbp
	jne	.label_1370
	lea	rsi, [rsi]
	mov	eax, 0x7e
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1370
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
.label_1370:
	nop	
	jmp	.label_1367
.label_1367:
	jmp	.label_1368
.label_1368:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	jmp	.label_1374
.label_1373:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4146e0

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
.label_1396:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45], al
	jb	.label_1377
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x45], cl
.label_1377:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x45]
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_1391
	jmp	.label_1395
.label_1391:
	mov	dword ptr [rbp - 0x3c], 0
.label_1384:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1375
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	mov	rbp, rbp
	call	c_isdigit
	mov	rbp, rbp
	mov	dl, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x46], dl
	jne	.label_1375
	jmp	.label_1383
.label_1375:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x47], cl
	jae	.label_1385
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	nop	
	call	c_isdigit
	xor	al, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x47], al
.label_1385:
	mov	al, byte ptr [rbp - 0x47]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x46], al
.label_1383:
	mov	al, byte ptr [rbp - 0x46]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1400
	jmp	.label_1403
.label_1400:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1388
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1376
.label_1388:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x4c], eax
.label_1376:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_1387
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_1392
.label_1387:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x50], eax
.label_1392:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_1402
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1382
.label_1402:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1384
.label_1403:
	jmp	.label_1389
.label_1389:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x30
	jne	.label_1390
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1389
.label_1390:
	lea	rsi, [rsi]
	jmp	.label_1379
.label_1379:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x30
	jne	.label_1404
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1379
.label_1404:
	jmp	.label_1386
.label_1386:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	rsp, rsp
	mov	dl, dil
	test	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], dl
	lea	rsi, [rsi]
	jne	.label_1393
	nop	
	jmp	.label_1399
.label_1393:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_1399:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1405
	mov	rbp, rbp
	jmp	.label_1378
.label_1405:
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jne	.label_1380
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	esi, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	sub	edx, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], edx
.label_1380:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1386
.label_1378:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	rsp, rsp
	test	al, 1
	jne	.label_1381
	nop	
	jmp	.label_1397
.label_1381:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1382
.label_1397:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1401
	nop	
	jmp	.label_1394
.label_1401:
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1382
.label_1394:
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	je	.label_1398
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1382
.label_1398:
	mov	rbp, rbp
	jmp	.label_1396
.label_1395:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_1382:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x414aa0

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
	jne	.label_1411
	jmp	.label_1406
.label_1411:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1409
.label_1406:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 5]
	mov	rbp, rbp
	call	c_isalpha
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_1407
	jmp	.label_1410
.label_1407:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1409
.label_1410:
	movzx	eax, byte ptr [rbp - 5]
	mov	rsp, rsp
	cmp	eax, 0x7e
	jne	.label_1408
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1409
.label_1408:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_1409:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414b50

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
	#Procedure 0x414b90
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
	lea	rdi, [rbp - 0x20]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414be0

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
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_1413
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1414
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1412
.label_1414:
	mov	byte ptr [rbp - 5], 0
.label_1412:
	jmp	.label_1413
.label_1413:
	mov	al, byte ptr [rbp - 5]
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
	#Procedure 0x414c80

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
	#Procedure 0x414ca0

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
	#Procedure 0x414cc0

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
	#Procedure 0x414ce0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1420:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_1415
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1417
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_1421:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1416
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1421
.label_1416:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_1418
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1418:
	jmp	.label_1417
.label_1417:
	mov	rbp, rbp
	jmp	.label_1419
.label_1419:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1420
.label_1415:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414dc0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
.label_1422:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1427
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1426
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1423:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1424
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1423
.label_1424:
	jmp	.label_1426
.label_1426:
	jmp	.label_1429
.label_1429:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1422
.label_1427:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_1428
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1428
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1425
.label_1428:
	mov	byte ptr [rbp - 1], 0
.label_1425:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ef0
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
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
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.1_3
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
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
	movq	xmm0, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x415070

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1439
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1438
.label_1439:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1437:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1435
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1433
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1433
	mov	rsp, rsp
	jmp	.label_1436
.label_1433:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1438
.label_1436:
	nop	
	jmp	.label_1434
.label_1434:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1437
.label_1435:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1438:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415160

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rcx, qword ptr [rbp - 0x18]
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
	#Procedure 0x4151f0
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
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1445
.label_1441:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1444:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_1442
	lea	rsi, [rsi]
	call	abort
.label_1442:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1447
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1445
.label_1447:
	jmp	.label_1446
.label_1446:
	nop	
	jmp	.label_1443
.label_1443:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1444
.label_1445:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4152b0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1451:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1449
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1449
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1453
.label_1449:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_1451
	jmp	.label_1448
.label_1448:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1452
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1450
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1453
.label_1450:
	jmp	.label_1448
.label_1452:
	mov	qword ptr [rbp - 8], 0
.label_1453:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4153b0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1461:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1454
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1456
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_1455:
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_1460
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1457
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1459
.label_1457:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1455
.label_1460:
	lea	rsi, [rsi]
	jmp	.label_1456
.label_1456:
	jmp	.label_1458
.label_1458:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1461
.label_1454:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1459:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4154c0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1467:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1466
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1463
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_1465:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1469
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1464
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1468
.label_1464:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1465
.label_1469:
	mov	rbp, rbp
	jmp	.label_1463
.label_1463:
	nop	
	jmp	.label_1462
.label_1462:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1467
.label_1466:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1468:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4155d0
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
	#Procedure 0x415640
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
	#Procedure 0x415690

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1477
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1477:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1478
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1478:
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
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1479
.label_1476:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1481
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1481:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1480
	jmp	.label_1474
.label_1480:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1475
	mov	rsp, rsp
	jmp	.label_1474
.label_1475:
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
	jmp	.label_1474
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
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1479
.label_1474:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_1479:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4158b0

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
	#Procedure 0x415900

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
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
	#Procedure 0x415930

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
	jne	.label_1486
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1483
.label_1486:
	movss	xmm0,  dword ptr [dword ptr [label_1484]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1485
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1487]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1485
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1487]]
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
	movss	xmm0,  dword ptr [dword ptr [label_1487]]
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
	jmp	.label_1483
.label_1485:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1483:
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
	#Procedure 0x415aa0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_1488
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1489]]
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x28], xmm1
	mov	rbp, rbp
	js	.label_1490
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1490:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_1494
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1492
.label_1494:
	nop	
	movss	xmm0, dword ptr [rbp - 0x1c]
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
	mov	qword ptr [rbp - 0x10], rax
.label_1488:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1491
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1492
.label_1491:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1492:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415c10
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1501:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1500
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1497
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1496:
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_1495
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1502
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1502:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1496
.label_1495:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1499
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1499:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1497:
	jmp	.label_1498
.label_1498:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1501
.label_1500:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415d80

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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1503
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1503
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1506:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1511
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1514
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1508:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1504
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1508
.label_1504:
	jmp	.label_1514
.label_1514:
	jmp	.label_1507
.label_1507:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1506
.label_1511:
	jmp	.label_1503
.label_1503:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1516:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1515
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1513:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_1509
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1513
.label_1509:
	jmp	.label_1512
.label_1512:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1516
.label_1515:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_1510:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1505
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1510
.label_1505:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415f70

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	jne	.label_1523
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1522
.label_1523:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1517
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1522
.label_1517:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
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
	jne	.label_1519
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1522
.label_1519:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_1518
	lea	rsi, [rsi]
	jmp	.label_1521
.label_1518:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1522
.label_1521:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_1524
	mov	rbp, rbp
	jmp	.label_1520
.label_1524:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1525
.label_1520:
	call	abort
.label_1525:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 1], 0
.label_1522:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x416240

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
.label_1529:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1536
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1527
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_1531:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1535
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1532
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1530
.label_1532:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	free_entry
.label_1530:
	mov	rbp, rbp
	jmp	.label_1533
.label_1533:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1531
.label_1535:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_1526
	jmp	.label_1528
.label_1526:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1538
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1534
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_1537
.label_1534:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_1539
.label_1538:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1539:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_1527:
	jmp	.label_1528
.label_1528:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1529
.label_1536:
	mov	byte ptr [rbp - 1], 1
.label_1537:
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x4164d0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1543
	lea	rsi, [rsi]
	call	abort
.label_1543:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1547
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1557
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1557:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1541
.label_1547:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1548
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1548:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
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
	movss	dword ptr [rbp - 0x64], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	mov	rsp, rsp
	js	.label_1540
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x70], xmm0
.label_1540:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1556
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x71], al
	nop	
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	qword ptr [rbp - 0x88], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x8c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1553
	movss	xmm0, dword ptr [rbp - 0x8c]
	nop	
	movss	dword ptr [rbp - 0x90], xmm0
.label_1553:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
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
	movss	dword ptr [rbp - 0x94], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x98], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1554
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1554:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1550
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1552
	nop	
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	nop	
	js	.label_1549
	movss	xmm0, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1549:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	mov	rbp, rbp
	jmp	.label_1545
.label_1552:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xb0], xmm1
	nop	
	movss	dword ptr [rbp - 0xb4], xmm0
	lea	rdi, [rdi]
	js	.label_1542
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1542:
	movss	xmm0, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
.label_1545:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1489]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1551
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1541
.label_1551:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x3c]
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
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1546
	call	abort
.label_1546:
	jmp	.label_1550
.label_1550:
	lea	rdi, [rdi]
	jmp	.label_1556
.label_1556:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1558
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_1544
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1541
.label_1544:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1541
.label_1558:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
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
	#Procedure 0x416aa0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1565
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1561
.label_1565:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1559
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_1559
	jmp	.label_1570
.label_1559:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1563
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1567
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_1569
.label_1567:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1569:
	jmp	.label_1563
.label_1563:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1561
.label_1570:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1564:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1566
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1562
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1562
	lea	rsi, [rsi]
	jmp	.label_1571
.label_1562:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1560
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	free_entry
.label_1560:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1561
.label_1571:
	mov	rbp, rbp
	jmp	.label_1568
.label_1568:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1564
.label_1566:
	mov	qword ptr [rbp - 8], 0
.label_1561:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x416ce0

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
	#Procedure 0x416d60

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], -1
	lea	rdi, [rdi]
	jne	.label_1576
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	jmp	.label_1574
.label_1576:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_1577
	nop	
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	qword ptr [rbp - 0x28], rax
.label_1574:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416e00

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1589
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1579
.label_1589:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1583
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_1590
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1590:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
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
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x70], xmm2
	lea	rsi, [rsi]
	js	.label_1587
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1587:
	movss	xmm0, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1585
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x71], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	nop	
	js	.label_1580
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1580:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
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
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1593
	movss	xmm0, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1593:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1582
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1591
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xa4], xmm1
	nop	
	movss	dword ptr [rbp - 0xa8], xmm0
	lea	rsi, [rsi]
	js	.label_1592
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1592:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1588
.label_1591:
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1584
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1584:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xac], xmm0
.label_1588:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
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
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_1578
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1581:
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1586
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1581
.label_1586:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1578:
	lea	rsi, [rsi]
	jmp	.label_1582
.label_1582:
	jmp	.label_1585
.label_1585:
	nop	
	jmp	.label_1583
.label_1583:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1579:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4172d0

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1594
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0xa
.label_1594:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1598:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	je	.label_1596
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
.label_1596:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1597
	jmp	.label_1595
.label_1597:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1598
.label_1595:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417380

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1600:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	jae	.label_1599
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], sil
.label_1599:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1602
	jmp	.label_1601
.label_1602:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1600
.label_1601:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
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
	#Procedure 0x417480

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
	#Procedure 0x4174d0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
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
	#Procedure 0x417540
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	nop
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, rdx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x417580
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
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1603
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1603
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
.label_1603:
	mov	al, byte ptr [rbp - 0x21]
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
	#Procedure 0x417640

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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
	lea	rsi, [rsi]
	jne	.label_1604
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	lea	rdi, [rdi]
	jne	.label_1604
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1604:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
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
	#Procedure 0x417720

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
	#Procedure 0x417770

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:.str
	movabs	r9, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 3
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x20
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x30], r10d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], 0xffffffff
	mov	dword ptr [rbp - 0x44], 8
	mov	qword ptr [rbp - 0x70], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rax
	call	localeconv
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0x148], rcx
	call	strlen
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x98]
	nop	
	jae	.label_1619
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_1619
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_1619:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	mov	rsp, rsp
	ja	.label_1618
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_1618:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	lea	rdi, [rdi]
	add	rax, -1
	lea	rsi, [rsi]
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	ja	.label_1648
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_1609
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_1653
	mov	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_1630
.label_1653:
	mov	rbp, rbp
	jmp	.label_1609
.label_1609:
	mov	rsp, rsp
	jmp	.label_1634
.label_1648:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_1636
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_1636
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	imul	rdx, rdx, 0xa
	nop	
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rax, rdx
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	shl	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_1646
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0xb8]
	nop	
	setb	dl
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], eax
	lea	rsi, [rsi]
	jmp	.label_1633
.label_1646:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_1633:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	jmp	.label_1630
.label_1636:
	lea	rdi, [rdi]
	jmp	.label_1634
.label_1634:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1654]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x130]
	faddp	st(1)
	lea	rsi, [rsi]
	fld	st(0)
	fstp	xword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x120], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	nop	
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1654]]
	fild	qword ptr [rbp - 0x120]
	mov	rbp, rbp
	faddp	st(1)
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1654]]
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	nop	
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	edx, 0x10
	cmp	edx, 0
	nop	
	jne	.label_1655
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rcx, rsp
	mov	rsp, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
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
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	al, r8b
	mov	qword ptr [rbp - 0x160], rcx
	call	sprintf
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x164], eax
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
	jmp	.label_1615
.label_1655:
	nop	
	fld1	
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_1620:
	mov	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rcx
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x138]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x100]
	mov	rbp, rbp
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	nop	
	fild	qword ptr [rbp - 0x140]
	fmulp	st(1)
	mov	rbp, rbp
	fld	xword ptr [rbp - 0xe0]
	mov	rsp, rsp
	xor	eax, eax
	mov	dl, al
	mov	rsp, rsp
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	byte ptr [rbp - 0x165], dl
	jb	.label_1627
	jmp	.label_1652
.label_1652:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	setl	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x165], cl
.label_1627:
	mov	al, byte ptr [rbp - 0x165]
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1620
	fld	xword ptr [rbp - 0x100]
	fld	xword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	fdivrp	st(1)
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rdi
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
	mov	rdi, qword ptr [rbp - 0x170]
	mov	al, r8b
	mov	qword ptr [rbp - 0x178], rcx
	mov	rbp, rbp
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x17c], eax
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0x14]
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
	cmp	rax, qword ptr [rbp - 0xe8]
	jb	.label_1637
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1624
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1624
.label_1637:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_2
	nop	
	mov	ecx, 0xa
	mov	rbp, rbp
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_1617]]
	mov	rbp, rbp
	fmul	st(1), st(0)
	mov	rsp, rsp
	mov	rsi, rsp
	lea	rsi, [rsi]
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x188], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x190], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x198], rdx
	fstp	xword ptr [rbp - 0x1a4]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x1a4]
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
	mov	rdi, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	al, r8b
	nop	
	fstp	xword ptr [rbp - 0x1b0]
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], 0
.label_1624:
	jmp	.label_1615
.label_1615:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x1c0], rcx
	nop	
	call	memmove
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	add	rcx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	jmp	.label_1613
.label_1630:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1629
	mov	dword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_1635
	nop	
	jmp	.label_1640
.label_1640:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1c8], rdx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1c8]
	div	rsi
	imul	rdx, rdx, 0xa
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	rdx, rdi
	mov	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x104], ecx
	mov	ecx, dword ptr [rbp - 0x104]
	mov	eax, ecx
	xor	edx, edx
	mov	rbp, rbp
	div	dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	edx, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	sar	ecx, 1
	lea	rsi, [rsi]
	add	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x108], edx
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, r8
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	div	rdi
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	eax, dword ptr [rbp - 0x104]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x108]
	cmp	eax, dword ptr [rbp - 0x30]
	nop	
	jae	.label_1642
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0x1cc], eax
	jmp	.label_1628
.label_1642:
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
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
	mov	dword ptr [rbp - 0x1cc], eax
.label_1628:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1cd], cl
	mov	rsp, rsp
	ja	.label_1644
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1cd], cl
.label_1644:
	mov	al, byte ptr [rbp - 0x1cd]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1640
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_1621
	cmp	dword ptr [rbp - 0x2c], 1
	lea	rsi, [rsi]
	jne	.label_1612
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	and	edx, 1
	nop	
	add	ecx, edx
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_1616
	mov	rbp, rbp
	jmp	.label_1625
.label_1612:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_1625
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_1625
.label_1616:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	nop	
	cmp	dword ptr [rbp - 0x3c], 0xa
	lea	rdi, [rdi]
	jne	.label_1650
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], 0
.label_1650:
	lea	rdi, [rdi]
	jmp	.label_1625
.label_1625:
	nop	
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_1647
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jne	.label_1645
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 8
	cmp	eax, 0
	jne	.label_1647
.label_1645:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x30
	mov	dl, al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dl
	nop	
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	sub	rcx, rsi
	nop	
	add	rdi, rcx
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rbp - 0x64], 0
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_1647:
	jmp	.label_1621
.label_1621:
	jmp	.label_1635
.label_1635:
	jmp	.label_1629
.label_1629:
	nop	
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_1623
	lea	rsi, [rsi]
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	movsxd	rsi, dword ptr [rbp - 0x64]
	mov	rdi, qword ptr [rbp - 0x38]
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
	jl	.label_1626
	lea	rsi, [rsi]
	jmp	.label_1638
.label_1623:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_1638
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	nop	
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_1638
.label_1626:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	ecx, 0x10
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_1606
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_1606
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_1606
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1611
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
.label_1611:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 1
.label_1606:
	jmp	.label_1638
.label_1638:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_1641:
	mov	rsp, rsp
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	nop	
	mov	esi, edx
	mov	dword ptr [rbp - 0x10c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x10c]
	lea	rsi, [rsi]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	xor	edx, edx
	div	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_1641
	lea	rdi, [rdi]
	jmp	.label_1613
.label_1613:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1614
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_1614:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	eax, 0x80
	nop	
	cmp	eax, 0
	je	.label_1607
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_1632
	nop	
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_1651:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1639
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	jne	.label_1643
	lea	rsi, [rsi]
	jmp	.label_1639
.label_1643:
	jmp	.label_1608
.label_1608:
	mov	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_1651
.label_1639:
	lea	rsi, [rsi]
	jmp	.label_1632
.label_1632:
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	ecx, 0x100
	lea	rsi, [rsi]
	or	eax, ecx
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1605
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1605
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_1605:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1622
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1610
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	jne	.label_1610
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1d4], eax
	lea	rdi, [rdi]
	jmp	.label_1656
.label_1610:
	movsxd	rax, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	nop	
	mov	dword ptr [rbp - 0x1d4], ecx
.label_1656:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_1622:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 0x100
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1631
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1649
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1649
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_1649:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x42
.label_1631:
	jmp	.label_1607
.label_1607:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x418650

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
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	je	.label_1657
	nop	
	fld	xword ptr [rbp - 0x20]
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
	fld	xword ptr [rbp - 0x20]
	mov	rbp, rbp
	fld	dword ptr [dword ptr [rip + label_1493]]
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	fnstcw	word ptr [rbp - 0x4a]
	mov	dx, word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], 0xc7f
	fldcw	word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], dx
	fistp	qword ptr [rbp - 0x30]
	fldcw	word ptr [rbp - 0x4a]
	mov	rbp, rbp
	fnstcw	word ptr [rbp - 0x4c]
	nop	
	mov	dx, word ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	word ptr [rbp - 0x4c], 0xc7f
	lea	rdi, [rdi]
	fldcw	word ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	word ptr [rbp - 0x4c], dx
	fld	st(1)
	mov	rbp, rbp
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rbp - 0x59], cl
	nop	
	jne	.label_1659
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	nop	
	movzx	edx, cl
	mov	eax, edx
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1654]]
	nop	
	fild	qword ptr [rbp - 0x40]
	faddp	st(1)
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x20]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	rsp, rsp
	setp	cl
	lea	rdi, [rdi]
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x59], sil
.label_1659:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	setns	al
	mov	rsp, rsp
	movzx	ecx, al
	mov	edx, ecx
	nop	
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_1654]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x20]
.label_1657:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4187e0

	.globl group_number
	.type group_number, @function
group_number:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x90
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1666:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_1661
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	lea	rdi, [rdi]
	jge	.label_1665
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	jmp	.label_1662
.label_1665:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_1662:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1661:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_1664
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_1664:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x70]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jne	.label_1663
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1663:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcpy
	nop	
	jmp	.label_1666
	.section	.text
	.align	32
	#Procedure 0x4189a0

	.globl human_options
	.type human_options, @function
human_options:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	humblock
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rdx], 0
	jne	.label_1667
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
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
	#Procedure 0x418a20

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	dword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_1669
	movabs	rdi, OFFSET FLAT:.str.4
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1669
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	rax, 0
	jne	.label_1669
	lea	rdi, [rdi]
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1677
.label_1669:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x27
	mov	rbp, rbp
	jne	.label_1681
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_1681:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	argmatch
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], r9d
	nop	
	cmp	r8d, r9d
	lea	rdi, [rdi]
	jg	.label_1672
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 1
	lea	rsi, [rsi]
	jmp	.label_1674
.label_1672:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1683
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	nop	
	jmp	.label_1673
.label_1683:
	jmp	.label_1675
.label_1675:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_1680
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	setle	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x35], dl
.label_1680:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_1679
	lea	rdi, [rdi]
	jmp	.label_1671
.label_1679:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jne	.label_1668
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	or	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	jne	.label_1670
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
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
	jne	.label_1678
.label_1676:
	nop	
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	or	eax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
.label_1678:
	jmp	.label_1671
.label_1668:
	mov	rsp, rsp
	jmp	.label_1682
.label_1682:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1675
.label_1671:
	jmp	.label_1674
.label_1674:
	jmp	.label_1677
.label_1677:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_1673:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ce0

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
	#Procedure 0x418d20

	.globl getuser
	.type getuser, @function
getuser:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
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
	cmp	ecx, dword ptr [rbp - 4]
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
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	getpwuid
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1686
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1687
.label_1686:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1687
.label_1687:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	ecx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 0x38], rax
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
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_1685
.label_1690:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	jmp	.label_1685
.label_1685:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ed0
	.globl getuidbyname
	.type getuidbyname, @function
getuidbyname:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [user_alist]]
	mov	qword ptr [rbp - 0x18], rdi
.label_1697:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1700
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1702
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	jne	.label_1702
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1693
.label_1702:
	lea	rsi, [rsi]
	jmp	.label_1696
.label_1696:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1697
.label_1700:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1701:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1694
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_1695
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1695
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_1693
.label_1695:
	lea	rdi, [rdi]
	jmp	.label_1699
.label_1699:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1701
.label_1694:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	getpwnam
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff8
	mov	rbp, rbp
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strcpy
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1698
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [user_alist]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [user_alist]],  rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1693
.label_1698:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [word ptr [nouser_alist]],  rax
	mov	qword ptr [rbp - 8], 0
.label_1693:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419100

	.globl getgroup
	.type getgroup, @function
getgroup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [group_alist]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1704:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1703
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 4]
	jne	.label_1710
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_1703
.label_1710:
	mov	rbp, rbp
	jmp	.label_1711
.label_1711:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_1704
.label_1703:
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1709
	mov	edi, dword ptr [rbp - 4]
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
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1706
.label_1705:
	movabs	rax, OFFSET FLAT:.str
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1706
.label_1706:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	strcpy
	nop	
	mov	rsi,  qword ptr [word ptr [group_alist]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [word ptr [group_alist]],  rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_1709:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	cmp	ecx, 0
	je	.label_1707
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1708
.label_1707:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1708
.label_1708:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4192a0
	.globl getgidbyname
	.type getgidbyname, @function
getgidbyname:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [group_alist]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
.label_1718:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1721
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	edx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_1712
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1712
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1713
.label_1712:
	jmp	.label_1716
.label_1716:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1718
.label_1721:
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1719:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1714
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1715
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1715
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1713
.label_1715:
	nop	
	jmp	.label_1717
.label_1717:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_1719
.label_1714:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	getgrnam
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcpy
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	je	.label_1720
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [group_alist]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [group_alist]],  rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1713
.label_1720:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [nogroup_alist]],  rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_1713:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4194b0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
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
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1725
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
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
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1724
	jmp	.label_1723
.label_1723:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419600

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_1726
	jmp	.label_1729
.label_1729:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1729
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1728
.label_1726:
	jmp	.label_1727
.label_1727:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	nop	
	jne	.label_1727
	jmp	.label_1728
.label_1728:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419740

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0xd0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	nop	
	mov	dword ptr [rbp - 0x28], r9d
	mov	qword ptr [rbp - 0x30], -1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x6a], 0
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x28]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_1732
	nop	
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	lea	rsi, [rsi]
	jbe	.label_1732
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	nop	
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_1741
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1744
	nop	
	jmp	.label_1735
.label_1744:
	jmp	.label_1745
.label_1741:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	shl	rax, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1756
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1733
	jmp	.label_1735
.label_1733:
	mov	rbp, rbp
	jmp	.label_1745
.label_1756:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x78]
	call	mbstowcs
	cmp	rax, 0
	je	.label_1746
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x6a], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	wc_ensure_printable
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x69], al
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	call	wcswidth
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
.label_1746:
	nop	
	jmp	.label_1732
.label_1732:
	test	byte ptr [rbp - 0x6a], 1
	je	.label_1736
	mov	rsp, rsp
	test	byte ptr [rbp - 0x69], 1
	jne	.label_1740
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_1736
.label_1740:
	test	byte ptr [rbp - 0x69], 1
	je	.label_1749
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	call	wcstombs
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_1749:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jne	.label_1730
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1738
	lea	rdi, [rdi]
	jmp	.label_1735
.label_1738:
	jmp	.label_1745
.label_1730:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	wc_truncate
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	call	wcstombs
	mov	qword ptr [rbp - 0x60], rax
.label_1736:
	lea	rsi, [rsi]
	jmp	.label_1735
.label_1735:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jbe	.label_1734
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_1734:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_1748
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
.label_1748:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	test	edx, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	je	.label_1755
	jmp	.label_1739
.label_1739:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	mov	rbp, rbp
	je	.label_1742
	lea	rsi, [rsi]
	jmp	.label_1747
.label_1747:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 2
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1750
	lea	rsi, [rsi]
	jmp	.label_1752
.label_1755:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1731
.label_1742:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_1731
.label_1750:
	jmp	.label_1752
.label_1752:
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	shr	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_1731:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1743
	nop	
	mov	qword ptr [rbp - 0x80], 0
.label_1743:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	and	eax, 8
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1754
	mov	qword ptr [rbp - 0x88], 0
.label_1754:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1753
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	jae	.label_1751
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1737
.label_1751:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1737:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	mbs_align_pad
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
.label_1753:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	add	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	rcx, 0
	nop	
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1745:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ce0

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
.label_1757:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_1758
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax]
	call	iswprint
	nop	
	cmp	eax, 0
	jne	.label_1759
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xfffd
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], 1
.label_1759:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 4
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1757
.label_1758:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
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
	#Procedure 0x419d80

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 0
.label_1762:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1761
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	wcwidth
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_1760
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xfffd
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 1
.label_1760:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_1763
	jmp	.label_1761
.label_1763:
	movsxd	rax, dword ptr [rbp - 0x1c]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1762
.label_1761:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e60

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1765:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, -1
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x19], cl
	nop	
	je	.label_1766
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], cl
.label_1766:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
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
	#Procedure 0x419f00
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
.label_1770:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jb	.label_1769
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1771
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbp - 0x38], 0
	nop	
	jmp	.label_1769
.label_1771:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x18]
	call	mbsalign
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_1768
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1769
.label_1768:
	mov	rbp, rbp
	jmp	.label_1770
.label_1769:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a050

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
	#Procedure 0x41a0a0

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1795
	jmp	.label_1792
.label_1792:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_1797
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	mov	rbp, rbp
	ja	.label_1802
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1783]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2866:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1788
.label_1802:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
.label_1785:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x44]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	lea	rdi, [rdi]
	jne	.label_1782
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1787
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	jmp	.label_1778
.label_1787:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1776
.label_1782:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1799
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1772
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1778
.label_1772:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1776
.label_1799:
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_1780
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
.label_1780:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	lea	rdi, [rdi]
	jl	.label_1796
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	sub	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jle	.label_1800
	jmp	.label_1777
.label_1800:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	jmp	.label_1775
.label_1796:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1784
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1790
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	lea	rsi, [rsi]
	jne	.label_1793
	jmp	.label_1777
.label_1793:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1790:
	mov	rsp, rsp
	jmp	.label_1779
.label_1784:
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	nop	
	jmp	.label_1776
.label_1779:
	jmp	.label_1775
.label_1775:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	call	mbsinit
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1785
.label_1778:
	mov	rsp, rsp
	jmp	.label_1788
.label_1788:
	jmp	.label_1792
.label_1797:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1776
.label_1795:
	jmp	.label_1774
.label_1774:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1801
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 0x55]
	nop	
	movsxd	rax, esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_1786
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1794
	jmp	.label_1777
.label_1794:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_1773
.label_1786:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	and	eax, 2
	cmp	eax, 0
	jne	.label_1791
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 2
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1781
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1789
	mov	rsp, rsp
	jmp	.label_1777
.label_1789:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
.label_1781:
	jmp	.label_1798
.label_1791:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1776
.label_1798:
	jmp	.label_1773
.label_1773:
	lea	rdi, [rdi]
	jmp	.label_1774
.label_1801:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1776
.label_1777:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1776:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a4c0

	.globl mpsort
	.type mpsort, @function
mpsort:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 3
	mov	rsp, rsp
	add	rdx, rax
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	call	mpsort_with_tmp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a520

	.globl mpsort_with_tmp
	.type mpsort_with_tmp, @function
mpsort_with_tmp:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 2
	ja	.label_1811
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 2
	jne	.label_1805
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	rax
	cmp	eax, 0
	lea	rsi, [rsi]
	jle	.label_1808
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
.label_1808:
	mov	rbp, rbp
	jmp	.label_1805
.label_1805:
	jmp	.label_1806
.label_1811:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shr	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	call	mpsort_with_tmp
	cmp	qword ptr [rbp - 0x38], 2
	jae	.label_1814
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	jmp	.label_1810
.label_1814:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	call	mpsort_into_tmp
.label_1810:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x48], 0
.label_1813:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	rax
	cmp	eax, 0
	nop	
	jg	.label_1807
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jne	.label_1803
	jmp	.label_1809
.label_1803:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1812
.label_1807:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	jne	.label_1804
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	shl	rdx, 3
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_1809
.label_1804:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
.label_1812:
	nop	
	jmp	.label_1813
.label_1809:
	jmp	.label_1806
.label_1806:
	mov	rbp, rbp
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a810

	.globl mpsort_into_tmp
	.type mpsort_into_tmp, @function
mpsort_into_tmp:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], 0
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rdx, 3
	mov	rbp, rbp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rdi
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	call	mpsort_with_tmp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	mpsort_with_tmp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x60], rcx
.label_1819:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	rax
	cmp	eax, 0
	mov	rsp, rsp
	jg	.label_1818
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 8
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1820
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1815
.label_1820:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1816
.label_1818:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	jne	.label_1817
	jmp	.label_1815
.label_1817:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
.label_1816:
	lea	rsi, [rsi]
	jmp	.label_1819
.label_1815:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x40]
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
	#Procedure 0x41aa30

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	xor	eax, eax
	nop	
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	lea	r11, [rbp - 0x2d]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	nop	
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x38], r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r9d
	nop	
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r11
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], r10d
	call	__strftime_internal
	lea	rdi, [rdi]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aaf0

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
	sub	rsp, 0x9d8
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x48], r9d
	mov	dword ptr [rbp - 0x4c], ebx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	dword ptr [rbp - 0x64], r8d
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8d, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], r8d
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x70], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rcx
	cmp	qword ptr [rbp - 0x70], 0
	nop	
	jne	.label_1989
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str
	mov	qword ptr [rbp - 0x70], rax
.label_1989:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_2025
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	nop	
	jmp	.label_2026
.label_2025:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_2030
	nop	
	mov	dword ptr [rbp - 0x68], 0xc
.label_2030:
	mov	rbp, rbp
	jmp	.label_2026
.label_2026:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
.label_1980:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_2045
	nop	
	mov	dword ptr [rbp - 0x8c], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe2], al
	nop	
	mov	byte ptr [rbp - 0xf1], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	cmp	edx, 0x25
	nop	
	je	.label_2048
	lea	rsi, [rsi]
	jmp	.label_2065
.label_2065:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2067
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_2075
.label_2067:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_2075:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jae	.label_2080
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x768], rax
	nop	
	jmp	.label_2087
.label_2080:
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	qword ptr [rbp - 0x768], rax
.label_2087:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2093
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1847
.label_2093:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_2101
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x94], 0
	lea	rsi, [rsi]
	jne	.label_2103
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	nop	
	jae	.label_2103
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rax
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_2113
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_2122
.label_2113:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2129
.label_2122:
	lea	rsi, [rsi]
	mov	esi, 0x20
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
.label_2129:
	mov	rbp, rbp
	jmp	.label_2103
.label_2103:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	add	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_2101:
	mov	rax, qword ptr [rbp - 0x118]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1858
.label_2048:
	jmp	.label_2150
.label_2150:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	esi, edx
	nop	
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x770], esi
	mov	rsp, rsp
	je	.label_2159
	jmp	.label_2176
.label_2176:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x774], eax
	je	.label_2178
	jmp	.label_2185
.label_2185:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x76c]
	mov	rsp, rsp
	sub	eax, 0x2d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x778], eax
	je	.label_2178
	nop	
	jmp	.label_2191
.label_2191:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x76c]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_2178
	mov	rbp, rbp
	jmp	.label_2198
.label_2198:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	mov	rbp, rbp
	je	.label_2199
	jmp	.label_1963
.label_1963:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_2205
	jmp	.label_2178
.label_2178:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	nop	
	jmp	.label_2150
.label_2199:
	nop	
	mov	byte ptr [rbp - 0xe2], 1
	mov	rbp, rbp
	jmp	.label_2150
.label_2159:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf1], 1
	lea	rdi, [rdi]
	jmp	.label_2150
.label_2205:
	jmp	.label_2082
.label_2082:
	lea	rdi, [rdi]
	jmp	.label_2220
.label_2220:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_1834
	mov	dword ptr [rbp - 0x4c], 0
.label_1824:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	lea	rdi, [rdi]
	jg	.label_2224
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_2229
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_2229
.label_2224:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	nop	
	jmp	.label_2175
.label_2229:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	movsx	eax, byte ptr [rcx]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_2175:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 9
	jbe	.label_1824
	mov	rbp, rbp
	jmp	.label_1834
.label_1834:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_1836
	lea	rsi, [rsi]
	jmp	.label_1842
.label_1842:
	mov	eax, dword ptr [rbp - 0x788]
	nop	
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_1845
	jmp	.label_1836
.label_1836:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	nop	
	movsx	edx, byte ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_1851
.label_1845:
	mov	dword ptr [rbp - 0x90], 0
.label_1851:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf8], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x794], ecx
	je	.label_1862
	lea	rdi, [rdi]
	jmp	.label_1868
.label_1868:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x25
	nop	
	mov	dword ptr [rbp - 0x798], eax
	mov	rsp, rsp
	je	.label_1870
	lea	rdi, [rdi]
	jmp	.label_2148
.label_2148:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x79c], eax
	je	.label_1880
	nop	
	jmp	.label_1886
.label_1886:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x41
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7a0], eax
	nop	
	je	.label_1887
	jmp	.label_1894
.label_1894:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x42
	nop	
	mov	dword ptr [rbp - 0x7a4], eax
	je	.label_1896
	lea	rsi, [rsi]
	jmp	.label_1902
.label_1902:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x7a8], eax
	je	.label_1903
	mov	rbp, rbp
	jmp	.label_1909
.label_1909:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x7ac], eax
	je	.label_1912
	jmp	.label_1914
.label_1914:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x7b0], eax
	je	.label_1918
	lea	rdi, [rdi]
	jmp	.label_1923
.label_1923:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x7b4], eax
	je	.label_1924
	mov	rsp, rsp
	jmp	.label_1930
.label_1930:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0x7b8], eax
	je	.label_2012
	jmp	.label_1937
.label_1937:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x7bc], eax
	lea	rdi, [rdi]
	je	.label_1938
	jmp	.label_1942
.label_1942:
	mov	eax, dword ptr [rbp - 0x794]
	nop	
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c0], eax
	je	.label_1945
	jmp	.label_2102
.label_2102:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x7c4], eax
	je	.label_1950
	jmp	.label_1956
.label_1956:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	nop	
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x7c8], eax
	lea	rsi, [rsi]
	je	.label_1957
	lea	rdi, [rdi]
	jmp	.label_2204
.label_2204:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x52
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7cc], eax
	je	.label_1964
	jmp	.label_1967
.label_1967:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7d0], eax
	mov	rbp, rbp
	je	.label_1968
	jmp	.label_1975
.label_1975:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x54
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7d4], eax
	je	.label_1978
	jmp	.label_1982
.label_1982:
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x55
	nop	
	mov	dword ptr [rbp - 0x7d8], eax
	je	.label_1983
	jmp	.label_1990
.label_1990:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x7dc], eax
	lea	rsi, [rsi]
	je	.label_1924
	jmp	.label_1998
.label_1998:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x57
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7e0], eax
	je	.label_2000
	jmp	.label_2007
.label_2007:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x58
	nop	
	mov	dword ptr [rbp - 0x7e4], eax
	lea	rsi, [rsi]
	je	.label_2015
	jmp	.label_2014
.label_2014:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x7e8], eax
	je	.label_2016
	nop	
	jmp	.label_2019
.label_2019:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x794]
	nop	
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x7ec], eax
	lea	rdi, [rdi]
	je	.label_2020
	mov	rbp, rbp
	jmp	.label_2022
.label_2022:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x7f0], eax
	lea	rdi, [rdi]
	je	.label_2023
	jmp	.label_2027
.label_2027:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7f4], eax
	lea	rdi, [rdi]
	je	.label_2029
	mov	rsp, rsp
	jmp	.label_2034
.label_2034:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x63
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7f8], eax
	je	.label_2037
	lea	rsi, [rsi]
	jmp	.label_2041
.label_2041:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7fc], eax
	je	.label_2044
	jmp	.label_2049
.label_2049:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x65
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x800], eax
	je	.label_2050
	mov	rbp, rbp
	jmp	.label_2056
.label_2056:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x804], eax
	je	.label_1924
	mov	rbp, rbp
	jmp	.label_2064
.label_2064:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x808], eax
	je	.label_2029
	lea	rdi, [rdi]
	jmp	.label_2070
.label_2070:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x80c], eax
	lea	rdi, [rdi]
	je	.label_2072
	jmp	.label_2021
.label_2021:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x810], eax
	mov	rbp, rbp
	je	.label_2079
	mov	rsp, rsp
	jmp	.label_2085
.label_2085:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x814], eax
	nop	
	je	.label_2086
	mov	rbp, rbp
	jmp	.label_2166
.label_2166:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x818], eax
	je	.label_2100
	mov	rbp, rbp
	jmp	.label_2006
.label_2006:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x81c], eax
	lea	rsi, [rsi]
	je	.label_2140
	jmp	.label_2098
.label_2098:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x70
	nop	
	mov	dword ptr [rbp - 0x820], eax
	lea	rdi, [rdi]
	je	.label_2099
	jmp	.label_2104
.label_2104:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x824], eax
	je	.label_2106
	lea	rdi, [rdi]
	jmp	.label_2111
.label_2111:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x72
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x828], eax
	mov	rsp, rsp
	je	.label_2112
	jmp	.label_2118
.label_2118:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x82c], eax
	je	.label_2119
	jmp	.label_2124
.label_2124:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x830], eax
	nop	
	je	.label_2125
	jmp	.label_2133
.label_2133:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x834], eax
	mov	rbp, rbp
	je	.label_2134
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x838], eax
	lea	rdi, [rdi]
	je	.label_2141
	jmp	.label_2043
.label_2043:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x83c], eax
	je	.label_1947
	lea	rdi, [rdi]
	jmp	.label_2147
.label_2147:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x840], eax
	lea	rsi, [rsi]
	je	.label_2149
	jmp	.label_1883
.label_1883:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x7a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x844], eax
	je	.label_2155
	jmp	.label_2163
.label_1870:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_2165
	mov	rsp, rsp
	jmp	.label_1823
.label_2165:
	jmp	.label_2172
.label_2172:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2173
	xor	eax, eax
	mov	dword ptr [rbp - 0x848], eax
	lea	rsi, [rsi]
	jmp	.label_2180
.label_2173:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x848], eax
.label_2180:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x848]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	jae	.label_2186
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_2196
.label_2186:
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	qword ptr [rbp - 0x850], rax
.label_2196:
	mov	rax, qword ptr [rbp - 0x850]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2203
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_1847
.label_2203:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2028
	cmp	dword ptr [rbp - 0x94], 0
	lea	rsi, [rsi]
	jne	.label_1828
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	jae	.label_1828
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	nop	
	je	.label_2223
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rsi, [rsi]
	jne	.label_2226
.label_2223:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2236
.label_2226:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2236:
	jmp	.label_1828
.label_1828:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_2028:
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_1835
.label_2023:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1841
	mov	rbp, rbp
	jmp	.label_1823
.label_1841:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1966
	mov	byte ptr [rbp - 0xe2], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 0
.label_1966:
	mov	rsp, rsp
	jmp	.label_1839
.label_1887:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1853
	jmp	.label_1823
.label_1853:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xf1], 1
	je	.label_2040
	mov	byte ptr [rbp - 0xe2], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe1], 0
.label_2040:
	jmp	.label_1839
.label_2029:
	test	byte ptr [rbp - 0xf1], 1
	nop	
	je	.label_1865
	nop	
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1865:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_1872
	nop	
	jmp	.label_1823
.label_1872:
	jmp	.label_1839
.label_1896:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1878
	nop	
	jmp	.label_1823
.label_1878:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1884
	mov	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe1], 0
.label_1884:
	lea	rdi, [rdi]
	jmp	.label_1839
.label_2037:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1893
	jmp	.label_1823
.label_1893:
	lea	rsi, [rsi]
	jmp	.label_1839
.label_1867:
	nop	
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_1879:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, eax
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8b, byte ptr [rbp - 0xe2]
	nop	
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp - 0x64]
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
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1994
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x854], eax
	mov	rsp, rsp
	jmp	.label_1936
.label_1994:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x854], eax
.label_1936:
	mov	eax, dword ptr [rbp - 0x854]
	nop	
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x158]
	nop	
	jae	.label_2069
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x860], rax
	lea	rsi, [rsi]
	jmp	.label_1952
.label_2069:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x860], rax
.label_1952:
	mov	rax, qword ptr [rbp - 0x860]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_1958
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1847
.label_1958:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_1972
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_1976
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	jae	.label_1976
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x168], rax
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1986
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rsi, [rsi]
	jne	.label_1996
.label_1986:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2008
.label_1996:
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2008:
	mov	rsp, rsp
	jmp	.label_1976
.label_1976:
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb0]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x861], sil
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14b, byte ptr [rbp - 0x861]
	mov	rbp, rbp
	movzx	r15d, r14b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x868], r8d
	mov	r8d, r15d
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp - 0x868]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x870], rax
.label_1972:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1835
.label_1839:
	nop	
	lea	rax, [rbp - 0x16d]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x178], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_2061
	nop	
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_2061:
	mov	rbp, rbp
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x16d]
	lea	rdi, [rbp - 0x580]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	r9, r8
	add	r9, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x178]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x40]
	call	strftime
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x588], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x588], 0
	nop	
	je	.label_1875
	lea	rdi, [rdi]
	jmp	.label_2107
.label_2107:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jge	.label_2110
	xor	eax, eax
	mov	dword ptr [rbp - 0x874], eax
	jmp	.label_2115
.label_2110:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x874], eax
.label_2115:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x874]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	lea	rsi, [rsi]
	jae	.label_2120
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x880], rax
	nop	
	jmp	.label_2127
.label_2120:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x880], rax
.label_2127:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x880]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_2136
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1847
.label_2136:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2146
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	nop	
	jne	.label_2145
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x590]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_2145
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2158
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_2170
.label_2158:
	lea	rdi, [rdi]
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2225
.label_2170:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
.label_2225:
	jmp	.label_2145
.label_2145:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_2195
	lea	rax, [rbp - 0x580]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_2206
.label_2195:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_2209
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	nop	
	call	memcpy_uppcase
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x890], rax
	jmp	.label_2215
.label_2209:
	lea	rax, [rbp - 0x580]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	nop	
	mov	rsi, rax
	call	memcpy
.label_2215:
	jmp	.label_2206
.label_2206:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_2146:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1875
.label_1875:
	jmp	.label_1835
.label_1903:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2157
	mov	rbp, rbp
	jmp	.label_1839
.label_2157:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x64
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rdx + 0x14]
	nop	
	mov	dword ptr [rbp - 0x894], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x894]
	idiv	esi
	add	eax, 0x13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x895], cl
	lea	rsi, [rsi]
	jge	.label_2234
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x895], cl
.label_2234:
	mov	al, byte ptr [rbp - 0x895]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ac]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ac], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], cl
	nop	
	mov	edx, dword ptr [rbp - 0x5ac]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], edx
	lea	rdi, [rdi]
	jmp	.label_1826
.label_1947:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1859
	mov	rsp, rsp
	jmp	.label_1823
.label_1859:
	lea	rdi, [rdi]
	jmp	.label_1839
.label_1912:
	cmp	dword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	je	.label_1863
	lea	rsi, [rsi]
	jmp	.label_1823
.label_1863:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1867
.label_2044:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1874
	jmp	.label_1823
.label_1874:
	jmp	.label_2152
.label_2152:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x98], ecx
	lea	rdi, [rdi]
	jmp	.label_1827
.label_2050:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1890
	jmp	.label_1823
.label_1890:
	jmp	.label_1895
.label_1895:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1897
.label_2168:
	mov	byte ptr [rbp - 0x9e], 1
	lea	rsi, [rsi]
	jmp	.label_1906
.label_1826:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1910
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
.label_1910:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x896], cl
	jne	.label_1915
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	mov	rbp, rbp
	cmove	ecx, edx
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x9c]
	nop	
	mov	byte ptr [rbp - 0x897], al
	jb	.label_1922
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	setl	cl
	mov	byte ptr [rbp - 0x897], cl
.label_1922:
	mov	al, byte ptr [rbp - 0x897]
	mov	byte ptr [rbp - 0x896], al
.label_1915:
	mov	al, byte ptr [rbp - 0x896]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], al
	nop	
	jmp	.label_2062
.label_1897:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1946
	nop	
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_1946:
	jmp	.label_1827
.label_1827:
	cmp	dword ptr [rbp - 0x98], 0
	nop	
	setl	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], al
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_1943:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], 0
.label_2062:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], 0
.label_1906:
	nop	
	cmp	dword ptr [rbp - 0x90], 0x4f
	lea	rsi, [rsi]
	jne	.label_1965
	mov	rbp, rbp
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_1965
	lea	rdi, [rdi]
	jmp	.label_1839
.label_1965:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1974
	xor	eax, eax
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_1974:
	jmp	.label_1985
.label_1985:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	je	.label_1987
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_1987:
	nop	
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x89c], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x89c]
	div	ecx
	add	edx, 0x30
	mov	rsp, rsp
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	mov	rsp, rsp
	add	r8, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x9c]
	nop	
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x89d], al
	jne	.label_2002
	cmp	dword ptr [rbp - 0xa4], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x89d], al
.label_2002:
	mov	al, byte ptr [rbp - 0x89d]
	nop	
	test	al, 1
	jne	.label_1985
	nop	
	jmp	.label_2033
.label_2033:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	jge	.label_1844
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_1844:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x9d], 1
	je	.label_2231
	mov	rbp, rbp
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x8a4], eax
	lea	rdi, [rdi]
	jmp	.label_2047
.label_2231:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x2b
	nop	
	mov	dl, byte ptr [rbp - 0x9e]
	mov	rsp, rsp
	test	dl, 1
	cmovne	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8a4], eax
.label_2047:
	nop	
	mov	eax, dword ptr [rbp - 0x8a4]
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2d
	lea	rdi, [rdi]
	jne	.label_2059
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0xb1], 0
	mov	rsp, rsp
	je	.label_1951
	jmp	.label_2068
.label_2068:
	mov	qword ptr [rbp - 0x5b8], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2071
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8a8], eax
	jmp	.label_2017
.label_2071:
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 0x8a8], eax
.label_2017:
	mov	eax, dword ptr [rbp - 0x8a8]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_2084
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x8b0], rax
	lea	rdi, [rdi]
	jmp	.label_2089
.label_2084:
	nop	
	mov	rax, qword ptr [rbp - 0x5b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8b0], rax
.label_2089:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x8b0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2095
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1847
.label_2095:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_1984
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2108
	mov	rax, qword ptr [rbp - 0x5b8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x5c0]
	nop	
	jae	.label_2108
	nop	
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x5b8]
	nop	
	mov	qword ptr [rbp - 0x5d0], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2117
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2123
.label_2117:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rdx
	lea	rsi, [rsi]
	jmp	.label_2130
.label_2123:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5d0]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2130:
	mov	rsp, rsp
	jmp	.label_2108
.label_2108:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5b8]
	nop	
	add	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
.label_1984:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_1951
.label_1951:
	mov	rsp, rsp
	jmp	.label_2142
.label_2059:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	sub	rax, rdx
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
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
	mov	dword ptr [rbp - 0x5d4], edi
	cmp	dword ptr [rbp - 0x5d4], 0
	mov	rbp, rbp
	jle	.label_2161
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x5f
	nop	
	jne	.label_2188
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	nop	
	jb	.label_2193
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_1847
.label_2193:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_2202
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5d4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdx
.label_2202:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x5d4]
	nop	
	jle	.label_2212
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x8b4], eax
	jmp	.label_2219
.label_2212:
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b4], eax
	nop	
	jmp	.label_2219
.label_2219:
	nop	
	mov	eax, dword ptr [rbp - 0x8b4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	nop	
	je	.label_1911
	lea	rdi, [rdi]
	jmp	.label_2228
.label_2228:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e0], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2230
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8b8], eax
	lea	rdi, [rdi]
	jmp	.label_2235
.label_2230:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8b8], eax
.label_2235:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x8b8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	lea	rsi, [rsi]
	jae	.label_2241
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x8c0], rax
	lea	rsi, [rsi]
	jmp	.label_1829
.label_2241:
	nop	
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x8c0], rax
.label_1829:
	mov	rax, qword ptr [rbp - 0x8c0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	nop	
	jb	.label_1838
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_1847
.label_1838:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_2004
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1854
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x5e8]
	mov	rbp, rbp
	jae	.label_1854
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5f8], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	mov	rbp, rbp
	je	.label_1861
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_1892
.label_1861:
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	jmp	.label_1881
.label_1892:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1881:
	mov	rbp, rbp
	jmp	.label_1854
.label_1854:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_2004:
	mov	rax, qword ptr [rbp - 0x5f0]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1911
.label_1911:
	jmp	.label_1920
.label_2188:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1919
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1847
.label_1919:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1927
	nop	
	jmp	.label_1931
.label_1931:
	mov	qword ptr [rbp - 0x600], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rbp, rbp
	jge	.label_2190
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_2039
.label_2190:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8c4], eax
.label_2039:
	mov	eax, dword ptr [rbp - 0x8c4]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	mov	rsp, rsp
	jae	.label_1944
	mov	rax, qword ptr [rbp - 0x608]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8d0], rax
	nop	
	jmp	.label_1954
.label_1944:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x8d0], rax
.label_1954:
	mov	rax, qword ptr [rbp - 0x8d0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1960
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1847
.label_1960:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1973
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1849
	nop	
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_1849
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1981
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1992
.label_1981:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	jmp	.label_2001
.label_1992:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2001:
	jmp	.label_1849
.label_1849:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb1]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
.label_1973:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1927
.label_1927:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	je	.label_2126
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_2126:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
.label_1920:
	jmp	.label_2046
.label_2161:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0xb1], 0
	lea	rsi, [rsi]
	je	.label_1831
	jmp	.label_1852
.label_1852:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x620], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2051
	xor	eax, eax
	mov	dword ptr [rbp - 0x8d4], eax
	jmp	.label_2058
.label_2051:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8d4], eax
.label_2058:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8d4]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	lea	rsi, [rsi]
	jae	.label_1934
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x8e0], rax
	lea	rdi, [rdi]
	jmp	.label_2074
.label_1934:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x620]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8e0], rax
.label_2074:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8e0]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_2083
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1847
.label_2083:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2092
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_2096
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	nop	
	jae	.label_2096
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2183
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_2105
.label_2183:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2114
.label_2105:
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdx
.label_2114:
	nop	
	jmp	.label_2096
.label_2096:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rcx
.label_2092:
	mov	rax, qword ptr [rbp - 0x630]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1831
.label_1831:
	jmp	.label_2046
.label_2046:
	lea	rdi, [rdi]
	jmp	.label_2142
.label_2142:
	mov	rbp, rbp
	jmp	.label_2143
.label_2143:
	lea	rax, [rbp - 0xe0]
	lea	rdi, [rdi]
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_2144
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e4], eax
	lea	rsi, [rsi]
	jmp	.label_2116
.label_2144:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e4], eax
.label_2116:
	mov	eax, dword ptr [rbp - 0x8e4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_2162
	mov	rax, qword ptr [rbp - 0x648]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8f0], rax
	nop	
	jmp	.label_2174
.label_2162:
	mov	rax, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8f0], rax
.label_2174:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_2184
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1847
.label_2184:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_2197
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2200
	mov	rax, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x648]
	mov	rsp, rsp
	jae	.label_2200
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x640]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	nop	
	je	.label_2208
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rsp, rsp
	jne	.label_2214
.label_2208:
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2221
.label_2214:
	nop	
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2221:
	lea	rdi, [rdi]
	jmp	.label_2200
.label_2200:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xe1], 1
	je	.label_2232
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	nop	
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_1840
.label_2232:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe2], 1
	je	.label_2243
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	call	memcpy_uppcase
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x900], rax
	jmp	.label_1833
.label_2243:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_1833:
	jmp	.label_1840
.label_1840:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_2197:
	mov	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1835
.label_1918:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0
	nop	
	je	.label_1850
	jmp	.label_1823
.label_1850:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0
	lea	rdi, [rdi]
	jne	.label_1855
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_1855
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], 4
	nop	
	jmp	.label_1876
.label_1855:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_2097
	mov	dword ptr [rbp - 0xfc], 0
.label_2097:
	jmp	.label_1876
.label_1876:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_3
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1879
.label_2012:
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rsi, [rsi]
	jne	.label_1885
	jmp	.label_1823
.label_1885:
	jmp	.label_1889
.label_1889:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	jmp	.label_1827
.label_1938:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_1899
	nop	
	jmp	.label_1823
.label_1899:
	jmp	.label_1904
.label_1904:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1827
.label_2079:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1913
	lea	rsi, [rsi]
	jmp	.label_1823
.label_1913:
	mov	rbp, rbp
	jmp	.label_1917
.label_1917:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	jmp	.label_1897
.label_2086:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1926
	jmp	.label_1823
.label_1926:
	jmp	.label_2003
.label_2003:
	mov	dword ptr [rbp - 0x94], 2
	nop	
	mov	eax, dword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jmp	.label_1897
.label_2072:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_1939
	jmp	.label_1823
.label_1939:
	jmp	.label_1941
.label_1941:
	mov	dword ptr [rbp - 0x94], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x1c], -1
	lea	rdi, [rdi]
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x1c]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], edx
	mov	rsp, rsp
	jmp	.label_1943
.label_1945:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_2151
	lea	rsi, [rsi]
	jmp	.label_1823
.label_2151:
	jmp	.label_1962
.label_1962:
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	mov	rsp, rsp
	jmp	.label_1827
.label_2100:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1971
	mov	rsp, rsp
	jmp	.label_1823
.label_1971:
	mov	rsp, rsp
	jmp	.label_1977
.label_1977:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	jmp	.label_1943
.label_1950:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1993
	jmp	.label_1823
.label_1993:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_1997
	mov	dword ptr [rbp - 0x4c], 9
	lea	rsi, [rsi]
	jmp	.label_2005
.label_1997:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x65c], eax
.label_2013:
	cmp	dword ptr [rbp - 0x65c], 9
	lea	rdi, [rdi]
	jge	.label_2010
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x904], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x904]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_2013
.label_2010:
	jmp	.label_2005
.label_2005:
	jmp	.label_2024
.label_2024:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1827
.label_2140:
	nop	
	jmp	.label_2031
.label_2031:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jge	.label_2032
	xor	eax, eax
	mov	dword ptr [rbp - 0x908], eax
	jmp	.label_2038
.label_2032:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x908], eax
.label_2038:
	nop	
	mov	eax, dword ptr [rbp - 0x908]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	mov	rbp, rbp
	jae	.label_2182
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x670]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x910], rax
	mov	rbp, rbp
	jmp	.label_2054
.label_2182:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x668]
	nop	
	mov	qword ptr [rbp - 0x910], rax
.label_2054:
	mov	rax, qword ptr [rbp - 0x910]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_2063
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1847
.label_2063:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_2078
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2036
	mov	rax, qword ptr [rbp - 0x668]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x670]
	lea	rsi, [rsi]
	jae	.label_2036
	movsxd	rax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x668]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rdi, [rdi]
	je	.label_2088
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_2094
.label_2088:
	mov	esi, 0x30
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rdx
	nop	
	jmp	.label_2189
.label_2094:
	lea	rdi, [rdi]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2189:
	mov	rbp, rbp
	jmp	.label_2036
.label_2036:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_2078:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x678]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1835
.label_1957:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_2099:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xf1], 1
	mov	rbp, rbp
	je	.label_2131
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_2131:
	jmp	.label_1839
.label_2106:
	lea	rdi, [rdi]
	jmp	.label_2035
.label_2035:
	nop	
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	ecx, 5
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	jmp	.label_1943
.label_1964:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.3_2
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	jmp	.label_1867
.label_2112:
	nop	
	jmp	.label_1839
.label_1968:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rdi, [rdi]
	jne	.label_2156
	mov	rbp, rbp
	jmp	.label_1823
.label_2156:
	jmp	.label_2164
.label_2164:
	nop	
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	lea	rdi, [rdi]
	jmp	.label_1827
.label_2119:
	mov	rbp, rbp
	lea	rax, [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x918], rax
	mov	rbp, rbp
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x918]
	lea	rsi, [rsi]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	lea	rsi, [rsi]
	add	rdx, 0x17
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	lea	rdi, [rdi]
	setl	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_2217:
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x6c0]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x6c4], esi
	mov	rdx, qword ptr [rbp - 0x6c0]
	mov	rax, rdx
	cqo	
	idiv	rcx
	nop	
	mov	qword ptr [rbp - 0x6c0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_2201
	xor	eax, eax
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
	jmp	.label_2211
.label_2201:
	nop	
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
.label_2211:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x91c]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	mov	rbp, rbp
	jne	.label_2217
	mov	dword ptr [rbp - 0x94], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9e], 0
	lea	rdi, [rdi]
	jmp	.label_2033
.label_2015:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x4f
	nop	
	jne	.label_2233
	jmp	.label_1823
.label_2233:
	jmp	.label_1839
.label_1978:
	movabs	rax, OFFSET FLAT:.str.4_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	jmp	.label_1867
.label_2125:
	jmp	.label_2244
.label_2244:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6d0], 1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_1821
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x920], eax
	jmp	.label_1830
.label_1821:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x920], eax
.label_1830:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x920]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x6d0]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x6d8]
	lea	rsi, [rsi]
	jae	.label_1837
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x928], rax
	mov	rbp, rbp
	jmp	.label_1848
.label_1837:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x928], rax
.label_1848:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x928]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6e0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1857
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_1847
.label_1857:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1869
	cmp	dword ptr [rbp - 0x94], 0
	lea	rdi, [rdi]
	jne	.label_1873
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_1873
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_2169
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_2216
.label_2169:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x6e8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1901
.label_2216:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1901:
	mov	rbp, rbp
	jmp	.label_1873
.label_1873:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_1869:
	nop	
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_1835
.label_2134:
	jmp	.label_1932
.label_1932:
	mov	eax, 7
	nop	
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	edx, 1
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x92c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x92c]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	jmp	.label_1827
.label_1983:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	nop	
	jne	.label_1949
	jmp	.label_1823
.label_1949:
	nop	
	jmp	.label_1955
.label_1955:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x930], eax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0x930]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1827
.label_1924:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1969
	jmp	.label_1823
.label_1969:
	lea	rdi, [rdi]
	mov	eax, 0xffffff9c
	lea	rdi, [rdi]
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdx + 0x14], 0
	mov	rbp, rbp
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x6ec], esi
	mov	dword ptr [rbp - 0x6f0], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x6f4], 0
	jge	.label_1995
	nop	
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	rbp, rbp
	sub	edi, 1
	mov	dword ptr [rbp - 0x934], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x934]
	idiv	edi
	mov	rsp, rsp
	cmp	edx, 0
	mov	dword ptr [rbp - 0x938], esi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x939], cl
	jne	.label_1999
	mov	al, 1
	mov	ecx, 0x64
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x93a], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x93a]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x93b], sil
	nop	
	jne	.label_2073
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x940], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x940]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x93b], sil
.label_2073:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x93b]
	mov	byte ptr [rbp - 0x939], al
.label_1999:
	mov	al, byte ptr [rbp - 0x939]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x938]
	lea	rsi, [rsi]
	add	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6f4], eax
	lea	rsi, [rsi]
	jmp	.label_2053
.label_1995:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x944], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0x944]
	mov	rbp, rbp
	idiv	edi
	cmp	edx, 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x948], esi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x949], cl
	mov	rbp, rbp
	jne	.label_2057
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	nop	
	mov	byte ptr [rbp - 0x94a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0x94a]
	mov	byte ptr [rbp - 0x94b], sil
	lea	rsi, [rsi]
	jne	.label_2076
	lea	rdi, [rdi]
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x950], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x950]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	sete	sil
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x94b], sil
.label_2076:
	mov	al, byte ptr [rbp - 0x94b]
	mov	byte ptr [rbp - 0x949], al
.label_2057:
	mov	al, byte ptr [rbp - 0x949]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x948]
	mov	rsp, rsp
	sub	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	edi, edx
	lea	rsi, [rsi]
	call	iso_week_days
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_2109
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	nop	
	mov	dword ptr [rbp - 0x6f4], eax
.label_2109:
	lea	rsi, [rsi]
	jmp	.label_2053
.label_2053:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x954], ecx
	mov	dword ptr [rbp - 0x958], edx
	lea	rsi, [rsi]
	je	.label_2121
	jmp	.label_2128
.label_2128:
	mov	eax, dword ptr [rbp - 0x954]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x95c], eax
	lea	rdi, [rdi]
	jne	.label_2132
	mov	rsp, rsp
	jmp	.label_2137
.label_2137:
	nop	
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x960], eax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x960]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	add	edx, dword ptr [rbp - 0x6f0]
	nop	
	mov	eax, edx
	cdq	
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6fc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x6fc]
	mov	rbp, rbp
	jg	.label_2138
	mov	eax, dword ptr [rbp - 0x6fc]
	nop	
	mov	dword ptr [rbp - 0x964], eax
	jmp	.label_2153
.label_2138:
	mov	eax, 0xfffff894
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	lea	rdi, [rdi]
	jge	.label_2160
	mov	rsp, rsp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x968], eax
	nop	
	jmp	.label_2171
.label_2160:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	rbp, rbp
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x968], eax
.label_2171:
	nop	
	mov	eax, dword ptr [rbp - 0x968]
	mov	dword ptr [rbp - 0x964], eax
.label_2153:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1826
.label_2121:
	nop	
	jmp	.label_2187
.label_2187:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x6f0]
	nop	
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	eax, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x6f0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1826
.label_2132:
	jmp	.label_1988
.label_1988:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x96c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x96c]
	lea	rsi, [rsi]
	idiv	ecx
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1827
.label_2000:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2218
	jmp	.label_1823
.label_2218:
	lea	rsi, [rsi]
	jmp	.label_2222
.label_2222:
	nop	
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	mov	rsp, rsp
	add	esi, 7
	mov	dword ptr [rbp - 0x970], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0x974], edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x970]
	mov	rbp, rbp
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x974]
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	nop	
	mov	eax, edi
	mov	rsp, rsp
	cdq	
	nop	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	nop	
	jmp	.label_1827
.label_2141:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2239
	jmp	.label_1823
.label_2239:
	jmp	.label_1825
.label_1825:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1827
.label_2016:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_1891
	nop	
	jmp	.label_1839
.label_1891:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1928
	lea	rdi, [rdi]
	jmp	.label_1823
.label_1928:
	lea	rsi, [rsi]
	jmp	.label_1843
.label_1843:
	mov	dword ptr [rbp - 0x94], 4
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	jmp	.label_1826
.label_2149:
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rdi, [rdi]
	jne	.label_1860
	nop	
	jmp	.label_1839
.label_1860:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x978], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x978]
	lea	rdi, [rdi]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	lea	rsi, [rsi]
	jge	.label_1864
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_1877
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x97c], eax
	lea	rdi, [rdi]
	jmp	.label_2177
.label_1877:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x97c], eax
.label_2177:
	mov	eax, dword ptr [rbp - 0x97c]
	mov	dword ptr [rbp - 0x700], eax
.label_1864:
	lea	rdi, [rdi]
	jmp	.label_1898
.label_1898:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1826
.label_2020:
	test	byte ptr [rbp - 0xf1], 1
	mov	rsp, rsp
	je	.label_1908
	nop	
	mov	byte ptr [rbp - 0xe2], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 1
.label_1908:
	jmp	.label_1916
.label_1916:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jge	.label_1921
	xor	eax, eax
	mov	dword ptr [rbp - 0x980], eax
	mov	rsp, rsp
	jmp	.label_1925
.label_1921:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x980], eax
.label_1925:
	mov	eax, dword ptr [rbp - 0x980]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	nop	
	cmp	rcx, qword ptr [rbp - 0x710]
	nop	
	jae	.label_1933
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x988], rax
	mov	rsp, rsp
	jmp	.label_1940
.label_1933:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x988], rax
.label_1940:
	mov	rax, qword ptr [rbp - 0x988]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1948
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1847
.label_1948:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1959
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_1961
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x710]
	nop	
	jae	.label_1961
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_1970
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_1979
.label_1970:
	mov	rsp, rsp
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x720]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	jmp	.label_1991
.label_1979:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
.label_1991:
	jmp	.label_1961
.label_1961:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xe1], 1
	je	.label_2009
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x990], rax
	jmp	.label_2018
.label_2009:
	test	byte ptr [rbp - 0xe2], 1
	lea	rsi, [rsi]
	je	.label_2091
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x998], rax
	jmp	.label_2135
.label_2091:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_2135:
	mov	rbp, rbp
	jmp	.label_2018
.label_2018:
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_1959:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1835
.label_1880:
	mov	qword ptr [rbp - 0xf0], 1
.label_2055:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x3a
	lea	rsi, [rsi]
	jne	.label_2240
	lea	rdi, [rdi]
	jmp	.label_2052
.label_2052:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_2055
.label_2240:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x7a
	je	.label_2060
	mov	rbp, rbp
	jmp	.label_1823
.label_2060:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2066
.label_2155:
	mov	qword ptr [rbp - 0xf0], 0
.label_2066:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_2077
	jmp	.label_1835
.label_2077:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x999], al
	mov	rsp, rsp
	jl	.label_2081
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x99a], cl
	lea	rdi, [rdi]
	jne	.label_2090
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x99a], dl
.label_2090:
	mov	al, byte ptr [rbp - 0x99a]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x999], al
.label_2081:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x999]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9d], al
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x724]
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
	mov	dword ptr [rbp - 0x728], edx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x724]
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
	mov	dword ptr [rbp - 0x72c], esi
	movsxd	rcx, dword ptr [rbp - 0x724]
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
	mov	dword ptr [rbp - 0x730], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x9a8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9b0], r8
	ja	.label_2154
	mov	rax, qword ptr [rbp - 0x9a8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2139]]
	lea	rsi, [rsi]
	jmp	rcx
.label_2939:
	jmp	.label_2167
.label_2167:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2168
.label_2940:
	lea	rsi, [rsi]
	jmp	.label_2179
.label_2179:
	mov	rbp, rbp
	jmp	.label_2181
.label_2181:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 6
	nop	
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2168
.label_2941:
	jmp	.label_2192
.label_2192:
	jmp	.label_2194
.label_2194:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2168
.label_2942:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_2207
	mov	rbp, rbp
	jmp	.label_2192
.label_2207:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_2210
	jmp	.label_2179
.label_2210:
	jmp	.label_2213
.label_2213:
	nop	
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rbp, rbp
	jmp	.label_2168
.label_2154:
	mov	rbp, rbp
	jmp	.label_1823
.label_1862:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_2163:
	mov	rsp, rsp
	jmp	.label_1823
.label_1823:
	mov	dword ptr [rbp - 0x734], 1
.label_2238:
	mov	rbp, rbp
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	nop	
	je	.label_2227
	mov	rsp, rsp
	jmp	.label_2237
.label_2237:
	mov	eax, dword ptr [rbp - 0x734]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_2238
.label_2227:
	mov	rbp, rbp
	jmp	.label_2242
.label_2242:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_1822
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x9b4], eax
	jmp	.label_1832
.label_1822:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x9b4], eax
.label_1832:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9b4]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x748], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	mov	rsp, rsp
	jae	.label_1907
	nop	
	mov	rax, qword ptr [rbp - 0x748]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9c0], rax
	jmp	.label_1846
.label_1907:
	mov	rax, qword ptr [rbp - 0x740]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9c0], rax
.label_1846:
	mov	rax, qword ptr [rbp - 0x9c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x750], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x750]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, rcx
	jb	.label_1856
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1847
.label_1856:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_1866
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1871
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x740]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x748]
	mov	rsp, rsp
	jae	.label_1871
	nop	
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1882
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1888
.label_1882:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x758]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1900
.label_1888:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1900:
	lea	rdi, [rdi]
	jmp	.label_1871
.label_1871:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe1], 1
	mov	rbp, rbp
	je	.label_1929
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x740]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x9c8], rax
	jmp	.label_1935
.label_1929:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	je	.label_2042
	mov	eax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_uppcase
	nop	
	mov	qword ptr [rbp - 0x9d0], rax
	lea	rdi, [rdi]
	jmp	.label_1953
.label_2042:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x734]
	mov	rsp, rsp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_1953:
	jmp	.label_1935
.label_1935:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_1866:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x750]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_1835
.label_1835:
	jmp	.label_1858
.label_1858:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1980
.label_2045:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1905
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1905
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_1905:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_1847:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x9d8
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
	#Procedure 0x41eb30

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
.label_2245:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	cmp	rax, 0
	jbe	.label_2246
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_2245
.label_2246:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eba0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_2248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	jbe	.label_2247
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	toupper
	mov	dl, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	lea	rdi, [rdi]
	jmp	.label_2248
.label_2247:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ec30

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
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
	#Procedure 0x41ec90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2251
	movabs	rdi, OFFSET FLAT:.str_9
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_2251:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2249
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2253
.label_2249:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_2253:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_2252
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_2252
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_4
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_2250
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_2250:
	jmp	.label_2252
.label_2252:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ee10

	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_2255
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_2254
.label_2255:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_2254
.label_2254:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eec0

	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_2256
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_2257
.label_2256:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2257
.label_2257:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ef20

	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	je	.label_2258
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2259
.label_2258:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_2259
.label_2259:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ef80

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_2260
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_2261
.label_2260:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_2261
.label_2261:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f080
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2262
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_2262:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f0e0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_2263
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2263:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f180

	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2266
	mov	rax, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f280

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7b], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7d], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7e], 1
.label_2377:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_2439
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2364]]
	jmp	rcx
.label_2954:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2953:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_2449
	jmp	.label_2443
.label_2443:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_2454
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2454:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_2449
.label_2449:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_2311
.label_2955:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_2311
.label_2956:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_2269
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_2269:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_2283
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_2300:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_2290
	jmp	.label_2291
.label_2291:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_2293
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_2293:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2296
.label_2296:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2300
.label_2290:
	mov	rbp, rbp
	jmp	.label_2283
.label_2283:
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_2311
.label_2951:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_2950:
	mov	byte ptr [rbp - 0x7b], 1
.label_2952:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_2316
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_2316:
	jmp	.label_2419
.label_2419:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2320
	jmp	.label_2325
.label_2325:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_2456
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2456:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_2320
.label_2320:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_2311
.label_2949:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_2311
.label_2439:
	call	abort
.label_2311:
	mov	qword ptr [rbp - 0x58], 0
.label_2414:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2351
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_2399
.label_2351:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_2399:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2370
	mov	rbp, rbp
	jmp	.label_2381
.label_2370:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_2310
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_2310
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2310
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_2404
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_2404
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_2411
.label_2404:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_2411:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_2310
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_2310
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_2430
	jmp	.label_2281
.label_2430:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_2310:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_2434
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2444]]
	nop	
	jmp	rcx
.label_2960:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_2447
	mov	rsp, rsp
	jmp	.label_2451
.label_2451:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2326
	jmp	.label_2281
.label_2326:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2371
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_2371
	nop	
	jmp	.label_2460
.label_2460:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2461
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_2461:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_2268
.label_2268:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_2272
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_2272:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_2279
.label_2279:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2288
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2288:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2371:
	lea	rsi, [rsi]
	jmp	.label_2432
.label_2432:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2295
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_2295:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2298
.label_2298:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_2303
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2303
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_2303
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_2303
	nop	
	jmp	.label_2318
.label_2318:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_2319
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_2319:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2327
.label_2327:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2331
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_2331:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_2303
.label_2303:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_2340
.label_2447:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2347
	mov	rbp, rbp
	jmp	.label_2352
.label_2347:
	jmp	.label_2340
.label_2340:
	jmp	.label_2287
.label_2971:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_2355
	mov	rbp, rbp
	jmp	.label_2361
.label_2361:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_2363
	jmp	.label_2372
.label_2355:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_2375
	jmp	.label_2281
.label_2375:
	jmp	.label_2285
.label_2363:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_2282
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_2282
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_2282
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	lea	rdi, [rdi]
	je	.label_2408
	nop	
	jmp	.label_2406
.label_2406:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_2408
	jmp	.label_2412
.label_2412:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_2408
	jmp	.label_2416
.label_2416:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_2408
	jmp	.label_2384
.label_2384:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_2426
	jmp	.label_2408
.label_2408:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_2423
	jmp	.label_2281
.label_2423:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2437
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_2437:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2448
.label_2448:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2453
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_2453:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2458
.label_2458:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2459
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_2459:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2468
.label_2468:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2354
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_2354:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2276
.label_2426:
	jmp	.label_2276
.label_2276:
	jmp	.label_2282
.label_2282:
	jmp	.label_2285
.label_2372:
	jmp	.label_2285
.label_2285:
	jmp	.label_2287
.label_2961:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_2289
.label_2962:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_2289
.label_2966:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_2289
.label_2964:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_2294
.label_2967:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_2294
.label_2963:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_2294
.label_2965:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_2289
.label_2972:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2467
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_2299
	nop	
	jmp	.label_2281
.label_2299:
	lea	rsi, [rsi]
	jmp	.label_2274
.label_2467:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2307
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_2307
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_2307
	jmp	.label_2274
.label_2307:
	jmp	.label_2294
.label_2294:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_2314
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2314
	jmp	.label_2281
.label_2314:
	mov	rsp, rsp
	jmp	.label_2289
.label_2289:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_2322
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_2324
.label_2322:
	jmp	.label_2287
.label_2973:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2329
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2332
	jmp	.label_2336
.label_2329:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_2332
.label_2336:
	nop	
	jmp	.label_2287
.label_2332:
	jmp	.label_2343
.label_2343:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_2344
	lea	rsi, [rsi]
	jmp	.label_2287
.label_2344:
	nop	
	jmp	.label_2350
.label_2350:
	mov	byte ptr [rbp - 0x83], 1
.label_2968:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2338
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_2338
	jmp	.label_2281
.label_2338:
	lea	rsi, [rsi]
	jmp	.label_2287
.label_2970:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_2359
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_2369
	jmp	.label_2281
.label_2369:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2374
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_2374
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_2374:
	jmp	.label_2386
.label_2386:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_2388
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_2388:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2396
.label_2396:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_2421
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_2421:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_2409
.label_2409:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_2360
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2360:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2359:
	lea	rsi, [rsi]
	jmp	.label_2287
.label_2969:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_2287
.label_2434:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_2427
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], sil
	lea	rsi, [rsi]
	jmp	.label_2401
.label_2427:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_2450
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_2450:
	jmp	.label_2383
.label_2383:
	lea	rdi, [rbp - 0xa4]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
.label_2930:
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	jne	.label_2270
	jmp	.label_2280
.label_2270:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_2315
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_2280
.label_2315:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_2284
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_2431:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	mov	rsp, rsp
	jae	.label_2391
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_2391:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_2277
	jmp	.label_2301
.label_2277:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2431
.label_2301:
	jmp	.label_2280
.label_2284:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2309
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_2309
	mov	qword ptr [rbp - 0xb8], 1
.label_2358:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_2312
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x130], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_2317
	jmp	.label_2333
.label_2333:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_2317
	jmp	.label_2339
.label_2339:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_2317
	jmp	.label_2348
.label_2348:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_2349
	mov	rsp, rsp
	jmp	.label_2317
.label_2317:
	mov	rsp, rsp
	jmp	.label_2281
.label_2349:
	jmp	.label_2418
.label_2418:
	mov	rsp, rsp
	jmp	.label_2424
.label_2424:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_2358
.label_2312:
	mov	rbp, rbp
	jmp	.label_2309
.label_2309:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_2373
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_2373:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2378
.label_2378:
	lea	rsi, [rsi]
	jmp	.label_2387
.label_2387:
	jmp	.label_2390
.label_2390:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xa0]
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
	jne	.label_2383
.label_2280:
	jmp	.label_2401
.label_2401:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_2402
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_2410
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_2410
.label_2402:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_2379:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_2417
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_2417
	jmp	.label_2422
.label_2422:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_2425
	jmp	.label_2281
.label_2425:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_2429
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2429
	lea	rdi, [rdi]
	jmp	.label_2435
.label_2435:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2438
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2438:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_2442
.label_2442:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2446
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2446:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_2455
.label_2455:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2380
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2380:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2429:
	jmp	.label_2463
.label_2463:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_2465
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_2465:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2345
.label_2345:
	jmp	.label_2273
.label_2273:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2275
	nop	
	movzx	eax, byte ptr [rbp - 0x7f]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_2275:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_2405
.label_2405:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_2368
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_2368:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_2297
.label_2417:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_2306
	lea	rdi, [rdi]
	jmp	.label_2308
.label_2308:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_2341
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2341:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_2306:
	nop	
	jmp	.label_2297
.label_2297:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_2321
	jmp	.label_2328
.label_2321:
	lea	rsi, [rsi]
	jmp	.label_2462
.label_2462:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_2330
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_2330
	lea	rsi, [rsi]
	jmp	.label_2335
.label_2335:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2337
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_2337:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_2346
.label_2346:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_2389
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_2389:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2330:
	nop	
	jmp	.label_2362
.label_2362:
	mov	rsp, rsp
	jmp	.label_2365
.label_2365:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_2367
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_2367:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_2379
.label_2328:
	mov	rsp, rsp
	jmp	.label_2274
.label_2410:
	lea	rsi, [rsi]
	jmp	.label_2287
.label_2287:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_2397
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2400
.label_2397:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2403
.label_2400:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_2403
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x7f]
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
	jne	.label_2415
.label_2403:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_2415
	mov	rsp, rsp
	jmp	.label_2274
.label_2415:
	nop	
	jmp	.label_2324
.label_2324:
	jmp	.label_2420
.label_2420:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_2393
	jmp	.label_2281
.label_2393:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_2428
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_2428
	lea	rdi, [rdi]
	jmp	.label_2433
.label_2433:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_2436
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_2436:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_2441
.label_2441:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2445
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_2445:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_2452
.label_2452:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_2457
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_2457:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2428:
	jmp	.label_2464
.label_2464:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2466
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_2466:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2271
.label_2271:
	nop	
	jmp	.label_2274
.label_2274:
	jmp	.label_2313
.label_2313:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_2278
	test	byte ptr [rbp - 0x82], 1
	jne	.label_2278
	lea	rdi, [rdi]
	jmp	.label_2357
.label_2357:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2286
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2286:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2292
.label_2292:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_2440
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_2440:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2278:
	jmp	.label_2302
.label_2302:
	nop	
	jmp	.label_2304
.label_2304:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2305
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_2305:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_2356
	mov	byte ptr [rbp - 0x7e], 0
.label_2356:
	mov	rbp, rbp
	jmp	.label_2352
.label_2352:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2414
.label_2381:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_2323
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_2323
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_2323
	nop	
	jmp	.label_2281
.label_2323:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2334
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_2334
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_2334
	test	byte ptr [rbp - 0x7e], 1
	je	.label_2342
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_2353
.label_2342:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_2366
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_2366
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_2377
.label_2366:
	jmp	.label_2382
.label_2382:
	mov	rbp, rbp
	jmp	.label_2334
.label_2334:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2385
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2385
	mov	rbp, rbp
	jmp	.label_2392
.label_2392:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_2394
	lea	rdi, [rdi]
	jmp	.label_2395
.label_2395:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_2398
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_2398:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_2407
.label_2407:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2392
.label_2394:
	jmp	.label_2385
.label_2385:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2413
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_2413:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2353
.label_2281:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_2376
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_2376
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_2376:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_2353:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x420ba0
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
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
	#Procedure 0x420c10

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_2469
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_2470
.label_2469:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_2470
.label_2470:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
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
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2471
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_2471:
	mov	rax, qword ptr [rbp - 0x48]
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
	#Procedure 0x420de0
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
	#Procedure 0x420ef0

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
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420f40

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_2482
	call	abort
.label_2482:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_2477
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	jge	.label_2478
	call	xalloc_die
.label_2478:
	test	byte ptr [rbp - 0x31], 1
	je	.label_2479
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_2483
.label_2479:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_2483:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_2481
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_2472]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_2481:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
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
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_2477:
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x20]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	ja	.label_2480
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_2484
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_2484:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_2480:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421270

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
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4212b0
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
	#Procedure 0x4212e0
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
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
	#Procedure 0x421320

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421380

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
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_2485
	call	abort
.label_2485:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421420

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421490

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4214d0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421510

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x64], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4215c0

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
	#Procedure 0x421600

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
	#Procedure 0x421630
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
	#Procedure 0x421670

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421760

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
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4217b0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x421850
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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
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
	#Procedure 0x4218a0
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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421900

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x421940
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
	#Procedure 0x421980

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
	#Procedure 0x4219c0

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
	#Procedure 0x421a00

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_2489
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2487
.label_2489:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_2488
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2487
.label_2488:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_2487
.label_2486:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_2487:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421b40

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
	#Procedure 0x421b90

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x190
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x181], r8b
	lea	rsi, [rsi]
	jne	.label_2494
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x181], cl
.label_2494:
	mov	al, byte ptr [rbp - 0x181]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x42], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	lea	rsi, [rsi]
	je	.label_2490
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	dir_name
	lea	rdx, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x174], 0x100
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2493
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_2493:
	nop	
	mov	rdi, qword ptr [rbp - 0x170]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	lea	rdx, [rbp - 0x168]
	mov	qword ptr [rbp - 0x180], rax
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2492
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x180]
	nop	
	mov	al, 0
	nop	
	call	error
.label_2492:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	lea	rdi, [rdi]
	jne	.label_2491
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x182], cl
.label_2491:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	nop	
	mov	rdi, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	call	free
.label_2490:
	mov	al, byte ptr [rbp - 0x43]
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
	#Procedure 0x421df0
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
	#Procedure 0x421e20

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
	#Procedure 0x421e30
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
	#Procedure 0x421e60
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
	#Procedure 0x421ea0
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
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
	#Procedure 0x421ee0

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
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
	#Procedure 0x421f20

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
	#Procedure 0x421f60
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
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
	#Procedure 0x421fa0
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
	#Procedure 0x421fe0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
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
	#Procedure 0x422020
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
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
	#Procedure 0x422060
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
	#Procedure 0x4220a0
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
	#Procedure 0x4220e0
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
	#Procedure 0x422120
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
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
	#Procedure 0x422170
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
	#Procedure 0x4221a0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
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
	#Procedure 0x4221e0
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
	#Procedure 0x422200
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
	#Procedure 0x422220
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
	#Procedure 0x422240
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
	#Procedure 0x422260

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
	#Procedure 0x422290

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4222c0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4222f0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422330
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x422350
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
	#Procedure 0x4223a0

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_2495
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_2497
.label_2495:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2499
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2497
.label_2499:
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_2498
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_2498
	mov	rbp, rbp
	jmp	.label_2498
.label_2498:
	mov	rax, -1
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jg	.label_2496
	cmp	qword ptr [rbp - 0x20], 0x77359400
	lea	rsi, [rsi]
	jg	.label_2496
	lea	rdi, [rdi]
	jmp	.label_2496
.label_2496:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
.label_2497:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x422470
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_2500
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2502
.label_2500:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	mov	rsp, rsp
	jne	.label_2501
	cmp	qword ptr [rbp - 8], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_2501:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2502:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4224e0
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
	#Procedure 0x422520

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2506
	movabs	rsi, OFFSET FLAT:.str_10
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_2505
.label_2506:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_2505:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_5
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
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
	mov	rdi, qword ptr [rbp - 0x50]
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
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	ja	.label_2507
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2508]]
	jmp	rcx
.label_2879:
	jmp	.label_2504
.label_2880:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_2
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_2504
.label_2881:
	movabs	rdi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_2504
.label_2882:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_2504
.label_2883:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2504
.label_2884:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_2504
.label_2885:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_2504
.label_2886:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	jmp	.label_2504
.label_2887:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_2504
.label_2888:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
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
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_2504
.label_2507:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
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
	mov	dword ptr [rbp - 0x15c], eax
.label_2504:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422c90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_2509:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2510
	mov	rbp, rbp
	jmp	.label_2511
.label_2511:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_2509
.label_2510:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422d40

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_2518:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_2517
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_2513
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_2514
.label_2513:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_2514:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], dl
.label_2517:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2516
	mov	rsp, rsp
	jmp	.label_2512
.label_2516:
	jmp	.label_2515
.label_2515:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2518
.label_2512:
	nop	
	lea	r8, [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422ea0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1a0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	lea	rsi, [rsi]
	je	.label_2519
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_2519:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	nop	
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423050
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
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423100

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
	#Procedure 0x423160

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_2521
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_2521
	lea	rdi, [rdi]
	call	xalloc_die
.label_2521:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4231c0

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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2522
	mov	rsp, rsp
	call	xalloc_die
.label_2522:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x18]
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
	#Procedure 0x423240

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_2523
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_2523
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2525
.label_2523:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_2524
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_2524
	lea	rsi, [rsi]
	call	xalloc_die
.label_2524:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_2525:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4232f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_2526
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2528
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2528:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
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
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2527
	call	xalloc_die
.label_2527:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2529:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423420

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
	#Procedure 0x423450

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
	#Procedure 0x423490
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
	#Procedure 0x4234e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_2531
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_2532
.label_2531:
	lea	rsi, [rsi]
	call	xalloc_die
.label_2532:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423550

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4235a0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423600

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
	#Procedure 0x423660

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
	lea	rbx, [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	nop	
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	mov	rbp, rbp
	call	xstrtoumax
	nop	
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jne	.label_2544
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_2535
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_2539
.label_2535:
	mov	dword ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_2540
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_2537
.label_2540:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_2537:
	jmp	.label_2539
.label_2539:
	nop	
	jmp	.label_2541
.label_2544:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_2542
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_2533
.label_2542:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_2538
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2538:
	jmp	.label_2533
.label_2533:
	jmp	.label_2541
.label_2541:
	nop	
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_2543
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2545
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_2534
.label_2545:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2534
.label_2534:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_2546
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2536
.label_2546:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
.label_2536:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
.label_2543:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423850
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
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
	#Procedure 0x4238c0

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
	#Procedure 0x423930

	.globl xgethostname
	.type xgethostname, @function
xgethostname:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x18], 0x22
.label_2549:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	call	x2realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + rax], 0
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	gethostname
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_2553
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	jne	.label_2554
	jmp	.label_2550
.label_2554:
	jmp	.label_2551
.label_2553:
	call	__errno_location
	cmp	dword ptr [rax], 0
	nop	
	je	.label_2552
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	je	.label_2552
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	je	.label_2552
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	je	.label_2552
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2548
.label_2552:
	jmp	.label_2551
.label_2551:
	jmp	.label_2549
.label_2550:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2548:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x423a80

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2590
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0x24
	mov	rsp, rsp
	jg	.label_2590
	nop	
	jmp	.label_2610
.label_2590:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_11
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x54
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_2610:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2556
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_2563
.label_2556:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2563
.label_2563:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2600:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x59]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_2589
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2600
.label_2589:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x59]
	nop	
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_2606
	mov	dword ptr [rbp - 4], 4
	nop	
	jmp	.label_2573
.label_2606:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jne	.label_2618
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_2565
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_2565
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	call	strchr
	cmp	rax, 0
	je	.label_2565
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 1
	nop	
	jmp	.label_2583
.label_2565:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2573
.label_2583:
	jmp	.label_2555
.label_2618:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_2593
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_2599
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2573
.label_2599:
	mov	dword ptr [rbp - 0x4c], 1
.label_2593:
	mov	rbp, rbp
	jmp	.label_2555
.label_2555:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2576
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	nop	
	jmp	.label_2573
.label_2576:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2592
	mov	dword ptr [rbp - 0x60], 0x400
	nop	
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_2569
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2573
.label_2569:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	lea	rdi, [rdi]
	je	.label_2564
	lea	rdi, [rdi]
	jmp	.label_2603
.label_2603:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2564
	nop	
	jmp	.label_2597
.label_2597:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x88], eax
	nop	
	je	.label_2564
	lea	rsi, [rsi]
	jmp	.label_2604
.label_2604:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2564
	jmp	.label_2611
.label_2611:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x50
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	je	.label_2564
	jmp	.label_2617
.label_2617:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rdi, [rdi]
	je	.label_2564
	jmp	.label_2581
.label_2581:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	add	eax, -0x59
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2564
	mov	rsp, rsp
	jmp	.label_2572
.label_2572:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	je	.label_2564
	lea	rsi, [rsi]
	jmp	.label_2582
.label_2582:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	nop	
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2564
	nop	
	jmp	.label_2601
.label_2601:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_2564
	jmp	.label_2596
.label_2596:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2595
	jmp	.label_2564
.label_2564:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2594
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], ecx
	nop	
	mov	dword ptr [rbp - 0xb0], edx
	mov	rbp, rbp
	je	.label_2558
	mov	rsp, rsp
	jmp	.label_2620
.label_2620:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x44
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2558
	jmp	.label_2566
.label_2566:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2587
	lea	rsi, [rsi]
	jmp	.label_2574
.label_2574:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	mov	rbp, rbp
	jne	.label_2579
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2579:
	jmp	.label_2587
.label_2558:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0x3e8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2587:
	lea	rsi, [rsi]
	jmp	.label_2594
.label_2594:
	nop	
	jmp	.label_2595
.label_2595:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	nop	
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	nop	
	je	.label_2598
	mov	rbp, rbp
	jmp	.label_2605
.label_2605:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], eax
	mov	rsp, rsp
	je	.label_2609
	lea	rdi, [rdi]
	jmp	.label_2614
.label_2614:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_2562
	jmp	.label_2557
.label_2557:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2560
	lea	rsi, [rsi]
	jmp	.label_2567
.label_2567:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_2570
	mov	rsp, rsp
	jmp	.label_2577
.label_2577:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_2607
	jmp	.label_2584
.label_2584:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_2585
	jmp	.label_2591
.label_2591:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2613
	nop	
	jmp	.label_2559
.label_2559:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2602
	jmp	.label_2608
.label_2608:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2575
	jmp	.label_2612
.label_2612:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	mov	rbp, rbp
	je	.label_2615
	nop	
	jmp	.label_2568
.label_2568:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	lea	rdi, [rdi]
	je	.label_2562
	mov	rbp, rbp
	jmp	.label_2616
.label_2616:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	lea	rdi, [rdi]
	je	.label_2560
	lea	rsi, [rsi]
	jmp	.label_2580
.label_2580:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	lea	rsi, [rsi]
	je	.label_2570
	nop	
	jmp	.label_2586
.label_2586:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2585
	mov	rbp, rbp
	jmp	.label_2588
.label_2588:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2571
	jmp	.label_2619
.label_2575:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_2561
.label_2598:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_2561
.label_2615:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2561
.label_2609:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2561
.label_2562:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_2561
.label_2560:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	jmp	.label_2561
.label_2570:
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2561
.label_2607:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2561
.label_2585:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2561
.label_2571:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	call	bkm_scale
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2561
.label_2613:
	lea	rdi, [rbp - 0x48]
	nop	
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2561
.label_2602:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2561
.label_2619:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	nop	
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_2573
.label_2561:
	mov	eax, dword ptr [rbp - 0x68]
	nop	
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_2578
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	or	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_2578:
	lea	rsi, [rsi]
	jmp	.label_2592
.label_2592:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
.label_2573:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4243c0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
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
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_2622
.label_2621:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2622:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424440

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_2624:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2623
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc]
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
	#Procedure 0x4244b0

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
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], r8
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	nop	
	movsx	edx, al
	nop	
	call	xstrtol_error
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x424510

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:.str_12
	mov	edx, dword ptr [rbp - 4]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	je	.label_2630
	nop	
	jmp	.label_2626
.label_2626:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_2628
	lea	rdi, [rdi]
	jmp	.label_2633
.label_2633:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
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
	cmp	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	jge	.label_2629
	lea	rax, [rbp - 0x42]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2632
.label_2629:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_2632:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x40]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
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
	#Procedure 0x4246c0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2634
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_2634
	jmp	.label_2638
.label_2634:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_11
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_2638:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2667
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_2645
.label_2667:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_2645
.label_2645:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2692:
	nop	
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_2682
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_2692
.label_2682:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_2695
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_2636
.label_2695:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_2648
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_2659
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_2659
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_2659
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2677
.label_2659:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2636
.label_2677:
	lea	rdi, [rdi]
	jmp	.label_2684
.label_2648:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_2647
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_2690
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2636
.label_2690:
	mov	dword ptr [rbp - 0x4c], 1
.label_2647:
	jmp	.label_2684
.label_2684:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2693
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_2636
.label_2693:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_2646
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_2664
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_2636
.label_2664:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], edx
	nop	
	je	.label_2652
	jmp	.label_2685
.label_2685:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_2652
	nop	
	jmp	.label_2691
.label_2691:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_2652
	nop	
	jmp	.label_2696
.label_2696:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_2652
	lea	rsi, [rsi]
	jmp	.label_2666
.label_2666:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_2652
	jmp	.label_2650
.label_2650:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2652
	jmp	.label_2657
.label_2657:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_2652
	mov	rsp, rsp
	jmp	.label_2668
.label_2668:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2652
	jmp	.label_2676
.label_2676:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_2652
	mov	rsp, rsp
	jmp	.label_2683
.label_2683:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_2652
	jmp	.label_2689
.label_2689:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2687
	jmp	.label_2652
.label_2652:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2635
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], edx
	mov	rsp, rsp
	je	.label_2655
	lea	rsi, [rsi]
	jmp	.label_2653
.label_2653:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2655
	jmp	.label_2661
.label_2661:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_2640
	lea	rsi, [rsi]
	jmp	.label_2670
.label_2670:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_2673
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2673:
	jmp	.label_2640
.label_2655:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2640:
	jmp	.label_2635
.label_2635:
	nop	
	jmp	.label_2687
.label_2687:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	mov	rbp, rbp
	je	.label_2688
	jmp	.label_2697
.label_2697:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2698
	jmp	.label_2671
.label_2671:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_2642
	jmp	.label_2649
.label_2649:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_2656
	nop	
	jmp	.label_2660
.label_2660:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_2662
	nop	
	jmp	.label_2669
.label_2669:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_2665
	mov	rsp, rsp
	jmp	.label_2678
.label_2678:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_2675
	jmp	.label_2663
.label_2663:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2672
	mov	rbp, rbp
	jmp	.label_2639
.label_2639:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2654
	jmp	.label_2679
.label_2679:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2699
	jmp	.label_2641
.label_2641:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_2644
	jmp	.label_2680
.label_2680:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_2642
	jmp	.label_2658
.label_2658:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_2656
	jmp	.label_2694
.label_2694:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_2662
	jmp	.label_2674
.label_2674:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2675
	jmp	.label_2681
.label_2681:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2643
	jmp	.label_2686
.label_2699:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2637
.label_2688:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2637
.label_2644:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2637
.label_2698:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2637
.label_2642:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2637
.label_2656:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2637
.label_2662:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2637
.label_2665:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_2637
.label_2675:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_2637
.label_2643:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2637
.label_2672:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2637
.label_2654:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2637
.label_2686:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2636
.label_2637:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_2651
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_2651:
	jmp	.label_2646
.label_2646:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_2636:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424fb0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_2700
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2701
.label_2700:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2701:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425030

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
.label_2702:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2703
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_2702
.label_2703:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4250b0

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
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_2704
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2704:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2705
	nop	
	cmp	qword ptr [rbp - 0x20], 0
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
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2706
.label_2705:
	mov	rax, qword ptr [rbp - 0x30]
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
	#Procedure 0x4251a0

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
	#Procedure 0x425200

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x50]
	nop	
	and	al, 0xfe
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425280

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2710
	nop	
	mov	qword ptr [rbp - 0x18], 0x10
.label_2710:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2711
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0x20
	nop	
	sub	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_2711:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_2712
	mov	rbp, rbp
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2712:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
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
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x50]
	mov	rbp, rbp
	and	r8b, 0xfd
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x50], r8b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
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
	#Procedure 0x425410

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x50], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_begin_worker
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4254a0

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	shr	rdi, 3
	mov	rsp, rsp
	add	rsi, rdi
	add	rsi, 0x64
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_2713
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_2713:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_2715
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_2715:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	ja	.label_2714
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	ja	.label_2714
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_2714:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2716
	nop	
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2716:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rdx, 0x10
	lea	rdi, [rdi]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
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
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsi, 0x10
	mov	rsp, rsp
	sub	rsi, 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_2717
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	call_freefun
.label_2717:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425730

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2719
.label_2718:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_2719:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4257b0

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
	#Procedure 0x425820

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2724:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2726
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x22], al
	lea	rsi, [rsi]
	jae	.label_2723
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	setb	cl
	nop	
	mov	byte ptr [rbp - 0x22], cl
.label_2723:
	nop	
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2726:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2722
	jmp	.label_2725
.label_2722:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2724
.label_2725:
	cmp	qword ptr [rbp - 0x18], 0
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
	#Procedure 0x4258f0

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
	mov	qword ptr [rbp - 0x10], rsi
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
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2730
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2731
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], cl
.label_2731:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], al
.label_2730:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2728
	mov	rbp, rbp
	jmp	.label_2733
.label_2728:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_freefun
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
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
	mov	rax, qword ptr [rbp - 0x10]
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
	cmp	qword ptr [rbp - 0x10], 0
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
	#Procedure 0x425a50

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
.label_2735:
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2736
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_2735
.label_2736:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425ad0

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
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_13
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	call	exit
	.section	.text
	.align	32
	#Procedure 0x425b30

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_2739
	mov	rdi, qword ptr [rbp - 8]
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
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0x77
	lea	rdi, [rdi]
	jae	.label_2742
	mov	rbp, rbp
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	jmp	.label_2741
.label_2742:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_2741:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_2737
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_2740
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	extend_abbrs
.label_2740:
	jmp	.label_2737
.label_2737:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425c70

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
	#Procedure 0x425cc0

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	lea	rsi, [rsi]
	je	.label_2743
	mov	rbp, rbp
	jmp	.label_2744
.label_2744:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_2745
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
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
	#Procedure 0x425d40

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_2746
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	gmtime_r
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2748
.label_2746:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_2749
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	cmp	rax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_2751
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_2751:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x2a]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2747
	lea	rdi, [rdi]
	jmp	.label_2750
.label_2747:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	je	.label_2750
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2748
.label_2750:
	jmp	.label_2749
.label_2749:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_2748:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425e60

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2756
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_2753
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 8], 0
	jne	.label_2753
.label_2757:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2752
.label_2753:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	tzalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2754
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_2752
.label_2754:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_2755
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_2752
.label_2755:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_2752:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x425fa0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2767
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_2769
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	nop	
	cmp	rax, rcx
	jae	.label_2769
.label_2767:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2761
.label_2769:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_2760
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2758:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2766
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	jne	.label_2764
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, 9
	cmp	rax, rcx
	nop	
	jne	.label_2770
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_2764
.label_2770:
	lea	rdi, [rdi]
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rdi, 9
	sub	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2759
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2761
.label_2759:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_2765
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	extend_abbrs
	mov	rsp, rsp
	jmp	.label_2762
.label_2765:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2768
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2761
.label_2768:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_2762:
	jmp	.label_2766
.label_2764:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_2763
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2763
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_2763:
	lea	rdi, [rdi]
	jmp	.label_2758
.label_2766:
	mov	rbp, rbp
	jmp	.label_2760
.label_2760:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	byte ptr [rbp - 1], 1
.label_2761:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426240

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
	mov	byte ptr [rbp - 1], 1
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
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
.label_2772:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4262f0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_2777
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2780
.label_2777:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_2776
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jne	.label_2779
	mov	rsp, rsp
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	call	localtime_r
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2774
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	nop	
	cmp	eax, 0
	je	.label_2774
.label_2779:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2774
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2774:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	revert_tz
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2778
	mov	rsp, rsp
	jmp	.label_2775
.label_2778:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2780
.label_2775:
	jmp	.label_2776
.label_2776:
	mov	qword ptr [rbp - 8], -1
.label_2780:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x426430

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 4]
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	isdst_differ
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
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
	#Procedure 0x426520

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
	#Procedure 0x426550

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
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2783
.label_2781:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2783
.label_2783:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2782
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2784
.label_2782:
	call	tzset
	nop	
	mov	byte ptr [rbp - 1], 1
.label_2784:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4265e0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_2785
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2786
.label_2785:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_0
	call	unsetenv
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_2786:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426650

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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	dl
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_2787
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
	jg	.label_2787
	mov	rsp, rsp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_2787:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4266e0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
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
	#Procedure 0x426730
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	ecx, esi
	nop	
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
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
	#Procedure 0x426780
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
	#Procedure 0x4267d0
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426810
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
	#Procedure 0x426870

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rdi, cl
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
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
	#Procedure 0x4268d0
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rsi, [rsi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 2], ax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
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
	#Procedure 0x426920
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
	#Procedure 0x426970
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
	mov	byte ptr [rbp - 1], al
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	esi, cl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 1]
	mov	rsp, rsp
	sub	edi, dword ptr [rbp - 8]
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
	#Procedure 0x4269d0
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
	#Procedure 0x426a20

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_2788
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2792
.label_2788:
	mov	rbp, rbp
	jmp	.label_2789
.label_2789:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_2790
	jmp	.label_2791
.label_2790:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2789
.label_2791:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2792:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426b10

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
	mov	byte ptr [rbp - 0x11], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	nop	
	test	byte ptr [rbp - 0x12], 1
	lea	rsi, [rsi]
	jne	.label_2795
	test	byte ptr [rbp - 0x13], 1
	je	.label_2794
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_2795
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2794
.label_2795:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_2793
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2793:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2796
.label_2794:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_2796:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426bf0

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_2797
	lea	rsi, [rsi]
	call	xalloc_die
.label_2797:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426c40

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2799:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_2798
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2799
.label_2798:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426cd0

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
	movabs	rax, OFFSET FLAT:.str
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
	#Procedure 0x426d50

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_2806
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2804
.label_2806:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2803
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2805
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2805:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2804:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426e70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_2807
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_2808
.label_2807:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2809
.label_2808:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2809:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x426ee0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
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
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_2810:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x426f40

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2811
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_2811
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2811
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2812
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2813
.label_2812:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2813
.label_2811:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_2813:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x427100

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x427110

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x427120

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x427130

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
