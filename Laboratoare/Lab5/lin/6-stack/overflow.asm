
overflow:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	ins    BYTE PTR es:[rdi],dx
 23a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 246:	78 2d                	js     275 <_init-0x343>
 248:	78 38                	js     282 <_init-0x336>
 24a:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
 250:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 251:	2e 32 00             	xor    al,BYTE PTR cs:[rax]

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    al,0x0
 256:	00 00                	add    BYTE PTR [rax],al
 258:	10 00                	adc    BYTE PTR [rax],al
 25a:	00 00                	add    BYTE PTR [rax],al
 25c:	01 00                	add    DWORD PTR [rax],eax
 25e:	00 00                	add    BYTE PTR [rax],al
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push rbp
 263:	00 00                	add    BYTE PTR [rax],al
 265:	00 00                	add    BYTE PTR [rax],al
 267:	00 03                	add    BYTE PTR [rbx],al
 269:	00 00                	add    BYTE PTR [rax],al
 26b:	00 02                	add    BYTE PTR [rdx],al
 26d:	00 00                	add    BYTE PTR [rax],al
 26f:	00 00                	add    BYTE PTR [rax],al
 271:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    al,0x0
 276:	00 00                	add    BYTE PTR [rax],al
 278:	14 00                	adc    al,0x0
 27a:	00 00                	add    BYTE PTR [rax],al
 27c:	03 00                	add    eax,DWORD PTR [rax]
 27e:	00 00                	add    BYTE PTR [rax],al
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push rbp
 283:	00 ba 4e 3f 46 ad    	add    BYTE PTR [rdx-0x52b9c0b2],bh
 289:	92                   	xchg   edx,eax
 28a:	93                   	xchg   ebx,eax
 28b:	f3 8e 51 98          	repz mov ss,WORD PTR [rcx-0x68]
 28f:	f0 96                	lock xchg esi,eax
 291:	fa                   	cli    
 292:	1c 74                	sbb    al,0x74
 294:	cb                   	retf   
 295:	c6                   	(bad)  
 296:	1b 31                	sbb    esi,DWORD PTR [rcx]

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	01 00                	add    DWORD PTR [rax],eax
 29a:	00 00                	add    BYTE PTR [rax],al
 29c:	01 00                	add    DWORD PTR [rax],eax
 29e:	00 00                	add    BYTE PTR [rax],al
 2a0:	01 00                	add    DWORD PTR [rax],eax
	...

Disassembly of section .dynsym:

00000000000002b8 <.dynsym>:
	...
 2d0:	64 00 00             	add    BYTE PTR fs:[rax],al
 2d3:	00 20                	add    BYTE PTR [rax],ah
	...
 2e5:	00 00                	add    BYTE PTR [rax],al
 2e7:	00 10                	add    BYTE PTR [rax],dl
 2e9:	00 00                	add    BYTE PTR [rax],al
 2eb:	00 12                	add    BYTE PTR [rdx],dl
	...
 2fd:	00 00                	add    BYTE PTR [rax],al
 2ff:	00 15 00 00 00 12    	add    BYTE PTR [rip+0x12000000],dl        # 12000305 <_end+0x11dfea9d>
	...
 315:	00 00                	add    BYTE PTR [rax],al
 317:	00 26                	add    BYTE PTR [rsi],ah
 319:	00 00                	add    BYTE PTR [rax],al
 31b:	00 12                	add    BYTE PTR [rdx],dl
	...
 32d:	00 00                	add    BYTE PTR [rax],al
 32f:	00 3c 00             	add    BYTE PTR [rax+rax*1],bh
 332:	00 00                	add    BYTE PTR [rax],al
 334:	12 00                	adc    al,BYTE PTR [rax]
	...
 346:	00 00                	add    BYTE PTR [rax],al
 348:	80 00 00             	add    BYTE PTR [rax],0x0
 34b:	00 20                	add    BYTE PTR [rax],ah
	...
 35d:	00 00                	add    BYTE PTR [rax],al
 35f:	00 0b                	add    BYTE PTR [rbx],cl
 361:	00 00                	add    BYTE PTR [rax],al
 363:	00 12                	add    BYTE PTR [rdx],dl
	...
 375:	00 00                	add    BYTE PTR [rax],al
 377:	00 8f 00 00 00 20    	add    BYTE PTR [rdi+0x20000000],cl
	...
 38d:	00 00                	add    BYTE PTR [rax],al
 38f:	00 2d 00 00 00 22    	add    BYTE PTR [rip+0x22000000],ch        # 22000395 <_end+0x21dfeb2d>
	...

Disassembly of section .dynstr:

00000000000003a8 <.dynstr>:
 3a8:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 3ac:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 3ae:	73 6f                	jae    41f <_init-0x199>
 3b0:	2e 36 00 65 78       	cs add BYTE PTR ss:[rbp+0x78],ah
 3b5:	69 74 00 70 75 74 73 	imul   esi,DWORD PTR [rax+rax*1+0x70],0x737475
 3bc:	00 
 3bd:	5f                   	pop    rdi
 3be:	5f                   	pop    rdi
 3bf:	73 74                	jae    435 <_init-0x183>
 3c1:	61                   	(bad)  
 3c2:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 3c5:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 3c8:	5f                   	pop    rdi
 3c9:	66 61                	data16 (bad) 
 3cb:	69 6c 00 70 72 69 6e 	imul   ebp,DWORD PTR [rax+rax*1+0x70],0x746e6972
 3d2:	74 
 3d3:	66 00 5f 5f          	data16 add BYTE PTR [rdi+0x5f],bl
 3d7:	63 78 61             	movsxd edi,DWORD PTR [rax+0x61]
 3da:	5f                   	pop    rdi
 3db:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 3e1:	7a 65                	jp     448 <_init-0x170>
 3e3:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 3e6:	6c                   	ins    BYTE PTR es:[rdi],dx
 3e7:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
 3ee:	72 74                	jb     464 <_init-0x154>
 3f0:	5f                   	pop    rdi
 3f1:	6d                   	ins    DWORD PTR es:[rdi],dx
 3f2:	61                   	(bad)  
 3f3:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [rsi+0x0],0x42494c47
 3fa:	43 5f                	rex.XB pop r15
 3fc:	32 2e                	xor    ch,BYTE PTR [rsi]
 3fe:	34 00                	xor    al,0x0
 400:	47                   	rex.RXB
 401:	4c                   	rex.WR
 402:	49                   	rex.WB
 403:	42                   	rex.X
 404:	43 5f                	rex.XB pop r15
 406:	32 2e                	xor    ch,BYTE PTR [rsi]
 408:	32 2e                	xor    ch,BYTE PTR [rsi]
 40a:	35 00 5f 49 54       	xor    eax,0x54495f00
 40f:	4d 5f                	rex.WRB pop r15
 411:	64 65 72 65          	fs gs jb 47a <_init-0x13e>
 415:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 41c:	4d 
 41d:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 41f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 420:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 421:	65 54                	gs push rsp
 423:	61                   	(bad)  
 424:	62                   	(bad)  
 425:	6c                   	ins    BYTE PTR es:[rdi],dx
 426:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
 42a:	67 6d                	ins    DWORD PTR es:[edi],dx
 42c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 42d:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 42e:	5f                   	pop    rdi
 42f:	73 74                	jae    4a5 <_init-0x113>
 431:	61                   	(bad)  
 432:	72 74                	jb     4a8 <_init-0x110>
 434:	5f                   	pop    rdi
 435:	5f                   	pop    rdi
 436:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 439:	54                   	push   rsp
 43a:	4d 5f                	rex.WRB pop r15
 43c:	72 65                	jb     4a3 <_init-0x115>
 43e:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 445:	4d 
 446:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 448:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 449:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 44a:	65 54                	gs push rsp
 44c:	61                   	(bad)  
 44d:	62                   	.byte 0x62
 44e:	6c                   	ins    BYTE PTR es:[rdi],dx
 44f:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000452 <.gnu.version>:
 452:	00 00                	add    BYTE PTR [rax],al
 454:	00 00                	add    BYTE PTR [rax],al
 456:	02 00                	add    al,BYTE PTR [rax]
 458:	03 00                	add    eax,DWORD PTR [rax]
 45a:	02 00                	add    al,BYTE PTR [rax]
 45c:	02 00                	add    al,BYTE PTR [rax]
 45e:	00 00                	add    BYTE PTR [rax],al
 460:	02 00                	add    al,BYTE PTR [rax]
 462:	00 00                	add    BYTE PTR [rax],al
 464:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

0000000000000468 <.gnu.version_r>:
 468:	01 00                	add    DWORD PTR [rax],eax
 46a:	02 00                	add    al,BYTE PTR [rax]
 46c:	01 00                	add    DWORD PTR [rax],eax
 46e:	00 00                	add    BYTE PTR [rax],al
 470:	10 00                	adc    BYTE PTR [rax],al
 472:	00 00                	add    BYTE PTR [rax],al
 474:	00 00                	add    BYTE PTR [rax],al
 476:	00 00                	add    BYTE PTR [rax],al
 478:	14 69                	adc    al,0x69
 47a:	69 0d 00 00 03 00 4e 	imul   ecx,DWORD PTR [rip+0x30000],0x4e        # 30484 <__FRAME_END__+0x2f860>
 481:	00 00 00 
 484:	10 00                	adc    BYTE PTR [rax],al
 486:	00 00                	add    BYTE PTR [rax],al
 488:	75 1a                	jne    4a4 <_init-0x114>
 48a:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
 490:	58                   	pop    rax
 491:	00 00                	add    BYTE PTR [rax],al
 493:	00 00                	add    BYTE PTR [rax],al
 495:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000000498 <.rela.dyn>:
 498:	a0 0d 20 00 00 00 00 	movabs al,ds:0x80000000000200d
 49f:	00 08 
 4a1:	00 00                	add    BYTE PTR [rax],al
 4a3:	00 00                	add    BYTE PTR [rax],al
 4a5:	00 00                	add    BYTE PTR [rax],al
 4a7:	00 30                	add    BYTE PTR [rax],dh
 4a9:	07                   	(bad)  
 4aa:	00 00                	add    BYTE PTR [rax],al
 4ac:	00 00                	add    BYTE PTR [rax],al
 4ae:	00 00                	add    BYTE PTR [rax],al
 4b0:	a8 0d                	test   al,0xd
 4b2:	20 00                	and    BYTE PTR [rax],al
 4b4:	00 00                	add    BYTE PTR [rax],al
 4b6:	00 00                	add    BYTE PTR [rax],al
 4b8:	08 00                	or     BYTE PTR [rax],al
 4ba:	00 00                	add    BYTE PTR [rax],al
 4bc:	00 00                	add    BYTE PTR [rax],al
 4be:	00 00                	add    BYTE PTR [rax],al
 4c0:	f0 06                	lock (bad) 
 4c2:	00 00                	add    BYTE PTR [rax],al
 4c4:	00 00                	add    BYTE PTR [rax],al
 4c6:	00 00                	add    BYTE PTR [rax],al
 4c8:	08 10                	or     BYTE PTR [rax],dl
 4ca:	20 00                	and    BYTE PTR [rax],al
 4cc:	00 00                	add    BYTE PTR [rax],al
 4ce:	00 00                	add    BYTE PTR [rax],al
 4d0:	08 00                	or     BYTE PTR [rax],al
 4d2:	00 00                	add    BYTE PTR [rax],al
 4d4:	00 00                	add    BYTE PTR [rax],al
 4d6:	00 00                	add    BYTE PTR [rax],al
 4d8:	08 10                	or     BYTE PTR [rax],dl
 4da:	20 00                	and    BYTE PTR [rax],al
 4dc:	00 00                	add    BYTE PTR [rax],al
 4de:	00 00                	add    BYTE PTR [rax],al
 4e0:	d8 0f                	fmul   DWORD PTR [rdi]
 4e2:	20 00                	and    BYTE PTR [rax],al
 4e4:	00 00                	add    BYTE PTR [rax],al
 4e6:	00 00                	add    BYTE PTR [rax],al
 4e8:	06                   	(bad)  
 4e9:	00 00                	add    BYTE PTR [rax],al
 4eb:	00 01                	add    BYTE PTR [rcx],al
	...
 4f5:	00 00                	add    BYTE PTR [rax],al
 4f7:	00 e0                	add    al,ah
 4f9:	0f 20 00             	mov    rax,cr0
 4fc:	00 00                	add    BYTE PTR [rax],al
 4fe:	00 00                	add    BYTE PTR [rax],al
 500:	06                   	(bad)  
 501:	00 00                	add    BYTE PTR [rax],al
 503:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 509 <_init-0xaf>
 509:	00 00                	add    BYTE PTR [rax],al
 50b:	00 00                	add    BYTE PTR [rax],al
 50d:	00 00                	add    BYTE PTR [rax],al
 50f:	00 e8                	add    al,ch
 511:	0f 20 00             	mov    rax,cr0
 514:	00 00                	add    BYTE PTR [rax],al
 516:	00 00                	add    BYTE PTR [rax],al
 518:	06                   	(bad)  
 519:	00 00                	add    BYTE PTR [rax],al
 51b:	00 06                	add    BYTE PTR [rsi],al
	...
 525:	00 00                	add    BYTE PTR [rax],al
 527:	00 f0                	add    al,dh
 529:	0f 20 00             	mov    rax,cr0
 52c:	00 00                	add    BYTE PTR [rax],al
 52e:	00 00                	add    BYTE PTR [rax],al
 530:	06                   	(bad)  
 531:	00 00                	add    BYTE PTR [rax],al
 533:	00 08                	add    BYTE PTR [rax],cl
	...
 53d:	00 00                	add    BYTE PTR [rax],al
 53f:	00 f8                	add    al,bh
 541:	0f 20 00             	mov    rax,cr0
 544:	00 00                	add    BYTE PTR [rax],al
 546:	00 00                	add    BYTE PTR [rax],al
 548:	06                   	(bad)  
 549:	00 00                	add    BYTE PTR [rax],al
 54b:	00 09                	add    BYTE PTR [rcx],cl
	...

Disassembly of section .rela.plt:

0000000000000558 <.rela.plt>:
 558:	b8 0f 20 00 00       	mov    eax,0x200f
 55d:	00 00                	add    BYTE PTR [rax],al
 55f:	00 07                	add    BYTE PTR [rdi],al
 561:	00 00                	add    BYTE PTR [rax],al
 563:	00 02                	add    BYTE PTR [rdx],al
	...
 56d:	00 00                	add    BYTE PTR [rax],al
 56f:	00 c0                	add    al,al
 571:	0f 20 00             	mov    rax,cr0
 574:	00 00                	add    BYTE PTR [rax],al
 576:	00 00                	add    BYTE PTR [rax],al
 578:	07                   	(bad)  
 579:	00 00                	add    BYTE PTR [rax],al
 57b:	00 03                	add    BYTE PTR [rbx],al
	...
 585:	00 00                	add    BYTE PTR [rax],al
 587:	00 c8                	add    al,cl
 589:	0f 20 00             	mov    rax,cr0
 58c:	00 00                	add    BYTE PTR [rax],al
 58e:	00 00                	add    BYTE PTR [rax],al
 590:	07                   	(bad)  
 591:	00 00                	add    BYTE PTR [rax],al
 593:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
 59e:	00 00                	add    BYTE PTR [rax],al
 5a0:	d0 0f                	ror    BYTE PTR [rdi],1
 5a2:	20 00                	and    BYTE PTR [rax],al
 5a4:	00 00                	add    BYTE PTR [rax],al
 5a6:	00 00                	add    BYTE PTR [rax],al
 5a8:	07                   	(bad)  
 5a9:	00 00                	add    BYTE PTR [rax],al
 5ab:	00 07                	add    BYTE PTR [rdi],al
	...

Disassembly of section .init:

00000000000005b8 <_init>:
 5b8:	48 83 ec 08          	sub    rsp,0x8
 5bc:	48 8b 05 25 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a25]        # 200fe8 <__gmon_start__>
 5c3:	48 85 c0             	test   rax,rax
 5c6:	74 02                	je     5ca <_init+0x12>
 5c8:	ff d0                	call   rax
 5ca:	48 83 c4 08          	add    rsp,0x8
 5ce:	c3                   	ret    

