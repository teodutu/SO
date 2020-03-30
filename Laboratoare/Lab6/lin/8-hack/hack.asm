
hack:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	ins    BYTE PTR es:[rdi],dx
 23a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 246:	78 2d                	js     275 <_init-0x363>
 248:	78 38                	js     282 <_init-0x356>
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
 283:	00 0d 77 16 f2 8c    	add    BYTE PTR [rip+0xffffffff8cf21677],cl        # ffffffff8cf21900 <_end+0xffffffff8cd208e8>
 289:	ce                   	(bad)  
 28a:	38 95 f0 c0 c6 f5    	cmp    BYTE PTR [rbp-0xa393f10],dl
 290:	fc                   	cld    
 291:	0b 93 cc 97 63 8c    	or     edx,DWORD PTR [rbx-0x739c6834]
 297:	60                   	(bad)  

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
 2d0:	62                   	(bad)  
 2d1:	00 00                	add    BYTE PTR [rax],al
 2d3:	00 20                	add    BYTE PTR [rax],ah
	...
 2e5:	00 00                	add    BYTE PTR [rax],al
 2e7:	00 12                	add    BYTE PTR [rdx],dl
 2e9:	00 00                	add    BYTE PTR [rax],al
 2eb:	00 12                	add    BYTE PTR [rdx],dl
	...
 2fd:	00 00                	add    BYTE PTR [rax],al
 2ff:	00 19                	add    BYTE PTR [rcx],bl
 301:	00 00                	add    BYTE PTR [rax],al
 303:	00 12                	add    BYTE PTR [rdx],dl
	...
 315:	00 00                	add    BYTE PTR [rax],al
 317:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
 31b:	00 12                	add    BYTE PTR [rdx],dl
	...
 32d:	00 00                	add    BYTE PTR [rax],al
 32f:	00 7e 00             	add    BYTE PTR [rsi+0x0],bh
 332:	00 00                	add    BYTE PTR [rax],al
 334:	20 00                	and    BYTE PTR [rax],al
	...
 346:	00 00                	add    BYTE PTR [rax],al
 348:	2c 00                	sub    al,0x0
 34a:	00 00                	add    BYTE PTR [rax],al
 34c:	12 00                	adc    al,BYTE PTR [rax]
	...
 35e:	00 00                	add    BYTE PTR [rax],al
 360:	0b 00                	or     eax,DWORD PTR [rax]
 362:	00 00                	add    BYTE PTR [rax],al
 364:	12 00                	adc    al,BYTE PTR [rax]
	...
 376:	00 00                	add    BYTE PTR [rax],al
 378:	20 00                	and    BYTE PTR [rax],al
 37a:	00 00                	add    BYTE PTR [rax],al
 37c:	12 00                	adc    al,BYTE PTR [rax]
	...
 38e:	00 00                	add    BYTE PTR [rax],al
 390:	8d 00                	lea    eax,[rax]
 392:	00 00                	add    BYTE PTR [rax],al
 394:	20 00                	and    BYTE PTR [rax],al
	...
 3a6:	00 00                	add    BYTE PTR [rax],al
 3a8:	35 00 00 00 22       	xor    eax,0x22000000
	...

Disassembly of section .dynstr:

00000000000003c0 <.dynstr>:
 3c0:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 3c4:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 3c6:	73 6f                	jae    437 <_init-0x1a1>
 3c8:	2e 36 00 70 65       	cs add BYTE PTR ss:[rax+0x65],dh
 3cd:	72 72                	jb     441 <_init-0x197>
 3cf:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 3d0:	72 00                	jb     3d2 <_init-0x206>
 3d2:	67 65 74 70          	addr32 gs je 446 <_init-0x192>
 3d6:	69 64 00 70 72 69 6e 	imul   esp,DWORD PTR [rax+rax*1+0x70],0x746e6972
 3dd:	74 
 3de:	66 00 67 65          	data16 add BYTE PTR [rdi+0x65],ah
 3e2:	74 70                	je     454 <_init-0x184>
 3e4:	61                   	(bad)  
 3e5:	67 65 73 69          	addr32 gs jae 452 <_init-0x186>
 3e9:	7a 65                	jp     450 <_init-0x188>
 3eb:	00 6d 70             	add    BYTE PTR [rbp+0x70],ch
 3ee:	72 6f                	jb     45f <_init-0x179>
 3f0:	74 65                	je     457 <_init-0x181>
 3f2:	63 74 00 5f          	movsxd esi,DWORD PTR [rax+rax*1+0x5f]
 3f6:	5f                   	pop    rdi
 3f7:	63 78 61             	movsxd edi,DWORD PTR [rax+0x61]
 3fa:	5f                   	pop    rdi
 3fb:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 401:	7a 65                	jp     468 <_init-0x170>
 403:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 406:	6c                   	ins    BYTE PTR es:[rdi],dx
 407:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
 40e:	72 74                	jb     484 <_init-0x154>
 410:	5f                   	pop    rdi
 411:	6d                   	ins    DWORD PTR es:[rdi],dx
 412:	61                   	(bad)  
 413:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [rsi+0x0],0x42494c47
 41a:	43 5f                	rex.XB pop r15
 41c:	32 2e                	xor    ch,BYTE PTR [rsi]
 41e:	32 2e                	xor    ch,BYTE PTR [rsi]
 420:	35 00 5f 49 54       	xor    eax,0x54495f00
 425:	4d 5f                	rex.WRB pop r15
 427:	64 65 72 65          	fs gs jb 490 <_init-0x148>
 42b:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 432:	4d 
 433:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 435:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 436:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 437:	65 54                	gs push rsp
 439:	61                   	(bad)  
 43a:	62                   	(bad)  
 43b:	6c                   	ins    BYTE PTR es:[rdi],dx
 43c:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
 440:	67 6d                	ins    DWORD PTR es:[edi],dx
 442:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 443:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 444:	5f                   	pop    rdi
 445:	73 74                	jae    4bb <_init-0x11d>
 447:	61                   	(bad)  
 448:	72 74                	jb     4be <_init-0x11a>
 44a:	5f                   	pop    rdi
 44b:	5f                   	pop    rdi
 44c:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 44f:	54                   	push   rsp
 450:	4d 5f                	rex.WRB pop r15
 452:	72 65                	jb     4b9 <_init-0x11f>
 454:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 45b:	4d 
 45c:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 45e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 45f:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 460:	65 54                	gs push rsp
 462:	61                   	(bad)  
 463:	62                   	.byte 0x62
 464:	6c                   	ins    BYTE PTR es:[rdi],dx
 465:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000468 <.gnu.version>:
 468:	00 00                	add    BYTE PTR [rax],al
 46a:	00 00                	add    BYTE PTR [rax],al
 46c:	02 00                	add    al,BYTE PTR [rax]
 46e:	02 00                	add    al,BYTE PTR [rax]
 470:	02 00                	add    al,BYTE PTR [rax]
 472:	00 00                	add    BYTE PTR [rax],al
 474:	02 00                	add    al,BYTE PTR [rax]
 476:	02 00                	add    al,BYTE PTR [rax]
 478:	02 00                	add    al,BYTE PTR [rax]
 47a:	00 00                	add    BYTE PTR [rax],al
 47c:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

0000000000000480 <.gnu.version_r>:
 480:	01 00                	add    DWORD PTR [rax],eax
 482:	01 00                	add    DWORD PTR [rax],eax
 484:	01 00                	add    DWORD PTR [rax],eax
 486:	00 00                	add    BYTE PTR [rax],al
 488:	10 00                	adc    BYTE PTR [rax],al
 48a:	00 00                	add    BYTE PTR [rax],al
 48c:	00 00                	add    BYTE PTR [rax],al
 48e:	00 00                	add    BYTE PTR [rax],al
 490:	75 1a                	jne    4ac <_init-0x12c>
 492:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
 498:	56                   	push   rsi
 499:	00 00                	add    BYTE PTR [rax],al
 49b:	00 00                	add    BYTE PTR [rax],al
 49d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

00000000000004a0 <.rela.dyn>:
 4a0:	98                   	cwde   
 4a1:	0d 20 00 00 00       	or     eax,0x20
 4a6:	00 00                	add    BYTE PTR [rax],al
 4a8:	08 00                	or     BYTE PTR [rax],al
 4aa:	00 00                	add    BYTE PTR [rax],al
 4ac:	00 00                	add    BYTE PTR [rax],al
 4ae:	00 00                	add    BYTE PTR [rax],al
 4b0:	60                   	(bad)  
 4b1:	07                   	(bad)  
 4b2:	00 00                	add    BYTE PTR [rax],al
 4b4:	00 00                	add    BYTE PTR [rax],al
 4b6:	00 00                	add    BYTE PTR [rax],al
 4b8:	a0 0d 20 00 00 00 00 	movabs al,ds:0x80000000000200d
 4bf:	00 08 
 4c1:	00 00                	add    BYTE PTR [rax],al
 4c3:	00 00                	add    BYTE PTR [rax],al
 4c5:	00 00                	add    BYTE PTR [rax],al
 4c7:	00 20                	add    BYTE PTR [rax],ah
 4c9:	07                   	(bad)  
 4ca:	00 00                	add    BYTE PTR [rax],al
 4cc:	00 00                	add    BYTE PTR [rax],al
 4ce:	00 00                	add    BYTE PTR [rax],al
 4d0:	08 10                	or     BYTE PTR [rax],dl
 4d2:	20 00                	and    BYTE PTR [rax],al
 4d4:	00 00                	add    BYTE PTR [rax],al
 4d6:	00 00                	add    BYTE PTR [rax],al
 4d8:	08 00                	or     BYTE PTR [rax],al
 4da:	00 00                	add    BYTE PTR [rax],al
 4dc:	00 00                	add    BYTE PTR [rax],al
 4de:	00 00                	add    BYTE PTR [rax],al
 4e0:	08 10                	or     BYTE PTR [rax],dl
 4e2:	20 00                	and    BYTE PTR [rax],al
 4e4:	00 00                	add    BYTE PTR [rax],al
 4e6:	00 00                	add    BYTE PTR [rax],al
 4e8:	d8 0f                	fmul   DWORD PTR [rdi]
 4ea:	20 00                	and    BYTE PTR [rax],al
 4ec:	00 00                	add    BYTE PTR [rax],al
 4ee:	00 00                	add    BYTE PTR [rax],al
 4f0:	06                   	(bad)  
 4f1:	00 00                	add    BYTE PTR [rax],al
 4f3:	00 01                	add    BYTE PTR [rcx],al
	...
 4fd:	00 00                	add    BYTE PTR [rax],al
 4ff:	00 e0                	add    al,ah
 501:	0f 20 00             	mov    rax,cr0
 504:	00 00                	add    BYTE PTR [rax],al
 506:	00 00                	add    BYTE PTR [rax],al
 508:	06                   	(bad)  
 509:	00 00                	add    BYTE PTR [rax],al
 50b:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
 516:	00 00                	add    BYTE PTR [rax],al
 518:	e8 0f 20 00 00       	call   252c <__FRAME_END__+0x19a0>
 51d:	00 00                	add    BYTE PTR [rax],al
 51f:	00 06                	add    BYTE PTR [rsi],al
 521:	00 00                	add    BYTE PTR [rax],al
 523:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 529 <_init-0xaf>
 529:	00 00                	add    BYTE PTR [rax],al
 52b:	00 00                	add    BYTE PTR [rax],al
 52d:	00 00                	add    BYTE PTR [rax],al
 52f:	00 f0                	add    al,dh
 531:	0f 20 00             	mov    rax,cr0
 534:	00 00                	add    BYTE PTR [rax],al
 536:	00 00                	add    BYTE PTR [rax],al
 538:	06                   	(bad)  
 539:	00 00                	add    BYTE PTR [rax],al
 53b:	00 09                	add    BYTE PTR [rcx],cl
	...
 545:	00 00                	add    BYTE PTR [rax],al
 547:	00 f8                	add    al,bh
 549:	0f 20 00             	mov    rax,cr0
 54c:	00 00                	add    BYTE PTR [rax],al
 54e:	00 00                	add    BYTE PTR [rax],al
 550:	06                   	(bad)  
 551:	00 00                	add    BYTE PTR [rax],al
 553:	00 0a                	add    BYTE PTR [rdx],cl
	...

Disassembly of section .rela.plt:

0000000000000560 <.rela.plt>:
 560:	b0 0f                	mov    al,0xf
 562:	20 00                	and    BYTE PTR [rax],al
 564:	00 00                	add    BYTE PTR [rax],al
 566:	00 00                	add    BYTE PTR [rax],al
 568:	07                   	(bad)  
 569:	00 00                	add    BYTE PTR [rax],al
 56b:	00 02                	add    BYTE PTR [rdx],al
	...
 575:	00 00                	add    BYTE PTR [rax],al
 577:	00 b8 0f 20 00 00    	add    BYTE PTR [rax+0x200f],bh
 57d:	00 00                	add    BYTE PTR [rax],al
 57f:	00 07                	add    BYTE PTR [rdi],al
 581:	00 00                	add    BYTE PTR [rax],al
 583:	00 03                	add    BYTE PTR [rbx],al
	...
 58d:	00 00                	add    BYTE PTR [rax],al
 58f:	00 c0                	add    al,al
 591:	0f 20 00             	mov    rax,cr0
 594:	00 00                	add    BYTE PTR [rax],al
 596:	00 00                	add    BYTE PTR [rax],al
 598:	07                   	(bad)  
 599:	00 00                	add    BYTE PTR [rax],al
 59b:	00 06                	add    BYTE PTR [rsi],al
	...
 5a5:	00 00                	add    BYTE PTR [rax],al
 5a7:	00 c8                	add    al,cl
 5a9:	0f 20 00             	mov    rax,cr0
 5ac:	00 00                	add    BYTE PTR [rax],al
 5ae:	00 00                	add    BYTE PTR [rax],al
 5b0:	07                   	(bad)  
 5b1:	00 00                	add    BYTE PTR [rax],al
 5b3:	00 07                	add    BYTE PTR [rdi],al
	...
 5bd:	00 00                	add    BYTE PTR [rax],al
 5bf:	00 d0                	add    al,dl
 5c1:	0f 20 00             	mov    rax,cr0
 5c4:	00 00                	add    BYTE PTR [rax],al
 5c6:	00 00                	add    BYTE PTR [rax],al
 5c8:	07                   	(bad)  
 5c9:	00 00                	add    BYTE PTR [rax],al
 5cb:	00 08                	add    BYTE PTR [rax],cl
	...

