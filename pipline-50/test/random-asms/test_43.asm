.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 63046
ori $0, $0, 50556
lui $1, 32490
ori $1, $1, 64467
lui $2, 58195
ori $2, $2, 59182
lui $3, 38628
label3:
ori $3, $3, 13364
lui $4, 2753
ori $4, $4, 46700
lui $5, 49747
label0:
ori $5, $5, 54607
lui $6, 5114
ori $6, $6, 50837
lui $7, 55039
label5:
ori $7, $7, 4500
lui $8, 50948
ori $8, $8, 44727
lui $9, 27409
ori $9, $9, 26218
lui $10, 35649
ori $10, $10, 24407
lui $11, 779
ori $11, $11, 26851
label4:
lui $12, 53775
ori $12, $12, 12206
lui $13, 8034
ori $13, $13, 36679
lui $14, 63918
ori $14, $14, 51747
lui $15, 10757
ori $15, $15, 40930
lui $16, 54457
ori $16, $16, 17036
lui $17, 29982
ori $17, $17, 6184
lui $18, 6258
ori $18, $18, 43148
lui $19, 14833
ori $19, $19, 51611
sw $16, data0
sw $14, data1
sw $11, data2
andi $14,$14,3
sb $2,data1($14)
mfhi $11
andi $14,$14,2
lhu $2,data0($14)
mflo $5
sltu $0,$3,$0
sllv $19,$8,$2
andi $11,$11,3
lbu $7,data1($11)
subu $5,$15,$0
mult $15,$11
div $31,$14
sll $2,$7,23
label6:
mthi $3
sllv $18,$6,$2
and $0,$14,$8
label1:
mthi $0
andi $10,$11,27040
addiu $5,$18,61595
or $11,$12,$18
mfhi $3
xor $9,$3,$15
srl $3,$2,10
lw $9,data1
lui $9,45018
srav $11,$8,$4
add $14,$11,$7
andi $3,$3,2
sh $17,data1($3)
sll $1,$31,0
sltu $11,$2,$17
divu $9,$2
sw $4,data2
div $13,$1
srl $1,$10,14
mult $8,$7
mult $17,$10
mtlo $13
sllv $7,$15,$10
slti $11,$7,13536
sra $18,$18,8
sll $1,$7,15
slti $3,$18,19453
beq $19,$0,label6
xor $13,$9,$11
bne $12,$5,label0
andi $19,$19,2
sh $16,data1($19)
sw $16,data1
mflo $5
srav $5,$13,$14
div $15,$16
andi $11,$5,36597
andi $15,$15,2
lh $6,data0($15)
bgtz $18,label2
sll $8,$11,4
srav $8,$10,$7
slti $12,$7,28181
andi $9,$18,41631
andi $11,$11,2
lh $10,data2($11)
addi $9,$17,4700
addu $17,$31,$14
andi $9,$9,2
sh $8,data2($9)
srl $12,$31,17
subu $9,$4,$18
sra $12,$1,18
and $1,$7,$19
srl $2,$4,22
andi $0,$0,3
sb $3,data0($0)
srl $15,$11,25
sw $31,data0
xor $16,$9,$31
mfhi $3
andi $19,$19,3
lb $15,data2($19)
addu $15,$8,$8
sllv $6,$0,$17
xor $10,$1,$1
j label6
addu $17,$17,$4
ori $17,$8,64042
srlv $6,$12,$16
addiu $8,$8,63158
xori $5,$7,12786
sll $16,$10,12
jr $ra
srl $4,$15,19
xori $3,$1,25550
mflo $6
j label1
xor $13,$9,$14
ori $2,$9,23877
andi $11,$11,2
lhu $6,data0($11)
add $12,$14,$9
andi $5,$5,3
sb $8,data2($5)
xor $19,$31,$19
label2:
nor $6,$11,$9
lw $6,data0
slt $8,$2,$14
mtlo $17
bne $2,$5,label1
subu $6,$8,$31
mtlo $6
andi $6,$6,2
lh $10,data1($6)
srav $13,$6,$16
ori $v0, $0, 10
syscall