Disassembly of section .plt:

00000000000005d0 <.plt>:
 5d0:	ff 35 d2 09 20 00    	push   QWORD PTR [rip+0x2009d2]        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
 5d6:	ff 25 d4 09 20 00    	jmp    QWORD PTR [rip+0x2009d4]        # 200fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
 5dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000005e0 <puts@plt>:
 5e0:	ff 25 d2 09 20 00    	jmp    QWORD PTR [rip+0x2009d2]        # 200fb8 <puts@GLIBC_2.2.5>
 5e6:	68 00 00 00 00       	push   0x0
 5eb:	e9 e0 ff ff ff       	jmp    5d0 <.plt>

00000000000005f0 <__stack_chk_fail@plt>:
 5f0:	ff 25 ca 09 20 00    	jmp    QWORD PTR [rip+0x2009ca]        # 200fc0 <__stack_chk_fail@GLIBC_2.4>
 5f6:	68 01 00 00 00       	push   0x1
 5fb:	e9 d0 ff ff ff       	jmp    5d0 <.plt>

0000000000000600 <printf@plt>:
 600:	ff 25 c2 09 20 00    	jmp    QWORD PTR [rip+0x2009c2]        # 200fc8 <printf@GLIBC_2.2.5>
 606:	68 02 00 00 00       	push   0x2
 60b:	e9 c0 ff ff ff       	jmp    5d0 <.plt>

0000000000000610 <exit@plt>:
 610:	ff 25 ba 09 20 00    	jmp    QWORD PTR [rip+0x2009ba]        # 200fd0 <exit@GLIBC_2.2.5>
 616:	68 03 00 00 00       	push   0x3
 61b:	e9 b0 ff ff ff       	jmp    5d0 <.plt>

Disassembly of section .plt.got:

0000000000000620 <__cxa_finalize@plt>:
 620:	ff 25 d2 09 20 00    	jmp    QWORD PTR [rip+0x2009d2]        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 626:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000630 <_start>:
 630:	31 ed                	xor    ebp,ebp
 632:	49 89 d1             	mov    r9,rdx
 635:	5e                   	pop    rsi
 636:	48 89 e2             	mov    rdx,rsp
 639:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
 63d:	50                   	push   rax
 63e:	54                   	push   rsp
 63f:	4c 8d 05 aa 03 00 00 	lea    r8,[rip+0x3aa]        # 9f0 <__libc_csu_fini>
 646:	48 8d 0d 33 03 00 00 	lea    rcx,[rip+0x333]        # 980 <__libc_csu_init>
 64d:	48 8d 3d c4 02 00 00 	lea    rdi,[rip+0x2c4]        # 918 <main>
 654:	ff 15 86 09 20 00    	call   QWORD PTR [rip+0x200986]        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 65a:	f4                   	hlt    
 65b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000660 <deregister_tm_clones>:
 660:	48 8d 3d a9 09 20 00 	lea    rdi,[rip+0x2009a9]        # 201010 <__TMC_END__>
 667:	55                   	push   rbp
 668:	48 8d 05 a1 09 20 00 	lea    rax,[rip+0x2009a1]        # 201010 <__TMC_END__>
 66f:	48 39 f8             	cmp    rax,rdi
 672:	48 89 e5             	mov    rbp,rsp
 675:	74 19                	je     690 <deregister_tm_clones+0x30>
 677:	48 8b 05 5a 09 20 00 	mov    rax,QWORD PTR [rip+0x20095a]        # 200fd8 <_ITM_deregisterTMCloneTable>
 67e:	48 85 c0             	test   rax,rax
 681:	74 0d                	je     690 <deregister_tm_clones+0x30>
 683:	5d                   	pop    rbp
 684:	ff e0                	jmp    rax
 686:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 68d:	00 00 00 
 690:	5d                   	pop    rbp
 691:	c3                   	ret    
 692:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 696:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 69d:	00 00 00 

00000000000006a0 <register_tm_clones>:
 6a0:	48 8d 3d 69 09 20 00 	lea    rdi,[rip+0x200969]        # 201010 <__TMC_END__>
 6a7:	48 8d 35 62 09 20 00 	lea    rsi,[rip+0x200962]        # 201010 <__TMC_END__>
 6ae:	55                   	push   rbp
 6af:	48 29 fe             	sub    rsi,rdi
 6b2:	48 89 e5             	mov    rbp,rsp
 6b5:	48 c1 fe 03          	sar    rsi,0x3
 6b9:	48 89 f0             	mov    rax,rsi
 6bc:	48 c1 e8 3f          	shr    rax,0x3f
 6c0:	48 01 c6             	add    rsi,rax
 6c3:	48 d1 fe             	sar    rsi,1
 6c6:	74 18                	je     6e0 <register_tm_clones+0x40>
 6c8:	48 8b 05 21 09 20 00 	mov    rax,QWORD PTR [rip+0x200921]        # 200ff0 <_ITM_registerTMCloneTable>
 6cf:	48 85 c0             	test   rax,rax
 6d2:	74 0c                	je     6e0 <register_tm_clones+0x40>
 6d4:	5d                   	pop    rbp
 6d5:	ff e0                	jmp    rax
 6d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 6de:	00 00 
 6e0:	5d                   	pop    rbp
 6e1:	c3                   	ret    
 6e2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 6e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 6ed:	00 00 00 

00000000000006f0 <__do_global_dtors_aux>:
 6f0:	80 3d 29 09 20 00 00 	cmp    BYTE PTR [rip+0x200929],0x0        # 201020 <completed.7698>
 6f7:	75 2f                	jne    728 <__do_global_dtors_aux+0x38>
 6f9:	48 83 3d f7 08 20 00 	cmp    QWORD PTR [rip+0x2008f7],0x0        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 700:	00 
 701:	55                   	push   rbp
 702:	48 89 e5             	mov    rbp,rsp
 705:	74 0c                	je     713 <__do_global_dtors_aux+0x23>
 707:	48 8b 3d fa 08 20 00 	mov    rdi,QWORD PTR [rip+0x2008fa]        # 201008 <__dso_handle>
 70e:	e8 0d ff ff ff       	call   620 <__cxa_finalize@plt>
 713:	e8 48 ff ff ff       	call   660 <deregister_tm_clones>
 718:	c6 05 01 09 20 00 01 	mov    BYTE PTR [rip+0x200901],0x1        # 201020 <completed.7698>
 71f:	5d                   	pop    rbp
 720:	c3                   	ret    
 721:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 728:	f3 c3                	repz ret 
 72a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000730 <frame_dummy>:
 730:	55                   	push   rbp
 731:	48 89 e5             	mov    rbp,rsp
 734:	5d                   	pop    rbp
 735:	e9 66 ff ff ff       	jmp    6a0 <register_tm_clones>

000000000000073a <show_snapshot>:
 73a:	55                   	push   rbp
 73b:	48 89 e5             	mov    rbp,rsp
 73e:	c7 05 10 09 20 00 00 	mov    DWORD PTR [rip+0x200910],0x0        # 201058 <i>
 745:	00 00 00 
 748:	eb 57                	jmp    7a1 <show_snapshot+0x67>
 74a:	8b 05 08 09 20 00    	mov    eax,DWORD PTR [rip+0x200908]        # 201058 <i>
 750:	48 98                	cdqe   
 752:	48 c1 e0 04          	shl    rax,0x4
 756:	48 89 c2             	mov    rdx,rax
 759:	48 8d 05 08 09 20 00 	lea    rax,[rip+0x200908]        # 201068 <stack+0x8>
 760:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
 764:	8b 05 ee 08 20 00    	mov    eax,DWORD PTR [rip+0x2008ee]        # 201058 <i>
 76a:	48 98                	cdqe   
 76c:	48 c1 e0 04          	shl    rax,0x4
 770:	48 89 c1             	mov    rcx,rax
 773:	48 8d 05 e6 08 20 00 	lea    rax,[rip+0x2008e6]        # 201060 <stack>
 77a:	48 8b 04 01          	mov    rax,QWORD PTR [rcx+rax*1]
 77e:	48 89 c6             	mov    rsi,rax
 781:	48 8d 3d 7c 02 00 00 	lea    rdi,[rip+0x27c]        # a04 <_IO_stdin_used+0x4>
 788:	b8 00 00 00 00       	mov    eax,0x0
 78d:	e8 6e fe ff ff       	call   600 <printf@plt>
 792:	8b 05 c0 08 20 00    	mov    eax,DWORD PTR [rip+0x2008c0]        # 201058 <i>
 798:	83 c0 01             	add    eax,0x1
 79b:	89 05 b7 08 20 00    	mov    DWORD PTR [rip+0x2008b7],eax        # 201058 <i>
 7a1:	8b 15 b1 08 20 00    	mov    edx,DWORD PTR [rip+0x2008b1]        # 201058 <i>
 7a7:	8b 05 93 08 20 00    	mov    eax,DWORD PTR [rip+0x200893]        # 201040 <size>
 7ad:	39 c2                	cmp    edx,eax
 7af:	7c 99                	jl     74a <show_snapshot+0x10>
 7b1:	90                   	nop
 7b2:	5d                   	pop    rbp
 7b3:	c3                   	ret    

00000000000007b4 <take_snapshot>:
 7b4:	55                   	push   rbp
 7b5:	48 89 e5             	mov    rbp,rsp
 7b8:	48 8b 05 a1 10 20 00 	mov    rax,QWORD PTR [rip+0x2010a1]        # 201860 <ebp>
 7bf:	48 89 05 82 08 20 00 	mov    QWORD PTR [rip+0x200882],rax        # 201048 <p>
 7c6:	eb 67                	jmp    82f <take_snapshot+0x7b>
 7c8:	8b 05 72 08 20 00    	mov    eax,DWORD PTR [rip+0x200872]        # 201040 <size>
 7ce:	48 8b 15 73 08 20 00 	mov    rdx,QWORD PTR [rip+0x200873]        # 201048 <p>
 7d5:	48 98                	cdqe   
 7d7:	48 c1 e0 04          	shl    rax,0x4
 7db:	48 89 c1             	mov    rcx,rax
 7de:	48 8d 05 7b 08 20 00 	lea    rax,[rip+0x20087b]        # 201060 <stack>
 7e5:	48 89 14 01          	mov    QWORD PTR [rcx+rax*1],rdx
 7e9:	48 8b 05 58 08 20 00 	mov    rax,QWORD PTR [rip+0x200858]        # 201048 <p>
 7f0:	8b 0d 4a 08 20 00    	mov    ecx,DWORD PTR [rip+0x20084a]        # 201040 <size>
 7f6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
 7f9:	48 63 c1             	movsxd rax,ecx
 7fc:	48 c1 e0 04          	shl    rax,0x4
 800:	48 89 c1             	mov    rcx,rax
 803:	48 8d 05 5e 08 20 00 	lea    rax,[rip+0x20085e]        # 201068 <stack+0x8>
 80a:	48 89 14 01          	mov    QWORD PTR [rcx+rax*1],rdx
 80e:	8b 05 2c 08 20 00    	mov    eax,DWORD PTR [rip+0x20082c]        # 201040 <size>
 814:	83 c0 01             	add    eax,0x1
 817:	89 05 23 08 20 00    	mov    DWORD PTR [rip+0x200823],eax        # 201040 <size>
 81d:	48 8b 05 24 08 20 00 	mov    rax,QWORD PTR [rip+0x200824]        # 201048 <p>
 824:	48 83 e8 08          	sub    rax,0x8
 828:	48 89 05 19 08 20 00 	mov    QWORD PTR [rip+0x200819],rax        # 201048 <p>
 82f:	48 8b 15 12 08 20 00 	mov    rdx,QWORD PTR [rip+0x200812]        # 201048 <p>
 836:	48 8b 05 13 08 20 00 	mov    rax,QWORD PTR [rip+0x200813]        # 201050 <esp>
 83d:	48 39 c2             	cmp    rdx,rax
 840:	73 86                	jae    7c8 <take_snapshot+0x14>
 842:	90                   	nop
 843:	5d                   	pop    rbp
 844:	c3                   	ret    

0000000000000845 <show_message>:
 845:	55                   	push   rbp
 846:	48 89 e5             	mov    rbp,rsp
 849:	48 8d 3d c0 01 00 00 	lea    rdi,[rip+0x1c0]        # a10 <_IO_stdin_used+0x10>
 850:	e8 8b fd ff ff       	call   5e0 <puts@plt>
 855:	e8 e0 fe ff ff       	call   73a <show_snapshot>
 85a:	bf 01 00 00 00       	mov    edi,0x1
 85f:	e8 ac fd ff ff       	call   610 <exit@plt>

0000000000000864 <f2>:
 864:	55                   	push   rbp
 865:	48 89 e5             	mov    rbp,rsp
 868:	48 83 ec 30          	sub    rsp,0x30
 86c:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
 870:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 877:	00 00 
 879:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 87d:	31 c0                	xor    eax,eax
 87f:	48 c7 45 e0 06 00 00 	mov    QWORD PTR [rbp-0x20],0x6
 886:	00 
 887:	48 c7 45 e8 07 00 00 	mov    QWORD PTR [rbp-0x18],0x7
 88e:	00 
 88f:	48 c7 45 f0 08 00 00 	mov    QWORD PTR [rbp-0x10],0x8
 896:	00 
 897:	48 8d 05 a7 ff ff ff 	lea    rax,[rip+0xffffffffffffffa7]        # 845 <show_message>
 89e:	48 89 45 08          	mov    QWORD PTR [rbp+0x8],rax
 8a2:	48 89 e0             	mov    rax,rsp
 8a5:	48 89 05 a4 07 20 00 	mov    QWORD PTR [rip+0x2007a4],rax        # 201050 <esp>
 8ac:	e8 03 ff ff ff       	call   7b4 <take_snapshot>
 8b1:	90                   	nop
 8b2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 8b6:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
 8bd:	00 00 
 8bf:	74 05                	je     8c6 <f2+0x62>
 8c1:	e8 2a fd ff ff       	call   5f0 <__stack_chk_fail@plt>
 8c6:	c9                   	leave  
 8c7:	c3                   	ret    

00000000000008c8 <f1>:
 8c8:	55                   	push   rbp
 8c9:	48 89 e5             	mov    rbp,rsp
 8cc:	48 83 ec 20          	sub    rsp,0x20
 8d0:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 8d7:	00 00 
 8d9:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 8dd:	31 c0                	xor    eax,eax
 8df:	48 c7 45 e0 03 00 00 	mov    QWORD PTR [rbp-0x20],0x3
 8e6:	00 
 8e7:	48 c7 45 e8 04 00 00 	mov    QWORD PTR [rbp-0x18],0x4
 8ee:	00 
 8ef:	48 c7 45 f0 05 00 00 	mov    QWORD PTR [rbp-0x10],0x5
 8f6:	00 
 8f7:	bf ef be ad de       	mov    edi,0xdeadbeef
 8fc:	e8 63 ff ff ff       	call   864 <f2>
 901:	90                   	nop
 902:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 906:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
 90d:	00 00 
 90f:	74 05                	je     916 <f1+0x4e>
 911:	e8 da fc ff ff       	call   5f0 <__stack_chk_fail@plt>
 916:	c9                   	leave  
 917:	c3                   	ret    

