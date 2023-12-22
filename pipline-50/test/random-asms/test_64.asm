.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 17134
ori $0, $0, 39776
lui $1, 2490
ori $1, $1, 64172
lui $2, 54479
ori $2, $2, 31527
lui $3, 25639
ori $3, $3, 56278
lui $4, 302
ori $4, $4, 63142
lui $5, 45126
ori $5, $5, 49418
lui $6, 15240
ori $6, $6, 59909
lui $7, 17632
ori $7, $7, 950
lui $8, 40509
ori $8, $8, 60944
lui $9, 52124
ori $9, $9, 46362
lui $10, 42307
ori $10, $10, 31578
lui $11, 8935
label6:
ori $11, $11, 51051
lui $12, 8220
ori $12, $12, 50307
lui $13, 17963
ori $13, $13, 37020
lui $14, 60558
ori $14, $14, 40185
lui $15, 1581
ori $15, $15, 21742
lui $16, 6127
ori $16, $16, 2479
lui $17, 56440
ori $17, $17, 30217
lui $18, 2549
ori $18, $18, 54427
lui $19, 45085
label4:
ori $19, $19, 59403
sw $7, data0
label5:
sw $3, data1
sw $17, data2
xori $16,$1,39778
sllv $5,$5,$4
srav $12,$8,$1
srlv $7,$13,$8
sw $10,data1
lui $15,29668
mfhi $18
label0:
andi $7,$7,2
lhu $11,data2($7)
andi $16,$16,3
lbu $5,data0($16)
mthi $7
mtlo $12
addu $1,$31,$8
multu $7,$3
sltu $16,$12,$2
add $0,$31,$31
andi $10,$10,3
lb $2,data2($10)
sw $14,data2
sub $15,$8,$7
addu $13,$7,$14
mtlo $8
nor $9,$31,$15
lui $4,12311
addiu $2,$12,20243
srlv $3,$16,$10
andi $8,$8,2
sh $7,data0($8)
multu $10,$12
nor $9,$3,$31
andi $9,$9,3
lbu $3,data1($9)
mflo $13
lw $16,data1
andi $17,$17,2
lh $5,data0($17)
slti $15,$3,-30923
andi $12,$12,2
lh $3,data0($12)
or $17,$18,$19
divu $15,$9
and $17,$5,$18
add $14,$8,$16
andi $11,$11,2
lhu $6,data1($11)
mult $11,$13
sw $13,data2
srlv $11,$13,$3
mflo $5
divu $7,$10
bne $2,$10,label1
nor $17,$17,$15
multu $12,$4
bgez $16,label0
srl $0,$6,19
lui $1,49882
mfhi $5
srlv $9,$13,$16
andi $2,$2,3
sb $3,data1($2)
mtlo $19
multu $11,$4
sub $10,$11,$9
andi $2,$2,3
lbu $0,data1($2)
sltiu $0,$2,21645
subu $1,$5,$9
sw $10,data2
andi $12,$12,3
lbu $4,data2($12)
mfhi $14
sub $7,$7,$10
jalr $4,$ra
xor $10,$7,$18
ori $5,$5,1766
beq $3,$16,label2
ori $1,$5,56226
mfhi $13
beq $6,$4,label6
and $14,$7,$3
ori $0,$9,17956
srav $15,$15,$0
andi $4,$4,3
sb $14,data0($4)
mult $18,$0
lui $16,34449
andi $10,$10,2
lhu $9,data1($10)
sllv $17,$7,$9
label2:
xor $1,$15,$1
beq $8,$15,label5
andi $10,$10,2
lhu $5,data0($10)
divu $2,$17
j label3
xori $7,$2,5390
blez $13,label1
nor $16,$8,$12
label1:
sra $1,$6,13
beq $5,$0,label0
add $5,$12,$16
sltiu $8,$2,26107
label3:
blez $8,label4
slti $4,$2,-10679
add $6,$16,$11
jalr $9,$ra
slti $19,$13,-19464
slt $12,$11,$13
lw $11,data2
xori $16,$5,34740
xor $19,$13,$14
sltiu $4,$8,15499
or $0,$14,$8
ori $v0, $0, 10
syscall