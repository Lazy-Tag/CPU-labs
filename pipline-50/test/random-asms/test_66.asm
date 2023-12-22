.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 15914
ori $0, $0, 2673
lui $1, 13112
ori $1, $1, 53199
lui $2, 10833
ori $2, $2, 63642
lui $3, 1910
ori $3, $3, 48834
lui $4, 34956
ori $4, $4, 53573
lui $5, 52479
ori $5, $5, 6354
lui $6, 42441
ori $6, $6, 32519
lui $7, 18804
ori $7, $7, 30135
lui $8, 9263
ori $8, $8, 61009
lui $9, 35921
ori $9, $9, 48106
lui $10, 3230
ori $10, $10, 43327
lui $11, 25733
ori $11, $11, 22256
lui $12, 34341
ori $12, $12, 48984
lui $13, 62631
ori $13, $13, 19050
lui $14, 58792
ori $14, $14, 43504
label3:
label4:
lui $15, 35852
ori $15, $15, 45905
lui $16, 2681
ori $16, $16, 7127
lui $17, 55976
ori $17, $17, 11174
lui $18, 60122
ori $18, $18, 11269
lui $19, 28978
ori $19, $19, 12490
sw $14, data0
sw $16, data1
sw $12, data2
sltiu $16,$2,21326
mfhi $13
mfhi $19
xori $5,$7,57965
sra $18,$1,4
sw $8,data2
addiu $11,$3,8713
mthi $18
sllv $8,$19,$0
mthi $1
addu $9,$5,$13
mtlo $5
xori $12,$18,52549
slt $14,$3,$8
andi $7,$7,3
lbu $11,data0($7)
andi $4,$4,3
lb $2,data1($4)
andi $9,$9,2
sh $0,data2($9)
mult $17,$3
andi $9,$9,2
lhu $11,data0($9)
addiu $9,$3,23455
andi $7,$7,2
sh $14,data2($7)
sll $14,$10,1
lw $8,data0
mtlo $16
divu $18,$8
xor $15,$18,$12
andi $2,$2,2
lhu $16,data1($2)
srlv $19,$15,$5
div $2,$11
addi $9,$13,58617
add $12,$10,$17
andi $14,$14,3
lbu $11,data2($14)
andi $3,$3,2
lh $2,data0($3)
andi $9,$0,44542
andi $15,$7,36204
mflo $5
mflo $19
div $0,$10
andi $16,$16,3
lbu $17,data1($16)
div $19,$2
andi $5,$14,19733
andi $9,$9,3
lbu $0,data2($9)
subu $14,$4,$10
xori $4,$10,12209
sll $18,$31,5
sll $7,$2,3
srl $6,$0,30
or $16,$13,$13
beq $0,$1,label4
mthi $6
beq $31,$12,label6
nor $7,$15,$11
sltiu $3,$4,13134
label1:
label6:
sltiu $0,$8,10915
and $9,$16,$2
bgtz $4,label6
srav $2,$1,$0
mfhi $17
andi $14,$14,2
lh $7,data2($14)
label5:
andi $6,$6,2
lh $0,data1($6)
and $11,$8,$5
lui $9,19288
beq $17,$17,label5
andi $13,$13,2
lhu $0,data2($13)
divu $15,$17
bltz $9,label2
ori $10,$8,7585
blez $3,label6
lw $14,data1
sltiu $5,$11,11573
jalr $16,$ra
sub $8,$16,$31
mult $8,$5
addiu $18,$5,20853
sllv $15,$3,$3
sltu $1,$7,$31
sll $6,$3,10
andi $8,$8,3
lbu $3,data0($8)
lui $4,724
srav $18,$1,$14
sllv $8,$8,$2
divu $7,$1
mflo $13
andi $10,$10,3
lbu $7,data2($10)
div $31,$19
label0:
div $18,$7
bgez $9,label4
srl $15,$1,20
addu $4,$6,$31
label2:
div $1,$17
srl $12,$12,0
subu $9,$5,$19
div $6,$6
bgtz $17,label0
andi $6,$14,14494
bne $15,$13,label2
lw $10,data0
srl $10,$9,22
sw $19,data2
andi $2,$2,2
lh $8,data2($2)
ori $v0, $0, 10
syscall