Disassembly of section .init:

00000000000005d8 <_init>:
 5d8:	48 83 ec 08          	sub    rsp,0x8
 5dc:	48 8b 05 05 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a05]        # 200fe8 <__gmon_start__>
 5e3:	48 85 c0             	test   rax,rax
 5e6:	74 02                	je     5ea <_init+0x12>
 5e8:	ff d0                	call   rax
 5ea:	48 83 c4 08          	add    rsp,0x8
 5ee:	c3                   	ret    

Disassembly of section .plt:

00000000000005f0 <.plt>:
 5f0:	ff 35 aa 09 20 00    	push   QWORD PTR [rip+0x2009aa]        # 200fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 5f6:	ff 25 ac 09 20 00    	jmp    QWORD PTR [rip+0x2009ac]        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 5fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000600 <getpid@plt>:
 600:	ff 25 aa 09 20 00    	jmp    QWORD PTR [rip+0x2009aa]        # 200fb0 <getpid@GLIBC_2.2.5>
 606:	68 00 00 00 00       	push   0x0
 60b:	e9 e0 ff ff ff       	jmp    5f0 <.plt>

0000000000000610 <printf@plt>:
 610:	ff 25 a2 09 20 00    	jmp    QWORD PTR [rip+0x2009a2]        # 200fb8 <printf@GLIBC_2.2.5>
 616:	68 01 00 00 00       	push   0x1
 61b:	e9 d0 ff ff ff       	jmp    5f0 <.plt>

0000000000000620 <mprotect@plt>:
 620:	ff 25 9a 09 20 00    	jmp    QWORD PTR [rip+0x20099a]        # 200fc0 <mprotect@GLIBC_2.2.5>
 626:	68 02 00 00 00       	push   0x2
 62b:	e9 c0 ff ff ff       	jmp    5f0 <.plt>

0000000000000630 <perror@plt>:
 630:	ff 25 92 09 20 00    	jmp    QWORD PTR [rip+0x200992]        # 200fc8 <perror@GLIBC_2.2.5>
 636:	68 03 00 00 00       	push   0x3
 63b:	e9 b0 ff ff ff       	jmp    5f0 <.plt>

0000000000000640 <getpagesize@plt>:
 640:	ff 25 8a 09 20 00    	jmp    QWORD PTR [rip+0x20098a]        # 200fd0 <getpagesize@GLIBC_2.2.5>
 646:	68 04 00 00 00       	push   0x4
 64b:	e9 a0 ff ff ff       	jmp    5f0 <.plt>

Disassembly of section .plt.got:

0000000000000650 <__cxa_finalize@plt>:
 650:	ff 25 a2 09 20 00    	jmp    QWORD PTR [rip+0x2009a2]        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 656:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000660 <_start>:
 660:	31 ed                	xor    ebp,ebp
 662:	49 89 d1             	mov    r9,rdx
 665:	5e                   	pop    rsi
 666:	48 89 e2             	mov    rdx,rsp
 669:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
 66d:	50                   	push   rax
 66e:	54                   	push   rsp
 66f:	4c 8d 05 ea 02 00 00 	lea    r8,[rip+0x2ea]        # 960 <__libc_csu_fini>
 676:	48 8d 0d 73 02 00 00 	lea    rcx,[rip+0x273]        # 8f0 <__libc_csu_init>
 67d:	48 8d 3d f1 00 00 00 	lea    rdi,[rip+0xf1]        # 775 <main>
 684:	ff 15 56 09 20 00    	call   QWORD PTR [rip+0x200956]        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 68a:	f4                   	hlt    
 68b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000690 <deregister_tm_clones>:
 690:	48 8d 3d 79 09 20 00 	lea    rdi,[rip+0x200979]        # 201010 <__TMC_END__>
 697:	55                   	push   rbp
 698:	48 8d 05 71 09 20 00 	lea    rax,[rip+0x200971]        # 201010 <__TMC_END__>
 69f:	48 39 f8             	cmp    rax,rdi
 6a2:	48 89 e5             	mov    rbp,rsp
 6a5:	74 19                	je     6c0 <deregister_tm_clones+0x30>
 6a7:	48 8b 05 2a 09 20 00 	mov    rax,QWORD PTR [rip+0x20092a]        # 200fd8 <_ITM_deregisterTMCloneTable>
 6ae:	48 85 c0             	test   rax,rax
 6b1:	74 0d                	je     6c0 <deregister_tm_clones+0x30>
 6b3:	5d                   	pop    rbp
 6b4:	ff e0                	jmp    rax
 6b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 6bd:	00 00 00 
 6c0:	5d                   	pop    rbp
 6c1:	c3                   	ret    
 6c2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 6c6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 6cd:	00 00 00 

00000000000006d0 <register_tm_clones>:
 6d0:	48 8d 3d 39 09 20 00 	lea    rdi,[rip+0x200939]        # 201010 <__TMC_END__>
 6d7:	48 8d 35 32 09 20 00 	lea    rsi,[rip+0x200932]        # 201010 <__TMC_END__>
 6de:	55                   	push   rbp
 6df:	48 29 fe             	sub    rsi,rdi
 6e2:	48 89 e5             	mov    rbp,rsp
 6e5:	48 c1 fe 03          	sar    rsi,0x3
 6e9:	48 89 f0             	mov    rax,rsi
 6ec:	48 c1 e8 3f          	shr    rax,0x3f
 6f0:	48 01 c6             	add    rsi,rax
 6f3:	48 d1 fe             	sar    rsi,1
 6f6:	74 18                	je     710 <register_tm_clones+0x40>
 6f8:	48 8b 05 f1 08 20 00 	mov    rax,QWORD PTR [rip+0x2008f1]        # 200ff0 <_ITM_registerTMCloneTable>
 6ff:	48 85 c0             	test   rax,rax
 702:	74 0c                	je     710 <register_tm_clones+0x40>
 704:	5d                   	pop    rbp
 705:	ff e0                	jmp    rax
 707:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 70e:	00 00 
 710:	5d                   	pop    rbp
 711:	c3                   	ret    
 712:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 716:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 71d:	00 00 00 

0000000000000720 <__do_global_dtors_aux>:
 720:	80 3d e9 08 20 00 00 	cmp    BYTE PTR [rip+0x2008e9],0x0        # 201010 <__TMC_END__>
 727:	75 2f                	jne    758 <__do_global_dtors_aux+0x38>
 729:	48 83 3d c7 08 20 00 	cmp    QWORD PTR [rip+0x2008c7],0x0        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 730:	00 
 731:	55                   	push   rbp
 732:	48 89 e5             	mov    rbp,rsp
 735:	74 0c                	je     743 <__do_global_dtors_aux+0x23>
 737:	48 8b 3d ca 08 20 00 	mov    rdi,QWORD PTR [rip+0x2008ca]        # 201008 <__dso_handle>
 73e:	e8 0d ff ff ff       	call   650 <__cxa_finalize@plt>
 743:	e8 48 ff ff ff       	call   690 <deregister_tm_clones>
 748:	c6 05 c1 08 20 00 01 	mov    BYTE PTR [rip+0x2008c1],0x1        # 201010 <__TMC_END__>
 74f:	5d                   	pop    rbp
 750:	c3                   	ret    
 751:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 758:	f3 c3                	repz ret 
 75a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000760 <frame_dummy>:
 760:	55                   	push   rbp
 761:	48 89 e5             	mov    rbp,rsp
 764:	5d                   	pop    rbp
 765:	e9 66 ff ff ff       	jmp    6d0 <register_tm_clones>

000000000000076a <foo>:
 76a:	55                   	push   rbp
 76b:	48 89 e5             	mov    rbp,rsp
 76e:	b8 0c 00 00 00       	mov    eax,0xc
 773:	5d                   	pop    rbp
 774:	c3                   	ret    

0000000000000775 <main>:
 775:	55                   	push   rbp
 776:	48 89 e5             	mov    rbp,rsp
 779:	48 83 ec 30          	sub    rsp,0x30
 77d:	e8 be fe ff ff       	call   640 <getpagesize@plt>
 782:	89 05 8c 08 20 00    	mov    DWORD PTR [rip+0x20088c],eax        # 201014 <pagesize>
 788:	48 8d 05 db ff ff ff 	lea    rax,[rip+0xffffffffffffffdb]        # 76a <foo>
 78f:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
 793:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 797:	48 89 c6             	mov    rsi,rax
 79a:	48 8d 3d d7 01 00 00 	lea    rdi,[rip+0x1d7]        # 978 <_IO_stdin_used+0x8>
 7a1:	b8 00 00 00 00       	mov    eax,0x0
 7a6:	e8 65 fe ff ff       	call   610 <printf@plt>
 7ab:	e8 90 fe ff ff       	call   640 <getpagesize@plt>
 7b0:	f7 d8                	neg    eax
 7b2:	48 63 d0             	movsxd rdx,eax
 7b5:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 7b9:	48 21 d0             	and    rax,rdx
 7bc:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
 7c0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 7c4:	48 89 c6             	mov    rsi,rax
 7c7:	48 8d 3d c2 01 00 00 	lea    rdi,[rip+0x1c2]        # 990 <_IO_stdin_used+0x20>
 7ce:	b8 00 00 00 00       	mov    eax,0x0
 7d3:	e8 38 fe ff ff       	call   610 <printf@plt>
 7d8:	8b 05 36 08 20 00    	mov    eax,DWORD PTR [rip+0x200836]        # 201014 <pagesize>
 7de:	48 63 d0             	movsxd rdx,eax
 7e1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 7e5:	48 01 d0             	add    rax,rdx
 7e8:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
 7ec:	e8 0f fe ff ff       	call   600 <getpid@plt>
 7f1:	89 c6                	mov    esi,eax
 7f3:	48 8d 3d bc 01 00 00 	lea    rdi,[rip+0x1bc]        # 9b6 <_IO_stdin_used+0x46>
 7fa:	b8 00 00 00 00       	mov    eax,0x0
 7ff:	e8 0c fe ff ff       	call   610 <printf@plt>
 804:	e8 61 ff ff ff       	call   76a <foo>
 809:	89 c6                	mov    esi,eax
 80b:	48 8d 3d b3 01 00 00 	lea    rdi,[rip+0x1b3]        # 9c5 <_IO_stdin_used+0x55>
 812:	b8 00 00 00 00       	mov    eax,0x0
 817:	e8 f4 fd ff ff       	call   610 <printf@plt>
 81c:	8b 05 f2 07 20 00    	mov    eax,DWORD PTR [rip+0x2007f2]        # 201014 <pagesize>
 822:	48 63 c8             	movsxd rcx,eax
 825:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 829:	ba 07 00 00 00       	mov    edx,0x7
 82e:	48 89 ce             	mov    rsi,rcx
 831:	48 89 c7             	mov    rdi,rax
 834:	e8 e7 fd ff ff       	call   620 <mprotect@plt>
 839:	85 c0                	test   eax,eax
 83b:	74 16                	je     853 <main+0xde>
 83d:	48 8d 3d 9f 01 00 00 	lea    rdi,[rip+0x19f]        # 9e3 <_IO_stdin_used+0x73>
 844:	e8 e7 fd ff ff       	call   630 <perror@plt>
 849:	b8 01 00 00 00       	mov    eax,0x1
 84e:	e9 8d 00 00 00       	jmp    8e0 <main+0x16b>
 853:	48 8d 05 10 ff ff ff 	lea    rax,[rip+0xffffffffffffff10]        # 76a <foo>
 85a:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
 85e:	eb 05                	jmp    865 <main+0xf0>
 860:	48 83 45 d8 01       	add    QWORD PTR [rbp-0x28],0x1
 865:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
 869:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 86d:	48 39 c2             	cmp    rdx,rax
 870:	7d 1b                	jge    88d <main+0x118>
 872:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 876:	48 3d b8 00 00 00    	cmp    rax,0xb8
 87c:	74 0f                	je     88d <main+0x118>
 87e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 882:	48 83 c0 01          	add    rax,0x1
 886:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 889:	3c 0c                	cmp    al,0xc
 88b:	75 d3                	jne    860 <main+0xeb>
 88d:	48 83 45 d8 01       	add    QWORD PTR [rbp-0x28],0x1
 892:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 896:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 89a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 89e:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 8a1:	0f be d0             	movsx  edx,al
 8a4:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 8a8:	48 89 c6             	mov    rsi,rax
 8ab:	48 8d 3d 3a 01 00 00 	lea    rdi,[rip+0x13a]        # 9ec <_IO_stdin_used+0x7c>
 8b2:	b8 00 00 00 00       	mov    eax,0x0
 8b7:	e8 54 fd ff ff       	call   610 <printf@plt>
 8bc:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 8c0:	c6 00 ff             	mov    BYTE PTR [rax],0xff
 8c3:	e8 a2 fe ff ff       	call   76a <foo>
 8c8:	89 c6                	mov    esi,eax
 8ca:	48 8d 3d 2f 01 00 00 	lea    rdi,[rip+0x12f]        # a00 <_IO_stdin_used+0x90>
 8d1:	b8 00 00 00 00       	mov    eax,0x0
 8d6:	e8 35 fd ff ff       	call   610 <printf@plt>
 8db:	b8 00 00 00 00       	mov    eax,0x0
 8e0:	c9                   	leave  
 8e1:	c3                   	ret    
 8e2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 8e9:	00 00 00 
 8ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000008f0 <__libc_csu_init>:
 8f0:	41 57                	push   r15
 8f2:	41 56                	push   r14
 8f4:	49 89 d7             	mov    r15,rdx
 8f7:	41 55                	push   r13
 8f9:	41 54                	push   r12
 8fb:	4c 8d 25 96 04 20 00 	lea    r12,[rip+0x200496]        # 200d98 <__frame_dummy_init_array_entry>
 902:	55                   	push   rbp
 903:	48 8d 2d 96 04 20 00 	lea    rbp,[rip+0x200496]        # 200da0 <__init_array_end>
 90a:	53                   	push   rbx
 90b:	41 89 fd             	mov    r13d,edi
 90e:	49 89 f6             	mov    r14,rsi
 911:	4c 29 e5             	sub    rbp,r12
 914:	48 83 ec 08          	sub    rsp,0x8
 918:	48 c1 fd 03          	sar    rbp,0x3
 91c:	e8 b7 fc ff ff       	call   5d8 <_init>
 921:	48 85 ed             	test   rbp,rbp
 924:	74 20                	je     946 <__libc_csu_init+0x56>
 926:	31 db                	xor    ebx,ebx
 928:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 92f:	00 
 930:	4c 89 fa             	mov    rdx,r15
 933:	4c 89 f6             	mov    rsi,r14
 936:	44 89 ef             	mov    edi,r13d
 939:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
 93d:	48 83 c3 01          	add    rbx,0x1
 941:	48 39 dd             	cmp    rbp,rbx
 944:	75 ea                	jne    930 <__libc_csu_init+0x40>
 946:	48 83 c4 08          	add    rsp,0x8
 94a:	5b                   	pop    rbx
 94b:	5d                   	pop    rbp
 94c:	41 5c                	pop    r12
 94e:	41 5d                	pop    r13
 950:	41 5e                	pop    r14
 952:	41 5f                	pop    r15
 954:	c3                   	ret    
 955:	90                   	nop
 956:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 95d:	00 00 00 

