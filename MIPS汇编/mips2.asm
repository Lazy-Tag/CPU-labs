# MIPS汇编程序，使用递推方式计算斐波那契数列
.data
input_prompt:   .asciiz "Input an positive integer: "
output_prompt:  .asciiz "F(n): "

.text
.globl main

main:
    # 提示用户输入
    li $v0, 4
    la $a0, input_prompt
    syscall

    # 从用户读取整数n
    li $v0, 5
    syscall
    move $t0, $v0  # 将n存储在$t0寄存器中

    # 检查特殊情况 (n = 0 或 n = 1)
    li $t1, 1       # 初始化 F(0)
    li $t2, 1       # 初始化 F(1)

    beqz $t0, result  # 如果 n = 0，输出 F(0) = 1 并退出
    beq $t0, $t2, result  # 如果 n = 1，输出 F(1) = 1 并退出

    # 使用循环计算斐波那契数
    li $t3, 1       # 初始化循环计数器

fib_loop:
    # 计算 F(n) = F(n-1) + F(n-2)
    add $t3, $t3, 1  # 增加循环计数器
    add $t4, $t1, $t2  # 计算 F(n-1) + F(n-2)
    move $t1, $t2  # 更新 F(n-2)
    move $t2, $t4  # 更新 F(n-1)

    # 检查是否达到 n
    beq $t3, $t0, result

    # 继续循环
    j fib_loop

result:
    # 输出结果
    li $v0, 4
    la $a0, output_prompt
    syscall

    li $v0, 1
    move $a0, $t2  # 将 F(n) 加载到 $a0
    syscall

    # 退出程序
    li $v0, 10
    syscall
