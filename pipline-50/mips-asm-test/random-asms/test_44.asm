.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 2112
ori $0, $0, 16367
lui $1, 51657
ori $1, $1, 5567
lui $2, 32649
ori $2, $2, 49559
lui $3, 56063
ori $3, $3, 7686
lui $4, 28401
ori $4, $4, 36438
lui $5, 64715
ori $5, $5, 29220
lui $6, 55099
ori $6, $6, 51367
lui $7, 641
ori $7, $7, 44952
lui $8, 45144
ori $8, $8, 17487
lui $9, 20247
label0:
ori $9, $9, 50630
lui $10, 46229
ori $10, $10, 45722
lui $11, 30494
ori $11, $11, 21610
lui $12, 846
ori $12, $12, 47493
lui $13, 51801
ori $13, $13, 4814
lui $14, 50264
ori $14, $14, 35550
lui $15, 6119
ori $15, $15, 48769
lui $16, 9688
ori $16, $16, 29549
lui $17, 29287
ori $17, $17, 44944
label6:
lui $18, 59423
ori $18, $18, 33753
lui $19, 50525
ori $19, $19, 45518
sw $15, data0
sw $18, data1
label4:
sw $10, data2
addiu $5,$1,7738
andi $4,$4,2
lh $8,data2($4)
xor $17,$9,$10
label2:
sub $8,$4,$12
sub $11,$13,$3
andi $10,$10,2
sh $6,data1($10)
multu $13,$10
xor $6,$5,$18
andi $17,$17,3
lb $14,data2($17)
andi $14,$14,3
lb $13,data0($14)
addi $15,$6,32720
addiu $5,$6,63733
sltu $3,$14,$5
mfhi $7
mfhi $2
label3:
mtlo $1
srav $14,$8,$11
sltiu $2,$16,30352
add $9,$6,$17
addi $7,$19,26687
or $13,$6,$15
slt $1,$31,$31
srl $5,$4,25
andi $10,$13,32196
andi $15,$15,3
sb $18,data2($15)
ori $10,$12,8777
andi $4,$4,3
lbu $1,data2($4)
mtlo $17
label5:
sltiu $17,$4,21971
addu $4,$14,$5
srav $19,$6,$17
mflo $15
slti $9,$6,-30752
divu $13,$12
mtlo $6
andi $5,$5,2
lhu $3,data1($5)
nor $12,$1,$9
andi $15,$15,2
sh $7,data1($15)
sra $11,$13,25
srl $15,$11,25
sltiu $14,$7,29908
andi $4,$4,3
lbu $17,data1($4)
andi $13,$13,2
lhu $17,data1($13)
srav $13,$17,$2
sltiu $13,$1,7956
beq $4,$3,label4
multu $5,$12
sra $13,$12,26
sltiu $3,$13,16092
subu $19,$1,$4
addi $11,$16,34980
xor $17,$4,$13
xori $11,$9,34778
addi $1,$2,21027
andi $1,$1,3
lbu $9,data0($1)
add $15,$5,$4
mtlo $1
xori $13,$9,18359
andi $17,$17,3
sb $4,data0($17)
sllv $18,$12,$5
beq $9,$12,label1
sll $19,$14,11
sltiu $16,$10,19769
beq $2,$6,label6
nor $19,$6,$6
div $9,$4
slti $8,$3,9395
srav $7,$10,$0
or $6,$16,$5
addi $19,$3,24149
andi $8,$16,11426
mtlo $19
addi $5,$10,41477
mtlo $2
andi $16,$16,2
sh $16,data1($16)
bgez $16,label1
nor $4,$6,$11
mult $0,$11
label1:
mult $18,$19
sw $0,data2
multu $0,$3
mflo $11
addu $16,$14,$0
slti $11,$31,6031
bltz $19,label6
slt $3,$15,$6
slti $4,$5,24289
andi $14,$14,2
lhu $1,data0($14)
srl $5,$14,22
andi $3,$3,2
sh $11,data0($3)
sll $6,$15,1
jr $ra
xor $6,$2,$7
addi $18,$4,65524
sw $19,data2
slti $19,$16,12692
sllv $8,$2,$10
andi $2,$2,3
lbu $17,data0($2)
multu $9,$16
mult $16,$0
ori $v0, $0, 10
syscall