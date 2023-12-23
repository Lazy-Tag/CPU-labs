.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
label5:
lui $0, 55075
ori $0, $0, 39853
lui $1, 20807
ori $1, $1, 27738
lui $2, 16227
ori $2, $2, 25598
lui $3, 63794
ori $3, $3, 21469
lui $4, 23020
ori $4, $4, 58249
lui $5, 60498
ori $5, $5, 25747
lui $6, 20776
ori $6, $6, 17429
lui $7, 17669
ori $7, $7, 4971
label0:
lui $8, 54456
ori $8, $8, 48406
lui $9, 1184
ori $9, $9, 55547
lui $10, 65135
ori $10, $10, 19744
lui $11, 36464
ori $11, $11, 51703
lui $12, 13061
ori $12, $12, 36629
lui $13, 5251
ori $13, $13, 32652
lui $14, 14827
ori $14, $14, 13721
lui $15, 13728
label6:
ori $15, $15, 62693
lui $16, 6256
ori $16, $16, 59528
lui $17, 36001
ori $17, $17, 36943
lui $18, 24043
ori $18, $18, 48729
lui $19, 44328
ori $19, $19, 26495
sw $4, data0
sw $0, data1
label3:
sw $13, data2
slt $4,$12,$4
sltu $10,$14,$4
sltu $9,$10,$19
xori $17,$2,39398
lui $0,46319
srlv $6,$12,$16
srav $6,$2,$4
srlv $1,$18,$9
lw $15,data1
mthi $10
lui $14,52255
mult $10,$14
multu $8,$2
sll $19,$10,26
label4:
sllv $8,$7,$9
andi $14,$14,2
lhu $15,data1($14)
mult $5,$14
andi $6,$6,2
lh $12,data1($6)
andi $15,$15,2
lhu $4,data0($15)
addi $3,$3,13173
andi $6,$6,2
lh $5,data2($6)
multu $13,$5
sw $9,data0
div $31,$17
mtlo $16
sltu $6,$3,$8
sw $9,data1
sub $8,$6,$10
nor $12,$13,$12
andi $8,$8,2
lhu $10,data1($8)
sltiu $1,$11,19738
addiu $19,$9,21281
srlv $1,$9,$11
sltu $14,$3,$6
mfhi $8
mtlo $16
xori $1,$3,35093
addiu $16,$12,22322
sw $1,data2
andi $2,$2,3
lb $11,data0($2)
and $0,$14,$15
lw $17,data2
slt $0,$3,$10
andi $18,$18,3
lbu $5,data0($18)
addu $10,$17,$11
srl $0,$13,11
bgtz $9,label3
andi $11,$11,3
sb $2,data0($11)
xor $9,$19,$18
bgtz $12,label4
subu $1,$3,$15
andi $7,$7,2
lh $18,data0($7)
or $0,$6,$6
addi $14,$0,27012
lw $13,data1
sltu $17,$15,$14
j label2
label2:
add $19,$17,$17
j label0
ori $15,$16,30176
lui $3,5540
divu $1,$13
sll $17,$11,5
lui $17,22612
blez $4,label0
sltu $7,$17,$15
div $7,$17
jalr $0,$ra
addi $6,$12,63992
xor $1,$9,$16
j label3
sub $13,$15,$6
xor $2,$18,$16
div $8,$3
slt $13,$19,$14
andi $4,$18,55002
bgez $0,label2
andi $17,$17,2
sh $11,data0($17)
andi $9,$9,2
lh $18,data2($9)
bltz $6,label3
add $8,$5,$10
andi $14,$14,2
lhu $17,data1($14)
bne $12,$4,label2
ori $12,$6,55815
nor $14,$11,$2
andi $1,$1,3
sb $15,data0($1)
sw $2,data0
andi $19,$19,3
lbu $7,data2($19)
xor $13,$3,$10
xori $12,$5,61972
andi $5,$5,2
lh $0,data1($5)
bne $9,$9,label0
label1:
xori $5,$17,45573
addiu $10,$17,3988
mtlo $2
addu $13,$8,$8
div $11,$15
mthi $11
srav $13,$16,$5
ori $16,$4,5244
ori $v0, $0, 10
syscall