0000000000000918 <main>:
 918:	55                   	push   rbp
 919:	48 89 e5             	mov    rbp,rsp
 91c:	48 83 ec 20          	sub    rsp,0x20
 920:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 927:	00 00 
 929:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 92d:	31 c0                	xor    eax,eax
 92f:	48 c7 45 e0 01 00 00 	mov    QWORD PTR [rbp-0x20],0x1
 936:	00 
 937:	48 c7 45 e8 02 00 00 	mov    QWORD PTR [rbp-0x18],0x2
 93e:	00 
 93f:	48 c7 45 f0 03 00 00 	mov    QWORD PTR [rbp-0x10],0x3
 946:	00 
 947:	48 89 e8             	mov    rax,rbp
 94a:	48 89 05 0f 0f 20 00 	mov    QWORD PTR [rip+0x200f0f],rax        # 201860 <ebp>
 951:	b8 00 00 00 00       	mov    eax,0x0
 956:	e8 6d ff ff ff       	call   8c8 <f1>
 95b:	e8 da fd ff ff       	call   73a <show_snapshot>
 960:	b8 00 00 00 00       	mov    eax,0x0
 965:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 969:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
 970:	00 00 
 972:	74 05                	je     979 <main+0x61>
 974:	e8 77 fc ff ff       	call   5f0 <__stack_chk_fail@plt>
 979:	c9                   	leave  
 97a:	c3                   	ret    
 97b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000980 <__libc_csu_init>:
 980:	41 57                	push   r15
 982:	41 56                	push   r14
 984:	49 89 d7             	mov    r15,rdx
 987:	41 55                	push   r13
 989:	41 54                	push   r12
 98b:	4c 8d 25 0e 04 20 00 	lea    r12,[rip+0x20040e]        # 200da0 <__frame_dummy_init_array_entry>
 992:	55                   	push   rbp
 993:	48 8d 2d 0e 04 20 00 	lea    rbp,[rip+0x20040e]        # 200da8 <__init_array_end>
 99a:	53                   	push   rbx
 99b:	41 89 fd             	mov    r13d,edi
 99e:	49 89 f6             	mov    r14,rsi
 9a1:	4c 29 e5             	sub    rbp,r12
 9a4:	48 83 ec 08          	sub    rsp,0x8
 9a8:	48 c1 fd 03          	sar    rbp,0x3
 9ac:	e8 07 fc ff ff       	call   5b8 <_init>
 9b1:	48 85 ed             	test   rbp,rbp
 9b4:	74 20                	je     9d6 <__libc_csu_init+0x56>
 9b6:	31 db                	xor    ebx,ebx
 9b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 9bf:	00 
 9c0:	4c 89 fa             	mov    rdx,r15
 9c3:	4c 89 f6             	mov    rsi,r14
 9c6:	44 89 ef             	mov    edi,r13d
 9c9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
 9cd:	48 83 c3 01          	add    rbx,0x1
 9d1:	48 39 dd             	cmp    rbp,rbx
 9d4:	75 ea                	jne    9c0 <__libc_csu_init+0x40>
 9d6:	48 83 c4 08          	add    rsp,0x8
 9da:	5b                   	pop    rbx
 9db:	5d                   	pop    rbp
 9dc:	41 5c                	pop    r12
 9de:	41 5d                	pop    r13
 9e0:	41 5e                	pop    r14
 9e2:	41 5f                	pop    r15
 9e4:	c3                   	ret    
 9e5:	90                   	nop
 9e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 9ed:	00 00 00 

00000000000009f0 <__libc_csu_fini>:
 9f0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000000009f4 <_fini>:
 9f4:	48 83 ec 08          	sub    rsp,0x8
 9f8:	48 83 c4 08          	add    rsp,0x8
 9fc:	c3                   	ret    

Disassembly of section .rodata:

0000000000000a00 <_IO_stdin_used>:
 a00:	01 00                	add    DWORD PTR [rax],eax
 a02:	02 00                	add    al,BYTE PTR [rax]
 a04:	5b                   	pop    rbx
 a05:	25 70 5d 3a 30       	and    eax,0x303a5d70
 a0a:	78 25                	js     a31 <__GNU_EH_FRAME_HDR+0x19>
 a0c:	6c                   	ins    BYTE PTR es:[rdi],dx
 a0d:	78 0a                	js     a19 <__GNU_EH_FRAME_HDR+0x1>
 a0f:	00 73 30             	add    BYTE PTR [rbx+0x30],dh
 a12:	72 55                	jb     a69 <__GNU_EH_FRAME_HDR+0x51>
 a14:	31 6c 7a 00          	xor    DWORD PTR [rdx+rdi*2+0x0],ebp

Disassembly of section .eh_frame_hdr:

0000000000000a18 <__GNU_EH_FRAME_HDR>:
 a18:	01 1b                	add    DWORD PTR [rbx],ebx
 a1a:	03 3b                	add    edi,DWORD PTR [rbx]
 a1c:	64 00 00             	add    BYTE PTR fs:[rax],al
 a1f:	00 0b                	add    BYTE PTR [rbx],cl
 a21:	00 00                	add    BYTE PTR [rax],al
 a23:	00 b8 fb ff ff b0    	add    BYTE PTR [rax-0x4f000005],bh
 a29:	00 00                	add    BYTE PTR [rax],al
 a2b:	00 08                	add    BYTE PTR [rax],cl
 a2d:	fc                   	cld    
 a2e:	ff                   	(bad)  
 a2f:	ff                   	(bad)  
 a30:	d8 00                	fadd   DWORD PTR [rax]
 a32:	00 00                	add    BYTE PTR [rax],al
 a34:	18 fc                	sbb    ah,bh
 a36:	ff                   	(bad)  
 a37:	ff 80 00 00 00 22    	inc    DWORD PTR [rax+0x22000000]
 a3d:	fd                   	std    
 a3e:	ff                   	(bad)  
 a3f:	ff f0                	push   rax
 a41:	00 00                	add    BYTE PTR [rax],al
 a43:	00 9c fd ff ff 10 01 	add    BYTE PTR [rbp+rdi*8+0x110ffff],bl
 a4a:	00 00                	add    BYTE PTR [rax],al
 a4c:	2d fe ff ff 30       	sub    eax,0x30fffffe
 a51:	01 00                	add    DWORD PTR [rax],eax
 a53:	00 4c fe ff          	add    BYTE PTR [rsi+rdi*8-0x1],cl
 a57:	ff 4c 01 00          	dec    DWORD PTR [rcx+rax*1+0x0]
 a5b:	00 b0 fe ff ff 6c    	add    BYTE PTR [rax+0x6cfffffe],dh
 a61:	01 00                	add    DWORD PTR [rax],eax
 a63:	00 00                	add    BYTE PTR [rax],al
 a65:	ff                   	(bad)  
 a66:	ff                   	(bad)  
 a67:	ff 8c 01 00 00 68 ff 	dec    DWORD PTR [rcx+rax*1-0x980000]
 a6e:	ff                   	(bad)  
 a6f:	ff b0 01 00 00 d8    	push   QWORD PTR [rax-0x27ffffff]
 a75:	ff                   	(bad)  
 a76:	ff                   	(bad)  
 a77:	ff                   	(bad)  
 a78:	f8                   	clc    
 a79:	01 00                	add    DWORD PTR [rax],eax
	...

Disassembly of section .eh_frame:

0000000000000a80 <__FRAME_END__-0x1a4>:
 a80:	14 00                	adc    al,0x0
 a82:	00 00                	add    BYTE PTR [rax],al
 a84:	00 00                	add    BYTE PTR [rax],al
 a86:	00 00                	add    BYTE PTR [rax],al
 a88:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
 a8b:	00 01                	add    BYTE PTR [rcx],al
 a8d:	78 10                	js     a9f <__GNU_EH_FRAME_HDR+0x87>
 a8f:	01 1b                	add    DWORD PTR [rbx],ebx
 a91:	0c 07                	or     al,0x7
 a93:	08 90 01 07 10 14    	or     BYTE PTR [rax+0x14100701],dl
 a99:	00 00                	add    BYTE PTR [rax],al
 a9b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 a9e:	00 00                	add    BYTE PTR [rax],al
 aa0:	90                   	nop
 aa1:	fb                   	sti    
 aa2:	ff                   	(bad)  
 aa3:	ff 2b                	jmp    FWORD PTR [rbx]
	...
 aad:	00 00                	add    BYTE PTR [rax],al
 aaf:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
 ab2:	00 00                	add    BYTE PTR [rax],al
 ab4:	00 00                	add    BYTE PTR [rax],al
 ab6:	00 00                	add    BYTE PTR [rax],al
 ab8:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
 abb:	00 01                	add    BYTE PTR [rcx],al
 abd:	78 10                	js     acf <__GNU_EH_FRAME_HDR+0xb7>
 abf:	01 1b                	add    DWORD PTR [rbx],ebx
 ac1:	0c 07                	or     al,0x7
 ac3:	08 90 01 00 00 24    	or     BYTE PTR [rax+0x24000001],dl
 ac9:	00 00                	add    BYTE PTR [rax],al
 acb:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 ace:	00 00                	add    BYTE PTR [rax],al
 ad0:	00 fb                	add    bl,bh
 ad2:	ff                   	(bad)  
 ad3:	ff 50 00             	call   QWORD PTR [rax+0x0]
 ad6:	00 00                	add    BYTE PTR [rax],al
 ad8:	00 0e                	add    BYTE PTR [rsi],cl
 ada:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
 add:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
 ae0:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
 ae3:	80 00 3f             	add    BYTE PTR [rax],0x3f
 ae6:	1a 3b                	sbb    bh,BYTE PTR [rbx]
 ae8:	2a 33                	sub    dh,BYTE PTR [rbx]
 aea:	24 22                	and    al,0x22
 aec:	00 00                	add    BYTE PTR [rax],al
 aee:	00 00                	add    BYTE PTR [rax],al
 af0:	14 00                	adc    al,0x0
 af2:	00 00                	add    BYTE PTR [rax],al
 af4:	44 00 00             	add    BYTE PTR [rax],r8b
 af7:	00 28                	add    BYTE PTR [rax],ch
 af9:	fb                   	sti    
 afa:	ff                   	(bad)  
 afb:	ff 08                	dec    DWORD PTR [rax]
	...
 b05:	00 00                	add    BYTE PTR [rax],al
 b07:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 b0a:	00 00                	add    BYTE PTR [rax],al
 b0c:	5c                   	pop    rsp
 b0d:	00 00                	add    BYTE PTR [rax],al
 b0f:	00 2a                	add    BYTE PTR [rdx],ch
 b11:	fc                   	cld    
 b12:	ff                   	(bad)  
 b13:	ff                   	(bad)  
 b14:	7a 00                	jp     b16 <__GNU_EH_FRAME_HDR+0xfe>
 b16:	00 00                	add    BYTE PTR [rax],al
 b18:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
 b1b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 b21:	02 75 0c             	add    dh,BYTE PTR [rbp+0xc]
 b24:	07                   	(bad)  
 b25:	08 00                	or     BYTE PTR [rax],al
 b27:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 b2a:	00 00                	add    BYTE PTR [rax],al
 b2c:	7c 00                	jl     b2e <__GNU_EH_FRAME_HDR+0x116>
 b2e:	00 00                	add    BYTE PTR [rax],al
 b30:	84 fc                	test   ah,bh
 b32:	ff                   	(bad)  
 b33:	ff 91 00 00 00 00    	call   QWORD PTR [rcx+0x0]
 b39:	41 0e                	rex.B (bad) 
 b3b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 b41:	02 8c 0c 07 08 00 00 	add    cl,BYTE PTR [rsp+rcx*1+0x807]
 b48:	18 00                	sbb    BYTE PTR [rax],al
 b4a:	00 00                	add    BYTE PTR [rax],al
 b4c:	9c                   	pushf  
 b4d:	00 00                	add    BYTE PTR [rax],al
 b4f:	00 f5                	add    ch,dh
 b51:	fc                   	cld    
 b52:	ff                   	(bad)  
 b53:	ff 1f                	call   FWORD PTR [rdi]
 b55:	00 00                	add    BYTE PTR [rax],al
 b57:	00 00                	add    BYTE PTR [rax],al
 b59:	41 0e                	rex.B (bad) 
 b5b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 b61:	00 00                	add    BYTE PTR [rax],al
 b63:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 b66:	00 00                	add    BYTE PTR [rax],al
 b68:	b8 00 00 00 f8       	mov    eax,0xf8000000
 b6d:	fc                   	cld    
 b6e:	ff                   	(bad)  
 b6f:	ff 64 00 00          	jmp    QWORD PTR [rax+rax*1+0x0]
 b73:	00 00                	add    BYTE PTR [rax],al
 b75:	41 0e                	rex.B (bad) 
 b77:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 b7d:	02 5f 0c             	add    bl,BYTE PTR [rdi+0xc]
 b80:	07                   	(bad)  
 b81:	08 00                	or     BYTE PTR [rax],al
 b83:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 b86:	00 00                	add    BYTE PTR [rax],al
 b88:	d8 00                	fadd   DWORD PTR [rax]
 b8a:	00 00                	add    BYTE PTR [rax],al
 b8c:	3c fd                	cmp    al,0xfd
 b8e:	ff                   	(bad)  
 b8f:	ff 50 00             	call   QWORD PTR [rax+0x0]
 b92:	00 00                	add    BYTE PTR [rax],al
 b94:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
 b97:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 b9d:	02 4b 0c             	add    cl,BYTE PTR [rbx+0xc]
 ba0:	07                   	(bad)  
 ba1:	08 00                	or     BYTE PTR [rax],al
 ba3:	00 20                	add    BYTE PTR [rax],ah
 ba5:	00 00                	add    BYTE PTR [rax],al
 ba7:	00 f8                	add    al,bh
 ba9:	00 00                	add    BYTE PTR [rax],al
 bab:	00 6c fd ff          	add    BYTE PTR [rbp+rdi*8-0x1],ch
 baf:	ff 63 00             	jmp    QWORD PTR [rbx+0x0]
 bb2:	00 00                	add    BYTE PTR [rax],al
 bb4:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
 bb7:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 bbd:	02 5e 0c             	add    bl,BYTE PTR [rsi+0xc]
 bc0:	07                   	(bad)  
 bc1:	08 00                	or     BYTE PTR [rax],al
 bc3:	00 00                	add    BYTE PTR [rax],al
 bc5:	00 00                	add    BYTE PTR [rax],al
 bc7:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
 bcb:	00 1c 01             	add    BYTE PTR [rcx+rax*1],bl
 bce:	00 00                	add    BYTE PTR [rax],al
 bd0:	b0 fd                	mov    al,0xfd
 bd2:	ff                   	(bad)  
 bd3:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
 bd6:	00 00                	add    BYTE PTR [rax],al
 bd8:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
 bdb:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
 be1:	8e 03                	mov    es,WORD PTR [rbx]
 be3:	45 0e                	rex.RB (bad) 
 be5:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
 beb:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff86301a39 <_end+0xffffffff861001d1>
 bf1:	06                   	(bad)  
 bf2:	48 0e                	rex.W (bad) 
 bf4:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
 bfa:	72 0e                	jb     c0a <__GNU_EH_FRAME_HDR+0x1f2>
 bfc:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
 bff:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
 c02:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
 c05:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
 c08:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
 c0b:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
 c0e:	08 00                	or     BYTE PTR [rax],al
 c10:	10 00                	adc    BYTE PTR [rax],al
 c12:	00 00                	add    BYTE PTR [rax],al
 c14:	64 01 00             	add    DWORD PTR fs:[rax],eax
 c17:	00 d8                	add    al,bl
 c19:	fd                   	std    
 c1a:	ff                   	(bad)  
 c1b:	ff 02                	inc    DWORD PTR [rdx]
 c1d:	00 00                	add    BYTE PTR [rax],al
 c1f:	00 00                	add    BYTE PTR [rax],al
 c21:	00 00                	add    BYTE PTR [rax],al
	...

