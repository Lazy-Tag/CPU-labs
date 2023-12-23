.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
label0:
lui $0, 50742
ori $0, $0, 48756
lui $1, 46718
ori $1, $1, 36668
lui $2, 61614
ori $2, $2, 5501
lui $3, 19608
ori $3, $3, 31344
lui $4, 46110
ori $4, $4, 13110
lui $5, 50826
ori $5, $5, 64595
lui $6, 19673
ori $6, $6, 55115
lui $7, 5991
ori $7, $7, 26633
lui $8, 54997
ori $8, $8, 61259
lui $9, 56085
ori $9, $9, 24423
lui $10, 7104
ori $10, $10, 58355
lui $11, 28691
ori $11, $11, 44732
lui $12, 2450
ori $12, $12, 50189
lui $13, 31
ori $13, $13, 7665
lui $14, 22354
ori $14, $14, 44798
lui $15, 34523
ori $15, $15, 47665
lui $16, 7922
ori $16, $16, 5053
lui $17, 14591
ori $17, $17, 2383
lui $18, 57903
ori $18, $18, 13328
lui $19, 31854
ori $19, $19, 14025
sw $9, data0
sw $14, data1
sw $13, data2
divu $1,$6
add $19,$7,$14
andi $8,$8,2
lhu $17,data1($8)
divu $19,$5
mflo $15
addiu $8,$10,44024
sub $6,$15,$2
srav $19,$15,$8
div $14,$0
sltu $3,$18,$16
sll $9,$13,4
sll $5,$19,4
subu $2,$18,$2
or $16,$6,$7
addi $1,$5,14137
sltiu $15,$2,8128
addu $0,$6,$19
addu $18,$19,$16
addu $3,$7,$7
srl $4,$5,30
andi $9,$9,3
sb $15,data1($9)
sw $11,data2
andi $6,$6,2
lhu $5,data2($6)
slt $0,$0,$18
mult $16,$8
andi $15,$15,2
lh $1,data0($15)
mfhi $8
xor $5,$3,$3
subu $12,$18,$13
label5:
slt $0,$5,$5
andi $7,$7,3
lb $18,data1($7)
sltu $12,$1,$15
mflo $4
label4:
lw $18,data0
sra $7,$2,23
srlv $16,$4,$1
sw $10,data1
sw $1,data0
add $0,$12,$6
srlv $14,$5,$3
addu $6,$18,$2
jal label4
multu $13,$12
mfhi $7
srav $2,$13,$9
label6:
mthi $7
addiu $8,$0,60998
subu $19,$15,$8
multu $8,$7
slti $11,$4,-26635
slt $8,$6,$19
addi $13,$10,58059
andi $13,$13,3
lbu $2,data2($13)
multu $10,$15
lw $18,data0
lui $10,22092
j label0
andi $8,$8,2
lh $12,data1($8)
bne $13,$17,label1
andi $18,$18,2
lh $4,data0($18)
andi $6,$6,3
sb $14,data2($6)
mfhi $19
lui $2,17504
andi $8,$3,36770
srav $6,$6,$10
and $17,$15,$2
div $3,$15
mtlo $6
sub $17,$2,$2
label2:
slt $17,$0,$11
ori $17,$12,50095
andi $17,$17,2
lhu $3,data1($17)
andi $16,$16,3
lbu $6,data1($16)
andi $18,$18,2
lhu $9,data2($18)
divu $14,$14
nor $8,$18,$3
sllv $5,$31,$7
andi $10,$10,3
lbu $4,data1($10)
mfhi $14
jr $ra
label1:
or $1,$12,$2
bgez $7,label6
addiu $17,$0,31550
slti $8,$2,-7772
mflo $9
xori $7,$12,43078
sltiu $17,$18,26245
addi $17,$2,26289
xor $7,$19,$31
sll $19,$11,26
sllv $6,$6,$18
j label1
label3:
andi $5,$5,2
lh $1,data2($5)
beq $7,$6,label2
slt $12,$14,$17
srlv $18,$5,$14
sub $9,$17,$10
jal label6
sub $19,$0,$2
ori $0,$18,12568
ori $v0, $0, 10
syscall