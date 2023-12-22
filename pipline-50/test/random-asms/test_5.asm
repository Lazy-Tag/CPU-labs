.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 232
ori $0, $0, 61289
lui $1, 2712
ori $1, $1, 10944
lui $2, 53864
ori $2, $2, 24692
lui $3, 50469
ori $3, $3, 53217
lui $4, 42261
ori $4, $4, 14895
lui $5, 26672
ori $5, $5, 14386
lui $6, 53690
ori $6, $6, 11232
lui $7, 17668
ori $7, $7, 55482
lui $8, 34306
ori $8, $8, 62461
lui $9, 20566
ori $9, $9, 28484
lui $10, 53761
ori $10, $10, 37197
lui $11, 8117
label6:
ori $11, $11, 17346
lui $12, 19931
ori $12, $12, 43867
lui $13, 58831
ori $13, $13, 31846
lui $14, 13796
ori $14, $14, 2201
lui $15, 34054
ori $15, $15, 52065
lui $16, 6515
ori $16, $16, 20600
lui $17, 21864
ori $17, $17, 4552
lui $18, 6543
ori $18, $18, 10054
lui $19, 38531
ori $19, $19, 31060
sw $0, data0
sw $6, data1
sw $13, data2
slt $4,$16,$13
andi $10,$10,2
lhu $11,data0($10)
srlv $2,$31,$13
xor $19,$18,$14
sra $1,$4,10
sll $6,$14,21
sllv $9,$31,$31
sra $0,$0,23
srlv $19,$11,$11
slt $7,$15,$6
srlv $16,$11,$1
label0:
addiu $8,$1,19072
nor $0,$8,$17
srlv $3,$8,$0
xori $19,$19,53576
div $0,$8
xori $14,$8,30729
lui $12,27102
andi $12,$7,42595
mflo $12
multu $18,$6
label2:
sll $9,$17,2
or $10,$16,$14
add $5,$0,$16
label1:
addu $8,$19,$1
sll $9,$17,13
andi $6,$16,53738
addi $13,$31,29244
xor $6,$17,$3
or $8,$0,$9
sll $8,$16,5
andi $14,$14,2
lh $18,data0($14)
xori $7,$1,9563
slt $12,$5,$19
sub $0,$1,$12
mfhi $2
xor $9,$16,$0
or $10,$4,$3
andi $6,$6,2
sh $14,data0($6)
div $11,$16
mflo $3
addu $14,$31,$3
sw $1,data1
srl $8,$1,0
andi $5,$5,2
lhu $4,data2($5)
andi $1,$19,16329
mtlo $14
ori $8,$5,30734
addi $7,$10,22579
bgtz $1,label0
add $14,$5,$18
andi $4,$4,2
lhu $15,data1($4)
and $7,$17,$5
mult $10,$0
andi $11,$11,2
sh $6,data2($11)
sll $8,$31,8
add $4,$7,$2
andi $11,$11,2
lh $6,data1($11)
sw $12,data0
sltiu $14,$8,17184
j label6
div $0,$4
mult $19,$5
subu $2,$13,$16
jr $ra
divu $2,$0
multu $18,$2
sw $13,data1
or $11,$2,$8
andi $3,$3,2
lhu $6,data1($3)
label4:
lui $0,2368
slt $8,$12,$14
mfhi $0
label3:
sltu $13,$10,$12
multu $4,$11
div $13,$12
add $7,$18,$19
sltiu $11,$16,25106
bgtz $11,label5
addi $7,$3,59651
sra $13,$2,9
mthi $4
addiu $5,$11,42548
or $12,$0,$11
sll $0,$5,11
multu $9,$5
and $17,$18,$5
div $14,$19
mfhi $15
label5:
srav $4,$18,$13
sw $4,data1
bne $13,$18,label0
addi $17,$4,24675
sll $12,$14,22
andi $15,$15,3
sb $12,data1($15)
div $18,$13
ori $19,$14,59755
xori $9,$16,42752
and $14,$31,$17
sra $13,$12,10
ori $v0, $0, 10
syscall