.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 14493
ori $0, $0, 3110
lui $1, 59200
ori $1, $1, 56792
lui $2, 57235
ori $2, $2, 28572
lui $3, 53128
ori $3, $3, 28827
lui $4, 51385
ori $4, $4, 23436
lui $5, 56952
ori $5, $5, 44881
lui $6, 22034
ori $6, $6, 33336
lui $7, 4653
ori $7, $7, 49066
lui $8, 23954
ori $8, $8, 65228
lui $9, 1438
ori $9, $9, 38201
lui $10, 3951
ori $10, $10, 33091
label2:
lui $11, 4773
ori $11, $11, 23030
lui $12, 23291
ori $12, $12, 602
lui $13, 40999
ori $13, $13, 29138
lui $14, 24895
ori $14, $14, 24925
lui $15, 8680
ori $15, $15, 55794
lui $16, 37049
ori $16, $16, 55467
lui $17, 21953
ori $17, $17, 30832
lui $18, 51255
label6:
ori $18, $18, 57213
lui $19, 55208
ori $19, $19, 21030
sw $3, data0
sw $8, data1
sw $0, data2
mfhi $16
xori $1,$16,37724
sub $4,$17,$10
sltu $5,$2,$0
addiu $16,$3,38962
andi $13,$13,2
lh $7,data0($13)
add $2,$0,$2
lw $1,data0
srlv $7,$2,$9
andi $14,$14,3
lbu $4,data0($14)
andi $16,$4,4948
mtlo $5
andi $11,$2,2358
sll $10,$9,24
addi $16,$0,62149
srl $15,$11,23
srlv $18,$17,$13
sltu $4,$10,$12
mult $10,$15
andi $6,$6,3
sb $16,data0($6)
andi $7,$15,27127
div $16,$5
xori $2,$12,50975
slti $9,$12,-31091
div $0,$3
andi $16,$16,2
lhu $2,data2($16)
mthi $13
andi $5,$5,2
sh $10,data0($5)
label4:
multu $12,$9
multu $17,$9
andi $0,$0,2
sh $18,data2($0)
mtlo $4
addu $8,$17,$9
addu $9,$8,$19
xor $16,$10,$2
srlv $18,$14,$15
multu $15,$8
subu $10,$12,$7
andi $6,$6,3
lb $6,data0($6)
lw $11,data0
sra $9,$7,24
andi $7,$7,2
sh $4,data2($7)
label0:
andi $6,$6,3
lbu $15,data2($6)
subu $7,$0,$11
andi $15,$15,2
lhu $19,data1($15)
addi $8,$2,57731
or $12,$1,$7
bne $1,$3,label5
sub $15,$10,$10
andi $15,$15,3
lb $5,data2($15)
bne $9,$18,label4
label5:
sll $9,$18,10
xori $7,$9,54655
j label6
addu $7,$2,$16
sltu $13,$17,$0
xori $0,$18,12871
andi $15,$15,3
sb $12,data1($15)
slti $9,$6,-23459
label3:
slti $10,$17,826
blez $1,label2
andi $11,$15,5379
srl $13,$6,17
lui $17,54551
sltiu $13,$1,8258
srlv $13,$16,$13
addiu $6,$12,8546
sub $19,$11,$18
sw $7,data1
andi $9,$12,40290
xor $2,$18,$11
andi $4,$5,45247
bgez $16,label3
andi $10,$10,3
sb $8,data1($10)
sltiu $14,$18,25816
or $4,$7,$7
blez $14,label1
srav $6,$18,$7
srlv $19,$6,$2
sllv $4,$5,$2
div $12,$19
divu $31,$18
xor $9,$19,$9
addu $14,$7,$6
andi $10,$10,2
lhu $14,data2($10)
sltiu $3,$12,10049
sra $16,$9,4
mult $13,$2
mult $13,$18
sllv $6,$4,$8
blez $31,label6
divu $31,$7
bne $6,$0,label3
label1:
srl $6,$18,25
ori $13,$31,54908
bltz $5,label5
ori $2,$0,48409
andi $13,$4,52781
srlv $1,$11,$12
subu $5,$11,$5
ori $v0, $0, 10
syscall