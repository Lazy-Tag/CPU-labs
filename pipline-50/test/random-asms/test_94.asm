.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 41486
ori $0, $0, 17039
lui $1, 63507
ori $1, $1, 62759
lui $2, 61595
ori $2, $2, 10439
lui $3, 15342
ori $3, $3, 31458
lui $4, 49981
ori $4, $4, 41085
label4:
lui $5, 63703
ori $5, $5, 11876
lui $6, 35851
ori $6, $6, 149
lui $7, 2846
ori $7, $7, 30834
lui $8, 21251
ori $8, $8, 54549
lui $9, 54304
ori $9, $9, 43018
lui $10, 5953
ori $10, $10, 30361
lui $11, 15095
ori $11, $11, 8347
label3:
lui $12, 60154
ori $12, $12, 38434
lui $13, 15214
ori $13, $13, 17434
lui $14, 16944
ori $14, $14, 40792
lui $15, 23410
ori $15, $15, 13935
lui $16, 61167
ori $16, $16, 58688
lui $17, 62160
ori $17, $17, 31030
lui $18, 42101
ori $18, $18, 44041
label1:
lui $19, 15331
ori $19, $19, 64312
sw $4, data0
sw $6, data1
sw $8, data2
andi $1,$1,2
sh $6,data2($1)
addu $0,$16,$19
andi $5,$5,3
lbu $1,data0($5)
srav $6,$5,$14
mthi $0
andi $3,$3,3
sb $7,data2($3)
slti $14,$11,-13455
nor $10,$13,$16
mtlo $13
sltiu $7,$16,23116
subu $7,$10,$15
andi $8,$8,2
sh $13,data2($8)
sllv $1,$3,$15
sltiu $9,$17,4944
slt $17,$7,$4
multu $5,$16
add $16,$6,$6
andi $15,$15,2
sh $18,data1($15)
sra $3,$0,25
addu $7,$2,$19
sra $4,$3,1
slt $7,$12,$0
mtlo $13
nor $14,$4,$4
xori $12,$8,29952
sra $1,$4,27
slt $8,$11,$13
subu $15,$15,$4
addi $3,$0,3336
xori $2,$12,11874
mult $10,$7
mtlo $18
sub $6,$3,$19
label0:
or $15,$17,$0
ori $14,$3,58344
sllv $9,$2,$19
sltiu $17,$13,31549
multu $18,$10
subu $4,$14,$14
andi $13,$13,3
sb $6,data0($13)
andi $7,$7,2
sh $6,data0($7)
ori $13,$2,27971
jalr $4,$ra
andi $9,$9,3
lbu $19,data2($9)
beq $7,$31,label3
andi $18,$18,2
sh $10,data0($18)
slti $7,$10,11276
lw $17,data2
slt $4,$18,$11
bne $5,$14,label1
add $1,$2,$5
sllv $3,$9,$12
divu $0,$6
label6:
mtlo $1
sub $14,$15,$10
sll $19,$18,27
mfhi $19
mthi $6
sw $17,data0
subu $17,$19,$2
sw $10,data2
bne $3,$4,label4
andi $17,$17,3
lb $3,data0($17)
andi $5,$5,2
sh $9,data2($5)
sub $13,$15,$6
bltz $1,label3
andi $16,$16,2
lhu $3,data0($16)
sllv $19,$11,$4
srl $16,$4,21
sw $16,data1
subu $9,$31,$3
andi $19,$19,2
sh $3,data2($19)
mult $13,$14
sw $11,data0
bltz $13,label2
addiu $10,$11,7105
addi $19,$11,64483
andi $15,$15,2
sh $18,data0($15)
bgtz $4,label3
andi $6,$6,3
sb $3,data1($6)
sltiu $17,$15,16937
label2:
and $9,$16,$6
lw $2,data0
label5:
andi $1,$1,3
sb $10,data0($1)
j label3
div $19,$12
srlv $4,$2,$17
jal label1
sw $7,data0
mult $9,$4
jr $ra
slt $11,$1,$31
srlv $12,$9,$15
addu $19,$15,$15
andi $1,$1,3
sb $1,data1($1)
sra $1,$8,5
slti $11,$16,30820
srlv $19,$19,$2
andi $11,$11,2
lh $6,data2($11)
mfhi $16
ori $v0, $0, 10
syscall