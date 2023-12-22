.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 48788
ori $0, $0, 40244
lui $1, 29633
ori $1, $1, 65502
lui $2, 22183
ori $2, $2, 54776
lui $3, 43406
ori $3, $3, 63545
lui $4, 37640
ori $4, $4, 22975
lui $5, 20726
ori $5, $5, 27942
lui $6, 35970
ori $6, $6, 1555
lui $7, 6770
ori $7, $7, 45484
lui $8, 22740
ori $8, $8, 30615
lui $9, 28448
ori $9, $9, 27271
lui $10, 56954
ori $10, $10, 13152
lui $11, 31596
ori $11, $11, 4380
lui $12, 22037
ori $12, $12, 9664
lui $13, 50031
ori $13, $13, 39435
lui $14, 14021
ori $14, $14, 63637
lui $15, 1242
label4:
ori $15, $15, 49464
lui $16, 15975
ori $16, $16, 63993
label2:
lui $17, 38739
ori $17, $17, 56838
lui $18, 7714
ori $18, $18, 3885
lui $19, 27223
ori $19, $19, 62374
sw $19, data0
sw $5, data1
sw $6, data2
or $17,$15,$17
label6:
divu $0,$11
sll $7,$10,13
or $12,$4,$17
sll $4,$31,1
and $2,$31,$8
xor $5,$2,$7
mtlo $17
add $9,$16,$15
subu $3,$13,$16
slti $8,$18,8379
slti $16,$16,25862
div $2,$4
sllv $9,$0,$0
addiu $19,$6,45838
andi $5,$5,3
sb $4,data0($5)
srlv $6,$18,$8
sllv $17,$14,$31
mfhi $12
sra $18,$17,21
and $2,$19,$19
label1:
slti $11,$14,11013
or $0,$19,$3
andi $3,$3,3
sb $10,data0($3)
slt $1,$11,$10
addiu $3,$6,1424
andi $6,$10,8246
sra $16,$5,29
mthi $7
mult $13,$4
lw $12,data2
xor $10,$9,$6
add $2,$1,$10
slti $4,$0,-10113
srav $5,$8,$0
sltu $6,$13,$11
addiu $12,$6,22946
andi $11,$11,2
lh $14,data0($11)
sltiu $10,$4,17128
mtlo $6
mult $3,$14
sra $5,$14,2
and $4,$4,$16
bltz $5,label4
srlv $12,$31,$19
or $11,$4,$9
sll $17,$14,19
bgez $19,label5
srlv $12,$1,$7
srl $8,$12,21
slt $12,$0,$17
beq $10,$18,label6
andi $3,$3,2
lhu $8,data2($3)
divu $8,$3
label0:
j label1
xori $2,$9,34447
jal label1
addu $7,$8,$9
jal label6
andi $8,$8,3
sb $0,data2($8)
mflo $14
mtlo $17
srl $1,$5,25
sll $6,$11,0
mthi $17
lw $4,data2
sllv $8,$3,$31
mult $6,$4
srav $0,$3,$11
addiu $6,$9,52654
andi $9,$9,2
sh $9,data0($9)
label3:
xor $11,$3,$13
bne $9,$1,label5
sll $6,$0,19
sll $14,$17,20
andi $9,$9,3
sb $7,data0($9)
jr $ra
sra $2,$19,20
addi $11,$11,27441
andi $2,$7,58815
beq $4,$15,label5
sltu $12,$10,$4
andi $0,$0,3
lb $14,data0($0)
beq $4,$10,label1
slti $14,$7,-10313
mflo $15
jal label5
mflo $3
lw $15,data1
bltz $14,label4
xor $1,$11,$11
sltu $9,$12,$8
slt $13,$11,$9
sub $11,$17,$14
lw $10,data1
label5:
multu $9,$8
lui $17,13245
nor $7,$7,$10
andi $14,$14,3
lbu $4,data1($14)
sub $14,$12,$8
ori $v0, $0, 10
syscall