0000000000000c24 <__FRAME_END__>:
 c24:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000200da0 <__frame_dummy_init_array_entry>:
  200da0:	30 07                	xor    BYTE PTR [rdi],al
  200da2:	00 00                	add    BYTE PTR [rax],al
  200da4:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000200da8 <__do_global_dtors_aux_fini_array_entry>:
  200da8:	f0 06                	lock (bad) 
  200daa:	00 00                	add    BYTE PTR [rax],al
  200dac:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000200db0 <_DYNAMIC>:
  200db0:	01 00                	add    DWORD PTR [rax],eax
  200db2:	00 00                	add    BYTE PTR [rax],al
  200db4:	00 00                	add    BYTE PTR [rax],al
  200db6:	00 00                	add    BYTE PTR [rax],al
  200db8:	01 00                	add    DWORD PTR [rax],eax
  200dba:	00 00                	add    BYTE PTR [rax],al
  200dbc:	00 00                	add    BYTE PTR [rax],al
  200dbe:	00 00                	add    BYTE PTR [rax],al
  200dc0:	0c 00                	or     al,0x0
  200dc2:	00 00                	add    BYTE PTR [rax],al
  200dc4:	00 00                	add    BYTE PTR [rax],al
  200dc6:	00 00                	add    BYTE PTR [rax],al
  200dc8:	b8 05 00 00 00       	mov    eax,0x5
  200dcd:	00 00                	add    BYTE PTR [rax],al
  200dcf:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 200dd5 <_DYNAMIC+0x25>
  200dd5:	00 00                	add    BYTE PTR [rax],al
  200dd7:	00 f4                	add    ah,dh
  200dd9:	09 00                	or     DWORD PTR [rax],eax
  200ddb:	00 00                	add    BYTE PTR [rax],al
  200ddd:	00 00                	add    BYTE PTR [rax],al
  200ddf:	00 19                	add    BYTE PTR [rcx],bl
  200de1:	00 00                	add    BYTE PTR [rax],al
  200de3:	00 00                	add    BYTE PTR [rax],al
  200de5:	00 00                	add    BYTE PTR [rax],al
  200de7:	00 a0 0d 20 00 00    	add    BYTE PTR [rax+0x200d],ah
  200ded:	00 00                	add    BYTE PTR [rax],al
  200def:	00 1b                	add    BYTE PTR [rbx],bl
  200df1:	00 00                	add    BYTE PTR [rax],al
  200df3:	00 00                	add    BYTE PTR [rax],al
  200df5:	00 00                	add    BYTE PTR [rax],al
  200df7:	00 08                	add    BYTE PTR [rax],cl
  200df9:	00 00                	add    BYTE PTR [rax],al
  200dfb:	00 00                	add    BYTE PTR [rax],al
  200dfd:	00 00                	add    BYTE PTR [rax],al
  200dff:	00 1a                	add    BYTE PTR [rdx],bl
  200e01:	00 00                	add    BYTE PTR [rax],al
  200e03:	00 00                	add    BYTE PTR [rax],al
  200e05:	00 00                	add    BYTE PTR [rax],al
  200e07:	00 a8 0d 20 00 00    	add    BYTE PTR [rax+0x200d],ch
  200e0d:	00 00                	add    BYTE PTR [rax],al
  200e0f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  200e12:	00 00                	add    BYTE PTR [rax],al
  200e14:	00 00                	add    BYTE PTR [rax],al
  200e16:	00 00                	add    BYTE PTR [rax],al
  200e18:	08 00                	or     BYTE PTR [rax],al
  200e1a:	00 00                	add    BYTE PTR [rax],al
  200e1c:	00 00                	add    BYTE PTR [rax],al
  200e1e:	00 00                	add    BYTE PTR [rax],al
  200e20:	f5                   	cmc    
  200e21:	fe                   	(bad)  
  200e22:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200e25:	00 00                	add    BYTE PTR [rax],al
  200e27:	00 98 02 00 00 00    	add    BYTE PTR [rax+0x2],bl
  200e2d:	00 00                	add    BYTE PTR [rax],al
  200e2f:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 200e35 <_DYNAMIC+0x85>
  200e35:	00 00                	add    BYTE PTR [rax],al
  200e37:	00 a8 03 00 00 00    	add    BYTE PTR [rax+0x3],ch
  200e3d:	00 00                	add    BYTE PTR [rax],al
  200e3f:	00 06                	add    BYTE PTR [rsi],al
  200e41:	00 00                	add    BYTE PTR [rax],al
  200e43:	00 00                	add    BYTE PTR [rax],al
  200e45:	00 00                	add    BYTE PTR [rax],al
  200e47:	00 b8 02 00 00 00    	add    BYTE PTR [rax+0x2],bh
  200e4d:	00 00                	add    BYTE PTR [rax],al
  200e4f:	00 0a                	add    BYTE PTR [rdx],cl
  200e51:	00 00                	add    BYTE PTR [rax],al
  200e53:	00 00                	add    BYTE PTR [rax],al
  200e55:	00 00                	add    BYTE PTR [rax],al
  200e57:	00 a9 00 00 00 00    	add    BYTE PTR [rcx+0x0],ch
  200e5d:	00 00                	add    BYTE PTR [rax],al
  200e5f:	00 0b                	add    BYTE PTR [rbx],cl
  200e61:	00 00                	add    BYTE PTR [rax],al
  200e63:	00 00                	add    BYTE PTR [rax],al
  200e65:	00 00                	add    BYTE PTR [rax],al
  200e67:	00 18                	add    BYTE PTR [rax],bl
  200e69:	00 00                	add    BYTE PTR [rax],al
  200e6b:	00 00                	add    BYTE PTR [rax],al
  200e6d:	00 00                	add    BYTE PTR [rax],al
  200e6f:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 200e75 <_DYNAMIC+0xc5>
	...
  200e7d:	00 00                	add    BYTE PTR [rax],al
  200e7f:	00 03                	add    BYTE PTR [rbx],al
  200e81:	00 00                	add    BYTE PTR [rax],al
  200e83:	00 00                	add    BYTE PTR [rax],al
  200e85:	00 00                	add    BYTE PTR [rax],al
  200e87:	00 a0 0f 20 00 00    	add    BYTE PTR [rax+0x200f],ah
  200e8d:	00 00                	add    BYTE PTR [rax],al
  200e8f:	00 02                	add    BYTE PTR [rdx],al
  200e91:	00 00                	add    BYTE PTR [rax],al
  200e93:	00 00                	add    BYTE PTR [rax],al
  200e95:	00 00                	add    BYTE PTR [rax],al
  200e97:	00 60 00             	add    BYTE PTR [rax+0x0],ah
  200e9a:	00 00                	add    BYTE PTR [rax],al
  200e9c:	00 00                	add    BYTE PTR [rax],al
  200e9e:	00 00                	add    BYTE PTR [rax],al
  200ea0:	14 00                	adc    al,0x0
  200ea2:	00 00                	add    BYTE PTR [rax],al
  200ea4:	00 00                	add    BYTE PTR [rax],al
  200ea6:	00 00                	add    BYTE PTR [rax],al
  200ea8:	07                   	(bad)  
  200ea9:	00 00                	add    BYTE PTR [rax],al
  200eab:	00 00                	add    BYTE PTR [rax],al
  200ead:	00 00                	add    BYTE PTR [rax],al
  200eaf:	00 17                	add    BYTE PTR [rdi],dl
  200eb1:	00 00                	add    BYTE PTR [rax],al
  200eb3:	00 00                	add    BYTE PTR [rax],al
  200eb5:	00 00                	add    BYTE PTR [rax],al
  200eb7:	00 58 05             	add    BYTE PTR [rax+0x5],bl
  200eba:	00 00                	add    BYTE PTR [rax],al
  200ebc:	00 00                	add    BYTE PTR [rax],al
  200ebe:	00 00                	add    BYTE PTR [rax],al
  200ec0:	07                   	(bad)  
  200ec1:	00 00                	add    BYTE PTR [rax],al
  200ec3:	00 00                	add    BYTE PTR [rax],al
  200ec5:	00 00                	add    BYTE PTR [rax],al
  200ec7:	00 98 04 00 00 00    	add    BYTE PTR [rax+0x4],bl
  200ecd:	00 00                	add    BYTE PTR [rax],al
  200ecf:	00 08                	add    BYTE PTR [rax],cl
  200ed1:	00 00                	add    BYTE PTR [rax],al
  200ed3:	00 00                	add    BYTE PTR [rax],al
  200ed5:	00 00                	add    BYTE PTR [rax],al
  200ed7:	00 c0                	add    al,al
  200ed9:	00 00                	add    BYTE PTR [rax],al
  200edb:	00 00                	add    BYTE PTR [rax],al
  200edd:	00 00                	add    BYTE PTR [rax],al
  200edf:	00 09                	add    BYTE PTR [rcx],cl
  200ee1:	00 00                	add    BYTE PTR [rax],al
  200ee3:	00 00                	add    BYTE PTR [rax],al
  200ee5:	00 00                	add    BYTE PTR [rax],al
  200ee7:	00 18                	add    BYTE PTR [rax],bl
  200ee9:	00 00                	add    BYTE PTR [rax],al
  200eeb:	00 00                	add    BYTE PTR [rax],al
  200eed:	00 00                	add    BYTE PTR [rax],al
  200eef:	00 1e                	add    BYTE PTR [rsi],bl
  200ef1:	00 00                	add    BYTE PTR [rax],al
  200ef3:	00 00                	add    BYTE PTR [rax],al
  200ef5:	00 00                	add    BYTE PTR [rax],al
  200ef7:	00 08                	add    BYTE PTR [rax],cl
  200ef9:	00 00                	add    BYTE PTR [rax],al
  200efb:	00 00                	add    BYTE PTR [rax],al
  200efd:	00 00                	add    BYTE PTR [rax],al
  200eff:	00 fb                	add    bl,bh
  200f01:	ff                   	(bad)  
  200f02:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200f05:	00 00                	add    BYTE PTR [rax],al
  200f07:	00 01                	add    BYTE PTR [rcx],al
  200f09:	00 00                	add    BYTE PTR [rax],al
  200f0b:	08 00                	or     BYTE PTR [rax],al
  200f0d:	00 00                	add    BYTE PTR [rax],al
  200f0f:	00 fe                	add    dh,bh
  200f11:	ff                   	(bad)  
  200f12:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200f15:	00 00                	add    BYTE PTR [rax],al
  200f17:	00 68 04             	add    BYTE PTR [rax+0x4],ch
  200f1a:	00 00                	add    BYTE PTR [rax],al
  200f1c:	00 00                	add    BYTE PTR [rax],al
  200f1e:	00 00                	add    BYTE PTR [rax],al
  200f20:	ff                   	(bad)  
  200f21:	ff                   	(bad)  
  200f22:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200f25:	00 00                	add    BYTE PTR [rax],al
  200f27:	00 01                	add    BYTE PTR [rcx],al
  200f29:	00 00                	add    BYTE PTR [rax],al
  200f2b:	00 00                	add    BYTE PTR [rax],al
  200f2d:	00 00                	add    BYTE PTR [rax],al
  200f2f:	00 f0                	add    al,dh
  200f31:	ff                   	(bad)  
  200f32:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200f35:	00 00                	add    BYTE PTR [rax],al
  200f37:	00 52 04             	add    BYTE PTR [rdx+0x4],dl
  200f3a:	00 00                	add    BYTE PTR [rax],al
  200f3c:	00 00                	add    BYTE PTR [rax],al
  200f3e:	00 00                	add    BYTE PTR [rax],al
  200f40:	f9                   	stc    
  200f41:	ff                   	(bad)  
  200f42:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200f45:	00 00                	add    BYTE PTR [rax],al
  200f47:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .got:

0000000000200fa0 <_GLOBAL_OFFSET_TABLE_>:
  200fa0:	b0 0d                	mov    al,0xd
  200fa2:	20 00                	and    BYTE PTR [rax],al
	...
  200fb8:	e6 05                	out    0x5,al
  200fba:	00 00                	add    BYTE PTR [rax],al
  200fbc:	00 00                	add    BYTE PTR [rax],al
  200fbe:	00 00                	add    BYTE PTR [rax],al
  200fc0:	f6 05 00 00 00 00 00 	test   BYTE PTR [rip+0x0],0x0        # 200fc7 <_GLOBAL_OFFSET_TABLE_+0x27>
  200fc7:	00 06                	add    BYTE PTR [rsi],al
  200fc9:	06                   	(bad)  
  200fca:	00 00                	add    BYTE PTR [rax],al
  200fcc:	00 00                	add    BYTE PTR [rax],al
  200fce:	00 00                	add    BYTE PTR [rax],al
  200fd0:	16                   	(bad)  
  200fd1:	06                   	(bad)  
	...

Disassembly of section .data:

0000000000201000 <__data_start>:
	...

0000000000201008 <__dso_handle>:
  201008:	08 10                	or     BYTE PTR [rax],dl
  20100a:	20 00                	and    BYTE PTR [rax],al
  20100c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .bss:

0000000000201020 <completed.7698>:
	...

0000000000201040 <size>:
	...

0000000000201048 <p>:
	...

0000000000201050 <esp>:
	...

0000000000201058 <i>:
	...

0000000000201060 <stack>:
	...

