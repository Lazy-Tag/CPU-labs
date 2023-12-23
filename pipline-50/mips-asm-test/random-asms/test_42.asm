.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 36807
ori $0, $0, 24669
lui $1, 39940
ori $1, $1, 33598
lui $2, 43367
ori $2, $2, 53353
label2:
lui $3, 21952
ori $3, $3, 29021
lui $4, 54513
ori $4, $4, 39341
lui $5, 46230
ori $5, $5, 39101
lui $6, 16402
ori $6, $6, 11020
lui $7, 16277
ori $7, $7, 9726
lui $8, 28619
ori $8, $8, 63280
lui $9, 57560
ori $9, $9, 18562
lui $10, 9578
ori $10, $10, 38955
lui $11, 10483
ori $11, $11, 43940
lui $12, 36300
ori $12, $12, 52233
lui $13, 47008
ori $13, $13, 42479
lui $14, 54878
ori $14, $14, 13523
lui $15, 10661
ori $15, $15, 18547
lui $16, 28203
ori $16, $16, 3513
lui $17, 22904
ori $17, $17, 27840
lui $18, 7198
ori $18, $18, 51302
lui $19, 56319
ori $19, $19, 24104
sw $5, data0
sw $14, data1
sw $14, data2
sll $16,$6,21
slti $9,$19,-27725
srav $12,$6,$8
xori $3,$19,21383
ori $16,$9,24387
srlv $14,$8,$17
multu $7,$4
mult $1,$16
srlv $10,$11,$4
sltu $1,$1,$16
sltu $16,$9,$15
srlv $18,$4,$16
div $5,$11
sllv $4,$17,$5
andi $6,$6,3
lb $15,data1($6)
label6:
sltu $18,$11,$14
andi $10,$10,2
sh $6,data2($10)
srlv $4,$18,$14
andi $14,$14,3
lbu $17,data0($14)
nor $15,$10,$16
nor $17,$14,$1
andi $5,$5,3
lb $1,data1($5)
xor $8,$11,$19
sll $17,$4,22
andi $13,$13,3
lbu $18,data2($13)
label1:
srl $18,$5,17
or $6,$3,$17
add $5,$17,$14
slti $14,$14,-14212
andi $19,$10,39372
mthi $14
andi $2,$2,2
lh $1,data1($2)
lui $3,50956
sllv $5,$17,$16
subu $3,$10,$18
andi $14,$14,3
lb $15,data1($14)
sub $15,$8,$19
label5:
srl $14,$4,17
andi $19,$17,41187
slti $16,$0,884
slt $13,$15,$18
lui $18,52986
add $1,$31,$4
andi $7,$7,2
lhu $16,data0($7)
label0:
mflo $3
andi $8,$8,2
sh $9,data0($8)
subu $6,$3,$7
andi $17,$17,3
lbu $5,data2($17)
or $4,$19,$18
jalr $1,$ra
sltiu $6,$0,20137
sltiu $6,$17,23536
andi $15,$12,9195
jal label6
mfhi $13
sllv $6,$2,$12
div $18,$2
multu $3,$3
bne $1,$3,label6
andi $0,$2,8932
slti $5,$4,6255
j label2
or $5,$5,$10
mtlo $11
srav $15,$11,$8
mult $10,$2
multu $12,$8
multu $12,$1
jal label6
subu $8,$5,$0
xori $3,$14,3526
bltz $7,label5
mflo $2
addi $18,$11,62796
lui $4,36382
label3:
andi $3,$3,2
sh $0,data2($3)
addu $8,$18,$15
addiu $11,$15,29247
srlv $2,$5,$2
sltu $5,$1,$8
addi $17,$15,38364
andi $19,$19,2
lhu $13,data1($19)
addu $3,$16,$14
andi $16,$16,2
sh $4,data0($16)
addiu $0,$3,38141
add $18,$15,$9
andi $8,$18,40893
or $18,$2,$0
jr $ra
nor $15,$31,$6
andi $4,$4,3
sb $6,data0($4)
mflo $15
sltiu $7,$13,29940
addiu $6,$12,58903
sltu $10,$1,$11
xori $6,$2,13884
label4:
bgez $11,label0
andi $8,$8,3
lb $6,data0($8)
bgez $16,label3
srlv $15,$12,$17
ori $v0, $0, 10
syscall