0000000000000960 <__libc_csu_fini>:
 960:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000000964 <_fini>:
 964:	48 83 ec 08          	sub    rsp,0x8
 968:	48 83 c4 08          	add    rsp,0x8
 96c:	c3                   	ret    

Disassembly of section .rodata:

0000000000000970 <_IO_stdin_used>:
 970:	01 00                	add    DWORD PTR [rax],eax
 972:	02 00                	add    al,BYTE PTR [rax]
 974:	00 00                	add    BYTE PTR [rax],al
 976:	00 00                	add    BYTE PTR [rax],al
 978:	61                   	(bad)  
 979:	64 72 65             	fs jb  9e1 <_IO_stdin_used+0x71>
 97c:	73 61                	jae    9df <_IO_stdin_used+0x6f>
 97e:	20 66 75             	and    BYTE PTR [rsi+0x75],ah
 981:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 982:	63 74 69 65          	movsxd esi,DWORD PTR [rcx+rbp*2+0x65]
 986:	69 20 25 70 0a 00    	imul   esp,DWORD PTR [rax],0xa7025
 98c:	00 00                	add    BYTE PTR [rax],al
 98e:	00 00                	add    BYTE PTR [rax],al
 990:	61                   	(bad)  
 991:	64 72 65             	fs jb  9f9 <_IO_stdin_used+0x89>
 994:	73 61                	jae    9f7 <_IO_stdin_used+0x87>
 996:	20 70 61             	and    BYTE PTR [rax+0x61],dh
 999:	67 69 6e 69 69 20 63 	imul   ebp,DWORD PTR [esi+0x69],0x65632069
 9a0:	65 
 9a1:	20 63 6f             	and    BYTE PTR [rbx+0x6f],ah
 9a4:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 9a5:	74 69                	je     a10 <_IO_stdin_used+0xa0>
 9a7:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 9a8:	65 20 66 75          	and    BYTE PTR gs:[rsi+0x75],ah
 9ac:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 9ad:	63 74 69 61          	movsxd esi,DWORD PTR [rcx+rbp*2+0x61]
 9b1:	20 25 70 0a 00 70    	and    BYTE PTR [rip+0x70000a70],ah        # 70001427 <_end+0x6fe0040f>
 9b7:	72 6f                	jb     a28 <__GNU_EH_FRAME_HDR+0x4>
 9b9:	63 65 73             	movsxd esp,DWORD PTR [rbp+0x73]
 9bc:	73 20                	jae    9de <_IO_stdin_used+0x6e>
 9be:	69 64 20 25 69 0a 00 	imul   esp,DWORD PTR [rax+riz*1+0x25],0x70000a69
 9c5:	70 
 9c6:	72 69                	jb     a31 <__GNU_EH_FRAME_HDR+0xd>
 9c8:	6d                   	ins    DWORD PTR es:[rdi],dx
 9c9:	75 6c                	jne    a37 <__GNU_EH_FRAME_HDR+0x13>
 9cb:	20 61 70             	and    BYTE PTR [rcx+0x70],ah
 9ce:	65 6c                	gs ins BYTE PTR es:[rdi],dx
 9d0:	3a 20                	cmp    ah,BYTE PTR [rax]
 9d2:	66 6f                	outs   dx,WORD PTR ds:[rsi]
 9d4:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 9d5:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
 9d8:	74 6f                	je     a49 <__GNU_EH_FRAME_HDR+0x25>
 9da:	61                   	(bad)  
 9db:	72 63                	jb     a40 <__GNU_EH_FRAME_HDR+0x1c>
 9dd:	65 20 25 64 0a 00 6d 	and    BYTE PTR gs:[rip+0x6d000a64],ah        # 6d001448 <_end+0x6ce00430>
 9e4:	70 72                	jo     a58 <__GNU_EH_FRAME_HDR+0x34>
 9e6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 9e7:	74 65                	je     a4e <__GNU_EH_FRAME_HDR+0x2a>
 9e9:	63 74 00 66          	movsxd esi,DWORD PTR [rax+rax*1+0x66]
 9ed:	20 3d 20 25 70 09    	and    BYTE PTR [rip+0x9702520],bh        # 9702f13 <_end+0x9501efb>
 9f3:	2a 62 6c             	sub    ah,BYTE PTR [rdx+0x6c]
 9f6:	61                   	(bad)  
 9f7:	20 3d 20 25 68 68    	and    BYTE PTR [rip+0x68682520],bh        # 68682f1d <_end+0x68481f05>
 9fd:	78 0a                	js     a09 <_IO_stdin_used+0x99>
 9ff:	00 61 6c             	add    BYTE PTR [rcx+0x6c],ah
 a02:	20 64 6f 69          	and    BYTE PTR [rdi+rbp*2+0x69],ah
 a06:	6c                   	ins    BYTE PTR es:[rdi],dx
 a07:	65 61                	gs (bad) 
 a09:	20 61 70             	and    BYTE PTR [rcx+0x70],ah
 a0c:	65 6c                	gs ins BYTE PTR es:[rdi],dx
 a0e:	3a 20                	cmp    ah,BYTE PTR [rax]
 a10:	66 6f                	outs   dx,WORD PTR ds:[rsi]
 a12:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 a13:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
 a16:	74 6f                	je     a87 <__GNU_EH_FRAME_HDR+0x63>
 a18:	61                   	(bad)  
 a19:	72 63                	jb     a7e <__GNU_EH_FRAME_HDR+0x5a>
 a1b:	65                   	gs
 a1c:	20                   	.byte 0x20
 a1d:	25                   	.byte 0x25
 a1e:	64 0a 00             	or     al,BYTE PTR fs:[rax]

Disassembly of section .eh_frame_hdr:

0000000000000a24 <__GNU_EH_FRAME_HDR>:
 a24:	01 1b                	add    DWORD PTR [rbx],ebx
 a26:	03 3b                	add    edi,DWORD PTR [rbx]
 a28:	40 00 00             	add    BYTE PTR [rax],al
 a2b:	00 07                	add    BYTE PTR [rdi],al
 a2d:	00 00                	add    BYTE PTR [rax],al
 a2f:	00 cc                	add    ah,cl
 a31:	fb                   	sti    
 a32:	ff                   	(bad)  
 a33:	ff 8c 00 00 00 2c fc 	dec    DWORD PTR [rax+rax*1-0x3d40000]
 a3a:	ff                   	(bad)  
 a3b:	ff b4 00 00 00 3c fc 	push   QWORD PTR [rax+rax*1-0x3c40000]
 a42:	ff                   	(bad)  
 a43:	ff 5c 00 00          	call   FWORD PTR [rax+rax*1+0x0]
 a47:	00 46 fd             	add    BYTE PTR [rsi-0x3],al
 a4a:	ff                   	(bad)  
 a4b:	ff cc                	dec    esp
 a4d:	00 00                	add    BYTE PTR [rax],al
 a4f:	00 51 fd             	add    BYTE PTR [rcx-0x3],dl
 a52:	ff                   	(bad)  
 a53:	ff                   	(bad)  
 a54:	ec                   	in     al,dx
 a55:	00 00                	add    BYTE PTR [rax],al
 a57:	00 cc                	add    ah,cl
 a59:	fe                   	(bad)  
 a5a:	ff                   	(bad)  
 a5b:	ff 0c 01             	dec    DWORD PTR [rcx+rax*1]
 a5e:	00 00                	add    BYTE PTR [rax],al
 a60:	3c ff                	cmp    al,0xff
 a62:	ff                   	(bad)  
 a63:	ff 54 01 00          	call   QWORD PTR [rcx+rax*1+0x0]
	...

Disassembly of section .eh_frame:

0000000000000a68 <__FRAME_END__-0x124>:
 a68:	14 00                	adc    al,0x0
 a6a:	00 00                	add    BYTE PTR [rax],al
 a6c:	00 00                	add    BYTE PTR [rax],al
 a6e:	00 00                	add    BYTE PTR [rax],al
 a70:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
 a73:	00 01                	add    BYTE PTR [rcx],al
 a75:	78 10                	js     a87 <__GNU_EH_FRAME_HDR+0x63>
 a77:	01 1b                	add    DWORD PTR [rbx],ebx
 a79:	0c 07                	or     al,0x7
 a7b:	08 90 01 07 10 14    	or     BYTE PTR [rax+0x14100701],dl
 a81:	00 00                	add    BYTE PTR [rax],al
 a83:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 a86:	00 00                	add    BYTE PTR [rax],al
 a88:	d8 fb                	fdivr  st,st(3)
 a8a:	ff                   	(bad)  
 a8b:	ff 2b                	jmp    FWORD PTR [rbx]
	...
 a95:	00 00                	add    BYTE PTR [rax],al
 a97:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
 a9a:	00 00                	add    BYTE PTR [rax],al
 a9c:	00 00                	add    BYTE PTR [rax],al
 a9e:	00 00                	add    BYTE PTR [rax],al
 aa0:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
 aa3:	00 01                	add    BYTE PTR [rcx],al
 aa5:	78 10                	js     ab7 <__GNU_EH_FRAME_HDR+0x93>
 aa7:	01 1b                	add    DWORD PTR [rbx],ebx
 aa9:	0c 07                	or     al,0x7
 aab:	08 90 01 00 00 24    	or     BYTE PTR [rax+0x24000001],dl
 ab1:	00 00                	add    BYTE PTR [rax],al
 ab3:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 ab6:	00 00                	add    BYTE PTR [rax],al
 ab8:	38 fb                	cmp    bl,bh
 aba:	ff                   	(bad)  
 abb:	ff 60 00             	jmp    QWORD PTR [rax+0x0]
 abe:	00 00                	add    BYTE PTR [rax],al
 ac0:	00 0e                	add    BYTE PTR [rsi],cl
 ac2:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
 ac5:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
 ac8:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
 acb:	80 00 3f             	add    BYTE PTR [rax],0x3f
 ace:	1a 3b                	sbb    bh,BYTE PTR [rbx]
 ad0:	2a 33                	sub    dh,BYTE PTR [rbx]
 ad2:	24 22                	and    al,0x22
 ad4:	00 00                	add    BYTE PTR [rax],al
 ad6:	00 00                	add    BYTE PTR [rax],al
 ad8:	14 00                	adc    al,0x0
 ada:	00 00                	add    BYTE PTR [rax],al
 adc:	44 00 00             	add    BYTE PTR [rax],r8b
 adf:	00 70 fb             	add    BYTE PTR [rax-0x5],dh
 ae2:	ff                   	(bad)  
 ae3:	ff 08                	dec    DWORD PTR [rax]
	...
 aed:	00 00                	add    BYTE PTR [rax],al
 aef:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 af2:	00 00                	add    BYTE PTR [rax],al
 af4:	5c                   	pop    rsp
 af5:	00 00                	add    BYTE PTR [rax],al
 af7:	00 72 fc             	add    BYTE PTR [rdx-0x4],dh
 afa:	ff                   	(bad)  
 afb:	ff 0b                	dec    DWORD PTR [rbx]
 afd:	00 00                	add    BYTE PTR [rax],al
 aff:	00 00                	add    BYTE PTR [rax],al
 b01:	41 0e                	rex.B (bad) 
 b03:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 b09:	46 0c 07             	rex.RX or al,0x7
 b0c:	08 00                	or     BYTE PTR [rax],al
 b0e:	00 00                	add    BYTE PTR [rax],al
 b10:	1c 00                	sbb    al,0x0
 b12:	00 00                	add    BYTE PTR [rax],al
 b14:	7c 00                	jl     b16 <__GNU_EH_FRAME_HDR+0xf2>
 b16:	00 00                	add    BYTE PTR [rax],al
 b18:	5d                   	pop    rbp
 b19:	fc                   	cld    
 b1a:	ff                   	(bad)  
 b1b:	ff 6d 01             	jmp    FWORD PTR [rbp+0x1]
 b1e:	00 00                	add    BYTE PTR [rax],al
 b20:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
 b23:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 b29:	03 68 01             	add    ebp,DWORD PTR [rax+0x1]
 b2c:	0c 07                	or     al,0x7
 b2e:	08 00                	or     BYTE PTR [rax],al
 b30:	44 00 00             	add    BYTE PTR [rax],r8b
 b33:	00 9c 00 00 00 b8 fd 	add    BYTE PTR [rax+rax*1-0x2480000],bl
 b3a:	ff                   	(bad)  
 b3b:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
 b3e:	00 00                	add    BYTE PTR [rax],al
 b40:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
 b43:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
 b49:	8e 03                	mov    es,WORD PTR [rbx]
 b4b:	45 0e                	rex.RB (bad) 
 b4d:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
 b53:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff863019a1 <_end+0xffffffff86100989>
 b59:	06                   	(bad)  
 b5a:	48 0e                	rex.W (bad) 
 b5c:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
 b62:	72 0e                	jb     b72 <__GNU_EH_FRAME_HDR+0x14e>
 b64:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
 b67:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
 b6a:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
 b6d:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
 b70:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
 b73:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
 b76:	08 00                	or     BYTE PTR [rax],al
 b78:	10 00                	adc    BYTE PTR [rax],al
 b7a:	00 00                	add    BYTE PTR [rax],al
 b7c:	e4 00                	in     al,0x0
 b7e:	00 00                	add    BYTE PTR [rax],al
 b80:	e0 fd                	loopne b7f <__GNU_EH_FRAME_HDR+0x15b>
 b82:	ff                   	(bad)  
 b83:	ff 02                	inc    DWORD PTR [rdx]
 b85:	00 00                	add    BYTE PTR [rax],al
 b87:	00 00                	add    BYTE PTR [rax],al
 b89:	00 00                	add    BYTE PTR [rax],al
	...