0000000000201860 <ebp>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x540>
   a:	74 75                	je     81 <_init-0x537>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 35 2e 30 2d 33    	cs xor eax,0x332d302e
  14:	75 62                	jne    78 <_init-0x540>
  16:	75 6e                	jne    86 <_init-0x532>
  18:	74 75                	je     8f <_init-0x529>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	38 2e                	cmp    BYTE PTR [rsi],ch
  1f:	30 34 29             	xor    BYTE PTR [rcx+rbp*1],dh
  22:	20 37                	and    BYTE PTR [rdi],dh
  24:	2e                   	cs
  25:	35                   	.byte 0x35
  26:	2e 30 00             	xor    BYTE PTR cs:[rax],al

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	02 00                	add    al,BYTE PTR [rax]
   6:	00 00                	add    BYTE PTR [rax],al
   8:	00 00                	add    BYTE PTR [rax],al
   a:	08 00                	or     BYTE PTR [rax],al
   c:	00 00                	add    BYTE PTR [rax],al
   e:	00 00                	add    BYTE PTR [rax],al
  10:	3a 07                	cmp    al,BYTE PTR [rdi]
  12:	00 00                	add    BYTE PTR [rax],al
  14:	00 00                	add    BYTE PTR [rax],al
  16:	00 00                	add    BYTE PTR [rax],al
  18:	41 02 00             	add    al,BYTE PTR [r8]
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	b1 04                	mov    cl,0x4
   2:	00 00                	add    BYTE PTR [rax],al
   4:	04 00                	add    al,0x0
   6:	00 00                	add    BYTE PTR [rax],al
   8:	00 00                	add    BYTE PTR [rax],al
   a:	08 01                	or     BYTE PTR [rcx],al
   c:	34 00                	xor    al,0x0
   e:	00 00                	add    BYTE PTR [rax],al
  10:	0c d3                	or     al,0xd3
  12:	00 00                	add    BYTE PTR [rax],al
  14:	00 cc                	add    ah,cl
  16:	01 00                	add    DWORD PTR [rax],eax
  18:	00 3a                	add    BYTE PTR [rdx],bh
  1a:	07                   	(bad)  
  1b:	00 00                	add    BYTE PTR [rax],al
  1d:	00 00                	add    BYTE PTR [rax],al
  1f:	00 00                	add    BYTE PTR [rax],al
  21:	41 02 00             	add    al,BYTE PTR [r8]
	...
  2c:	00 02                	add    BYTE PTR [rdx],al
  2e:	23 00                	and    eax,DWORD PTR [rax]
  30:	00 00                	add    BYTE PTR [rax],al
  32:	02 d8                	add    bl,al
  34:	38 00                	cmp    BYTE PTR [rax],al
  36:	00 00                	add    BYTE PTR [rax],al
  38:	03 08                	add    ecx,DWORD PTR [rax]
  3a:	07                   	(bad)  
  3b:	ab                   	stos   DWORD PTR es:[rdi],eax
  3c:	00 00                	add    BYTE PTR [rax],al
  3e:	00 03                	add    BYTE PTR [rbx],al
  40:	01 08                	add    DWORD PTR [rax],ecx
  42:	2e 02 00             	add    al,BYTE PTR cs:[rax]
  45:	00 03                	add    BYTE PTR [rbx],al
  47:	02 07                	add    al,BYTE PTR [rdi]
  49:	6b 01 00             	imul   eax,DWORD PTR [rcx],0x0
  4c:	00 03                	add    BYTE PTR [rbx],al
  4e:	04 07                	add    al,0x7
  50:	b0 00                	mov    al,0x0
  52:	00 00                	add    BYTE PTR [rax],al
  54:	03 01                	add    eax,DWORD PTR [rcx]
  56:	06                   	(bad)  
  57:	30 02                	xor    BYTE PTR [rdx],al
  59:	00 00                	add    BYTE PTR [rax],al
  5b:	03 02                	add    eax,DWORD PTR [rdx]
  5d:	05 3c 02 00 00       	add    eax,0x23c
  62:	04 04                	add    al,0x4
  64:	05 69 6e 74 00       	add    eax,0x746e69
  69:	03 08                	add    ecx,DWORD PTR [rax]
  6b:	05 c2 00 00 00       	add    eax,0xc2
  70:	02 00                	add    al,BYTE PTR [rax]
  72:	00 00                	add    BYTE PTR [rax],al
  74:	00 03                	add    BYTE PTR [rbx],al
  76:	8c 69 00             	mov    WORD PTR [rcx+0x0],gs
  79:	00 00                	add    BYTE PTR [rax],al
  7b:	02 6b 02             	add    ch,BYTE PTR [rbx+0x2]
  7e:	00 00                	add    BYTE PTR [rax],al
  80:	03 8d 69 00 00 00    	add    ecx,DWORD PTR [rbp+0x69]
  86:	05 08 06 08 8e       	add    eax,0x8e080608
  8b:	00 00                	add    BYTE PTR [rax],al
  8d:	00 03                	add    BYTE PTR [rbx],al
  8f:	01 06                	add    DWORD PTR [rsi],eax
  91:	37                   	(bad)  
  92:	02 00                	add    al,BYTE PTR [rax]
  94:	00 07                	add    BYTE PTR [rdi],al
  96:	8e 00                	mov    es,WORD PTR [rax]
  98:	00 00                	add    BYTE PTR [rax],al
  9a:	08 0b                	or     BYTE PTR [rbx],cl
  9c:	02 00                	add    al,BYTE PTR [rax]
  9e:	00 d8                	add    al,bl
  a0:	04 f5                	add    al,0xf5
  a2:	1a 02                	sbb    al,BYTE PTR [rdx]
  a4:	00 00                	add    BYTE PTR [rax],al
  a6:	09 eb                	or     ebx,ebp
  a8:	00 00                	add    BYTE PTR [rax],al
  aa:	00 04 f6             	add    BYTE PTR [rsi+rsi*8],al
  ad:	62                   	(bad)  
  ae:	00 00                	add    BYTE PTR [rax],al
  b0:	00 00                	add    BYTE PTR [rax],al
  b2:	09 0f                	or     DWORD PTR [rdi],ecx
  b4:	00 00                	add    BYTE PTR [rax],al
  b6:	00 04 fb             	add    BYTE PTR [rbx+rdi*8],al
  b9:	88 00                	mov    BYTE PTR [rax],al
  bb:	00 00                	add    BYTE PTR [rax],al
  bd:	08 09                	or     BYTE PTR [rcx],cl
  bf:	de 00                	fiadd  WORD PTR [rax]
  c1:	00 00                	add    BYTE PTR [rax],al
  c3:	04 fc                	add    al,0xfc
  c5:	88 00                	mov    BYTE PTR [rax],al
  c7:	00 00                	add    BYTE PTR [rax],al
  c9:	10 09                	adc    BYTE PTR [rcx],cl
  cb:	75 02                	jne    cf <_init-0x4e9>
  cd:	00 00                	add    BYTE PTR [rax],al
  cf:	04 fd                	add    al,0xfd
  d1:	88 00                	mov    BYTE PTR [rax],al
  d3:	00 00                	add    BYTE PTR [rax],al
  d5:	18 09                	sbb    BYTE PTR [rcx],cl
  d7:	f3 02 00             	repz add al,BYTE PTR [rax]
  da:	00 04 fe             	add    BYTE PTR [rsi+rdi*8],al
  dd:	88 00                	mov    BYTE PTR [rax],al
  df:	00 00                	add    BYTE PTR [rax],al
  e1:	20 09                	and    BYTE PTR [rcx],cl
  e3:	49 01 00             	add    QWORD PTR [r8],rax
  e6:	00 04 ff             	add    BYTE PTR [rdi+rdi*8],al
  e9:	88 00                	mov    BYTE PTR [rax],al
  eb:	00 00                	add    BYTE PTR [rax],al
  ed:	28 0a                	sub    BYTE PTR [rdx],cl
  ef:	be 01 00 00 04       	mov    esi,0x4000001
  f4:	00 01                	add    BYTE PTR [rcx],al
  f6:	88 00                	mov    BYTE PTR [rax],al
  f8:	00 00                	add    BYTE PTR [rax],al
  fa:	30 0a                	xor    BYTE PTR [rdx],cl
  fc:	8b 00                	mov    eax,DWORD PTR [rax]
  fe:	00 00                	add    BYTE PTR [rax],al
 100:	04 01                	add    al,0x1
 102:	01 88 00 00 00 38    	add    DWORD PTR [rax+0x38000000],ecx
 108:	0a f2                	or     dh,dl
 10a:	00 00                	add    BYTE PTR [rax],al
 10c:	00 04 02             	add    BYTE PTR [rdx+rax*1],al
 10f:	01 88 00 00 00 40    	add    DWORD PTR [rax+0x40000000],ecx
 115:	0a 7e 01             	or     bh,BYTE PTR [rsi+0x1]
 118:	00 00                	add    BYTE PTR [rax],al
 11a:	04 04                	add    al,0x4
 11c:	01 88 00 00 00 48    	add    DWORD PTR [rax+0x48000000],ecx
 122:	0a de                	or     bl,dh
 124:	02 00                	add    al,BYTE PTR [rax]
 126:	00 04 05 01 88 00 00 	add    BYTE PTR [rax*1+0x8801],al
 12d:	00 50 0a             	add    BYTE PTR [rax+0xa],dl
 130:	83 02 00             	add    DWORD PTR [rdx],0x0
 133:	00 04 06             	add    BYTE PTR [rsi+rax*1],al
 136:	01 88 00 00 00 58    	add    DWORD PTR [rax+0x58000000],ecx
 13c:	0a 25 02 00 00 04    	or     ah,BYTE PTR [rip+0x4000002]        # 4000144 <_end+0x3dfe8dc>
 142:	08 01                	or     BYTE PTR [rcx],al
 144:	52                   	push   rdx
 145:	02 00                	add    al,BYTE PTR [rax]
 147:	00 60 0a             	add    BYTE PTR [rax+0xa],ah
 14a:	1c 00                	sbb    al,0x0
 14c:	00 00                	add    BYTE PTR [rax],al
 14e:	04 0a                	add    al,0xa
 150:	01 58 02             	add    DWORD PTR [rax+0x2],ebx
 153:	00 00                	add    BYTE PTR [rax],al
 155:	68 0a cb 00 00       	push   0xcb0a
 15a:	00 04 0c             	add    BYTE PTR [rsp+rcx*1],al
 15d:	01 62 00             	add    DWORD PTR [rdx+0x0],esp
 160:	00 00                	add    BYTE PTR [rax],al
 162:	70 0a                	jo     16e <_init-0x44a>
 164:	92                   	xchg   edx,eax
 165:	01 00                	add    DWORD PTR [rax],eax
 167:	00 04 10             	add    BYTE PTR [rax+rdx*1],al
 16a:	01 62 00             	add    DWORD PTR [rdx+0x0],esp
 16d:	00 00                	add    BYTE PTR [rax],al
 16f:	74 0a                	je     17b <_init-0x43d>
 171:	0a 01                	or     al,BYTE PTR [rcx]
 173:	00 00                	add    BYTE PTR [rax],al
 175:	04 12                	add    al,0x12
 177:	01 70 00             	add    DWORD PTR [rax+0x0],esi
 17a:	00 00                	add    BYTE PTR [rax],al
 17c:	78 0a                	js     188 <_init-0x430>
 17e:	fe 00                	inc    BYTE PTR [rax]
 180:	00 00                	add    BYTE PTR [rax],al
 182:	04 16                	add    al,0x16
 184:	01 46 00             	add    DWORD PTR [rsi+0x0],eax
 187:	00 00                	add    BYTE PTR [rax],al
 189:	80 0a 46             	or     BYTE PTR [rdx],0x46
 18c:	02 00                	add    al,BYTE PTR [rax]
 18e:	00 04 17             	add    BYTE PTR [rdi+rdx*1],al
 191:	01 54 00 00          	add    DWORD PTR [rax+rax*1+0x0],edx
 195:	00 82 0a 2a 00 00    	add    BYTE PTR [rdx+0x2a0a],al
 19b:	00 04 18             	add    BYTE PTR [rax+rbx*1],al
 19e:	01 5e 02             	add    DWORD PTR [rsi+0x2],ebx
 1a1:	00 00                	add    BYTE PTR [rax],al
 1a3:	83 0a 8c             	or     DWORD PTR [rdx],0xffffff8c
 1a6:	01 00                	add    DWORD PTR [rax],eax
 1a8:	00 04 1c             	add    BYTE PTR [rsp+rbx*1],al
 1ab:	01 6e 02             	add    DWORD PTR [rsi+0x2],ebp
 1ae:	00 00                	add    BYTE PTR [rax],al
 1b0:	88 0a                	mov    BYTE PTR [rdx],cl
 1b2:	0e                   	(bad)  
 1b3:	01 00                	add    DWORD PTR [rax],eax
 1b5:	00 04 25 01 7b 00 00 	add    BYTE PTR ds:0x7b01,al
 1bc:	00 90 0a 90 02 00    	add    BYTE PTR [rax+0x2900a],dl
 1c2:	00 04 2d 01 86 00 00 	add    BYTE PTR [rbp*1+0x8601],al
 1c9:	00 98 0a 97 02 00    	add    BYTE PTR [rax+0x2970a],bl
 1cf:	00 04 2e             	add    BYTE PTR [rsi+rbp*1],al
 1d2:	01 86 00 00 00 a0    	add    DWORD PTR [rsi-0x60000000],eax
 1d8:	0a 9e 02 00 00 04    	or     bl,BYTE PTR [rsi+0x4000002]
 1de:	2f                   	(bad)  
 1df:	01 86 00 00 00 a8    	add    DWORD PTR [rsi-0x58000000],eax
 1e5:	0a a5 02 00 00 04    	or     ah,BYTE PTR [rbp+0x4000002]
 1eb:	30 01                	xor    BYTE PTR [rcx],al
 1ed:	86 00                	xchg   BYTE PTR [rax],al
 1ef:	00 00                	add    BYTE PTR [rax],al
 1f1:	b0 0a                	mov    al,0xa
 1f3:	ac                   	lods   al,BYTE PTR ds:[rsi]
 1f4:	02 00                	add    al,BYTE PTR [rax]
 1f6:	00 04 32             	add    BYTE PTR [rdx+rsi*1],al
 1f9:	01 2d 00 00 00 b8    	add    DWORD PTR [rip+0xffffffffb8000000],ebp        # ffffffffb80001ff <_end+0xffffffffb7dfe997>
 1ff:	0a 9a 01 00 00 04    	or     bl,BYTE PTR [rdx+0x4000001]
 205:	33 01                	xor    eax,DWORD PTR [rcx]
 207:	62                   	(bad)  
 208:	00 00                	add    BYTE PTR [rax],al
 20a:	00 c0                	add    al,al
 20c:	0a c1                	or     al,cl
 20e:	02 00                	add    al,BYTE PTR [rax]
 210:	00 04 35 01 74 02 00 	add    BYTE PTR [rsi*1+0x27401],al
 217:	00 c4                	add    ah,al
 219:	00 0b                	add    BYTE PTR [rbx],cl
 21b:	00 02                	add    BYTE PTR [rdx],al
 21d:	00 00                	add    BYTE PTR [rax],al
 21f:	04 9a                	add    al,0x9a
 221:	08 2a                	or     BYTE PTR [rdx],ch
 223:	01 00                	add    DWORD PTR [rax],eax
 225:	00 18                	add    BYTE PTR [rax],bl
 227:	04 a0                	add    al,0xa0
 229:	52                   	push   rdx
 22a:	02 00                	add    al,BYTE PTR [rax]
 22c:	00 09                	add    BYTE PTR [rcx],cl
 22e:	65 02 00             	add    al,BYTE PTR gs:[rax]
 231:	00 04 a1             	add    BYTE PTR [rcx+riz*4],al
 234:	52                   	push   rdx
 235:	02 00                	add    al,BYTE PTR [rax]
 237:	00 00                	add    BYTE PTR [rax],al
 239:	09 60 01             	or     DWORD PTR [rax+0x1],esp
 23c:	00 00                	add    BYTE PTR [rax],al
 23e:	04 a2                	add    al,0xa2
 240:	58                   	pop    rax
 241:	02 00                	add    al,BYTE PTR [rax]
 243:	00 08                	add    BYTE PTR [rax],cl
 245:	09 14 02             	or     DWORD PTR [rdx+rax*1],edx
 248:	00 00                	add    BYTE PTR [rax],al
 24a:	04 a6                	add    al,0xa6
 24c:	62                   	(bad)  
 24d:	00 00                	add    BYTE PTR [rax],al
 24f:	00 10                	add    BYTE PTR [rax],dl
 251:	00 06                	add    BYTE PTR [rsi],al
 253:	08 21                	or     BYTE PTR [rcx],ah
 255:	02 00                	add    al,BYTE PTR [rax]
 257:	00 06                	add    BYTE PTR [rsi],al
 259:	08 9a 00 00 00 0c    	or     BYTE PTR [rdx+0xc000000],bl
 25f:	8e 00                	mov    es,WORD PTR [rax]
 261:	00 00                	add    BYTE PTR [rax],al
 263:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 264:	02 00                	add    al,BYTE PTR [rax]
 266:	00 0d 38 00 00 00    	add    BYTE PTR [rip+0x38],cl        # 2a4 <_init-0x314>
 26c:	00 00                	add    BYTE PTR [rax],al
 26e:	06                   	(bad)  
 26f:	08 1a                	or     BYTE PTR [rdx],bl
 271:	02 00                	add    al,BYTE PTR [rax]
 273:	00 0c 8e             	add    BYTE PTR [rsi+rcx*4],cl
 276:	00 00                	add    BYTE PTR [rax],al
 278:	00 84 02 00 00 0d 38 	add    BYTE PTR [rdx+rax*1+0x380d0000],al
 27f:	00 00                	add    BYTE PTR [rax],al
 281:	00 13                	add    BYTE PTR [rbx],dl
 283:	00 0e                	add    BYTE PTR [rsi],cl
 285:	3b 01                	cmp    eax,DWORD PTR [rcx]
 287:	00 00                	add    BYTE PTR [rax],al
 289:	0f                   	xstore-rng (bad)
 28a:	a7                   	cmps   DWORD PTR ds:[rsi],DWORD PTR es:[rdi]
 28b:	01 00                	add    DWORD PTR [rax],eax
 28d:	00 04 3f             	add    BYTE PTR [rdi+rdi*1],al
 290:	01 84 02 00 00 0f 55 	add    DWORD PTR [rdx+rax*1+0x550f0000],eax
 297:	02 00                	add    al,BYTE PTR [rax]
 299:	00 04 40             	add    BYTE PTR [rax+rax*2],al
 29c:	01 84 02 00 00 0f 7b 	add    DWORD PTR [rdx+rax*1+0x7b0f0000],eax
 2a3:	00 00                	add    BYTE PTR [rax],al
 2a5:	00 04 41             	add    BYTE PTR [rcx+rax*2],al
 2a8:	01 84 02 00 00 06 08 	add    DWORD PTR [rdx+rax*1+0x8060000],eax
 2af:	95                   	xchg   ebp,eax
 2b0:	00 00                	add    BYTE PTR [rax],al
 2b2:	00 07                	add    BYTE PTR [rdi],al
 2b4:	ad                   	lods   eax,DWORD PTR ds:[rsi]
 2b5:	02 00                	add    al,BYTE PTR [rax]
 2b7:	00 10                	add    BYTE PTR [rax],dl
 2b9:	35 01 00 00 05       	xor    eax,0x5000001
 2be:	87 58 02             	xchg   DWORD PTR [rax+0x2],ebx
 2c1:	00 00                	add    BYTE PTR [rax],al
 2c3:	10 a0 01 00 00 05    	adc    BYTE PTR [rax+0x5000001],ah
 2c9:	88 58 02             	mov    BYTE PTR [rax+0x2],bl
 2cc:	00 00                	add    BYTE PTR [rax],al
 2ce:	10 ca                	adc    dl,cl
 2d0:	02 00                	add    al,BYTE PTR [rax]
 2d2:	00 05 89 58 02 00    	add    BYTE PTR [rip+0x25889],al        # 25b61 <__FRAME_END__+0x24f3d>
 2d8:	00 10                	add    BYTE PTR [rax],dl
 2da:	57                   	push   rdi
 2db:	01 00                	add    DWORD PTR [rax],eax
 2dd:	00 06                	add    BYTE PTR [rsi],al
 2df:	1a 62 00             	sbb    ah,BYTE PTR [rdx+0x0]
 2e2:	00 00                	add    BYTE PTR [rax],al
 2e4:	0c b3                	or     al,0xb3
 2e6:	02 00                	add    al,BYTE PTR [rax]
 2e8:	00 ef                	add    bh,ch
 2ea:	02 00                	add    al,BYTE PTR [rax]
 2ec:	00 11                	add    BYTE PTR [rcx],dl
 2ee:	00 07                	add    BYTE PTR [rdi],al
 2f0:	e4 02                	in     al,0x2
 2f2:	00 00                	add    BYTE PTR [rax],al
 2f4:	10 19                	adc    BYTE PTR [rcx],bl
 2f6:	02 00                	add    al,BYTE PTR [rax]
 2f8:	00 06                	add    BYTE PTR [rsi],al
 2fa:	1b ef                	sbb    ebp,edi
 2fc:	02 00                	add    al,BYTE PTR [rax]
 2fe:	00 03                	add    BYTE PTR [rbx],al
 300:	08 05 bd 00 00 00    	or     BYTE PTR [rip+0xbd],al        # 3c3 <_init-0x1f5>
 306:	03 08                	add    ecx,DWORD PTR [rax]
 308:	07                   	(bad)  
 309:	a6                   	cmps   BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
 30a:	00 00                	add    BYTE PTR [rax],al
 30c:	00 02                	add    BYTE PTR [rdx],al
 30e:	08 00                	or     BYTE PTR [rax],al
 310:	00 00                	add    BYTE PTR [rax],al
 312:	01 18                	add    DWORD PTR [rax],ebx
 314:	69 00 00 00 12 69    	imul   eax,DWORD PTR [rax],0x69120000
 31a:	00 01                	add    BYTE PTR [rcx],al
 31c:	1e                   	(bad)  
 31d:	62                   	(bad)  
 31e:	00 00                	add    BYTE PTR [rax],al
 320:	00 09                	add    BYTE PTR [rcx],cl
 322:	03 58 10             	add    ebx,DWORD PTR [rax+0x10]
 325:	20 00                	and    BYTE PTR [rax],al
 327:	00 00                	add    BYTE PTR [rax],al
 329:	00 00                	add    BYTE PTR [rax],al
 32b:	13 66 01             	adc    esp,DWORD PTR [rsi+0x1]
 32e:	00 00                	add    BYTE PTR [rax],al
 330:	01 1e                	add    DWORD PTR [rsi],ebx
 332:	62                   	(bad)  
 333:	00 00                	add    BYTE PTR [rax],al
 335:	00 09                	add    BYTE PTR [rcx],cl
 337:	03 40 10             	add    eax,DWORD PTR [rax+0x10]
 33a:	20 00                	and    BYTE PTR [rax],al
 33c:	00 00                	add    BYTE PTR [rax],al
 33e:	00 00                	add    BYTE PTR [rax],al
 340:	12 65 73             	adc    ah,BYTE PTR [rbp+0x73]
 343:	70 00                	jo     345 <_init-0x273>
 345:	01 1f                	add    DWORD PTR [rdi],ebx
 347:	55                   	push   rbp
 348:	03 00                	add    eax,DWORD PTR [rax]
 34a:	00 09                	add    BYTE PTR [rcx],cl
 34c:	03 50 10             	add    edx,DWORD PTR [rax+0x10]
 34f:	20 00                	and    BYTE PTR [rax],al
 351:	00 00                	add    BYTE PTR [rax],al
 353:	00 00                	add    BYTE PTR [rax],al
 355:	06                   	(bad)  
 356:	08 0d 03 00 00 12    	or     BYTE PTR [rip+0x12000003],cl        # 1200035f <_end+0x11dfeaf7>
 35c:	65 62                	gs (bad) 
 35e:	70 00                	jo     360 <_init-0x258>
 360:	01 1f                	add    DWORD PTR [rdi],ebx
 362:	55                   	push   rbp
 363:	03 00                	add    eax,DWORD PTR [rax]
 365:	00 09                	add    BYTE PTR [rcx],cl
 367:	03 60 18             	add    esp,DWORD PTR [rax+0x18]
 36a:	20 00                	and    BYTE PTR [rax],al
 36c:	00 00                	add    BYTE PTR [rax],al
 36e:	00 00                	add    BYTE PTR [rax],al
 370:	12 70 00             	adc    dh,BYTE PTR [rax+0x0]
 373:	01 20                	add    DWORD PTR [rax],esp
 375:	55                   	push   rbp
 376:	03 00                	add    eax,DWORD PTR [rax]
 378:	00 09                	add    BYTE PTR [rcx],cl
 37a:	03 48 10             	add    ecx,DWORD PTR [rax+0x10]
 37d:	20 00                	and    BYTE PTR [rax],al
 37f:	00 00                	add    BYTE PTR [rax],al
 381:	00 00                	add    BYTE PTR [rax],al
 383:	08 98 00 00 00 10    	or     BYTE PTR [rax+0x10000000],bl
 389:	01 23                	add    DWORD PTR [rbx],esp
 38b:	a8 03                	test   al,0x3
 38d:	00 00                	add    BYTE PTR [rax],al
 38f:	09 b6 01 00 00 01    	or     DWORD PTR [rsi+0x1000001],esi
 395:	24 55                	and    al,0x55
 397:	03 00                	add    eax,DWORD PTR [rax]
 399:	00 00                	add    BYTE PTR [rax],al
 39b:	09 24 01             	or     DWORD PTR [rcx+rax*1],esp
 39e:	00 00                	add    BYTE PTR [rax],al
 3a0:	01 25 0d 03 00 00    	add    DWORD PTR [rip+0x30d],esp        # 6b3 <register_tm_clones+0x13>
 3a6:	08 00                	or     BYTE PTR [rax],al
 3a8:	0c 83                	or     al,0x83
 3aa:	03 00                	add    eax,DWORD PTR [rax]
 3ac:	00 b8 03 00 00 0d    	add    BYTE PTR [rax+0xd000003],bh
 3b2:	38 00                	cmp    BYTE PTR [rax],al
 3b4:	00 00                	add    BYTE PTR [rax],al
 3b6:	7f 00                	jg     3b8 <_init-0x200>
 3b8:	13 fa                	adc    edi,edx
 3ba:	01 00                	add    DWORD PTR [rax],eax
 3bc:	00 01                	add    BYTE PTR [rcx],al
 3be:	2d a8 03 00 00       	sub    eax,0x3a8
 3c3:	09 03                	or     DWORD PTR [rbx],eax
 3c5:	60                   	(bad)  
 3c6:	10 20                	adc    BYTE PTR [rax],ah
 3c8:	00 00                	add    BYTE PTR [rax],al
 3ca:	00 00                	add    BYTE PTR [rax],al
 3cc:	00 14 ee             	add    BYTE PTR [rsi+rbp*8],dl
 3cf:	02 00                	add    al,BYTE PTR [rax]
 3d1:	00 01                	add    BYTE PTR [rcx],al
 3d3:	69 62 00 00 00 18 09 	imul   esp,DWORD PTR [rdx+0x0],0x9180000
 3da:	00 00                	add    BYTE PTR [rax],al
 3dc:	00 00                	add    BYTE PTR [rax],al
 3de:	00 00                	add    BYTE PTR [rax],al
 3e0:	63 00                	movsxd eax,DWORD PTR [rax]
 3e2:	00 00                	add    BYTE PTR [rax],al
 3e4:	00 00                	add    BYTE PTR [rax],al
 3e6:	00 00                	add    BYTE PTR [rax],al
 3e8:	01 9c fb 03 00 00 15 	add    DWORD PTR [rbx+rdi*8+0x15000003],ebx
 3ef:	76 00                	jbe    3f1 <_init-0x1c7>
 3f1:	01 6b fb             	add    DWORD PTR [rbx-0x5],ebp
 3f4:	03 00                	add    eax,DWORD PTR [rax]
 3f6:	00 02                	add    BYTE PTR [rdx],al
 3f8:	91                   	xchg   ecx,eax
 3f9:	50                   	push   rax
 3fa:	00 0c 0d 03 00 00 0b 	add    BYTE PTR [rcx*1+0xb000003],cl
 401:	04 00                	add    al,0x0
 403:	00 0d 38 00 00 00    	add    BYTE PTR [rip+0x38],cl        # 441 <_init-0x177>
 409:	02 00                	add    al,BYTE PTR [rax]
 40b:	16                   	(bad)  
 40c:	66 31 00             	xor    WORD PTR [rax],ax
 40f:	01 63 c8             	add    DWORD PTR [rbx-0x38],esp
 412:	08 00                	or     BYTE PTR [rax],al
 414:	00 00                	add    BYTE PTR [rax],al
 416:	00 00                	add    BYTE PTR [rax],al
 418:	00 50 00             	add    BYTE PTR [rax+0x0],dl
 41b:	00 00                	add    BYTE PTR [rax],al
 41d:	00 00                	add    BYTE PTR [rax],al
 41f:	00 00                	add    BYTE PTR [rax],al
 421:	01 9c 34 04 00 00 15 	add    DWORD PTR [rsp+rsi*1+0x15000004],ebx
 428:	76 00                	jbe    42a <_init-0x18e>
 42a:	01 65 fb             	add    DWORD PTR [rbp-0x5],esp
 42d:	03 00                	add    eax,DWORD PTR [rax]
 42f:	00 02                	add    BYTE PTR [rdx],al
 431:	91                   	xchg   ecx,eax
 432:	50                   	push   rax
 433:	00 17                	add    BYTE PTR [rdi],dl
 435:	66 32 00             	data16 xor al,BYTE PTR [rax]
 438:	01 4f 64             	add    DWORD PTR [rdi+0x64],ecx
 43b:	08 00                	or     BYTE PTR [rax],al
 43d:	00 00                	add    BYTE PTR [rax],al
 43f:	00 00                	add    BYTE PTR [rax],al
 441:	00 64 00 00          	add    BYTE PTR [rax+rax*1+0x0],ah
 445:	00 00                	add    BYTE PTR [rax],al
 447:	00 00                	add    BYTE PTR [rax],al
 449:	00 01                	add    BYTE PTR [rcx],al
 44b:	9c                   	pushf  
 44c:	69 04 00 00 18 61 00 	imul   eax,DWORD PTR [rax+rax*1],0x611800
 453:	01 4f 0d             	add    DWORD PTR [rdi+0xd],ecx
 456:	03 00                	add    eax,DWORD PTR [rax]
 458:	00 02                	add    BYTE PTR [rdx],al
 45a:	91                   	xchg   ecx,eax
 45b:	48 15 76 00 01 51    	adc    rax,0x51010076
 461:	fb                   	sti    
 462:	03 00                	add    eax,DWORD PTR [rax]
 464:	00 02                	add    BYTE PTR [rdx],al
 466:	91                   	xchg   ecx,eax
 467:	50                   	push   rax
 468:	00 19                	add    BYTE PTR [rcx],bl
 46a:	d1 02                	rol    DWORD PTR [rdx],1
 46c:	00 00                	add    BYTE PTR [rax],al
 46e:	01 46 45             	add    DWORD PTR [rsi+0x45],eax
 471:	08 00                	or     BYTE PTR [rax],al
 473:	00 00                	add    BYTE PTR [rax],al
 475:	00 00                	add    BYTE PTR [rax],al
 477:	00 1f                	add    BYTE PTR [rdi],bl
 479:	00 00                	add    BYTE PTR [rax],al
 47b:	00 00                	add    BYTE PTR [rax],al
 47d:	00 00                	add    BYTE PTR [rax],al
 47f:	00 01                	add    BYTE PTR [rcx],al
 481:	9c                   	pushf  
 482:	1a 16                	sbb    dl,BYTE PTR [rsi]
 484:	01 00                	add    DWORD PTR [rax],eax
 486:	00 01                	add    BYTE PTR [rcx],al
 488:	3d b4 07 00 00       	cmp    eax,0x7b4
 48d:	00 00                	add    BYTE PTR [rax],al
 48f:	00 00                	add    BYTE PTR [rax],al
 491:	91                   	xchg   ecx,eax
 492:	00 00                	add    BYTE PTR [rax],al
 494:	00 00                	add    BYTE PTR [rax],al
 496:	00 00                	add    BYTE PTR [rax],al
 498:	00 01                	add    BYTE PTR [rcx],al
 49a:	9c                   	pushf  
 49b:	19 b3 02 00 00 01    	sbb    DWORD PTR [rbx+0x1000002],esi
 4a1:	33 3a                	xor    edi,DWORD PTR [rdx]
 4a3:	07                   	(bad)  
 4a4:	00 00                	add    BYTE PTR [rax],al
 4a6:	00 00                	add    BYTE PTR [rax],al
 4a8:	00 00                	add    BYTE PTR [rax],al
 4aa:	7a 00                	jp     4ac <_init-0x10c>
 4ac:	00 00                	add    BYTE PTR [rax],al
 4ae:	00 00                	add    BYTE PTR [rax],al
 4b0:	00 00                	add    BYTE PTR [rax],al
 4b2:	01                   	.byte 0x1
 4b3:	9c                   	pushf  
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    DWORD PTR [rcx],edx
   2:	01 25 0e 13 0b 03    	add    DWORD PTR [rip+0x30b130e],esp        # 30b1316 <_end+0x2eafaae>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    ecx,DWORD PTR [rsi]
   b:	11 01                	adc    DWORD PTR [rcx],eax
   d:	12 07                	adc    al,BYTE PTR [rdi]
   f:	10 17                	adc    BYTE PTR [rdi],dl
  11:	00 00                	add    BYTE PTR [rax],al
  13:	02 16                	add    dl,BYTE PTR [rsi]
  15:	00 03                	add    BYTE PTR [rbx],al
  17:	0e                   	(bad)  
  18:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  1a:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  1c:	49 13 00             	adc    rax,QWORD PTR [r8]
  1f:	00 03                	add    BYTE PTR [rbx],al
  21:	24 00                	and    al,0x0
  23:	0b 0b                	or     ecx,DWORD PTR [rbx]
  25:	3e 0b 03             	or     eax,DWORD PTR ds:[rbx]
  28:	0e                   	(bad)  
  29:	00 00                	add    BYTE PTR [rax],al
  2b:	04 24                	add    al,0x24
  2d:	00 0b                	add    BYTE PTR [rbx],cl
  2f:	0b 3e                	or     edi,DWORD PTR [rsi]
  31:	0b 03                	or     eax,DWORD PTR [rbx]
  33:	08 00                	or     BYTE PTR [rax],al
  35:	00 05 0f 00 0b 0b    	add    BYTE PTR [rip+0xb0b000f],al        # b0b004a <_end+0xaeae7e2>
  3b:	00 00                	add    BYTE PTR [rax],al
  3d:	06                   	(bad)  
  3e:	0f 00 0b             	str    WORD PTR [rbx]
  41:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
  44:	00 00                	add    BYTE PTR [rax],al
  46:	07                   	(bad)  
  47:	26 00 49 13          	add    BYTE PTR es:[rcx+0x13],cl
  4b:	00 00                	add    BYTE PTR [rax],al
  4d:	08 13                	or     BYTE PTR [rbx],dl
  4f:	01 03                	add    DWORD PTR [rbx],eax
  51:	0e                   	(bad)  
  52:	0b 0b                	or     ecx,DWORD PTR [rbx]
  54:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  56:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  58:	01 13                	add    DWORD PTR [rbx],edx
  5a:	00 00                	add    BYTE PTR [rax],al
  5c:	09 0d 00 03 0e 3a    	or     DWORD PTR [rip+0x3a0e0300],ecx        # 3a0e0362 <_end+0x39edeafa>
  62:	0b 3b                	or     edi,DWORD PTR [rbx]
  64:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
  67:	38 0b                	cmp    BYTE PTR [rbx],cl
  69:	00 00                	add    BYTE PTR [rax],al
  6b:	0a 0d 00 03 0e 3a    	or     cl,BYTE PTR [rip+0x3a0e0300]        # 3a0e0371 <_end+0x39edeb09>
  71:	0b 3b                	or     edi,DWORD PTR [rbx]
  73:	05 49 13 38 0b       	add    eax,0xb381349
  78:	00 00                	add    BYTE PTR [rax],al
  7a:	0b 16                	or     edx,DWORD PTR [rsi]
  7c:	00 03                	add    BYTE PTR [rbx],al
  7e:	0e                   	(bad)  
  7f:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  81:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  83:	00 00                	add    BYTE PTR [rax],al
  85:	0c 01                	or     al,0x1
  87:	01 49 13             	add    DWORD PTR [rcx+0x13],ecx
  8a:	01 13                	add    DWORD PTR [rbx],edx
  8c:	00 00                	add    BYTE PTR [rax],al
  8e:	0d 21 00 49 13       	or     eax,0x13490021
  93:	2f                   	(bad)  
  94:	0b 00                	or     eax,DWORD PTR [rax]
  96:	00 0e                	add    BYTE PTR [rsi],cl
  98:	13 00                	adc    eax,DWORD PTR [rax]
  9a:	03 0e                	add    ecx,DWORD PTR [rsi]
  9c:	3c 19                	cmp    al,0x19
  9e:	00 00                	add    BYTE PTR [rax],al
  a0:	0f 34                	sysenter 
  a2:	00 03                	add    BYTE PTR [rbx],al
  a4:	0e                   	(bad)  
  a5:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  a7:	3b 05 49 13 3f 19    	cmp    eax,DWORD PTR [rip+0x193f1349]        # 193f13f6 <_end+0x191efb8e>
  ad:	3c 19                	cmp    al,0x19
  af:	00 00                	add    BYTE PTR [rax],al
  b1:	10 34 00             	adc    BYTE PTR [rax+rax*1],dh
  b4:	03 0e                	add    ecx,DWORD PTR [rsi]
  b6:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  b8:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  ba:	49 13 3f             	adc    rdi,QWORD PTR [r15]
  bd:	19 3c 19             	sbb    DWORD PTR [rcx+rbx*1],edi
  c0:	00 00                	add    BYTE PTR [rax],al
  c2:	11 21                	adc    DWORD PTR [rcx],esp
  c4:	00 00                	add    BYTE PTR [rax],al
  c6:	00 12                	add    BYTE PTR [rdx],dl
  c8:	34 00                	xor    al,0x0
  ca:	03 08                	add    ecx,DWORD PTR [rax]
  cc:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  ce:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  d0:	49 13 3f             	adc    rdi,QWORD PTR [r15]
  d3:	19 02                	sbb    DWORD PTR [rdx],eax
  d5:	18 00                	sbb    BYTE PTR [rax],al
  d7:	00 13                	add    BYTE PTR [rbx],dl
  d9:	34 00                	xor    al,0x0
  db:	03 0e                	add    ecx,DWORD PTR [rsi]
  dd:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  df:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  e1:	49 13 3f             	adc    rdi,QWORD PTR [r15]
  e4:	19 02                	sbb    DWORD PTR [rdx],eax
  e6:	18 00                	sbb    BYTE PTR [rax],al
  e8:	00 14 2e             	add    BYTE PTR [rsi+rbp*1],dl
  eb:	01 3f                	add    DWORD PTR [rdi],edi
  ed:	19 03                	sbb    DWORD PTR [rbx],eax
  ef:	0e                   	(bad)  
  f0:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  f2:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  f4:	27                   	(bad)  
  f5:	19 49 13             	sbb    DWORD PTR [rcx+0x13],ecx
  f8:	11 01                	adc    DWORD PTR [rcx],eax
  fa:	12 07                	adc    al,BYTE PTR [rdi]
  fc:	40 18 96 42 19 01 13 	sbb    BYTE PTR [rsi+0x13011942],dl
 103:	00 00                	add    BYTE PTR [rax],al
 105:	15 34 00 03 08       	adc    eax,0x8030034
 10a:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 10c:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 10e:	49 13 02             	adc    rax,QWORD PTR [r10]
 111:	18 00                	sbb    BYTE PTR [rax],al
 113:	00 16                	add    BYTE PTR [rsi],dl
 115:	2e 01 03             	add    DWORD PTR cs:[rbx],eax
 118:	08 3a                	or     BYTE PTR [rdx],bh
 11a:	0b 3b                	or     edi,DWORD PTR [rbx]
 11c:	0b 11                	or     edx,DWORD PTR [rcx]
 11e:	01 12                	add    DWORD PTR [rdx],edx
 120:	07                   	(bad)  
 121:	40 18 96 42 19 01 13 	sbb    BYTE PTR [rsi+0x13011942],dl
 128:	00 00                	add    BYTE PTR [rax],al
 12a:	17                   	(bad)  
 12b:	2e 01 3f             	add    DWORD PTR cs:[rdi],edi
 12e:	19 03                	sbb    DWORD PTR [rbx],eax
 130:	08 3a                	or     BYTE PTR [rdx],bh
 132:	0b 3b                	or     edi,DWORD PTR [rbx]
 134:	0b 27                	or     esp,DWORD PTR [rdi]
 136:	19 11                	sbb    DWORD PTR [rcx],edx
 138:	01 12                	add    DWORD PTR [rdx],edx
 13a:	07                   	(bad)  
 13b:	40 18 96 42 19 01 13 	sbb    BYTE PTR [rsi+0x13011942],dl
 142:	00 00                	add    BYTE PTR [rax],al
 144:	18 05 00 03 08 3a    	sbb    BYTE PTR [rip+0x3a080300],al        # 3a08044a <_end+0x39e7ebe2>
 14a:	0b 3b                	or     edi,DWORD PTR [rbx]
 14c:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
 14f:	02 18                	add    bl,BYTE PTR [rax]
 151:	00 00                	add    BYTE PTR [rax],al
 153:	19 2e                	sbb    DWORD PTR [rsi],ebp
 155:	00 3f                	add    BYTE PTR [rdi],bh
 157:	19 03                	sbb    DWORD PTR [rbx],eax
 159:	0e                   	(bad)  
 15a:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 15c:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 15e:	27                   	(bad)  
 15f:	19 11                	sbb    DWORD PTR [rcx],edx
 161:	01 12                	add    DWORD PTR [rdx],edx
 163:	07                   	(bad)  
 164:	40 18 96 42 19 00 00 	sbb    BYTE PTR [rsi+0x1942],dl
 16b:	1a 2e                	sbb    ch,BYTE PTR [rsi]
 16d:	00 3f                	add    BYTE PTR [rdi],bh
 16f:	19 03                	sbb    DWORD PTR [rbx],eax
 171:	0e                   	(bad)  
 172:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 174:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 176:	27                   	(bad)  
 177:	19 11                	sbb    DWORD PTR [rcx],edx
 179:	01 12                	add    DWORD PTR [rdx],edx
 17b:	07                   	(bad)  
 17c:	40 18 97 42 19 00 00 	sbb    BYTE PTR [rdi+0x1942],dl
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	26 01 00             	add    DWORD PTR es:[rax],eax
   3:	00 02                	add    BYTE PTR [rdx],al
   5:	00 b7 00 00 00 01    	add    BYTE PTR [rdi+0x1000000],dh
   b:	01 fb                	add    ebx,edi
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     eax,0x1010100
  13:	01 00                	add    DWORD PTR [rax],eax
  15:	00 00                	add    BYTE PTR [rax],al
  17:	01 00                	add    DWORD PTR [rax],eax
  19:	00 01                	add    BYTE PTR [rcx],al
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0x527>
  1e:	72 2f                	jb     4f <_init-0x569>
  20:	6c                   	ins    BYTE PTR es:[rdi],dx
  21:	69 62 2f 67 63 63 2f 	imul   esp,DWORD PTR [rdx+0x2f],0x2f636367
  28:	78 38                	js     62 <_init-0x556>
  2a:	36 5f                	ss pop rdi
  2c:	36 34 2d             	ss xor al,0x2d
  2f:	6c                   	ins    BYTE PTR es:[rdi],dx
  30:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  37:	75 2f                	jne    68 <_init-0x550>
  39:	37                   	(bad)  
  3a:	2f                   	(bad)  
  3b:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  42:	00 2f                	add    BYTE PTR [rdi],ch
  44:	75 73                	jne    b9 <_init-0x4ff>
  46:	72 2f                	jb     77 <_init-0x541>
  48:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  4f:	2f                   	(bad)  
  50:	78 38                	js     8a <_init-0x52e>
  52:	36 5f                	ss pop rdi
  54:	36 34 2d             	ss xor al,0x2d
  57:	6c                   	ins    BYTE PTR es:[rdi],dx
  58:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  5f:	75 2f                	jne    90 <_init-0x528>
  61:	62                   	(bad)  
  62:	69 74 73 00 2f 75 73 	imul   esi,DWORD PTR [rbx+rsi*2+0x0],0x7273752f
  69:	72 
  6a:	2f                   	(bad)  
  6b:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  72:	00 00                	add    BYTE PTR [rax],al
  74:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  75:	76 65                	jbe    dc <_init-0x4dc>
  77:	72 66                	jb     df <_init-0x4d9>
  79:	6c                   	ins    BYTE PTR es:[rdi],dx
  7a:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  7b:	77 2e                	ja     ab <_init-0x50d>
  7d:	63 00                	movsxd eax,DWORD PTR [rax]
  7f:	00 00                	add    BYTE PTR [rax],al
  81:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  84:	64 64 65 66 2e 68 00 	fs fs gs cs pushw 0x100
  8b:	01 
  8c:	00 00                	add    BYTE PTR [rax],al
  8e:	74 79                	je     109 <_init-0x4af>
  90:	70 65                	jo     f7 <_init-0x4c1>
  92:	73 2e                	jae    c2 <_init-0x4f6>
  94:	68 00 02 00 00       	push   0x200
  99:	6c                   	ins    BYTE PTR es:[rdi],dx
  9a:	69 62 69 6f 2e 68 00 	imul   esp,DWORD PTR [rdx+0x69],0x682e6f
  a1:	02 00                	add    al,BYTE PTR [rax]
  a3:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  a6:	64 69 6f 2e 68 00 03 	imul   ebp,DWORD PTR fs:[rdi+0x2e],0x30068
  ad:	00 
  ae:	00 73 79             	add    BYTE PTR [rbx+0x79],dh
  b1:	73 5f                	jae    112 <_init-0x4a6>
  b3:	65 72 72             	gs jb  128 <_init-0x490>
  b6:	6c                   	ins    BYTE PTR es:[rdi],dx
  b7:	69 73 74 2e 68 00 02 	imul   esi,DWORD PTR [rbx+0x74],0x200682e
  be:	00 00                	add    BYTE PTR [rax],al
  c0:	00 00                	add    BYTE PTR [rax],al
  c2:	09 02                	or     DWORD PTR [rdx],eax
  c4:	3a 07                	cmp    al,BYTE PTR [rdi]
  c6:	00 00                	add    BYTE PTR [rax],al
  c8:	00 00                	add    BYTE PTR [rax],al
  ca:	00 00                	add    BYTE PTR [rax],al
  cc:	03 33                	add    esi,DWORD PTR [rbx]
  ce:	01 4b 00             	add    DWORD PTR [rbx+0x0],ecx
  d1:	02 04 03             	add    al,BYTE PTR [rbx+rax*1]
  d4:	bc 00 02 04 03       	mov    esp,0x3040200
  d9:	02 48 10             	add    cl,BYTE PTR [rax+0x10]
  dc:	00 02                	add    BYTE PTR [rdx],al
  de:	04 01                	add    al,0x1
  e0:	06                   	(bad)  
  e1:	e4 06                	in     al,0x6
  e3:	f5                   	cmc    
  e4:	42                   	rex.X
  e5:	4b 00 02             	rex.WXB add BYTE PTR [r10],al
  e8:	04 03                	add    al,0x3
  ea:	f3 00 02             	repz add BYTE PTR [rdx],al
  ed:	04 03                	add    al,0x3
  ef:	08 f3                	or     bl,dh
  f1:	00 02                	add    BYTE PTR [rdx],al
  f3:	04 03                	add    al,0x3
  f5:	02 25 13 00 02 04    	add    ah,BYTE PTR [rip+0x4020013]        # 402010e <_end+0x3e1e8a6>
  fb:	03 e1                	add    esp,ecx
  fd:	00 02                	add    BYTE PTR [rdx],al
  ff:	04 01                	add    al,0x1
 101:	06                   	(bad)  
 102:	08 20                	or     BYTE PTR [rax],ah
 104:	06                   	(bad)  
 105:	08 33                	or     BYTE PTR [rbx],dh
 107:	3f                   	(bad)  
 108:	4b bc 5a a2 ba e7 83 	rex.WXB movabs r12,0xaf878383e7baa25a
 10f:	83 87 af 
 112:	a1 59 08 69 82 e5 08 	movabs eax,ds:0x9f7508e582690859
 119:	75 9f 
 11b:	08 69 82             	or     BYTE PTR [rcx-0x7e],ch
 11e:	e5 08                	in     eax,0x8
 120:	77 a0                	ja     c2 <_init-0x4f6>
 122:	a1                   	.byte 0xa1
 123:	5a                   	pop    rdx
 124:	59                   	pop    rcx
 125:	02 16                	add    dl,BYTE PTR [rsi]
 127:	00 01                	add    BYTE PTR [rcx],al
 129:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f                   	pop    rdi
   1:	5f                   	pop    rdi
   2:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   3:	66 66 5f             	data16 pop di
   6:	74 00                	je     8 <_init-0x5b0>
   8:	6d                   	ins    DWORD PTR es:[rdi],dx
   9:	79 74                	jns    7f <_init-0x539>
   b:	79 70                	jns    7d <_init-0x53b>
   d:	65 00 5f 49          	add    BYTE PTR gs:[rdi+0x49],bl
  11:	4f 5f                	rex.WRXB pop r15
  13:	72 65                	jb     7a <_init-0x53e>
  15:	61                   	(bad)  
  16:	64 5f                	fs pop rdi
  18:	70 74                	jo     8e <_init-0x52a>
  1a:	72 00                	jb     1c <_init-0x59c>
  1c:	5f                   	pop    rdi
  1d:	63 68 61             	movsxd ebp,DWORD PTR [rax+0x61]
  20:	69 6e 00 73 69 7a 65 	imul   ebp,DWORD PTR [rsi+0x0],0x657a6973
  27:	5f                   	pop    rdi
  28:	74 00                	je     2a <_init-0x58e>
  2a:	5f                   	pop    rdi
  2b:	73 68                	jae    95 <_init-0x523>
  2d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  2e:	72 74                	jb     a4 <_init-0x514>
  30:	62                   	(bad)  
  31:	75 66                	jne    99 <_init-0x51f>
  33:	00 47 4e             	add    BYTE PTR [rdi+0x4e],al
  36:	55                   	push   rbp
  37:	20 43 31             	and    BYTE PTR [rbx+0x31],al
  3a:	31 20                	xor    DWORD PTR [rax],esp
  3c:	37                   	(bad)  
  3d:	2e 35 2e 30 20 2d    	cs xor eax,0x2d20302e
  43:	6d                   	ins    DWORD PTR es:[rdi],dx
  44:	74 75                	je     bb <_init-0x4fd>
  46:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  47:	65 3d 67 65 6e 65    	gs cmp eax,0x656e6567
  4d:	72 69                	jb     b8 <_init-0x500>
  4f:	63 20                	movsxd esp,DWORD PTR [rax]
  51:	2d 6d 61 72 63       	sub    eax,0x6372616d
  56:	68 3d 78 38 36       	push   0x3638783d
  5b:	2d 36 34 20 2d       	sub    eax,0x2d203436
  60:	67 20 2d 66 73 74 61 	and    BYTE PTR [eip+0x61747366],ch        # 617473cd <_end+0x61545b65>
  67:	63 6b 2d             	movsxd ebp,DWORD PTR [rbx+0x2d]
  6a:	70 72                	jo     de <_init-0x4da>
  6c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  6d:	74 65                	je     d4 <_init-0x4e4>
  6f:	63 74 6f 72          	movsxd esi,DWORD PTR [rdi+rbp*2+0x72]
  73:	2d 73 74 72 6f       	sub    eax,0x6f727473
  78:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  79:	67 00 5f 49          	add    BYTE PTR [edi+0x49],bl
  7d:	4f 5f                	rex.WRXB pop r15
  7f:	32 5f 31             	xor    bl,BYTE PTR [rdi+0x31]
  82:	5f                   	pop    rdi
  83:	73 74                	jae    f9 <_init-0x4bf>
  85:	64 65 72 72          	fs gs jb fb <_init-0x4bd>
  89:	5f                   	pop    rdi
  8a:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
  8d:	4f 5f                	rex.WRXB pop r15
  8f:	62                   	(bad)  
  90:	75 66                	jne    f8 <_init-0x4c0>
  92:	5f                   	pop    rdi
  93:	62 61                	(bad)  
  95:	73 65                	jae    fc <_init-0x4bc>
  97:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  9a:	61                   	(bad)  
  9b:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
  9e:	65 6c                	gs ins BYTE PTR es:[rdi],dx
  a0:	65 6d                	gs ins DWORD PTR es:[rdi],dx
  a2:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  a4:	74 00                	je     a6 <_init-0x512>
  a6:	6c                   	ins    BYTE PTR es:[rdi],dx
  a7:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  a8:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  a9:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
  ae:	67 20 75 6e          	and    BYTE PTR [ebp+0x6e],dh
  b2:	73 69                	jae    11d <_init-0x49b>
  b4:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  b6:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
  bb:	74 00                	je     bd <_init-0x4fb>
  bd:	6c                   	ins    BYTE PTR es:[rdi],dx
  be:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  bf:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  c0:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
  c5:	67 20 69 6e          	and    BYTE PTR [ecx+0x6e],ch
  c9:	74 00                	je     cb <_init-0x4ed>
  cb:	5f                   	pop    rdi
  cc:	66 69 6c 65 6e 6f 00 	imul   bp,WORD PTR [rbp+riz*2+0x6e],0x6f
  d3:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  d4:	76 65                	jbe    13b <_init-0x47d>
  d6:	72 66                	jb     13e <_init-0x47a>
  d8:	6c                   	ins    BYTE PTR es:[rdi],dx
  d9:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  da:	77 2e                	ja     10a <_init-0x4ae>
  dc:	63 00                	movsxd eax,DWORD PTR [rax]
  de:	5f                   	pop    rdi
  df:	49                   	rex.WB
  e0:	4f 5f                	rex.WRXB pop r15
  e2:	72 65                	jb     149 <_init-0x46f>
  e4:	61                   	(bad)  
  e5:	64 5f                	fs pop rdi
  e7:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  e9:	64 00 5f 66          	add    BYTE PTR fs:[rdi+0x66],bl
  ed:	6c                   	ins    BYTE PTR es:[rdi],dx
  ee:	61                   	(bad)  
  ef:	67 73 00             	addr32 jae f2 <_init-0x4c6>
  f2:	5f                   	pop    rdi
  f3:	49                   	rex.WB
  f4:	4f 5f                	rex.WRXB pop r15
  f6:	62                   	(bad)  
  f7:	75 66                	jne    15f <_init-0x459>
  f9:	5f                   	pop    rdi
  fa:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  fc:	64 00 5f 63          	add    BYTE PTR fs:[rdi+0x63],bl
 100:	75 72                	jne    174 <_init-0x444>
 102:	5f                   	pop    rdi
 103:	63 6f 6c             	movsxd ebp,DWORD PTR [rdi+0x6c]
 106:	75 6d                	jne    175 <_init-0x443>
 108:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 109:	00 5f 6f             	add    BYTE PTR [rdi+0x6f],bl
 10c:	6c                   	ins    BYTE PTR es:[rdi],dx
 10d:	64 5f                	fs pop rdi
 10f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 110:	66 66 73 65          	data16 data16 jae 179 <_init-0x43f>
 114:	74 00                	je     116 <_init-0x4a2>
 116:	74 61                	je     179 <_init-0x43f>
 118:	6b 65 5f 73          	imul   esp,DWORD PTR [rbp+0x5f],0x73
 11c:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 11d:	61                   	(bad)  
 11e:	70 73                	jo     193 <_init-0x425>
 120:	68 6f 74 00 76       	push   0x7600746f
 125:	61                   	(bad)  
 126:	6c                   	ins    BYTE PTR es:[rdi],dx
 127:	75 65                	jne    18e <_init-0x42a>
 129:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 12c:	4f 5f                	rex.WRXB pop r15
 12e:	6d                   	ins    DWORD PTR es:[rdi],dx
 12f:	61                   	(bad)  
 130:	72 6b                	jb     19d <_init-0x41b>
 132:	65 72 00             	gs jb  135 <_init-0x483>
 135:	73 74                	jae    1ab <_init-0x40d>
 137:	64 69 6e 00 5f 49 4f 	imul   ebp,DWORD PTR fs:[rsi+0x0],0x5f4f495f
 13e:	5f 
 13f:	46                   	rex.RX
 140:	49                   	rex.WB
 141:	4c                   	rex.WR
 142:	45 5f                	rex.RB pop r15
 144:	70 6c                	jo     1b2 <_init-0x406>
 146:	75 73                	jne    1bb <_init-0x3fd>
 148:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 14b:	4f 5f                	rex.WRXB pop r15
 14d:	77 72                	ja     1c1 <_init-0x3f7>
 14f:	69 74 65 5f 70 74 72 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x727470
 156:	00 
 157:	73 79                	jae    1d2 <_init-0x3e6>
 159:	73 5f                	jae    1ba <_init-0x3fe>
 15b:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 15c:	65 72 72             	gs jb  1d1 <_init-0x3e7>
 15f:	00 5f 73             	add    BYTE PTR [rdi+0x73],bl
 162:	62                   	(bad)  
 163:	75 66                	jne    1cb <_init-0x3ed>
 165:	00 73 69             	add    BYTE PTR [rbx+0x69],dh
 168:	7a 65                	jp     1cf <_init-0x3e9>
 16a:	00 73 68             	add    BYTE PTR [rbx+0x68],dh
 16d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 16e:	72 74                	jb     1e4 <_init-0x3d4>
 170:	20 75 6e             	and    BYTE PTR [rbp+0x6e],dh
 173:	73 69                	jae    1de <_init-0x3da>
 175:	67 6e                	outs   dx,BYTE PTR ds:[esi]
 177:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
 17c:	74 00                	je     17e <_init-0x43a>
 17e:	5f                   	pop    rdi
 17f:	49                   	rex.WB
 180:	4f 5f                	rex.WRXB pop r15
 182:	73 61                	jae    1e5 <_init-0x3d3>
 184:	76 65                	jbe    1eb <_init-0x3cd>
 186:	5f                   	pop    rdi
 187:	62 61                	(bad)  
 189:	73 65                	jae    1f0 <_init-0x3c8>
 18b:	00 5f 6c             	add    BYTE PTR [rdi+0x6c],bl
 18e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 18f:	63 6b 00             	movsxd ebp,DWORD PTR [rbx+0x0]
 192:	5f                   	pop    rdi
 193:	66 6c                	data16 ins BYTE PTR es:[rdi],dx
 195:	61                   	(bad)  
 196:	67 73 32             	addr32 jae 1cb <_init-0x3ed>
 199:	00 5f 6d             	add    BYTE PTR [rdi+0x6d],bl
 19c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 19d:	64 65 00 73 74       	fs add BYTE PTR gs:[rbx+0x74],dh
 1a2:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
 1a4:	75 74                	jne    21a <_init-0x39e>
 1a6:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 1a9:	4f 5f                	rex.WRXB pop r15
 1ab:	32 5f 31             	xor    bl,BYTE PTR [rdi+0x31]
 1ae:	5f                   	pop    rdi
 1af:	73 74                	jae    225 <_init-0x393>
 1b1:	64 69 6e 5f 00 61 64 	imul   ebp,DWORD PTR fs:[rsi+0x5f],0x64646100
 1b8:	64 
 1b9:	72 65                	jb     220 <_init-0x398>
 1bb:	73 73                	jae    230 <_init-0x388>
 1bd:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 1c0:	4f 5f                	rex.WRXB pop r15
 1c2:	77 72                	ja     236 <_init-0x382>
 1c4:	69 74 65 5f 65 6e 64 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x646e65
 1cb:	00 
 1cc:	2f                   	(bad)  
 1cd:	68 6f 6d 65 2f       	push   0x2f656d6f
 1d2:	74 65                	je     239 <_init-0x37f>
 1d4:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 1d5:	2f                   	(bad)  
 1d6:	50                   	push   rax
 1d7:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 1d8:	6c                   	ins    BYTE PTR es:[rdi],dx
 1d9:	69 2f 41 6e 5f 33    	imul   ebp,DWORD PTR [rdi],0x335f6e41
 1df:	2f                   	(bad)  
 1e0:	53                   	push   rbx
 1e1:	4f 2f                	rex.WRXB (bad) 
 1e3:	4c 61                	rex.WR (bad) 
 1e5:	62                   	(bad)  
 1e6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 1e7:	72 61                	jb     24a <_init-0x36e>
 1e9:	74 6f                	je     25a <_init-0x35e>
 1eb:	61                   	(bad)  
 1ec:	72 65                	jb     253 <_init-0x365>
 1ee:	2f                   	(bad)  
 1ef:	4c 61                	rex.WR (bad) 
 1f1:	62                   	(bad)  
 1f2:	35 2f 6c 69 6e       	xor    eax,0x6e696c2f
 1f7:	2f                   	(bad)  
 1f8:	36 2d 73 74 61 63    	ss sub eax,0x63617473
 1fe:	6b 00 5f             	imul   eax,DWORD PTR [rax],0x5f
 201:	49                   	rex.WB
 202:	4f 5f                	rex.WRXB pop r15
 204:	6c                   	ins    BYTE PTR es:[rdi],dx
 205:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 206:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 209:	74 00                	je     20b <_init-0x3ad>
 20b:	5f                   	pop    rdi
 20c:	49                   	rex.WB
 20d:	4f 5f                	rex.WRXB pop r15
 20f:	46                   	rex.RX
 210:	49                   	rex.WB
 211:	4c                   	rex.WR
 212:	45 00 5f 70          	add    BYTE PTR [r15+0x70],r11b
 216:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 217:	73 00                	jae    219 <_init-0x39f>
 219:	73 79                	jae    294 <_init-0x324>
 21b:	73 5f                	jae    27c <_init-0x33c>
 21d:	65 72 72             	gs jb  292 <_init-0x326>
 220:	6c                   	ins    BYTE PTR es:[rdi],dx
 221:	69 73 74 00 5f 6d 61 	imul   esi,DWORD PTR [rbx+0x74],0x616d5f00
 228:	72 6b                	jb     295 <_init-0x323>
 22a:	65 72 73             	gs jb  2a0 <_init-0x318>
 22d:	00 75 6e             	add    BYTE PTR [rbp+0x6e],dh
 230:	73 69                	jae    29b <_init-0x31d>
 232:	67 6e                	outs   dx,BYTE PTR ds:[esi]
 234:	65 64 20 63 68       	gs and BYTE PTR fs:[rbx+0x68],ah
 239:	61                   	(bad)  
 23a:	72 00                	jb     23c <_init-0x37c>
 23c:	73 68                	jae    2a6 <_init-0x312>
 23e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 23f:	72 74                	jb     2b5 <_init-0x303>
 241:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
 244:	74 00                	je     246 <_init-0x372>
 246:	5f                   	pop    rdi
 247:	76 74                	jbe    2bd <_init-0x2fb>
 249:	61                   	(bad)  
 24a:	62                   	(bad)  
 24b:	6c                   	ins    BYTE PTR es:[rdi],dx
 24c:	65 5f                	gs pop rdi
 24e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 24f:	66 66 73 65          	data16 data16 jae 2b8 <_init-0x300>
 253:	74 00                	je     255 <_init-0x363>
 255:	5f                   	pop    rdi
 256:	49                   	rex.WB
 257:	4f 5f                	rex.WRXB pop r15
 259:	32 5f 31             	xor    bl,BYTE PTR [rdi+0x31]
 25c:	5f                   	pop    rdi
 25d:	73 74                	jae    2d3 <_init-0x2e5>
 25f:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
 261:	75 74                	jne    2d7 <_init-0x2e1>
 263:	5f                   	pop    rdi
 264:	00 5f 6e             	add    BYTE PTR [rdi+0x6e],bl
 267:	65 78 74             	gs js  2de <_init-0x2da>
 26a:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 26d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 26e:	66 66 36 34 5f       	data16 data16 ss xor al,0x5f
 273:	74 00                	je     275 <_init-0x343>
 275:	5f                   	pop    rdi
 276:	49                   	rex.WB
 277:	4f 5f                	rex.WRXB pop r15
 279:	72 65                	jb     2e0 <_init-0x2d8>
 27b:	61                   	(bad)  
 27c:	64 5f                	fs pop rdi
 27e:	62 61                	(bad)  
 280:	73 65                	jae    2e7 <_init-0x2d1>
 282:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 285:	4f 5f                	rex.WRXB pop r15
 287:	73 61                	jae    2ea <_init-0x2ce>
 289:	76 65                	jbe    2f0 <_init-0x2c8>
 28b:	5f                   	pop    rdi
 28c:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
 28e:	64 00 5f 5f          	add    BYTE PTR fs:[rdi+0x5f],bl
 292:	70 61                	jo     2f5 <_init-0x2c3>
 294:	64 31 00             	xor    DWORD PTR fs:[rax],eax
 297:	5f                   	pop    rdi
 298:	5f                   	pop    rdi
 299:	70 61                	jo     2fc <_init-0x2bc>
 29b:	64 32 00             	xor    al,BYTE PTR fs:[rax]
 29e:	5f                   	pop    rdi
 29f:	5f                   	pop    rdi
 2a0:	70 61                	jo     303 <_init-0x2b5>
 2a2:	64 33 00             	xor    eax,DWORD PTR fs:[rax]
 2a5:	5f                   	pop    rdi
 2a6:	5f                   	pop    rdi
 2a7:	70 61                	jo     30a <_init-0x2ae>
 2a9:	64 34 00             	fs xor al,0x0
 2ac:	5f                   	pop    rdi
 2ad:	5f                   	pop    rdi
 2ae:	70 61                	jo     311 <_init-0x2a7>
 2b0:	64 35 00 73 68 6f    	fs xor eax,0x6f687300
 2b6:	77 5f                	ja     317 <_init-0x2a1>
 2b8:	73 6e                	jae    328 <_init-0x290>
 2ba:	61                   	(bad)  
 2bb:	70 73                	jo     330 <_init-0x288>
 2bd:	68 6f 74 00 5f       	push   0x5f00746f
 2c2:	75 6e                	jne    332 <_init-0x286>
 2c4:	75 73                	jne    339 <_init-0x27f>
 2c6:	65 64 32 00          	gs xor al,BYTE PTR fs:[rax]
 2ca:	73 74                	jae    340 <_init-0x278>
 2cc:	64 65 72 72          	fs gs jb 342 <_init-0x276>
 2d0:	00 73 68             	add    BYTE PTR [rbx+0x68],dh
 2d3:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 2d4:	77 5f                	ja     335 <_init-0x283>
 2d6:	6d                   	ins    DWORD PTR es:[rdi],dx
 2d7:	65 73 73             	gs jae 34d <_init-0x26b>
 2da:	61                   	(bad)  
 2db:	67 65 00 5f 49       	add    BYTE PTR gs:[edi+0x49],bl
 2e0:	4f 5f                	rex.WRXB pop r15
 2e2:	62 61                	(bad)  
 2e4:	63 6b 75             	movsxd ebp,DWORD PTR [rbx+0x75]
 2e7:	70 5f                	jo     348 <_init-0x270>
 2e9:	62 61                	(bad)  
 2eb:	73 65                	jae    352 <_init-0x266>
 2ed:	00 6d 61             	add    BYTE PTR [rbp+0x61],ch
 2f0:	69 6e 00 5f 49 4f 5f 	imul   ebp,DWORD PTR [rsi+0x0],0x5f4f495f
 2f7:	77 72                	ja     36b <_init-0x24d>
 2f9:	69 74 65 5f 62 61 73 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x65736162
 300:	65 
	...
