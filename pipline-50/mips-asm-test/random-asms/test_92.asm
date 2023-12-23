.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 5037
ori $0, $0, 55802
lui $1, 63176
ori $1, $1, 6541
lui $2, 41642
ori $2, $2, 14116
lui $3, 47605
ori $3, $3, 57446
lui $4, 49436
ori $4, $4, 9594
lui $5, 17947
ori $5, $5, 32479
lui $6, 37784
label6:
ori $6, $6, 19108
lui $7, 16478
label5:
ori $7, $7, 60844
lui $8, 18378
ori $8, $8, 17652
lui $9, 20619
ori $9, $9, 52994
lui $10, 8097
ori $10, $10, 15349
lui $11, 55684
ori $11, $11, 62305
lui $12, 20617
ori $12, $12, 55768
lui $13, 6531
ori $13, $13, 24085
lui $14, 35770
ori $14, $14, 15844
lui $15, 43720
ori $15, $15, 40816
lui $16, 30153
ori $16, $16, 19622
lui $17, 30081
ori $17, $17, 53985
lui $18, 19205
ori $18, $18, 36332
lui $19, 49378
ori $19, $19, 10068
label1:
sw $16, data0
sw $12, data1
sw $0, data2
and $12,$3,$8
multu $11,$6
sra $18,$1,22
divu $16,$17
andi $15,$15,2
lhu $8,data1($15)
slt $13,$6,$31
sltu $6,$14,$2
andi $10,$10,2
lh $12,data1($10)
mfhi $9
lui $18,63427
srl $0,$6,5
mtlo $9
mtlo $12
sltu $15,$5,$11
sra $10,$9,14
andi $9,$9,2
lh $4,data1($9)
slti $6,$4,-32465
addiu $6,$31,19333
and $9,$14,$1
andi $1,$1,3
lbu $9,data0($1)
sw $11,data1
and $1,$17,$19
and $14,$16,$10
sll $19,$31,23
mult $14,$19
addu $10,$3,$16
andi $17,$17,3
lbu $14,data2($17)
nor $18,$0,$15
sw $18,data2
lui $19,20521
srl $18,$1,18
xor $12,$8,$12
sltu $17,$15,$8
sltiu $17,$11,27397
mflo $19
add $18,$2,$12
or $3,$1,$31
addiu $13,$5,63012
srav $10,$6,$10
sw $8,data2
bgez $1,label3
xori $13,$11,2048
slti $6,$18,-6936
addi $16,$0,40433
sltiu $17,$18,20406
or $4,$6,$0
mult $31,$5
lui $11,18419
nor $18,$4,$17
or $10,$17,$13
mthi $7
addiu $16,$9,25181
sltu $4,$6,$15
andi $17,$17,2
lhu $15,data2($17)
addiu $14,$9,14623
divu $19,$14
sw $6,data0
multu $9,$14
addiu $9,$4,43405
bltz $8,label6
and $5,$18,$14
subu $8,$15,$9
div $15,$13
xori $11,$6,17092
nor $8,$16,$4
label0:
andi $4,$4,2
sh $3,data0($4)
label2:
sltiu $12,$14,10667
mtlo $17
lw $12,data2
andi $2,$2,2
lh $13,data0($2)
div $11,$19
srl $18,$2,17
mflo $11
mthi $8
blez $17,label1
andi $14,$14,2
lhu $0,data2($14)
div $6,$17
xor $15,$10,$9
blez $16,label2
xor $1,$31,$5
add $18,$8,$4
sub $9,$0,$13
beq $12,$1,label1
and $2,$1,$4
and $3,$19,$13
mthi $18
andi $5,$12,2368
mthi $5
srlv $17,$12,$0
multu $19,$16
label4:
and $10,$31,$14
srl $13,$9,25
multu $17,$15
or $5,$11,$5
and $0,$6,$1
mtlo $7
addi $2,$10,64047
divu $31,$13
label3:
sll $8,$2,0
divu $4,$2
ori $v0, $0, 10
syscall