0000000000000b8c <__FRAME_END__>:
 b8c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000200d98 <__frame_dummy_init_array_entry>:
  200d98:	60                   	(bad)  
  200d99:	07                   	(bad)  
  200d9a:	00 00                	add    BYTE PTR [rax],al
  200d9c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000200da0 <__do_global_dtors_aux_fini_array_entry>:
  200da0:	20 07                	and    BYTE PTR [rdi],al
  200da2:	00 00                	add    BYTE PTR [rax],al
  200da4:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000200da8 <_DYNAMIC>:
  200da8:	01 00                	add    DWORD PTR [rax],eax
  200daa:	00 00                	add    BYTE PTR [rax],al
  200dac:	00 00                	add    BYTE PTR [rax],al
  200dae:	00 00                	add    BYTE PTR [rax],al
  200db0:	01 00                	add    DWORD PTR [rax],eax
  200db2:	00 00                	add    BYTE PTR [rax],al
  200db4:	00 00                	add    BYTE PTR [rax],al
  200db6:	00 00                	add    BYTE PTR [rax],al
  200db8:	0c 00                	or     al,0x0
  200dba:	00 00                	add    BYTE PTR [rax],al
  200dbc:	00 00                	add    BYTE PTR [rax],al
  200dbe:	00 00                	add    BYTE PTR [rax],al
  200dc0:	d8 05 00 00 00 00    	fadd   DWORD PTR [rip+0x0]        # 200dc6 <_DYNAMIC+0x1e>
  200dc6:	00 00                	add    BYTE PTR [rax],al
  200dc8:	0d 00 00 00 00       	or     eax,0x0
  200dcd:	00 00                	add    BYTE PTR [rax],al
  200dcf:	00 64 09 00          	add    BYTE PTR [rcx+rcx*1+0x0],ah
  200dd3:	00 00                	add    BYTE PTR [rax],al
  200dd5:	00 00                	add    BYTE PTR [rax],al
  200dd7:	00 19                	add    BYTE PTR [rcx],bl
  200dd9:	00 00                	add    BYTE PTR [rax],al
  200ddb:	00 00                	add    BYTE PTR [rax],al
  200ddd:	00 00                	add    BYTE PTR [rax],al
  200ddf:	00 98 0d 20 00 00    	add    BYTE PTR [rax+0x200d],bl
  200de5:	00 00                	add    BYTE PTR [rax],al
  200de7:	00 1b                	add    BYTE PTR [rbx],bl
  200de9:	00 00                	add    BYTE PTR [rax],al
  200deb:	00 00                	add    BYTE PTR [rax],al
  200ded:	00 00                	add    BYTE PTR [rax],al
  200def:	00 08                	add    BYTE PTR [rax],cl
  200df1:	00 00                	add    BYTE PTR [rax],al
  200df3:	00 00                	add    BYTE PTR [rax],al
  200df5:	00 00                	add    BYTE PTR [rax],al
  200df7:	00 1a                	add    BYTE PTR [rdx],bl
  200df9:	00 00                	add    BYTE PTR [rax],al
  200dfb:	00 00                	add    BYTE PTR [rax],al
  200dfd:	00 00                	add    BYTE PTR [rax],al
  200dff:	00 a0 0d 20 00 00    	add    BYTE PTR [rax+0x200d],ah
  200e05:	00 00                	add    BYTE PTR [rax],al
  200e07:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  200e0a:	00 00                	add    BYTE PTR [rax],al
  200e0c:	00 00                	add    BYTE PTR [rax],al
  200e0e:	00 00                	add    BYTE PTR [rax],al
  200e10:	08 00                	or     BYTE PTR [rax],al
  200e12:	00 00                	add    BYTE PTR [rax],al
  200e14:	00 00                	add    BYTE PTR [rax],al
  200e16:	00 00                	add    BYTE PTR [rax],al
  200e18:	f5                   	cmc    
  200e19:	fe                   	(bad)  
  200e1a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200e1d:	00 00                	add    BYTE PTR [rax],al
  200e1f:	00 98 02 00 00 00    	add    BYTE PTR [rax+0x2],bl
  200e25:	00 00                	add    BYTE PTR [rax],al
  200e27:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 200e2d <_DYNAMIC+0x85>
  200e2d:	00 00                	add    BYTE PTR [rax],al
  200e2f:	00 c0                	add    al,al
  200e31:	03 00                	add    eax,DWORD PTR [rax]
  200e33:	00 00                	add    BYTE PTR [rax],al
  200e35:	00 00                	add    BYTE PTR [rax],al
  200e37:	00 06                	add    BYTE PTR [rsi],al
  200e39:	00 00                	add    BYTE PTR [rax],al
  200e3b:	00 00                	add    BYTE PTR [rax],al
  200e3d:	00 00                	add    BYTE PTR [rax],al
  200e3f:	00 b8 02 00 00 00    	add    BYTE PTR [rax+0x2],bh
  200e45:	00 00                	add    BYTE PTR [rax],al
  200e47:	00 0a                	add    BYTE PTR [rdx],cl
  200e49:	00 00                	add    BYTE PTR [rax],al
  200e4b:	00 00                	add    BYTE PTR [rax],al
  200e4d:	00 00                	add    BYTE PTR [rax],al
  200e4f:	00 a7 00 00 00 00    	add    BYTE PTR [rdi+0x0],ah
  200e55:	00 00                	add    BYTE PTR [rax],al
  200e57:	00 0b                	add    BYTE PTR [rbx],cl
  200e59:	00 00                	add    BYTE PTR [rax],al
  200e5b:	00 00                	add    BYTE PTR [rax],al
  200e5d:	00 00                	add    BYTE PTR [rax],al
  200e5f:	00 18                	add    BYTE PTR [rax],bl
  200e61:	00 00                	add    BYTE PTR [rax],al
  200e63:	00 00                	add    BYTE PTR [rax],al
  200e65:	00 00                	add    BYTE PTR [rax],al
  200e67:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 200e6d <_DYNAMIC+0xc5>
	...
  200e75:	00 00                	add    BYTE PTR [rax],al
  200e77:	00 03                	add    BYTE PTR [rbx],al
  200e79:	00 00                	add    BYTE PTR [rax],al
  200e7b:	00 00                	add    BYTE PTR [rax],al
  200e7d:	00 00                	add    BYTE PTR [rax],al
  200e7f:	00 98 0f 20 00 00    	add    BYTE PTR [rax+0x200f],bl
  200e85:	00 00                	add    BYTE PTR [rax],al
  200e87:	00 02                	add    BYTE PTR [rdx],al
  200e89:	00 00                	add    BYTE PTR [rax],al
  200e8b:	00 00                	add    BYTE PTR [rax],al
  200e8d:	00 00                	add    BYTE PTR [rax],al
  200e8f:	00 78 00             	add    BYTE PTR [rax+0x0],bh
  200e92:	00 00                	add    BYTE PTR [rax],al
  200e94:	00 00                	add    BYTE PTR [rax],al
  200e96:	00 00                	add    BYTE PTR [rax],al
  200e98:	14 00                	adc    al,0x0
  200e9a:	00 00                	add    BYTE PTR [rax],al
  200e9c:	00 00                	add    BYTE PTR [rax],al
  200e9e:	00 00                	add    BYTE PTR [rax],al
  200ea0:	07                   	(bad)  
  200ea1:	00 00                	add    BYTE PTR [rax],al
  200ea3:	00 00                	add    BYTE PTR [rax],al
  200ea5:	00 00                	add    BYTE PTR [rax],al
  200ea7:	00 17                	add    BYTE PTR [rdi],dl
  200ea9:	00 00                	add    BYTE PTR [rax],al
  200eab:	00 00                	add    BYTE PTR [rax],al
  200ead:	00 00                	add    BYTE PTR [rax],al
  200eaf:	00 60 05             	add    BYTE PTR [rax+0x5],ah
  200eb2:	00 00                	add    BYTE PTR [rax],al
  200eb4:	00 00                	add    BYTE PTR [rax],al
  200eb6:	00 00                	add    BYTE PTR [rax],al
  200eb8:	07                   	(bad)  
  200eb9:	00 00                	add    BYTE PTR [rax],al
  200ebb:	00 00                	add    BYTE PTR [rax],al
  200ebd:	00 00                	add    BYTE PTR [rax],al
  200ebf:	00 a0 04 00 00 00    	add    BYTE PTR [rax+0x4],ah
  200ec5:	00 00                	add    BYTE PTR [rax],al
  200ec7:	00 08                	add    BYTE PTR [rax],cl
  200ec9:	00 00                	add    BYTE PTR [rax],al
  200ecb:	00 00                	add    BYTE PTR [rax],al
  200ecd:	00 00                	add    BYTE PTR [rax],al
  200ecf:	00 c0                	add    al,al
  200ed1:	00 00                	add    BYTE PTR [rax],al
  200ed3:	00 00                	add    BYTE PTR [rax],al
  200ed5:	00 00                	add    BYTE PTR [rax],al
  200ed7:	00 09                	add    BYTE PTR [rcx],cl
  200ed9:	00 00                	add    BYTE PTR [rax],al
  200edb:	00 00                	add    BYTE PTR [rax],al
  200edd:	00 00                	add    BYTE PTR [rax],al
  200edf:	00 18                	add    BYTE PTR [rax],bl
  200ee1:	00 00                	add    BYTE PTR [rax],al
  200ee3:	00 00                	add    BYTE PTR [rax],al
  200ee5:	00 00                	add    BYTE PTR [rax],al
  200ee7:	00 1e                	add    BYTE PTR [rsi],bl
  200ee9:	00 00                	add    BYTE PTR [rax],al
  200eeb:	00 00                	add    BYTE PTR [rax],al
  200eed:	00 00                	add    BYTE PTR [rax],al
  200eef:	00 08                	add    BYTE PTR [rax],cl
  200ef1:	00 00                	add    BYTE PTR [rax],al
  200ef3:	00 00                	add    BYTE PTR [rax],al
  200ef5:	00 00                	add    BYTE PTR [rax],al
  200ef7:	00 fb                	add    bl,bh
  200ef9:	ff                   	(bad)  
  200efa:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200efd:	00 00                	add    BYTE PTR [rax],al
  200eff:	00 01                	add    BYTE PTR [rcx],al
  200f01:	00 00                	add    BYTE PTR [rax],al
  200f03:	08 00                	or     BYTE PTR [rax],al
  200f05:	00 00                	add    BYTE PTR [rax],al
  200f07:	00 fe                	add    dh,bh
  200f09:	ff                   	(bad)  
  200f0a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200f0d:	00 00                	add    BYTE PTR [rax],al
  200f0f:	00 80 04 00 00 00    	add    BYTE PTR [rax+0x4],al
  200f15:	00 00                	add    BYTE PTR [rax],al
  200f17:	00 ff                	add    bh,bh
  200f19:	ff                   	(bad)  
  200f1a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200f1d:	00 00                	add    BYTE PTR [rax],al
  200f1f:	00 01                	add    BYTE PTR [rcx],al
  200f21:	00 00                	add    BYTE PTR [rax],al
  200f23:	00 00                	add    BYTE PTR [rax],al
  200f25:	00 00                	add    BYTE PTR [rax],al
  200f27:	00 f0                	add    al,dh
  200f29:	ff                   	(bad)  
  200f2a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200f2d:	00 00                	add    BYTE PTR [rax],al
  200f2f:	00 68 04             	add    BYTE PTR [rax+0x4],ch
  200f32:	00 00                	add    BYTE PTR [rax],al
  200f34:	00 00                	add    BYTE PTR [rax],al
  200f36:	00 00                	add    BYTE PTR [rax],al
  200f38:	f9                   	stc    
  200f39:	ff                   	(bad)  
  200f3a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  200f3d:	00 00                	add    BYTE PTR [rax],al
  200f3f:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .got:

0000000000200f98 <_GLOBAL_OFFSET_TABLE_>:
  200f98:	a8 0d                	test   al,0xd
  200f9a:	20 00                	and    BYTE PTR [rax],al
	...
  200fb0:	06                   	(bad)  
  200fb1:	06                   	(bad)  
  200fb2:	00 00                	add    BYTE PTR [rax],al
  200fb4:	00 00                	add    BYTE PTR [rax],al
  200fb6:	00 00                	add    BYTE PTR [rax],al
  200fb8:	16                   	(bad)  
  200fb9:	06                   	(bad)  
  200fba:	00 00                	add    BYTE PTR [rax],al
  200fbc:	00 00                	add    BYTE PTR [rax],al
  200fbe:	00 00                	add    BYTE PTR [rax],al
  200fc0:	26 06                	es (bad) 
  200fc2:	00 00                	add    BYTE PTR [rax],al
  200fc4:	00 00                	add    BYTE PTR [rax],al
  200fc6:	00 00                	add    BYTE PTR [rax],al
  200fc8:	36 06                	ss (bad) 
  200fca:	00 00                	add    BYTE PTR [rax],al
  200fcc:	00 00                	add    BYTE PTR [rax],al
  200fce:	00 00                	add    BYTE PTR [rax],al
  200fd0:	46 06                	rex.RX (bad) 
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

0000000000201010 <__bss_start>:
  201010:	00 00                	add    BYTE PTR [rax],al
	...

