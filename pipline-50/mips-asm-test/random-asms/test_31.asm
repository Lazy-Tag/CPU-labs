.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 62795
ori $0, $0, 22742
lui $1, 19967
label5:
ori $1, $1, 45960
lui $2, 4419
ori $2, $2, 33883
lui $3, 22517
ori $3, $3, 4805
label2:
lui $4, 13906
ori $4, $4, 53272
lui $5, 20987
ori $5, $5, 17689
lui $6, 41119
ori $6, $6, 43996
lui $7, 33273
ori $7, $7, 21088
lui $8, 4081
ori $8, $8, 60565
lui $9, 19356
ori $9, $9, 5376
lui $10, 25926
ori $10, $10, 53258
label1:
lui $11, 29935
ori $11, $11, 28077
lui $12, 42626
ori $12, $12, 40755
lui $13, 51364
ori $13, $13, 56091
lui $14, 25033
ori $14, $14, 45710
lui $15, 20023
ori $15, $15, 10956
lui $16, 760
ori $16, $16, 36224
lui $17, 30190
ori $17, $17, 41881
lui $18, 41453
ori $18, $18, 54313
lui $19, 7680
ori $19, $19, 419
sw $2, data0
label4:
sw $11, data1
sw $4, data2
mfhi $6
andi $8,$16,43543
mtlo $16
div $19,$2
mfhi $19
div $15,$9
andi $3,$3,3
lb $14,data0($3)
sw $18,data2
mflo $15
sltu $13,$1,$8
andi $18,$18,3
sb $12,data0($18)
lw $14,data2
srlv $2,$3,$11
sra $14,$10,2
sub $18,$11,$13
label3:
andi $11,$11,3
lb $13,data2($11)
mtlo $14
and $19,$6,$17
sllv $0,$8,$4
multu $14,$16
mtlo $17
and $15,$11,$11
sllv $7,$14,$14
sub $5,$3,$19
andi $2,$2,2
lh $0,data2($2)
andi $10,$10,2
lhu $9,data0($10)
sll $2,$7,22
andi $15,$15,2
sh $0,data2($15)
andi $19,$19,2
lhu $4,data0($19)
sllv $2,$9,$19
sltu $0,$8,$3
andi $4,$4,2
lhu $7,data0($4)
sub $16,$5,$6
divu $2,$19
slt $2,$14,$7
andi $7,$7,3
lb $19,data0($7)
andi $4,$13,60769
andi $15,$15,3
lb $0,data1($15)
slt $14,$5,$4
label6:
andi $9,$9,3
sb $18,data1($9)
addiu $14,$1,54512
andi $12,$12,3
lbu $17,data0($12)
sllv $10,$10,$8
subu $14,$11,$11
sll $10,$2,18
j label3
lui $2,37544
srl $5,$31,12
addu $10,$15,$17
jal label4
mthi $15
jal label6
slt $19,$1,$9
andi $0,$31,48709
sllv $3,$3,$16
addi $18,$5,57537
sra $10,$31,24
srl $1,$16,21
or $3,$16,$3
add $1,$4,$7
andi $17,$17,2
sh $1,data2($17)
addiu $14,$1,3984
sw $16,data1
mtlo $18
sltiu $4,$18,18055
andi $10,$10,2
sh $9,data1($10)
ori $7,$1,40745
andi $15,$15,3
lb $2,data1($15)
and $1,$9,$5
mult $3,$5
xor $16,$7,$18
mult $8,$11
xor $5,$10,$17
divu $6,$1
andi $3,$3,2
sh $10,data1($3)
jr $ra
label0:
addi $6,$4,44292
slt $12,$19,$17
sw $13,data2
xori $0,$0,8463
bne $17,$10,label4
srav $4,$0,$15
addu $5,$11,$9
sllv $2,$11,$10
mfhi $19
j label3
mult $7,$3
andi $17,$17,3
lbu $19,data0($17)
ori $4,$2,14474
mult $8,$7
lui $8,3519
add $16,$3,$18
sw $2,data1
beq $14,$8,label6
or $8,$13,$17
xori $6,$9,55602
mfhi $10
jal label1
lui $1,35668
add $5,$7,$2
ori $v0, $0, 10
syscall