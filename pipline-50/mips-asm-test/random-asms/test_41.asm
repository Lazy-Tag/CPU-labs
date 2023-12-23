.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 18707
ori $0, $0, 8349
lui $1, 21253
ori $1, $1, 50098
lui $2, 6376
ori $2, $2, 38284
lui $3, 11899
ori $3, $3, 12956
lui $4, 31954
ori $4, $4, 50551
lui $5, 7905
ori $5, $5, 59415
label1:
lui $6, 21743
ori $6, $6, 33177
lui $7, 55550
ori $7, $7, 17578
lui $8, 62814
ori $8, $8, 20873
lui $9, 40189
ori $9, $9, 47605
lui $10, 24754
ori $10, $10, 18075
lui $11, 62889
ori $11, $11, 48347
lui $12, 52488
ori $12, $12, 154
lui $13, 51210
ori $13, $13, 25419
lui $14, 6077
ori $14, $14, 63701
lui $15, 57031
ori $15, $15, 52200
lui $16, 16752
ori $16, $16, 16883
lui $17, 14574
ori $17, $17, 49118
label3:
lui $18, 29242
ori $18, $18, 61828
lui $19, 52316
ori $19, $19, 44100
sw $12, data0
sw $2, data1
sw $4, data2
divu $3,$17
xor $14,$8,$7
div $3,$10
slt $4,$8,$17
multu $13,$19
mult $7,$3
add $16,$13,$0
ori $15,$11,37298
andi $11,$11,3
lbu $14,data1($11)
sra $3,$14,3
andi $4,$4,2
lh $7,data0($4)
slti $7,$6,1032
srav $1,$15,$2
sltu $5,$13,$2
label2:
andi $4,$4,2
lh $18,data2($4)
nor $10,$19,$11
slti $11,$14,-29233
label6:
srlv $19,$8,$11
ori $2,$15,25562
mtlo $17
mtlo $12
lui $6,16250
subu $9,$0,$14
add $13,$2,$16
nor $16,$5,$0
andi $9,$9,3
lbu $10,data0($9)
lw $7,data0
sub $13,$14,$7
divu $12,$3
srlv $12,$2,$16
srlv $7,$2,$15
add $3,$6,$17
xor $5,$18,$9
ori $8,$0,18731
sltiu $19,$9,13993
mult $6,$2
addiu $9,$9,32987
andi $11,$11,2
lh $19,data0($11)
srl $9,$4,24
label0:
ori $4,$18,42474
divu $17,$10
addi $6,$0,54401
xor $8,$16,$10
sltu $13,$2,$19
blez $7,label0
sltu $11,$9,$14
andi $3,$0,49747
label5:
andi $8,$8,2
lh $4,data2($8)
nor $10,$8,$17
xor $5,$17,$2
label4:
sltu $2,$7,$10
mult $19,$10
or $12,$0,$5
jr $ra
slt $15,$17,$31
jal label0
mult $6,$19
addiu $10,$15,49114
andi $8,$8,2
lh $9,data1($8)
andi $7,$7,2
sh $3,data0($7)
j label5
subu $9,$16,$15
sltiu $9,$3,9182
subu $13,$16,$10
sll $1,$17,29
xori $14,$12,34335
andi $13,$13,2
lh $1,data0($13)
mfhi $7
andi $6,$15,61591
bgtz $12,label6
sltu $4,$13,$15
bgtz $2,label2
srl $3,$11,5
divu $11,$10
add $13,$11,$2
andi $6,$6,2
sh $18,data0($6)
xor $3,$15,$13
bgtz $10,label0
mfhi $17
bne $5,$1,label2
lw $15,data0
nor $10,$14,$16
andi $10,$10,3
sb $1,data2($10)
div $15,$16
sra $1,$17,19
sltiu $0,$11,25123
andi $0,$13,5449
bne $19,$31,label0
add $2,$10,$11
sltiu $19,$12,18351
lui $4,55404
sltu $4,$13,$16
lui $18,27641
andi $4,$4,3
lb $2,data1($4)
xor $19,$9,$4
sltiu $8,$13,15991
nor $16,$19,$19
sltiu $4,$4,7382
xori $17,$15,6956
bgez $18,label4
ori $v0, $0, 10
syscall