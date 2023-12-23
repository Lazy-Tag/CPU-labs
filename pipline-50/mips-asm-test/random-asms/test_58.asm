.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 64446
ori $0, $0, 54326
lui $1, 25097
ori $1, $1, 22469
lui $2, 18827
ori $2, $2, 28067
lui $3, 2639
ori $3, $3, 13191
lui $4, 4256
ori $4, $4, 40184
lui $5, 50420
label2:
ori $5, $5, 58160
lui $6, 23108
ori $6, $6, 17396
lui $7, 49781
ori $7, $7, 37682
lui $8, 32890
ori $8, $8, 40966
lui $9, 47350
ori $9, $9, 36244
lui $10, 18781
ori $10, $10, 28441
lui $11, 29791
ori $11, $11, 42500
lui $12, 59592
ori $12, $12, 35235
lui $13, 35019
ori $13, $13, 59889
lui $14, 60638
ori $14, $14, 16044
lui $15, 38739
ori $15, $15, 6529
lui $16, 29994
ori $16, $16, 64278
lui $17, 60828
ori $17, $17, 4049
lui $18, 63036
ori $18, $18, 52207
lui $19, 62230
ori $19, $19, 37604
sw $11, data0
sw $6, data1
sw $6, data2
andi $14,$6,4429
andi $19,$19,3
lb $9,data1($19)
andi $1,$1,3
sb $5,data2($1)
nor $16,$16,$1
slti $15,$4,25111
mtlo $17
sra $4,$7,14
mult $4,$10
xori $19,$6,48154
ori $5,$5,34997
sll $1,$2,22
or $11,$31,$1
ori $13,$17,4303
slt $5,$2,$6
slt $17,$2,$2
sltiu $11,$13,20996
andi $6,$6,3
lbu $19,data1($6)
and $8,$12,$19
nor $10,$15,$0
lui $7,65448
label3:
label4:
mtlo $13
andi $0,$7,53239
label1:
mthi $5
sltu $16,$8,$1
sra $2,$4,20
andi $4,$4,3
sb $11,data1($4)
addiu $2,$5,50499
sltiu $11,$14,28756
add $3,$12,$5
sub $7,$13,$19
sllv $6,$16,$7
or $4,$7,$4
andi $5,$5,2
sh $12,data2($5)
mflo $14
sra $8,$18,19
nor $10,$3,$7
mflo $16
srlv $8,$11,$3
mfhi $10
andi $17,$17,2
lh $17,data2($17)
bne $4,$31,label5
or $17,$1,$11
andi $5,$5,2
lhu $0,data1($5)
divu $14,$14
sllv $4,$13,$3
mfhi $4
mthi $1
srl $16,$14,3
nor $12,$4,$14
addiu $10,$7,18995
sra $19,$13,3
and $2,$7,$7
andi $3,$3,3
lbu $11,data1($3)
multu $16,$3
bne $2,$0,label1
mthi $16
sltu $6,$14,$10
srlv $13,$15,$10
slt $10,$0,$0
srlv $3,$6,$12
andi $14,$14,2
sh $15,data1($14)
label6:
ori $12,$14,3123
mflo $2
nor $4,$9,$9
srl $12,$7,21
j label3
mult $18,$17
srlv $14,$7,$12
bltz $0,label6
label5:
sllv $4,$17,$12
andi $18,$18,3
lb $0,data2($18)
bgtz $19,label5
mult $9,$4
and $18,$8,$4
sllv $5,$6,$18
nor $10,$9,$18
mtlo $12
div $9,$13
sltu $1,$16,$19
sltiu $13,$14,136
addi $9,$16,19511
andi $11,$11,2
sh $13,data1($11)
srav $12,$19,$11
xori $13,$16,39547
sllv $5,$5,$8
j label1
multu $0,$17
subu $3,$6,$3
sll $8,$8,10
divu $2,$11
andi $5,$5,3
lbu $19,data2($5)
lui $6,47891
subu $17,$5,$1
srlv $6,$15,$12
andi $13,$13,2
sh $17,data2($13)
andi $12,$12,2
lh $4,data2($12)
label0:
lui $7,12539
andi $1,$1,2
lhu $10,data2($1)
and $6,$14,$6
mthi $13
ori $v0, $0, 10
syscall