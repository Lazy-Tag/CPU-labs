.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 2290
label0:
ori $0, $0, 12458
lui $1, 24409
ori $1, $1, 35769
lui $2, 8912
ori $2, $2, 35684
label3:
lui $3, 32715
ori $3, $3, 14478
lui $4, 437
ori $4, $4, 8444
lui $5, 25458
ori $5, $5, 15008
lui $6, 24105
ori $6, $6, 16167
lui $7, 34086
ori $7, $7, 57571
lui $8, 15579
ori $8, $8, 56062
label5:
lui $9, 7046
ori $9, $9, 50439
lui $10, 18261
ori $10, $10, 27204
lui $11, 38539
ori $11, $11, 34153
lui $12, 47404
ori $12, $12, 56729
lui $13, 31002
ori $13, $13, 54890
lui $14, 23644
ori $14, $14, 49982
lui $15, 49642
ori $15, $15, 33025
lui $16, 5500
ori $16, $16, 47879
lui $17, 7214
ori $17, $17, 33704
lui $18, 6687
ori $18, $18, 10844
lui $19, 7804
ori $19, $19, 910
sw $0, data0
sw $14, data1
sw $18, data2
xor $8,$13,$3
mflo $8
nor $7,$18,$17
addiu $4,$5,52910
xor $16,$13,$11
add $18,$0,$7
andi $11,$11,3
lbu $2,data2($11)
mthi $13
xor $1,$31,$1
mult $5,$3
mult $11,$0
mtlo $11
andi $2,$2,3
lb $11,data1($2)
andi $6,$6,3
lb $11,data1($6)
andi $5,$5,2
lh $10,data0($5)
nor $11,$6,$16
label6:
addiu $2,$12,60265
nor $4,$7,$13
ori $3,$11,33806
andi $9,$9,3
lbu $7,data2($9)
lui $19,56562
subu $12,$15,$14
sw $0,data0
lw $0,data0
xori $3,$13,60320
andi $10,$10,2
lh $1,data1($10)
sll $6,$2,24
mult $13,$7
slti $11,$12,-14236
ori $10,$12,45626
lw $9,data2
addiu $5,$18,29234
ori $10,$14,58527
andi $0,$0,2
lhu $12,data2($0)
mult $6,$19
lui $15,40070
andi $10,$10,3
sb $6,data1($10)
mfhi $9
andi $19,$19,2
lhu $15,data2($19)
and $1,$12,$7
sra $5,$5,23
nor $15,$7,$3
label1:
sub $3,$6,$1
mult $19,$2
slti $13,$19,-26620
mthi $17
label2:
sltu $0,$0,$11
andi $17,$17,3
lb $7,data2($17)
add $16,$1,$19
lui $13,18937
sub $13,$16,$7
bne $0,$9,label0
or $12,$6,$5
bgtz $9,label1
srav $15,$31,$7
sltiu $17,$13,26607
sra $19,$10,9
and $12,$11,$17
blez $3,label0
mflo $4
andi $8,$18,59086
nor $9,$10,$19
mthi $15
j label3
addiu $7,$31,29425
sltiu $9,$10,24687
add $18,$4,$9
j label0
sllv $15,$16,$12
andi $6,$6,3
lb $19,data1($6)
lw $7,data1
sw $7,data0
blez $7,label1
mflo $4
bne $7,$15,label1
slti $12,$13,7211
sra $1,$6,18
mult $13,$3
label4:
lui $4,7597
srav $1,$2,$12
bne $11,$5,label3
mtlo $13
sub $7,$8,$4
srlv $0,$18,$10
mfhi $16
beq $4,$2,label0
sll $8,$12,12
lui $14,7414
srl $15,$13,12
andi $15,$15,2
sh $4,data0($15)
mthi $10
andi $17,$17,2
sh $16,data1($17)
sub $3,$8,$11
sra $15,$31,24
slti $3,$11,-28611
srlv $6,$10,$7
nor $19,$7,$15
sll $3,$18,19
and $18,$7,$12
sw $31,data2
ori $v0, $0, 10
syscall