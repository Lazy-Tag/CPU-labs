.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
label2:
lui $0, 34937
ori $0, $0, 62382
lui $1, 32080
ori $1, $1, 40534
lui $2, 24322
ori $2, $2, 48358
lui $3, 14835
ori $3, $3, 26919
lui $4, 58819
ori $4, $4, 12685
lui $5, 52548
ori $5, $5, 47784
lui $6, 32518
ori $6, $6, 20812
lui $7, 50925
ori $7, $7, 12709
lui $8, 29579
ori $8, $8, 54099
lui $9, 1852
ori $9, $9, 56912
lui $10, 26647
ori $10, $10, 13892
lui $11, 3361
ori $11, $11, 3116
lui $12, 39853
ori $12, $12, 25334
lui $13, 27144
label0:
ori $13, $13, 17224
lui $14, 53891
ori $14, $14, 19167
lui $15, 29819
ori $15, $15, 24706
lui $16, 29232
ori $16, $16, 44357
lui $17, 60749
ori $17, $17, 53158
lui $18, 6264
ori $18, $18, 32866
lui $19, 55768
ori $19, $19, 50479
sw $13, data0
sw $12, data1
sw $15, data2
srav $9,$10,$18
subu $7,$6,$14
sra $3,$11,26
addu $11,$11,$12
sw $3,data1
andi $15,$15,3
sb $17,data1($15)
subu $9,$17,$5
srlv $14,$14,$18
andi $13,$13,2
sh $17,data0($13)
mfhi $0
div $1,$3
andi $8,$8,2
lhu $3,data1($8)
lw $3,data0
nor $5,$16,$1
sub $6,$7,$15
or $1,$2,$5
nor $7,$4,$5
mthi $16
slti $17,$7,-28557
andi $1,$1,3
lbu $6,data2($1)
sllv $15,$2,$5
srlv $1,$3,$3
sw $11,data2
and $1,$4,$31
andi $0,$0,3
lb $16,data1($0)
mult $15,$6
srl $8,$13,6
lw $16,data0
xori $19,$12,813
andi $19,$15,837
and $4,$6,$15
slt $17,$12,$31
andi $0,$0,2
lh $18,data1($0)
add $8,$14,$12
sll $18,$16,25
sllv $5,$13,$18
addu $8,$11,$19
sll $5,$18,4
and $17,$2,$15
addu $13,$9,$7
mult $19,$19
bgtz $4,label3
slti $12,$15,-23881
bne $0,$11,label0
andi $3,$3,3
lb $14,data0($3)
srlv $19,$7,$10
divu $13,$19
multu $31,$15
andi $9,$9,3
lb $1,data1($9)
label1:
div $0,$16
sra $18,$14,26
multu $10,$9
sllv $2,$13,$16
xor $3,$0,$1
andi $8,$8,2
lhu $2,data2($8)
jal label3
label3:
slt $14,$12,$15
srlv $14,$1,$10
xor $0,$0,$31
srl $2,$1,22
j label2
label5:
sw $7,data0
jal label2
nor $2,$13,$3
xor $14,$11,$8
srlv $11,$2,$6
sll $8,$8,2
srav $2,$13,$16
lui $11,32052
blez $1,label4
div $2,$11
xori $4,$6,12850
mthi $15
sllv $5,$2,$10
mthi $8
div $17,$2
xori $15,$14,36989
nor $10,$1,$10
addiu $12,$8,38877
add $7,$1,$5
mtlo $11
slti $4,$13,31452
bltz $13,label6
xori $8,$19,24643
label4:
j label0
andi $9,$9,2
lh $12,data1($9)
xor $9,$2,$16
addi $5,$17,25868
andi $9,$9,3
lbu $14,data1($9)
lui $2,53141
lw $3,data1
lui $14,56157
mflo $7
label6:
mflo $13
xor $1,$10,$13
jal label1
xori $16,$6,11681
jr $ra
andi $14,$14,2
lhu $13,data1($14)
ori $8,$11,7180
ori $v0, $0, 10
syscall