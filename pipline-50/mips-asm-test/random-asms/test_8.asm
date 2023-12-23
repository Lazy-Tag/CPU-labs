.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 31074
ori $0, $0, 54656
lui $1, 32071
ori $1, $1, 42135
label2:
lui $2, 24865
ori $2, $2, 2584
lui $3, 35844
ori $3, $3, 32167
lui $4, 58380
ori $4, $4, 64910
lui $5, 63367
ori $5, $5, 11308
lui $6, 26860
ori $6, $6, 47559
lui $7, 12794
ori $7, $7, 35460
lui $8, 4513
ori $8, $8, 9959
lui $9, 58524
ori $9, $9, 15214
lui $10, 35740
ori $10, $10, 58845
lui $11, 49317
ori $11, $11, 14965
lui $12, 24769
ori $12, $12, 40924
lui $13, 25418
ori $13, $13, 48319
lui $14, 16694
ori $14, $14, 34500
lui $15, 12402
ori $15, $15, 6733
lui $16, 30422
ori $16, $16, 1713
label5:
lui $17, 48038
ori $17, $17, 57116
lui $18, 39730
ori $18, $18, 58076
lui $19, 1449
ori $19, $19, 59099
sw $7, data0
sw $6, data1
sw $17, data2
or $14,$0,$3
andi $0,$0,2
sh $15,data2($0)
label4:
multu $12,$0
subu $13,$11,$31
multu $9,$3
nor $16,$14,$15
subu $11,$5,$15
slti $12,$15,25911
sllv $17,$2,$8
andi $5,$5,3
lbu $11,data2($5)
andi $19,$19,2
lh $8,data1($19)
sub $3,$15,$7
andi $5,$5,2
lh $13,data1($5)
xor $2,$19,$8
sltu $6,$14,$5
slti $4,$6,-25065
addi $2,$17,48375
subu $1,$6,$17
xor $19,$15,$11
slti $8,$8,25584
sltu $1,$19,$6
ori $19,$7,47350
xori $7,$0,56383
subu $4,$15,$12
srlv $19,$9,$7
addiu $7,$4,12710
sll $7,$11,7
sltiu $8,$14,28018
andi $1,$1,3
lbu $9,data2($1)
slti $10,$3,-23398
sltiu $3,$10,18347
subu $17,$8,$7
andi $4,$4,2
lh $11,data1($4)
ori $14,$3,35201
mflo $18
label0:
multu $10,$6
and $11,$5,$16
andi $10,$10,3
lbu $6,data1($10)
addu $0,$14,$3
andi $15,$15,3
lbu $13,data2($15)
sw $7,data0
andi $9,$9,2
sh $13,data0($9)
mthi $6
label6:
mflo $19
bgtz $16,label3
sllv $6,$11,$13
bne $2,$5,label5
div $6,$18
xor $16,$9,$6
subu $7,$17,$7
srl $10,$17,11
srlv $6,$3,$9
andi $7,$7,2
sh $15,data2($7)
sw $19,data1
blez $5,label1
sllv $16,$5,$8
andi $17,$17,2
lhu $15,data0($17)
sra $9,$11,25
addi $1,$10,30246
sll $1,$2,17
div $10,$12
lw $15,data2
ori $0,$3,38243
srlv $4,$15,$14
mtlo $1
bgez $3,label3
label3:
add $12,$3,$17
add $17,$2,$15
xori $6,$3,24358
bltz $3,label1
add $8,$4,$15
mult $4,$16
sra $14,$31,25
sra $15,$2,14
divu $0,$1
addi $9,$4,13903
div $1,$13
srlv $8,$2,$14
andi $8,$8,3
lbu $0,data1($8)
label1:
addu $0,$0,$1
xori $14,$13,57106
sub $6,$0,$13
sub $3,$10,$6
jal label2
mthi $7
srav $18,$10,$2
andi $5,$5,3
lbu $4,data0($5)
slt $13,$31,$15
bne $12,$12,label6
mthi $19
sltu $19,$1,$10
addiu $2,$2,45619
addu $17,$2,$12
andi $15,$15,2
lh $4,data2($15)
add $11,$4,$14
srl $11,$15,0
mthi $4
sllv $2,$4,$19
slt $7,$19,$2
sll $8,$5,0
ori $v0, $0, 10
syscall