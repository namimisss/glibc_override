**Linux Core**




# xv6
## lab1
make qemu-nox-gdb
make gdb

# 汇编
## 基本指令
- xor: 异或
- cli: 关中断
- cld: 将标志寄存器中的方向标志位(DF)清零
- inb: 从I/O端口读取一个字节内容
- outb: 从I/O端口写入一个字节内容
- testb:
- jmp: 无条件跳转
- jz/je: ZF=1则跳转,ZF=0则不跳转
- jnz/jne: ZF=0则跳转,ZF=1则不跳转
- test: 将两个操作数进行逻辑**与**运算,并根据运算结果设置相应标志位
  - 将结果的最高位赋值给SF,
  - 与的结果是0, ZF位置1，如果不是0,ZF位置0
  - 结果低8位中1的个数为偶数，则PF=1，否则PF=0
  - CF置0
  - OF置0
