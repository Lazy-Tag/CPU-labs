.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 12507
label0:
ori $0, $0, 20610
lui $1, 34425
ori $1, $1, 46831
lui $2, 51726
ori $2, $2, 18776
lui $3, 21965
ori $3, $3, 844
lui $4, 47436
ori $4, $4, 8541
lui $5, 16237
ori $5, $5, 52316
lui $6, 13465
label5:
ori $6, $6, 40410
lui $7, 62459
ori $7, $7, 62225
lui $8, 63912
ori $8, $8, 60276
lui $9, 59480
label1:
ori $9, $9, 45166
lui $10, 43861
ori $10, $10, 22159
lui $11, 42453
ori $11, $11, 34753
lui $12, 59131
ori $12, $12, 49388
lui $13, 63880
ori $13, $13, 15358
lui $14, 62827
ori $14, $14, 56251
lui $15, 57006
ori $15, $15, 56365
lui $16, 34324
ori $16, $16, 27053
lui $17, 17643
label3:
ori $17, $17, 18845
lui $18, 7121
ori $18, $18, 14422
lui $19, 56902
ori $19, $19, 42585
sw $19, data0
sw $12, data1
sw $13, data2
lw $15,data1
andi $1,$1,2
lhu $16,data1($1)
andi $6,$16,8996
srlv $11,$14,$13
sltiu $5,$11,2703
sw $0,data2
div $9,$16
sltiu $19,$16,6809
sllv $10,$4,$5
andi $18,$18,2
sh $19,data0($18)
mflo $7
sltiu $6,$12,25338
subu $8,$4,$31
ori $14,$14,40508
label2:
div $7,$10
addiu $16,$17,51318
lui $11,38210
sll $12,$13,10
lw $11,data2
divu $14,$11
subu $3,$15,$2
andi $10,$10,3
sb $15,data1($10)
mtlo $14
div $5,$16
lui $2,4956
label6:
andi $4,$4,2
lh $17,data0($4)
slt $19,$1,$6
div $1,$0
srav $4,$18,$19
andi $17,$17,3
sb $14,data0($17)
multu $2,$10
andi $15,$15,2
sh $5,data0($15)
sub $10,$6,$0
divu $18,$16
lui $8,7473
andi $5,$5,2
lhu $7,data2($5)
sltu $0,$16,$1
sub $1,$1,$9
srlv $0,$17,$3
addu $11,$7,$10
srlv $1,$31,$4
bgez $16,label0
mthi $5
addi $18,$15,25604
sltiu $8,$2,16807
beq $15,$6,label3
andi $15,$15,3
sb $12,data2($15)
blez $5,label2
sltu $8,$13,$0
sw $31,data1
mtlo $1
mult $2,$11
and $16,$31,$11
div $1,$9
subu $9,$13,$11
xori $10,$13,52340
slti $13,$9,14271
srl $2,$0,12
andi $11,$11,32082
and $0,$0,$11
j label2
mtlo $4
mult $17,$5
blez $15,label2
andi $16,$11,49325
lw $8,data0
mthi $11
sllv $13,$8,$1
addiu $14,$2,63908
bltz $6,label0
srav $2,$16,$12
lui $1,15086
mfhi $10
srl $6,$14,12
sllv $7,$16,$15
or $14,$7,$18
bgtz $9,label3
andi $3,$3,3
sb $7,data2($3)
add $12,$13,$19
bgez $14,label6
ori $3,$7,57588
jal label2
lui $13,42555
mtlo $11
andi $1,$13,59769
andi $17,$1,6792
div $10,$6
mfhi $4
label4:
addu $19,$12,$6
slt $7,$15,$4
mfhi $13
multu $0,$6
andi $8,$8,3
lb $6,data1($8)
srl $13,$10,2
add $17,$6,$18
srlv $5,$2,$14
div $16,$9
mfhi $1
lui $14,45729
mflo $12
ori $v0, $0, 10
syscall