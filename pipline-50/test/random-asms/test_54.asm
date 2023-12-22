.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

label5:
ori $31, $0, 0x3000
lui $0, 21143
ori $0, $0, 9985
lui $1, 25642
ori $1, $1, 30738
lui $2, 23134
ori $2, $2, 29693
lui $3, 47903
ori $3, $3, 28855
lui $4, 40750
ori $4, $4, 39989
lui $5, 401
label4:
ori $5, $5, 56219
lui $6, 22528
ori $6, $6, 10501
lui $7, 4528
ori $7, $7, 20549
lui $8, 21894
ori $8, $8, 32740
lui $9, 58413
ori $9, $9, 52774
lui $10, 53370
ori $10, $10, 17211
lui $11, 53166
ori $11, $11, 40540
lui $12, 14762
ori $12, $12, 61689
lui $13, 35597
ori $13, $13, 63137
lui $14, 61077
ori $14, $14, 17526
lui $15, 20304
ori $15, $15, 15592
lui $16, 58887
ori $16, $16, 16936
lui $17, 40758
ori $17, $17, 29000
lui $18, 30212
ori $18, $18, 6664
lui $19, 32068
ori $19, $19, 61996
sw $8, data0
sw $18, data1
sw $5, data2
xori $9,$16,14217
sltu $9,$18,$15
slti $4,$15,-24576
slti $10,$7,16561
andi $12,$12,3
sb $15,data1($12)
sltiu $1,$11,12252
srlv $11,$17,$14
addi $3,$14,28489
lui $1,46038
div $11,$17
lui $17,43040
and $3,$10,$8
slti $18,$9,6853
sltu $5,$1,$5
mthi $3
addiu $19,$0,37946
or $7,$9,$1
andi $6,$6,3
lb $6,data0($6)
andi $5,$5,3
sb $6,data2($5)
andi $9,$9,2
sh $17,data0($9)
ori $16,$17,22761
or $13,$5,$6
addi $8,$15,37334
add $19,$14,$17
andi $3,$3,2
sh $2,data1($3)
mflo $3
addiu $12,$7,5579
andi $4,$4,2
sh $4,data0($4)
mult $5,$18
addiu $19,$19,11086
andi $7,$15,20138
mfhi $14
sw $5,data2
lui $16,40886
sll $18,$19,25
addu $13,$31,$3
nor $19,$15,$1
lw $11,data2
divu $14,$15
divu $12,$9
addi $13,$7,28047
bgez $13,label0
label0:
andi $3,$3,2
sh $16,data2($3)
andi $19,$19,2
lh $15,data1($19)
andi $1,$1,2
lhu $4,data2($1)
ori $7,$2,6311
div $5,$15
addi $8,$31,39914
xori $19,$3,30406
bltz $7,label5
andi $1,$1,2
lhu $9,data0($1)
andi $12,$12,2
lh $17,data1($12)
divu $12,$10
bltz $0,label3
srlv $9,$3,$13
srav $14,$14,$16
srav $19,$13,$31
ori $0,$1,5193
andi $4,$4,2
lh $18,data1($4)
multu $7,$8
ori $9,$4,46549
addi $17,$31,54108
bne $15,$10,label4
add $13,$15,$18
srav $19,$4,$7
bne $16,$1,label1
addi $11,$5,48248
mfhi $5
andi $10,$10,3
sb $19,data2($10)
j label3
slt $18,$11,$15
sltiu $15,$19,14441
and $10,$31,$18
label2:
andi $10,$10,2
lhu $2,data2($10)
add $10,$8,$18
andi $14,$14,3
lbu $18,data0($14)
andi $11,$11,2
lhu $5,data1($11)
andi $14,$14,2
lh $18,data1($14)
sw $13,data0
bgtz $6,label2
subu $16,$31,$5
mflo $4
slti $11,$16,7302
subu $1,$13,$16
mtlo $11
andi $2,$2,2
lhu $19,data1($2)
or $19,$13,$2
sllv $8,$7,$8
label6:
sra $9,$31,11
andi $8,$8,2
lh $3,data1($8)
xor $18,$13,$13
ori $5,$18,10963
slt $13,$0,$3
multu $11,$7
label1:
and $2,$9,$5
or $9,$7,$0
label3:
srl $7,$4,6
slti $10,$10,-11423
addi $4,$11,34621
divu $19,$18
ori $v0, $0, 10
syscall