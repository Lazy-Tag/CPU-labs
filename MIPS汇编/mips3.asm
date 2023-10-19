.data
N:     .word 1000010      # 定义N为1000010
n:     .word 0            # 初始化n为0
a:     .space 4040     # 为a分配4040字节内存，用于存储N个32位整数

.text
.globl main

main:
    # 读取n的值
    li $v0, 5            # 读取整数的系统调用代码
    la $a0, n            # 存储n的地址
    syscall
    move $t1, $v0            # $t1 = n

    # 读取a数组的值
    la $a1, 0            # 存储a的地址
    li $t0, 0            # $t0 = 0 (循环计数器)

read_loop:
    beq $t0, $t1, check_result  # 如果循环计数器达到n，跳转到检查结果
    li $v0, 5            # 读取整数的系统调用代码
    syscall
    sw $v0, a($a1)       # 存储读取的整数到a数组
    addi $a1, $a1, 4     # 移动到a数组的下一个位置
    addi $t0, $t0, 1     # 循环计数器加1
    j read_loop

check_result:
    li $t0, 0            # 重置循环计数器
    li $t2, 0            # $t2 = 0 (用于i)
    
check_loop:
    bge $t2, $t1, print_result  # 如果i >= n，跳转到打印结果
    
    sll $t4, $t2, 2
    lw $t3, a($t4)       # $t3 = a[i]
    add $t5, $t2	, $t3    # $t4 = i + a[i]
    bge $t5, $t1, set_n_and_reset_i  # 如果i + a[i] >= n，跳转到设置n并重置i

    addi $t2, $t2, 1     # i++
    j check_loop

set_n_and_reset_i:
    move $t1, $t2        # n = i
    li $t2, -1            # 重置i为0
    j check_loop

print_result:
    beqz $t1, true_result   # 如果n为0，跳转到true_result
    li $v0, 4              # 打印字符串的系统调用代码
    la $a0, false_str      # 加载false_str的地址
    syscall
    j exit

true_result:
    li $v0, 4              # 打印字符串的系统调用代码
    la $a0, true_str       # 加载true_str的地址
    syscall

exit:
    li $v0, 10             # 退出程序的系统调用代码
    syscall

.data
true_str:   .asciiz "true\n"   # 字符串 "true\n"
false_str:  .asciiz "false\n"  # 字符串 "false\n"
