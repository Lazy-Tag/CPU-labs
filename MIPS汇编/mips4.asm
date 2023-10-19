.data
D:     .space 4000        # 用于存储D数组的内存空间
a: 2
b: 3

.text
.globl main

main:
    # 读取a和b的值
    lw $s0, a           # 将a的值加载到$s0
    lw $s1, b           # 将b的值加载到$s1
    
    # 初始化i和j
    li $t0, 0           # i = 0
    li $t1, 0           # j = 0

outer_loop:
    # 检查循环结束条件 i < a
    bge $t0, $s0, exit   # 如果i >= a，退出循环
    
    # 重置j为0
    li $t1, 0           # j = 0
    
inner_loop:
    # 检查循环结束条件 j < b
    bge $t1, $s1, inner_loop_end  # 如果j >= b，跳出内层循环
    
    # 计算 D[4 * j] = i + j
    add $t2, $t0, $t1    # $t2 = i + j
    sll $t3, $t1, 2      # $t3 = 4 * j
    add $t3, $s2, $t3    # $t3 = &D[4 * j]
    sw $t2, 0($t3)       # D[4 * j] = i + j
    
    # 更新j
    addi $t1, $t1, 1     # j++
    j inner_loop
    
inner_loop_end:
    # 更新i
    addi $t0, $t0, 1     # i++
    j outer_loop

exit:
    # 程序退出
    li $v0, 10
    syscall
