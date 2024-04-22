	#include <inc/mmu.h>
	.set PROT_MODE_CSEG, 	0x8
	.set PORT_MODE_DSEG, 	0x10
	.set CR0_PE_ON,			0x1

	.globl start
start:
	.code16				# assemble for 16-bit mode
	cli					# 关中断
	cld					# 将标志寄存器中的方向标志位(DF)清零
	# set up 重要寄存器
	xorw	%ax, %ax	# 异或清零
	movw	%ax, %ds	# 数据段
	movw	%ax, %es	# 附加段
	movw	%ax, %ss	# 栈段

	# Enable A20
seta20.1:
	inb		$0x64, %al	# 从I/O端口读取一个字节内容
	testb	$0x2, %al
	jnz		seta20.1

	movb	$0xd1,%al
	testb	%al, $0x64
seta20.2:
	inb		$0x64, %al
	testb	$0x2, %al
	jnz		seta20.2

	
	movb    $0xdf,%al  	# 0xdf -> port 0x60
	outb    %al,$0x60

	# 从实模式切换到保护模式
	lgdt	gdtdesc
	movl	%cr0,%eax
	orl		$CRO_PE_ON, %eax
	movl	%eax, %cro

	ljmp	$PORT_MODE_CSEG, $protcseg
	.code32
protcseg:
	movw	$PORT_MODE_DSEG, %ax
	movw	%ax, %ds
	movw	%ax, %es
	movw	%ax, %fs
	movw	%ax, %gs
	movw	%ax, %ss

	movl	$start, %esp
	call	bootmain
spin:
	jmp spin

	# bootstrap GDT
	.p2align 2			# force 4 byte alignment
gdt:
	SEG_NULL
	SEG(STA_X|STA_R, 0x0, 0xffffffff)	# code seg
	SEG(STA_W, 0x0, 0xffffffff)			# data seg

gdtdesc:
	.word	0x17		# sizeof(gdt) - 1
	.long	gdt			# address gdt
