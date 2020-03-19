
wc_mod_dir/1/wc_mod:     file format elf64-x86-64


Disassembly of section .plt:

0000000000400650 <fclose@plt-0x10>:
  400650:	ff 35 b2 19 20 00    	pushq  0x2019b2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400656:	ff 25 b4 19 20 00    	jmpq   *0x2019b4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40065c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400660 <fclose@plt>:
  400660:	ff 25 b2 19 20 00    	jmpq   *0x2019b2(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400666:	68 00 00 00 00       	pushq  $0x0
  40066b:	e9 e0 ff ff ff       	jmpq   400650 <_init+0x28>

0000000000400670 <printf@plt>:
  400670:	ff 25 aa 19 20 00    	jmpq   *0x2019aa(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400676:	68 01 00 00 00       	pushq  $0x1
  40067b:	e9 d0 ff ff ff       	jmpq   400650 <_init+0x28>

0000000000400680 <fputc@plt>:
  400680:	ff 25 a2 19 20 00    	jmpq   *0x2019a2(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400686:	68 02 00 00 00       	pushq  $0x2
  40068b:	e9 c0 ff ff ff       	jmpq   400650 <_init+0x28>

0000000000400690 <__libc_start_main@plt>:
  400690:	ff 25 9a 19 20 00    	jmpq   *0x20199a(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400696:	68 03 00 00 00       	pushq  $0x3
  40069b:	e9 b0 ff ff ff       	jmpq   400650 <_init+0x28>

00000000004006a0 <feof@plt>:
  4006a0:	ff 25 92 19 20 00    	jmpq   *0x201992(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4006a6:	68 04 00 00 00       	pushq  $0x4
  4006ab:	e9 a0 ff ff ff       	jmpq   400650 <_init+0x28>

00000000004006b0 <_IO_getc@plt>:
  4006b0:	ff 25 8a 19 20 00    	jmpq   *0x20198a(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4006b6:	68 05 00 00 00       	pushq  $0x5
  4006bb:	e9 90 ff ff ff       	jmpq   400650 <_init+0x28>

00000000004006c0 <fopen@plt>:
  4006c0:	ff 25 82 19 20 00    	jmpq   *0x201982(%rip)        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  4006c6:	68 06 00 00 00       	pushq  $0x6
  4006cb:	e9 80 ff ff ff       	jmpq   400650 <_init+0x28>

00000000004006d0 <perror@plt>:
  4006d0:	ff 25 7a 19 20 00    	jmpq   *0x20197a(%rip)        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  4006d6:	68 07 00 00 00       	pushq  $0x7
  4006db:	e9 70 ff ff ff       	jmpq   400650 <_init+0x28>

00000000004006e0 <vfprintf@plt>:
  4006e0:	ff 25 72 19 20 00    	jmpq   *0x201972(%rip)        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  4006e6:	68 08 00 00 00       	pushq  $0x8
  4006eb:	e9 60 ff ff ff       	jmpq   400650 <_init+0x28>

00000000004006f0 <exit@plt>:
  4006f0:	ff 25 6a 19 20 00    	jmpq   *0x20196a(%rip)        # 602060 <_GLOBAL_OFFSET_TABLE_+0x60>
  4006f6:	68 09 00 00 00       	pushq  $0x9
  4006fb:	e9 50 ff ff ff       	jmpq   400650 <_init+0x28>

0000000000400700 <__ctype_b_loc@plt>:
  400700:	ff 25 62 19 20 00    	jmpq   *0x201962(%rip)        # 602068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400706:	68 0a 00 00 00       	pushq  $0xa
  40070b:	e9 40 ff ff ff       	jmpq   400650 <_init+0x28>
