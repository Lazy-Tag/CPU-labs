.data
error_message: .asciiz "Illegal Input\n" # 非法输入
volume_message: .asciiz "Volume: "        # 体积：
surface_area_message: .asciiz "Surface Area: " # 表面积：

.text
.globl main
main:
    # 初始化数值
    li $v0, 0                # $v0 = 0（初始化$v0用于输入）
    
    # 输入长度
    li $v0, 5                # 读取整数到$a0
    syscall
    move $a1, $v0

input_width:
    # 输入宽度
    li $v0, 5                # 读取整数到$a1
    syscall
    move $a2, $v0

input_height:
    # 输入高度
    li $v0, 5                # 读取整数到$a2
    syscall
    move $a3, $v0

calculate:
    bltz $a1, illegal
    bltz $a2, illegal
    bltz $a3, illegal
    
    # 计算体积和表面积
    mul $t0, $a1, $a2        # $t0 = 长 * 宽
    mul $t1, $t0, $a3        # $t1 = (长 * 宽) * 高

    # 体积 = 长 * 宽 * 高
    move $a0, $t1
    li $v0, 1                # 打印体积
    syscall
    
    # 打印换行字符
    li $v0, 11
    li $a0, 10               # 换行字符的ASCII码值
    syscall

    # 表面积 = 2 * (长 * 宽 + 宽 * 高 + 高 * 长)
    li $t2, 2
    mul $t3, $a1, $a2        # $t3 = 长 * 宽
    mul $t4, $a2, $a3        # $t4 = 宽 * 高
    mul $t5, $a3, $a1        # $t5 = 高 * 长
    add $t6, $t3, $t4        # $t6 = 长 * 宽 + 宽 * 高
    add $t7, $t6, $t5        # $t7 = 长 * 宽 + 宽 * 高 + 高 * 长
    mul $t8, $t7, $t2        # $t8 = 2 * (长 * 宽 + 宽 * 高 + 高 * 长)

    # 打印表面积
    move $a0, $t8
    li $v0, 1
    syscall
    j exit
    
illegal:
    la $a0, error_message    # 打印"非法输入"并退出
    li $v0, 4
    syscall
    j main

exit:
    li $v0, 10               # 退出程序
    syscall
