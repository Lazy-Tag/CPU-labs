.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 23464
ori $0, $0, 64830
lui $1, 41465
ori $1, $1, 36431
lui $2, 13594
ori $2, $2, 61445
lui $3, 11609
ori $3, $3, 9964
lui $4, 51460
ori $4, $4, 53596
lui $5, 11399
ori $5, $5, 45140
lui $6, 5211
ori $6, $6, 21503
lui $7, 42728
ori $7, $7, 9272
lui $8, 47974
label0:
ori $8, $8, 23743
lui $9, 11695
ori $9, $9, 13113
lui $10, 11902
ori $10, $10, 51353
lui $11, 49091
ori $11, $11, 34308
lui $12, 45961
ori $12, $12, 13290
lui $13, 39042
label4:
ori $13, $13, 38206
lui $14, 38455
ori $14, $14, 17693
lui $15, 37435
ori $15, $15, 17736
lui $16, 50723
ori $16, $16, 15301
lui $17, 41666
ori $17, $17, 46722
lui $18, 3083
ori $18, $18, 27415
lui $19, 13199
ori $19, $19, 64257
sw $1, data0
sw $11, data1
sw $0, data2
xori $10,$31,27890
lw $2,data2
slt $10,$0,$10
divu $12,$4
srav $11,$1,$12
div $18,$11
sw $10,data0
label1:
andi $16,$16,2
lhu $6,data1($16)
sra $11,$17,11
sw $10,data2
sub $18,$12,$7
nor $9,$15,$14
sltu $11,$5,$7
slt $1,$15,$18
sll $9,$31,6
and $13,$6,$1
add $14,$0,$2
mtlo $7
addiu $14,$1,34932
subu $4,$15,$19
xor $13,$13,$7
nor $5,$8,$2
mflo $8
mfhi $3
or $1,$8,$9
mthi $7
xori $4,$15,57972
sltu $17,$0,$11
addiu $10,$8,33845
xor $16,$9,$9
andi $1,$1,3
lb $6,data2($1)
label6:
andi $13,$13,3
lbu $14,data0($13)
slt $10,$6,$13
sub $0,$5,$9
sltu $4,$19,$6
sw $14,data0
lw $5,data1
lui $8,9929
label5:
nor $1,$2,$0
addiu $4,$19,12202
andi $11,$11,3
lbu $13,data1($11)
lw $0,data2
ori $7,$4,40199
mfhi $6
addiu $9,$9,42139
lw $8,data1
sllv $13,$9,$2
div $10,$15
sll $13,$19,17
addiu $0,$7,60023
sra $4,$12,20
bgez $2,label2
mtlo $18
jal label4
andi $14,$14,2
lhu $0,data1($14)
sltu $4,$12,$1
mult $0,$10
ori $15,$7,45427
add $9,$4,$10
slti $12,$4,2337
mtlo $8
and $5,$7,$4
mult $8,$5
jal label0
subu $0,$9,$7
sltu $5,$11,$0
srl $11,$8,24
j label4
lw $8,data0
addi $7,$4,11105
srav $7,$10,$15
jal label6
mthi $6
mthi $16
lui $18,57959
beq $10,$5,label6
mult $10,$18
addu $7,$15,$7
xori $19,$9,34036
mtlo $14
label2:
mflo $18
bgtz $6,label3
mfhi $11
bne $19,$6,label1
multu $31,$2
add $19,$3,$11
srlv $5,$11,$7
multu $19,$11
label3:
jr $ra
addu $2,$11,$8
andi $5,$5,3
lbu $14,data2($5)
mflo $4
mflo $14
addu $15,$13,$12
lw $1,data1
and $1,$1,$19
or $5,$14,$4
andi $12,$12,3
sb $15,data0($12)
multu $9,$12
xori $9,$13,37593
ori $v0, $0, 10
syscall