0000000000201014 <pagesize>:
  201014:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x560>
   a:	74 75                	je     81 <_init-0x557>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 35 2e 30 2d 33    	cs xor eax,0x332d302e
  14:	75 62                	jne    78 <_init-0x560>
  16:	75 6e                	jne    86 <_init-0x552>
  18:	74 75                	je     8f <_init-0x549>
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
  10:	6a 07                	push   0x7
  12:	00 00                	add    BYTE PTR [rax],al
  14:	00 00                	add    BYTE PTR [rax],al
  16:	00 00                	add    BYTE PTR [rax],al
  18:	78 01                	js     1b <_init-0x5bd>
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	08 04 00             	or     BYTE PTR [rax+rax*1],al
   3:	00 04 00             	add    BYTE PTR [rax+rax*1],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	00 00                	add    BYTE PTR [rax],al
   a:	08 01                	or     BYTE PTR [rcx],al
   c:	2c 02                	sub    al,0x2
   e:	00 00                	add    BYTE PTR [rax],al
  10:	0c 8a                	or     al,0x8a
  12:	01 00                	add    DWORD PTR [rax],eax
  14:	00 8c 00 00 00 6a 07 	add    BYTE PTR [rax+rax*1+0x76a0000],cl
  1b:	00 00                	add    BYTE PTR [rax],al
  1d:	00 00                	add    BYTE PTR [rax],al
  1f:	00 00                	add    BYTE PTR [rax],al
  21:	78 01                	js     24 <_init-0x5b4>
	...
  2b:	00 00                	add    BYTE PTR [rax],al
  2d:	02 01                	add    al,BYTE PTR [rcx]
  2f:	08 41 01             	or     BYTE PTR [rcx+0x1],al
  32:	00 00                	add    BYTE PTR [rax],al
  34:	02 02                	add    al,BYTE PTR [rdx]
  36:	07                   	(bad)  
  37:	ea                   	(bad)  
  38:	01 00                	add    DWORD PTR [rax],eax
  3a:	00 02                	add    BYTE PTR [rdx],al
  3c:	04 07                	add    al,0x7
  3e:	59                   	pop    rcx
  3f:	01 00                	add    DWORD PTR [rax],eax
  41:	00 02                	add    BYTE PTR [rdx],al
  43:	08 07                	or     BYTE PTR [rdi],al
  45:	54                   	push   rsp
  46:	01 00                	add    DWORD PTR [rax],eax
  48:	00 02                	add    BYTE PTR [rdx],al
  4a:	01 06                	add    DWORD PTR [rsi],eax
  4c:	43 01 00             	rex.XB add DWORD PTR [r8],eax
  4f:	00 02                	add    BYTE PTR [rdx],al
  51:	02 05 2d 00 00 00    	add    al,BYTE PTR [rip+0x2d]        # 84 <_init-0x554>
  57:	03 04 05 69 6e 74 00 	add    eax,DWORD PTR [rax*1+0x746e69]
  5e:	02 08                	add    cl,BYTE PTR [rax]
  60:	05 d6 00 00 00       	add    eax,0xd6
  65:	04 24                	add    al,0x24
  67:	02 00                	add    al,BYTE PTR [rax]
  69:	00 02                	add    BYTE PTR [rdx],al
  6b:	8c 5e 00             	mov    WORD PTR [rsi+0x0],ds
  6e:	00 00                	add    BYTE PTR [rax],al
  70:	04 0b                	add    al,0xb
  72:	02 00                	add    al,BYTE PTR [rax]
  74:	00 02                	add    BYTE PTR [rdx],al
  76:	8d 5e 00             	lea    ebx,[rsi+0x0]
  79:	00 00                	add    BYTE PTR [rax],al
  7b:	05 08 06 08 83       	add    eax,0x83080608
  80:	00 00                	add    BYTE PTR [rax],al
  82:	00 02                	add    BYTE PTR [rdx],al
  84:	01 06                	add    DWORD PTR [rsi],eax
  86:	4a 01 00             	rex.WX add QWORD PTR [rax],rax
  89:	00 07                	add    BYTE PTR [rdi],al
  8b:	83 00 00             	add    DWORD PTR [rax],0x0
  8e:	00 04 bf             	add    BYTE PTR [rdi+rdi*4],al
  91:	00 00                	add    BYTE PTR [rax],al
  93:	00 02                	add    BYTE PTR [rdx],al
  95:	c2 5e 00             	ret    0x5e
  98:	00 00                	add    BYTE PTR [rax],al
  9a:	04 37                	add    al,0x37
  9c:	00 00                	add    BYTE PTR [rax],al
  9e:	00 03                	add    BYTE PTR [rbx],al
  a0:	d8 42 00             	fadd   DWORD PTR [rdx+0x0]
  a3:	00 00                	add    BYTE PTR [rax],al
  a5:	02 08                	add    cl,BYTE PTR [rax]
  a7:	05 d1 00 00 00       	add    eax,0xd1
  ac:	02 08                	add    cl,BYTE PTR [rax]
  ae:	07                   	(bad)  
  af:	4f 01 00             	rex.WRXB add QWORD PTR [r8],r8
  b2:	00 06                	add    BYTE PTR [rsi],al
  b4:	08 8a 00 00 00 07    	or     BYTE PTR [rdx+0x7000000],cl
  ba:	b3 00                	mov    bl,0x0
  bc:	00 00                	add    BYTE PTR [rax],al
  be:	08 0e                	or     BYTE PTR [rsi],cl
  c0:	00 00                	add    BYTE PTR [rax],al
  c2:	00 d8                	add    al,bl
  c4:	04 f5                	add    al,0xf5
  c6:	3e 02 00             	add    al,BYTE PTR ds:[rax]
  c9:	00 09                	add    BYTE PTR [rcx],cl
  cb:	55                   	push   rbp
  cc:	00 00                	add    BYTE PTR [rax],al
  ce:	00 04 f6             	add    BYTE PTR [rsi+rsi*8],al
  d1:	57                   	push   rdi
  d2:	00 00                	add    BYTE PTR [rax],al
  d4:	00 00                	add    BYTE PTR [rax],al
  d6:	09 e2                	or     edx,esp
  d8:	02 00                	add    al,BYTE PTR [rax]
  da:	00 04 fb             	add    BYTE PTR [rbx+rdi*8],al
  dd:	7d 00                	jge    df <_init-0x4f9>
  df:	00 00                	add    BYTE PTR [rax],al
  e1:	08 09                	or     BYTE PTR [rcx],cl
  e3:	7f 00                	jg     e5 <_init-0x4f3>
  e5:	00 00                	add    BYTE PTR [rax],al
  e7:	04 fc                	add    al,0xfc
  e9:	7d 00                	jge    eb <_init-0x4ed>
  eb:	00 00                	add    BYTE PTR [rax],al
  ed:	10 09                	adc    BYTE PTR [rcx],cl
  ef:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  f0:	02 00                	add    al,BYTE PTR [rax]
  f2:	00 04 fd 7d 00 00 00 	add    BYTE PTR [rdi*8+0x7d],al
  f9:	18 09                	sbb    BYTE PTR [rcx],cl
  fb:	91                   	xchg   ecx,eax
  fc:	01 00                	add    DWORD PTR [rax],eax
  fe:	00 04 fe             	add    BYTE PTR [rsi+rdi*8],al
 101:	7d 00                	jge    103 <_init-0x4d5>
 103:	00 00                	add    BYTE PTR [rax],al
 105:	20 09                	and    BYTE PTR [rcx],cl
 107:	47 00 00             	rex.RXB add BYTE PTR [r8],r8b
 10a:	00 04 ff             	add    BYTE PTR [rdi+rdi*8],al
 10d:	7d 00                	jge    10f <_init-0x4c9>
 10f:	00 00                	add    BYTE PTR [rax],al
 111:	28 0a                	sub    BYTE PTR [rdx],cl
 113:	fd                   	std    
 114:	01 00                	add    DWORD PTR [rax],eax
 116:	00 04 00             	add    BYTE PTR [rax+rax*1],al
 119:	01 7d 00             	add    DWORD PTR [rbp+0x0],edi
 11c:	00 00                	add    BYTE PTR [rax],al
 11e:	30 0a                	xor    BYTE PTR [rdx],cl
 120:	89 02                	mov    DWORD PTR [rdx],eax
 122:	00 00                	add    BYTE PTR [rax],al
 124:	04 01                	add    al,0x1
 126:	01 7d 00             	add    DWORD PTR [rbp+0x0],edi
 129:	00 00                	add    BYTE PTR [rax],al
 12b:	38 0a                	cmp    BYTE PTR [rdx],cl
 12d:	b0 01                	mov    al,0x1
 12f:	00 00                	add    BYTE PTR [rax],al
 131:	04 02                	add    al,0x2
 133:	01 7d 00             	add    DWORD PTR [rbp+0x0],edi
 136:	00 00                	add    BYTE PTR [rax],al
 138:	40 0a c1             	or     al,cl
 13b:	02 00                	add    al,BYTE PTR [rax]
 13d:	00 04 04             	add    BYTE PTR [rsp+rax*1],al
 140:	01 7d 00             	add    DWORD PTR [rbp+0x0],edi
 143:	00 00                	add    BYTE PTR [rax],al
 145:	48 0a 73 02          	rex.W or sil,BYTE PTR [rbx+0x2]
 149:	00 00                	add    BYTE PTR [rax],al
 14b:	04 05                	add    al,0x5
 14d:	01 7d 00             	add    DWORD PTR [rbp+0x0],edi
 150:	00 00                	add    BYTE PTR [rax],al
 152:	50                   	push   rax
 153:	0a 20                	or     ah,BYTE PTR [rax]
 155:	00 00                	add    BYTE PTR [rax],al
 157:	00 04 06             	add    BYTE PTR [rsi+rax*1],al
 15a:	01 7d 00             	add    DWORD PTR [rbp+0x0],edi
 15d:	00 00                	add    BYTE PTR [rax],al
 15f:	58                   	pop    rax
 160:	0a 76 00             	or     dh,BYTE PTR [rsi+0x0]
 163:	00 00                	add    BYTE PTR [rax],al
 165:	04 08                	add    al,0x8
 167:	01 76 02             	add    DWORD PTR [rsi+0x2],esi
 16a:	00 00                	add    BYTE PTR [rax],al
 16c:	60                   	(bad)  
 16d:	0a 1d 02 00 00 04    	or     bl,BYTE PTR [rip+0x4000002]        # 4000175 <_end+0x3dff15d>
 173:	0a 01                	or     al,BYTE PTR [rcx]
 175:	7c 02                	jl     179 <_init-0x45f>
 177:	00 00                	add    BYTE PTR [rax],al
 179:	68 0a 15 02 00       	push   0x2150a
 17e:	00 04 0c             	add    BYTE PTR [rsp+rcx*1],al
 181:	01 57 00             	add    DWORD PTR [rdi+0x0],edx
 184:	00 00                	add    BYTE PTR [rax],al
 186:	70 0a                	jo     192 <_init-0x446>
 188:	96                   	xchg   esi,eax
 189:	02 00                	add    al,BYTE PTR [rax]
 18b:	00 04 10             	add    BYTE PTR [rax+rdx*1],al
 18e:	01 57 00             	add    DWORD PTR [rdi+0x0],edx
 191:	00 00                	add    BYTE PTR [rax],al
 193:	74 0a                	je     19f <_init-0x439>
 195:	35 01 00 00 04       	xor    eax,0x4000001
 19a:	12 01                	adc    al,BYTE PTR [rcx]
 19c:	65 00 00             	add    BYTE PTR gs:[rax],al
 19f:	00 78 0a             	add    BYTE PTR [rax+0xa],bh
 1a2:	00 01                	add    BYTE PTR [rcx],al
 1a4:	00 00                	add    BYTE PTR [rax],al
 1a6:	04 16                	add    al,0x16
 1a8:	01 34 00             	add    DWORD PTR [rax+rax*1],esi
 1ab:	00 00                	add    BYTE PTR [rax],al
 1ad:	80 0a b2             	or     BYTE PTR [rdx],0xb2
 1b0:	02 00                	add    al,BYTE PTR [rax]
 1b2:	00 04 17             	add    BYTE PTR [rdi+rdx*1],al
 1b5:	01 49 00             	add    DWORD PTR [rcx+0x0],ecx
 1b8:	00 00                	add    BYTE PTR [rax],al
 1ba:	82                   	(bad)  
 1bb:	0a 80 01 00 00 04    	or     al,BYTE PTR [rax+0x4000001]
 1c1:	18 01                	sbb    BYTE PTR [rcx],al
 1c3:	82                   	(bad)  
 1c4:	02 00                	add    al,BYTE PTR [rax]
 1c6:	00 83 0a e8 00 00    	add    BYTE PTR [rbx+0xe80a],al
 1cc:	00 04 1c             	add    BYTE PTR [rsp+rbx*1],al
 1cf:	01 92 02 00 00 88    	add    DWORD PTR [rdx-0x77fffffe],edx
 1d5:	0a 39                	or     bh,BYTE PTR [rcx]
 1d7:	01 00                	add    DWORD PTR [rax],eax
 1d9:	00 04 25 01 70 00 00 	add    BYTE PTR ds:0x7001,al
 1e0:	00 90 0a c7 01 00    	add    BYTE PTR [rax+0x1c70a],dl
 1e6:	00 04 2d 01 7b 00 00 	add    BYTE PTR [rbp*1+0x7b01],al
 1ed:	00 98 0a ce 01 00    	add    BYTE PTR [rax+0x1ce0a],bl
 1f3:	00 04 2e             	add    BYTE PTR [rsi+rbp*1],al
 1f6:	01 7b 00             	add    DWORD PTR [rbx+0x0],edi
 1f9:	00 00                	add    BYTE PTR [rax],al
 1fb:	a0 0a d5 01 00 00 04 	movabs al,ds:0x12f04000001d50a
 202:	2f 01 
 204:	7b 00                	jnp    206 <_init-0x3d2>
 206:	00 00                	add    BYTE PTR [rax],al
 208:	a8 0a                	test   al,0xa
 20a:	dc 01                	fadd   QWORD PTR [rcx]
 20c:	00 00                	add    BYTE PTR [rax],al
 20e:	04 30                	add    al,0x30
 210:	01 7b 00             	add    DWORD PTR [rbx+0x0],edi
 213:	00 00                	add    BYTE PTR [rax],al
 215:	b0 0a                	mov    al,0xa
 217:	e3 01                	jrcxz  21a <_init-0x3be>
 219:	00 00                	add    BYTE PTR [rax],al
 21b:	04 32                	add    al,0x32
 21d:	01 9a 00 00 00 b8    	add    DWORD PTR [rdx-0x48000000],ebx
 223:	0a 9e 02 00 00 04    	or     bl,BYTE PTR [rsi+0x4000002]
 229:	33 01                	xor    eax,DWORD PTR [rcx]
 22b:	57                   	push   rdi
 22c:	00 00                	add    BYTE PTR [rax],al
 22e:	00 c0                	add    al,al
 230:	0a a0 01 00 00 04    	or     ah,BYTE PTR [rax+0x4000001]
 236:	35 01 98 02 00       	xor    eax,0x29801
 23b:	00 c4                	add    ah,al
 23d:	00 0b                	add    BYTE PTR [rbx],cl
 23f:	f6 02 00             	test   BYTE PTR [rdx],0x0
 242:	00 04 9a             	add    BYTE PTR [rdx+rbx*4],al
 245:	08 75 01             	or     BYTE PTR [rbp+0x1],dh
 248:	00 00                	add    BYTE PTR [rax],al
 24a:	18 04 a0             	sbb    BYTE PTR [rax+riz*4],al
 24d:	76 02                	jbe    251 <_init-0x387>
 24f:	00 00                	add    BYTE PTR [rax],al
 251:	09 c1                	or     ecx,eax
 253:	01 00                	add    DWORD PTR [rax],eax
 255:	00 04 a1             	add    BYTE PTR [rcx+riz*4],al
 258:	76 02                	jbe    25c <_init-0x37c>
 25a:	00 00                	add    BYTE PTR [rax],al
 25c:	00 09                	add    BYTE PTR [rcx],cl
 25e:	2f                   	(bad)  
 25f:	01 00                	add    DWORD PTR [rax],eax
 261:	00 04 a2             	add    BYTE PTR [rdx+riz*4],al
 264:	7c 02                	jl     268 <_init-0x370>
 266:	00 00                	add    BYTE PTR [rax],al
 268:	08 09                	or     BYTE PTR [rcx],cl
 26a:	2a 01                	sub    al,BYTE PTR [rcx]
 26c:	00 00                	add    BYTE PTR [rax],al
 26e:	04 a6                	add    al,0xa6
 270:	57                   	push   rdi
 271:	00 00                	add    BYTE PTR [rax],al
 273:	00 10                	add    BYTE PTR [rax],dl
 275:	00 06                	add    BYTE PTR [rsi],al
 277:	08 45 02             	or     BYTE PTR [rbp+0x2],al
 27a:	00 00                	add    BYTE PTR [rax],al
 27c:	06                   	(bad)  
 27d:	08 be 00 00 00 0c    	or     BYTE PTR [rsi+0xc000000],bh
 283:	83 00 00             	add    DWORD PTR [rax],0x0
 286:	00 92 02 00 00 0d    	add    BYTE PTR [rdx+0xd000002],dl
 28c:	42 00 00             	rex.X add BYTE PTR [rax],al
 28f:	00 00                	add    BYTE PTR [rax],al
 291:	00 06                	add    BYTE PTR [rsi],al
 293:	08 3e                	or     BYTE PTR [rsi],bh
 295:	02 00                	add    al,BYTE PTR [rax]
 297:	00 0c 83             	add    BYTE PTR [rbx+rax*4],cl
 29a:	00 00                	add    BYTE PTR [rax],al
 29c:	00 a8 02 00 00 0d    	add    BYTE PTR [rax+0xd000002],ch
 2a2:	42 00 00             	rex.X add BYTE PTR [rax],al
 2a5:	00 13                	add    BYTE PTR [rbx],dl
 2a7:	00 0e                	add    BYTE PTR [rsi],cl
 2a9:	1c 01                	sbb    al,0x1
 2ab:	00 00                	add    BYTE PTR [rax],al
 2ad:	0f 66 01             	pcmpgtd mm0,QWORD PTR [rcx]
 2b0:	00 00                	add    BYTE PTR [rax],al
 2b2:	04 3f                	add    al,0x3f
 2b4:	01 a8 02 00 00 0f    	add    DWORD PTR [rax+0xf000002],ebp
 2ba:	5c                   	pop    rsp
 2bb:	00 00                	add    BYTE PTR [rax],al
 2bd:	00 04 40             	add    BYTE PTR [rax+rax*2],al
 2c0:	01 a8 02 00 00 0f    	add    DWORD PTR [rax+0xf000002],ebp
 2c6:	0c 01                	or     al,0x1
 2c8:	00 00                	add    BYTE PTR [rax],al
 2ca:	04 41                	add    al,0x41
 2cc:	01 a8 02 00 00 10    	add    DWORD PTR [rax+0x10000002],ebp
 2d2:	83 02 00             	add    DWORD PTR [rdx],0x0
 2d5:	00 05 87 7c 02 00    	add    BYTE PTR [rip+0x27c87],al        # 27f62 <__FRAME_END__+0x273d6>
 2db:	00 10                	add    BYTE PTR [rax],dl
 2dd:	ef                   	out    dx,eax
 2de:	02 00                	add    al,BYTE PTR [rax]
 2e0:	00 05 88 7c 02 00    	add    BYTE PTR [rip+0x27c88],al        # 27f6e <__FRAME_END__+0x273e2>
 2e6:	00 10                	add    BYTE PTR [rax],dl
 2e8:	ca 00 00             	retf   0x0
 2eb:	00 05 89 7c 02 00    	add    BYTE PTR [rip+0x27c89],al        # 27f7a <__FRAME_END__+0x273ee>
 2f1:	00 10                	add    BYTE PTR [rax],dl
 2f3:	17                   	(bad)  
 2f4:	00 00                	add    BYTE PTR [rax],al
 2f6:	00 06                	add    BYTE PTR [rsi],al
 2f8:	1a 57 00             	sbb    dl,BYTE PTR [rdi+0x0]
 2fb:	00 00                	add    BYTE PTR [rax],al
 2fd:	0c b9                	or     al,0xb9
 2ff:	00 00                	add    BYTE PTR [rax],al
 301:	00 08                	add    BYTE PTR [rax],cl
 303:	03 00                	add    eax,DWORD PTR [rax]
 305:	00 11                	add    BYTE PTR [rcx],dl
 307:	00 07                	add    BYTE PTR [rdi],al
 309:	fd                   	std    
 30a:	02 00                	add    al,BYTE PTR [rax]
 30c:	00 10                	add    BYTE PTR [rax],dl
 30e:	cf                   	iret   
 30f:	02 00                	add    al,BYTE PTR [rax]
 311:	00 06                	add    BYTE PTR [rsi],al
 313:	1b 08                	sbb    ecx,DWORD PTR [rax]
 315:	03 00                	add    eax,DWORD PTR [rax]
 317:	00 12                	add    BYTE PTR [rdx],dl
 319:	c1 00 00             	rol    DWORD PTR [rax],0x0
 31c:	00 07                	add    BYTE PTR [rdi],al
 31e:	0e                   	(bad)  
 31f:	01 8f 00 00 00 0f    	add    DWORD PTR [rdi+0xf000000],ecx
 325:	6c                   	ins    BYTE PTR es:[rdi],dx
 326:	00 00                	add    BYTE PTR [rax],al
 328:	00 07                	add    BYTE PTR [rdi],al
 32a:	22 02                	and    al,BYTE PTR [rdx]
 32c:	30 03                	xor    BYTE PTR [rbx],al
 32e:	00 00                	add    BYTE PTR [rax],al
 330:	06                   	(bad)  
 331:	08 7d 00             	or     BYTE PTR [rbp+0x0],bh
 334:	00 00                	add    BYTE PTR [rax],al
 336:	10 07                	adc    BYTE PTR [rdi],al
 338:	00 00                	add    BYTE PTR [rax],al
 33a:	00 08                	add    BYTE PTR [rax],cl
 33c:	24 7d                	and    al,0x7d
 33e:	00 00                	add    BYTE PTR [rax],al
 340:	00 10                	add    BYTE PTR [rax],dl
 342:	00 00                	add    BYTE PTR [rax],al
 344:	00 00                	add    BYTE PTR [rax],al
 346:	08 32                	or     BYTE PTR [rdx],dh
 348:	57                   	push   rdi
 349:	00 00                	add    BYTE PTR [rax],al
 34b:	00 10                	add    BYTE PTR [rax],dl
 34d:	a9 01 00 00 08       	test   eax,0x8000001
 352:	37                   	(bad)  
 353:	57                   	push   rdi
 354:	00 00                	add    BYTE PTR [rax],al
 356:	00 10                	add    BYTE PTR [rax],dl
 358:	db 02                	fild   DWORD PTR [rdx]
 35a:	00 00                	add    BYTE PTR [rax],al
 35c:	08 3b                	or     BYTE PTR [rbx],bh
 35e:	57                   	push   rdi
 35f:	00 00                	add    BYTE PTR [rax],al
 361:	00 13                	add    BYTE PTR [rbx],dl
 363:	3e 00 00             	add    BYTE PTR ds:[rax],al
 366:	00 01                	add    BYTE PTR [rcx],al
 368:	14 57                	adc    al,0x57
 36a:	00 00                	add    BYTE PTR [rax],al
 36c:	00 09                	add    BYTE PTR [rcx],cl
 36e:	03 14 10             	add    edx,DWORD PTR [rax+rdx*1]
 371:	20 00                	and    BYTE PTR [rax],al
 373:	00 00                	add    BYTE PTR [rax],al
 375:	00 00                	add    BYTE PTR [rax],al
 377:	14 bc                	adc    al,0xbc
 379:	01 00                	add    DWORD PTR [rax],eax
 37b:	00 01                	add    BYTE PTR [rcx],al
 37d:	23 57 00             	and    edx,DWORD PTR [rdi+0x0]
 380:	00 00                	add    BYTE PTR [rax],al
 382:	75 07                	jne    38b <_init-0x24d>
 384:	00 00                	add    BYTE PTR [rax],al
 386:	00 00                	add    BYTE PTR [rax],al
 388:	00 00                	add    BYTE PTR [rax],al
 38a:	6d                   	ins    DWORD PTR es:[rdi],dx
 38b:	01 00                	add    DWORD PTR [rax],eax
 38d:	00 00                	add    BYTE PTR [rax],al
 38f:	00 00                	add    BYTE PTR [rax],al
 391:	00 01                	add    BYTE PTR [rcx],al
 393:	9c                   	pushf  
 394:	dd 03                	fld    QWORD PTR [rbx]
 396:	00 00                	add    BYTE PTR [rax],al
 398:	13 ee                	adc    ebp,esi
 39a:	00 00                	add    BYTE PTR [rax],al
 39c:	00 01                	add    BYTE PTR [rcx],al
 39e:	25 7b 00 00 00       	and    eax,0x7b
 3a3:	02 91 50 13 f3 00    	add    dl,BYTE PTR [rcx+0xf31350]
 3a9:	00 00                	add    BYTE PTR [rax],al
 3ab:	01 25 7b 00 00 00    	add    DWORD PTR [rip+0x7b],esp        # 42c <_init-0x1ac>
 3b1:	02 91 58 13 df 00    	add    dl,BYTE PTR [rcx+0xdf1358]
 3b7:	00 00                	add    BYTE PTR [rax],al
 3b9:	01 25 7b 00 00 00    	add    DWORD PTR [rip+0x7b],esp        # 43a <_init-0x19e>
 3bf:	02 91 60 15 66 00    	add    dl,BYTE PTR [rcx+0x661560]
 3c5:	01 26                	add    DWORD PTR [rsi],esp
 3c7:	e8 03 00 00 02       	call   20003cf <_end+0x1dff3b7>
 3cc:	91                   	xchg   ecx,eax
 3cd:	48 15 63 72 74 00    	adc    rax,0x747263
 3d3:	01 27                	add    DWORD PTR [rdi],esp
 3d5:	7d 00                	jge    3d7 <_init-0x201>
 3d7:	00 00                	add    BYTE PTR [rax],al
 3d9:	02 91 68 00 16 57    	add    dl,BYTE PTR [rcx+0x57160068]
 3df:	00 00                	add    BYTE PTR [rax],al
 3e1:	00 e8                	add    al,ch
 3e3:	03 00                	add    eax,DWORD PTR [rax]
 3e5:	00 17                	add    BYTE PTR [rdi],dl
 3e7:	00 06                	add    BYTE PTR [rsi],al
 3e9:	08 dd                	or     ch,bl
 3eb:	03 00                	add    eax,DWORD PTR [rax]
 3ed:	00 18                	add    BYTE PTR [rax],bl
 3ef:	66 6f                	outs   dx,WORD PTR ds:[rsi]
 3f1:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 3f2:	00 01                	add    BYTE PTR [rcx],al
 3f4:	1e                   	(bad)  
 3f5:	57                   	push   rdi
 3f6:	00 00                	add    BYTE PTR [rax],al
 3f8:	00 6a 07             	add    BYTE PTR [rdx+0x7],ch
 3fb:	00 00                	add    BYTE PTR [rax],al
 3fd:	00 00                	add    BYTE PTR [rax],al
 3ff:	00 00                	add    BYTE PTR [rax],al
 401:	0b 00                	or     eax,DWORD PTR [rax]
 403:	00 00                	add    BYTE PTR [rax],al
 405:	00 00                	add    BYTE PTR [rax],al
 407:	00 00                	add    BYTE PTR [rax],al
 409:	01                   	.byte 0x1
 40a:	9c                   	pushf  
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    DWORD PTR [rcx],edx
   2:	01 25 0e 13 0b 03    	add    DWORD PTR [rip+0x30b130e],esp        # 30b1316 <_end+0x2eb02fe>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    ecx,DWORD PTR [rsi]
   b:	11 01                	adc    DWORD PTR [rcx],eax
   d:	12 07                	adc    al,BYTE PTR [rdi]
   f:	10 17                	adc    BYTE PTR [rdi],dl
  11:	00 00                	add    BYTE PTR [rax],al
  13:	02 24 00             	add    ah,BYTE PTR [rax+rax*1]
  16:	0b 0b                	or     ecx,DWORD PTR [rbx]
  18:	3e 0b 03             	or     eax,DWORD PTR ds:[rbx]
  1b:	0e                   	(bad)  
  1c:	00 00                	add    BYTE PTR [rax],al
  1e:	03 24 00             	add    esp,DWORD PTR [rax+rax*1]
  21:	0b 0b                	or     ecx,DWORD PTR [rbx]
  23:	3e 0b 03             	or     eax,DWORD PTR ds:[rbx]
  26:	08 00                	or     BYTE PTR [rax],al
  28:	00 04 16             	add    BYTE PTR [rsi+rdx*1],al
  2b:	00 03                	add    BYTE PTR [rbx],al
  2d:	0e                   	(bad)  
  2e:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  30:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  32:	49 13 00             	adc    rax,QWORD PTR [r8]
  35:	00 05 0f 00 0b 0b    	add    BYTE PTR [rip+0xb0b000f],al        # b0b004a <_end+0xaeaf032>
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
  5c:	09 0d 00 03 0e 3a    	or     DWORD PTR [rip+0x3a0e0300],ecx        # 3a0e0362 <_end+0x39edf34a>
  62:	0b 3b                	or     edi,DWORD PTR [rbx]
  64:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
  67:	38 0b                	cmp    BYTE PTR [rbx],cl
  69:	00 00                	add    BYTE PTR [rax],al
  6b:	0a 0d 00 03 0e 3a    	or     cl,BYTE PTR [rip+0x3a0e0300]        # 3a0e0371 <_end+0x39edf359>
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
  a7:	3b 05 49 13 3f 19    	cmp    eax,DWORD PTR [rip+0x193f1349]        # 193f13f6 <_end+0x191f03de>
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
  c8:	16                   	(bad)  
  c9:	00 03                	add    BYTE PTR [rbx],al
  cb:	0e                   	(bad)  
  cc:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  ce:	3b 05 49 13 00 00    	cmp    eax,DWORD PTR [rip+0x1349]        # 141d <__FRAME_END__+0x891>
  d4:	13 34 00             	adc    esi,DWORD PTR [rax+rax*1]
  d7:	03 0e                	add    ecx,DWORD PTR [rsi]
  d9:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  db:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  dd:	49 13 02             	adc    rax,QWORD PTR [r10]
  e0:	18 00                	sbb    BYTE PTR [rax],al
  e2:	00 14 2e             	add    BYTE PTR [rsi+rbp*1],dl
  e5:	01 3f                	add    DWORD PTR [rdi],edi
  e7:	19 03                	sbb    DWORD PTR [rbx],eax
  e9:	0e                   	(bad)  
  ea:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  ec:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  ee:	27                   	(bad)  
  ef:	19 49 13             	sbb    DWORD PTR [rcx+0x13],ecx
  f2:	11 01                	adc    DWORD PTR [rcx],eax
  f4:	12 07                	adc    al,BYTE PTR [rdi]
  f6:	40 18 96 42 19 01 13 	sbb    BYTE PTR [rsi+0x13011942],dl
  fd:	00 00                	add    BYTE PTR [rax],al
  ff:	15 34 00 03 08       	adc    eax,0x8030034
 104:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 106:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 108:	49 13 02             	adc    rax,QWORD PTR [r10]
 10b:	18 00                	sbb    BYTE PTR [rax],al
 10d:	00 16                	add    BYTE PTR [rsi],dl
 10f:	15 01 49 13 01       	adc    eax,0x1134901
 114:	13 00                	adc    eax,DWORD PTR [rax]
 116:	00 17                	add    BYTE PTR [rdi],dl
 118:	18 00                	sbb    BYTE PTR [rax],al
 11a:	00 00                	add    BYTE PTR [rax],al
 11c:	18 2e                	sbb    BYTE PTR [rsi],ch
 11e:	00 3f                	add    BYTE PTR [rdi],bh
 120:	19 03                	sbb    DWORD PTR [rbx],eax
 122:	08 3a                	or     BYTE PTR [rdx],bh
 124:	0b 3b                	or     edi,DWORD PTR [rbx]
 126:	0b 27                	or     esp,DWORD PTR [rdi]
 128:	19 49 13             	sbb    DWORD PTR [rcx+0x13],ecx
 12b:	11 01                	adc    DWORD PTR [rcx],eax
 12d:	12 07                	adc    al,BYTE PTR [rdi]
 12f:	40 18 97 42 19 00 00 	sbb    BYTE PTR [rdi+0x1942],dl
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	16                   	(bad)  
   1:	01 00                	add    DWORD PTR [rax],eax
   3:	00 02                	add    BYTE PTR [rdx],al
   5:	00 d0                	add    al,dl
   7:	00 00                	add    BYTE PTR [rax],al
   9:	00 01                	add    BYTE PTR [rcx],al
   b:	01 fb                	add    ebx,edi
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     eax,0x1010100
  13:	01 00                	add    DWORD PTR [rax],eax
  15:	00 00                	add    BYTE PTR [rax],al
  17:	01 00                	add    DWORD PTR [rax],eax
  19:	00 01                	add    BYTE PTR [rcx],al
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0x547>
  1e:	72 2f                	jb     4f <_init-0x589>
  20:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  27:	2f                   	(bad)  
  28:	78 38                	js     62 <_init-0x576>
  2a:	36 5f                	ss pop rdi
  2c:	36 34 2d             	ss xor al,0x2d
  2f:	6c                   	ins    BYTE PTR es:[rdi],dx
  30:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  37:	75 2f                	jne    68 <_init-0x570>
  39:	62                   	(bad)  
  3a:	69 74 73 00 2f 75 73 	imul   esi,DWORD PTR [rbx+rsi*2+0x0],0x7273752f
  41:	72 
  42:	2f                   	(bad)  
  43:	6c                   	ins    BYTE PTR es:[rdi],dx
  44:	69 62 2f 67 63 63 2f 	imul   esp,DWORD PTR [rdx+0x2f],0x2f636367
  4b:	78 38                	js     85 <_init-0x553>
  4d:	36 5f                	ss pop rdi
  4f:	36 34 2d             	ss xor al,0x2d
  52:	6c                   	ins    BYTE PTR es:[rdi],dx
  53:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  5a:	75 2f                	jne    8b <_init-0x54d>
  5c:	37                   	(bad)  
  5d:	2f                   	(bad)  
  5e:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  65:	00 2f                	add    BYTE PTR [rdi],ch
  67:	75 73                	jne    dc <_init-0x4fc>
  69:	72 2f                	jb     9a <_init-0x53e>
  6b:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  72:	00 00                	add    BYTE PTR [rax],al
  74:	68 61 63 6b 2e       	push   0x2e6b6361
  79:	63 00                	movsxd eax,DWORD PTR [rax]
  7b:	00 00                	add    BYTE PTR [rax],al
  7d:	00 74 79 70          	add    BYTE PTR [rcx+rdi*2+0x70],dh
  81:	65 73 2e             	gs jae b2 <_init-0x526>
  84:	68 00 01 00 00       	push   0x100
  89:	73 74                	jae    ff <_init-0x4d9>
  8b:	64 64 65 66 2e 68 00 	fs fs gs cs pushw 0x200
  92:	02 
  93:	00 00                	add    BYTE PTR [rax],al
  95:	6c                   	ins    BYTE PTR es:[rdi],dx
  96:	69 62 69 6f 2e 68 00 	imul   esp,DWORD PTR [rdx+0x69],0x682e6f
  9d:	01 00                	add    DWORD PTR [rax],eax
  9f:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  a2:	64 69 6f 2e 68 00 03 	imul   ebp,DWORD PTR fs:[rdi+0x2e],0x30068
  a9:	00 
  aa:	00 73 79             	add    BYTE PTR [rbx+0x79],dh
  ad:	73 5f                	jae    10e <_init-0x4ca>
  af:	65 72 72             	gs jb  124 <_init-0x4b4>
  b2:	6c                   	ins    BYTE PTR es:[rdi],dx
  b3:	69 73 74 2e 68 00 01 	imul   esi,DWORD PTR [rbx+0x74],0x100682e
  ba:	00 00                	add    BYTE PTR [rax],al
  bc:	75 6e                	jne    12c <_init-0x4ac>
  be:	69 73 74 64 2e 68 00 	imul   esi,DWORD PTR [rbx+0x74],0x682e64
  c5:	03 00                	add    eax,DWORD PTR [rax]
  c7:	00 67 65             	add    BYTE PTR [rdi+0x65],ah
  ca:	74 6f                	je     13b <_init-0x49d>
  cc:	70 74                	jo     142 <_init-0x496>
  ce:	5f                   	pop    rdi
  cf:	63 6f 72             	movsxd ebp,DWORD PTR [rdi+0x72]
  d2:	65 2e 68 00 01 00 00 	gs cs push 0x100
  d9:	00 00                	add    BYTE PTR [rax],al
  db:	09 02                	or     DWORD PTR [rdx],eax
  dd:	6a 07                	push   0x7
  df:	00 00                	add    BYTE PTR [rax],al
  e1:	00 00                	add    BYTE PTR [rax],al
  e3:	00 00                	add    BYTE PTR [rax],al
  e5:	03 1e                	add    ebx,DWORD PTR [rsi]
  e7:	01 4b 59             	add    DWORD PTR [rbx+0x59],ecx
  ea:	31 87 af ad 08 77    	xor    DWORD PTR [rdi+0x7708adaf],eax
  f0:	08 4b 08             	or     BYTE PTR [rbx+0x8],cl
  f3:	77 08                	ja     fd <_init-0x4db>
  f5:	3f                   	(bad)  
  f6:	08 76 08             	or     BYTE PTR [rsi+0x8],dh
  f9:	77 08                	ja     103 <_init-0x4d5>
  fb:	f3 bb a2 ae 30 56    	repz mov ebx,0x5630aea2
 101:	00 02                	add    BYTE PTR [rdx],al
 103:	04 01                	add    al,0x1
 105:	c9                   	leave  
 106:	00 02                	add    BYTE PTR [rdx],al
 108:	04 01                	add    al,0x1
 10a:	49 83 e7 c9          	and    r15,0xffffffffffffffc9
 10e:	02 22                	add    ah,BYTE PTR [rdx]
 110:	13 76 08             	adc    esi,DWORD PTR [rsi+0x8]
 113:	76 59                	jbe    16e <_init-0x46a>
 115:	02 02                	add    al,BYTE PTR [rdx]
 117:	00 01                	add    BYTE PTR [rcx],al
 119:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1:	70 74                	jo     77 <_init-0x561>
   3:	69 6e 64 00 6f 70 74 	imul   ebp,DWORD PTR [rsi+0x64],0x74706f00
   a:	61                   	(bad)  
   b:	72 67                	jb     74 <_init-0x564>
   d:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
  10:	4f 5f                	rex.WRXB pop r15
  12:	46                   	rex.RX
  13:	49                   	rex.WB
  14:	4c                   	rex.WR
  15:	45 00 73 79          	add    BYTE PTR [r11+0x79],r14b
  19:	73 5f                	jae    7a <_init-0x55e>
  1b:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  1c:	65 72 72             	gs jb  91 <_init-0x547>
  1f:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
  22:	4f 5f                	rex.WRXB pop r15
  24:	73 61                	jae    87 <_init-0x551>
  26:	76 65                	jbe    8d <_init-0x54b>
  28:	5f                   	pop    rdi
  29:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  2b:	64 00 73 68          	add    BYTE PTR fs:[rbx+0x68],dh
  2f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  30:	72 74                	jb     a6 <_init-0x532>
  32:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
  35:	74 00                	je     37 <_init-0x5a1>
  37:	73 69                	jae    a2 <_init-0x536>
  39:	7a 65                	jp     a0 <_init-0x538>
  3b:	5f                   	pop    rdi
  3c:	74 00                	je     3e <_init-0x59a>
  3e:	70 61                	jo     a1 <_init-0x537>
  40:	67 65 73 69          	addr32 gs jae ad <_init-0x52b>
  44:	7a 65                	jp     ab <_init-0x52d>
  46:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
  49:	4f 5f                	rex.WRXB pop r15
  4b:	77 72                	ja     bf <_init-0x519>
  4d:	69 74 65 5f 70 74 72 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x727470
  54:	00 
  55:	5f                   	pop    rdi
  56:	66 6c                	data16 ins BYTE PTR es:[rdi],dx
  58:	61                   	(bad)  
  59:	67 73 00             	addr32 jae 5c <_init-0x57c>
  5c:	5f                   	pop    rdi
  5d:	49                   	rex.WB
  5e:	4f 5f                	rex.WRXB pop r15
  60:	32 5f 31             	xor    bl,BYTE PTR [rdi+0x31]
  63:	5f                   	pop    rdi
  64:	73 74                	jae    da <_init-0x4fe>
  66:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
  68:	75 74                	jne    de <_init-0x4fa>
  6a:	5f                   	pop    rdi
  6b:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
  6e:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  70:	76 69                	jbe    db <_init-0x4fd>
  72:	72 6f                	jb     e3 <_init-0x4f5>
  74:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  75:	00 5f 6d             	add    BYTE PTR [rdi+0x6d],bl
  78:	61                   	(bad)  
  79:	72 6b                	jb     e6 <_init-0x4f2>
  7b:	65 72 73             	gs jb  f1 <_init-0x4e7>
  7e:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
  81:	4f 5f                	rex.WRXB pop r15
  83:	72 65                	jb     ea <_init-0x4ee>
  85:	61                   	(bad)  
  86:	64 5f                	fs pop rdi
  88:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  8a:	64 00 2f             	add    BYTE PTR fs:[rdi],ch
  8d:	68 6f 6d 65 2f       	push   0x2f656d6f
  92:	74 65                	je     f9 <_init-0x4df>
  94:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  95:	2f                   	(bad)  
  96:	50                   	push   rax
  97:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  98:	6c                   	ins    BYTE PTR es:[rdi],dx
  99:	69 2f 41 6e 5f 33    	imul   ebp,DWORD PTR [rdi],0x335f6e41
  9f:	2f                   	(bad)  
  a0:	53                   	push   rbx
  a1:	4f 2f                	rex.WRXB (bad) 
  a3:	4c 61                	rex.WR (bad) 
  a5:	62                   	(bad)  
  a6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  a7:	72 61                	jb     10a <_init-0x4ce>
  a9:	74 6f                	je     11a <_init-0x4be>
  ab:	61                   	(bad)  
  ac:	72 65                	jb     113 <_init-0x4c5>
  ae:	2f                   	(bad)  
  af:	4c 61                	rex.WR (bad) 
  b1:	62                   	(bad)  
  b2:	36 2f                	ss (bad) 
  b4:	6c                   	ins    BYTE PTR es:[rdi],dx
  b5:	69 6e 2f 38 2d 68 61 	imul   ebp,DWORD PTR [rsi+0x2f],0x61682d38
  bc:	63 6b 00             	movsxd ebp,DWORD PTR [rbx+0x0]
  bf:	5f                   	pop    rdi
  c0:	5f                   	pop    rdi
  c1:	69 6e 74 70 74 72 5f 	imul   ebp,DWORD PTR [rsi+0x74],0x5f727470
  c8:	74 00                	je     ca <_init-0x50e>
  ca:	73 74                	jae    140 <_init-0x498>
  cc:	64 65 72 72          	fs gs jb 142 <_init-0x496>
  d0:	00 6c 6f 6e          	add    BYTE PTR [rdi+rbp*2+0x6e],ch
  d4:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
  d9:	67 20 69 6e          	and    BYTE PTR [ecx+0x6e],ch
  dd:	74 00                	je     df <_init-0x4f9>
  df:	70 61                	jo     142 <_init-0x496>
  e1:	67 65 5f             	addr32 gs pop rdi
  e4:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  e6:	64 00 5f 6c          	add    BYTE PTR fs:[rdi+0x6c],bl
  ea:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  eb:	63 6b 00             	movsxd ebp,DWORD PTR [rbx+0x0]
  ee:	61                   	(bad)  
  ef:	64 64 72 00          	fs fs jb f3 <_init-0x4e5>
  f3:	61                   	(bad)  
  f4:	64 64 72 5f          	fs fs jb 157 <_init-0x481>
  f8:	61                   	(bad)  
  f9:	6c                   	ins    BYTE PTR es:[rdi],dx
  fa:	69 67 6e 65 64 00 5f 	imul   esp,DWORD PTR [rdi+0x6e],0x5f006465
 101:	63 75 72             	movsxd esi,DWORD PTR [rbp+0x72]
 104:	5f                   	pop    rdi
 105:	63 6f 6c             	movsxd ebp,DWORD PTR [rdi+0x6c]
 108:	75 6d                	jne    177 <_init-0x461>
 10a:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 10b:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 10e:	4f 5f                	rex.WRXB pop r15
 110:	32 5f 31             	xor    bl,BYTE PTR [rdi+0x31]
 113:	5f                   	pop    rdi
 114:	73 74                	jae    18a <_init-0x44e>
 116:	64 65 72 72          	fs gs jb 18c <_init-0x44c>
 11a:	5f                   	pop    rdi
 11b:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 11e:	4f 5f                	rex.WRXB pop r15
 120:	46                   	rex.RX
 121:	49                   	rex.WB
 122:	4c                   	rex.WR
 123:	45 5f                	rex.RB pop r15
 125:	70 6c                	jo     193 <_init-0x445>
 127:	75 73                	jne    19c <_init-0x43c>
 129:	00 5f 70             	add    BYTE PTR [rdi+0x70],bl
 12c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 12d:	73 00                	jae    12f <_init-0x4a9>
 12f:	5f                   	pop    rdi
 130:	73 62                	jae    194 <_init-0x444>
 132:	75 66                	jne    19a <_init-0x43e>
 134:	00 5f 6f             	add    BYTE PTR [rdi+0x6f],bl
 137:	6c                   	ins    BYTE PTR es:[rdi],dx
 138:	64 5f                	fs pop rdi
 13a:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 13b:	66 66 73 65          	data16 data16 jae 1a4 <_init-0x434>
 13f:	74 00                	je     141 <_init-0x497>
 141:	75 6e                	jne    1b1 <_init-0x427>
 143:	73 69                	jae    1ae <_init-0x42a>
 145:	67 6e                	outs   dx,BYTE PTR ds:[esi]
 147:	65 64 20 63 68       	gs and BYTE PTR fs:[rbx+0x68],ah
 14c:	61                   	(bad)  
 14d:	72 00                	jb     14f <_init-0x489>
 14f:	6c                   	ins    BYTE PTR es:[rdi],dx
 150:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 151:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 152:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
 157:	67 20 75 6e          	and    BYTE PTR [ebp+0x6e],dh
 15b:	73 69                	jae    1c6 <_init-0x412>
 15d:	67 6e                	outs   dx,BYTE PTR ds:[esi]
 15f:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
 164:	74 00                	je     166 <_init-0x472>
 166:	5f                   	pop    rdi
 167:	49                   	rex.WB
 168:	4f 5f                	rex.WRXB pop r15
 16a:	32 5f 31             	xor    bl,BYTE PTR [rdi+0x31]
 16d:	5f                   	pop    rdi
 16e:	73 74                	jae    1e4 <_init-0x3f4>
 170:	64 69 6e 5f 00 5f 49 	imul   ebp,DWORD PTR fs:[rsi+0x5f],0x4f495f00
 177:	4f 
 178:	5f                   	pop    rdi
 179:	6d                   	ins    DWORD PTR es:[rdi],dx
 17a:	61                   	(bad)  
 17b:	72 6b                	jb     1e8 <_init-0x3f0>
 17d:	65 72 00             	gs jb  180 <_init-0x458>
 180:	5f                   	pop    rdi
 181:	73 68                	jae    1eb <_init-0x3ed>
 183:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 184:	72 74                	jb     1fa <_init-0x3de>
 186:	62                   	(bad)  
 187:	75 66                	jne    1ef <_init-0x3e9>
 189:	00 68 61             	add    BYTE PTR [rax+0x61],ch
 18c:	63 6b 2e             	movsxd ebp,DWORD PTR [rbx+0x2e]
 18f:	63 00                	movsxd eax,DWORD PTR [rax]
 191:	5f                   	pop    rdi
 192:	49                   	rex.WB
 193:	4f 5f                	rex.WRXB pop r15
 195:	77 72                	ja     209 <_init-0x3cf>
 197:	69 74 65 5f 62 61 73 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x65736162
 19e:	65 
 19f:	00 5f 75             	add    BYTE PTR [rdi+0x75],bl
 1a2:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 1a3:	75 73                	jne    218 <_init-0x3c0>
 1a5:	65 64 32 00          	gs xor al,BYTE PTR fs:[rax]
 1a9:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 1aa:	70 74                	jo     220 <_init-0x3b8>
 1ac:	65 72 72             	gs jb  221 <_init-0x3b7>
 1af:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 1b2:	4f 5f                	rex.WRXB pop r15
 1b4:	62                   	(bad)  
 1b5:	75 66                	jne    21d <_init-0x3bb>
 1b7:	5f                   	pop    rdi
 1b8:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
 1ba:	64 00 6d 61          	add    BYTE PTR fs:[rbp+0x61],ch
 1be:	69 6e 00 5f 6e 65 78 	imul   ebp,DWORD PTR [rsi+0x0],0x78656e5f
 1c5:	74 00                	je     1c7 <_init-0x411>
 1c7:	5f                   	pop    rdi
 1c8:	5f                   	pop    rdi
 1c9:	70 61                	jo     22c <_init-0x3ac>
 1cb:	64 31 00             	xor    DWORD PTR fs:[rax],eax
 1ce:	5f                   	pop    rdi
 1cf:	5f                   	pop    rdi
 1d0:	70 61                	jo     233 <_init-0x3a5>
 1d2:	64 32 00             	xor    al,BYTE PTR fs:[rax]
 1d5:	5f                   	pop    rdi
 1d6:	5f                   	pop    rdi
 1d7:	70 61                	jo     23a <_init-0x39e>
 1d9:	64 33 00             	xor    eax,DWORD PTR fs:[rax]
 1dc:	5f                   	pop    rdi
 1dd:	5f                   	pop    rdi
 1de:	70 61                	jo     241 <_init-0x397>
 1e0:	64 34 00             	fs xor al,0x0
 1e3:	5f                   	pop    rdi
 1e4:	5f                   	pop    rdi
 1e5:	70 61                	jo     248 <_init-0x390>
 1e7:	64 35 00 73 68 6f    	fs xor eax,0x6f687300
 1ed:	72 74                	jb     263 <_init-0x375>
 1ef:	20 75 6e             	and    BYTE PTR [rbp+0x6e],dh
 1f2:	73 69                	jae    25d <_init-0x37b>
 1f4:	67 6e                	outs   dx,BYTE PTR ds:[esi]
 1f6:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
 1fb:	74 00                	je     1fd <_init-0x3db>
 1fd:	5f                   	pop    rdi
 1fe:	49                   	rex.WB
 1ff:	4f 5f                	rex.WRXB pop r15
 201:	77 72                	ja     275 <_init-0x363>
 203:	69 74 65 5f 65 6e 64 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x646e65
 20a:	00 
 20b:	5f                   	pop    rdi
 20c:	5f                   	pop    rdi
 20d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 20e:	66 66 36 34 5f       	data16 data16 ss xor al,0x5f
 213:	74 00                	je     215 <_init-0x3c3>
 215:	5f                   	pop    rdi
 216:	66 69 6c 65 6e 6f 00 	imul   bp,WORD PTR [rbp+riz*2+0x6e],0x6f
 21d:	5f                   	pop    rdi
 21e:	63 68 61             	movsxd ebp,DWORD PTR [rax+0x61]
 221:	69 6e 00 5f 5f 6f 66 	imul   ebp,DWORD PTR [rsi+0x0],0x666f5f5f
 228:	66 5f                	pop    di
 22a:	74 00                	je     22c <_init-0x3ac>
 22c:	47                   	rex.RXB
 22d:	4e 55                	rex.WRX push rbp
 22f:	20 43 31             	and    BYTE PTR [rbx+0x31],al
 232:	31 20                	xor    DWORD PTR [rax],esp
 234:	37                   	(bad)  
 235:	2e 35 2e 30 20 2d    	cs xor eax,0x2d20302e
 23b:	6d                   	ins    DWORD PTR es:[rdi],dx
 23c:	74 75                	je     2b3 <_init-0x325>
 23e:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 23f:	65 3d 67 65 6e 65    	gs cmp eax,0x656e6567
 245:	72 69                	jb     2b0 <_init-0x328>
 247:	63 20                	movsxd esp,DWORD PTR [rax]
 249:	2d 6d 61 72 63       	sub    eax,0x6372616d
 24e:	68 3d 78 38 36       	push   0x3638783d
 253:	2d 36 34 20 2d       	sub    eax,0x2d203436
 258:	67 20 2d 66 73 74 61 	and    BYTE PTR [eip+0x61747366],ch        # 617475c5 <_end+0x615465ad>
 25f:	63 6b 2d             	movsxd ebp,DWORD PTR [rbx+0x2d]
 262:	70 72                	jo     2d6 <_init-0x302>
 264:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 265:	74 65                	je     2cc <_init-0x30c>
 267:	63 74 6f 72          	movsxd esi,DWORD PTR [rdi+rbp*2+0x72]
 26b:	2d 73 74 72 6f       	sub    eax,0x6f727473
 270:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 271:	67 00 5f 49          	add    BYTE PTR [edi+0x49],bl
 275:	4f 5f                	rex.WRXB pop r15
 277:	62 61                	(bad)  
 279:	63 6b 75             	movsxd ebp,DWORD PTR [rbx+0x75]
 27c:	70 5f                	jo     2dd <_init-0x2fb>
 27e:	62 61                	(bad)  
 280:	73 65                	jae    2e7 <_init-0x2f1>
 282:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
 285:	64 69 6e 00 5f 49 4f 	imul   ebp,DWORD PTR fs:[rsi+0x0],0x5f4f495f
 28c:	5f 
 28d:	62                   	(bad)  
 28e:	75 66                	jne    2f6 <_init-0x2e2>
 290:	5f                   	pop    rdi
 291:	62 61                	(bad)  
 293:	73 65                	jae    2fa <_init-0x2de>
 295:	00 5f 66             	add    BYTE PTR [rdi+0x66],bl
 298:	6c                   	ins    BYTE PTR es:[rdi],dx
 299:	61                   	(bad)  
 29a:	67 73 32             	addr32 jae 2cf <_init-0x309>
 29d:	00 5f 6d             	add    BYTE PTR [rdi+0x6d],bl
 2a0:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 2a1:	64 65 00 5f 49       	fs add BYTE PTR gs:[rdi+0x49],bl
 2a6:	4f 5f                	rex.WRXB pop r15
 2a8:	72 65                	jb     30f <_init-0x2c9>
 2aa:	61                   	(bad)  
 2ab:	64 5f                	fs pop rdi
 2ad:	62 61                	(bad)  
 2af:	73 65                	jae    316 <_init-0x2c2>
 2b1:	00 5f 76             	add    BYTE PTR [rdi+0x76],bl
 2b4:	74 61                	je     317 <_init-0x2c1>
 2b6:	62                   	(bad)  
 2b7:	6c                   	ins    BYTE PTR es:[rdi],dx
 2b8:	65 5f                	gs pop rdi
 2ba:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 2bb:	66 66 73 65          	data16 data16 jae 324 <_init-0x2b4>
 2bf:	74 00                	je     2c1 <_init-0x317>
 2c1:	5f                   	pop    rdi
 2c2:	49                   	rex.WB
 2c3:	4f 5f                	rex.WRXB pop r15
 2c5:	73 61                	jae    328 <_init-0x2b0>
 2c7:	76 65                	jbe    32e <_init-0x2aa>
 2c9:	5f                   	pop    rdi
 2ca:	62 61                	(bad)  
 2cc:	73 65                	jae    333 <_init-0x2a5>
 2ce:	00 73 79             	add    BYTE PTR [rbx+0x79],dh
 2d1:	73 5f                	jae    332 <_init-0x2a6>
 2d3:	65 72 72             	gs jb  348 <_init-0x290>
 2d6:	6c                   	ins    BYTE PTR es:[rdi],dx
 2d7:	69 73 74 00 6f 70 74 	imul   esi,DWORD PTR [rbx+0x74],0x74706f00
 2de:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 2df:	70 74                	jo     355 <_init-0x283>
 2e1:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 2e4:	4f 5f                	rex.WRXB pop r15
 2e6:	72 65                	jb     34d <_init-0x28b>
 2e8:	61                   	(bad)  
 2e9:	64 5f                	fs pop rdi
 2eb:	70 74                	jo     361 <_init-0x277>
 2ed:	72 00                	jb     2ef <_init-0x2e9>
 2ef:	73 74                	jae    365 <_init-0x273>
 2f1:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
 2f3:	75 74                	jne    369 <_init-0x26f>
 2f5:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 2f8:	4f 5f                	rex.WRXB pop r15
 2fa:	6c                   	ins    BYTE PTR es:[rdi],dx
 2fb:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 2fc:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 2ff:	74 00                	je     301 <_init-0x2d7>
