.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

label0:
ori $31, $0, 0x3000
lui $0, 32910
ori $0, $0, 34785
lui $1, 20582
ori $1, $1, 48472
lui $2, 59971
ori $2, $2, 37821
lui $3, 5254
ori $3, $3, 61335
label1:
lui $4, 32637
ori $4, $4, 32002
lui $5, 22957
label6:
ori $5, $5, 19971
lui $6, 2525
ori $6, $6, 56515
label3:
lui $7, 25334
ori $7, $7, 24763
label4:
lui $8, 8951
ori $8, $8, 53168
lui $9, 55072
ori $9, $9, 14119
lui $10, 10091
ori $10, $10, 3198
lui $11, 50198
ori $11, $11, 38497
lui $12, 61525
ori $12, $12, 63511
lui $13, 62265
ori $13, $13, 59520
lui $14, 22413
ori $14, $14, 5009
lui $15, 31337
ori $15, $15, 42232
label2:
lui $16, 50417
ori $16, $16, 45754
label5:
lui $17, 27030
ori $17, $17, 61091
lui $18, 15162
ori $18, $18, 44860
lui $19, 52661
ori $19, $19, 25711
sw $19, data0
sw $9, data1
sw $6, data2
sub $4,$19,$3
subu $10,$1,$31
addu $15,$19,$9
ori $16,$0,52802
andi $14,$31,45138
lw $19,data1
slt $3,$18,$15
xor $19,$1,$5
lui $13,58022
mfhi $14
divu $2,$2
sub $12,$18,$16
mult $8,$1
andi $10,$10,2
lh $9,data0($10)
lw $1,data2
mtlo $7
and $16,$1,$5
sltu $3,$5,$16
sw $17,data1
srlv $8,$18,$11
mult $4,$12
nor $8,$7,$1
slt $13,$9,$7
srav $8,$3,$5
sltiu $12,$18,10933
sltiu $7,$2,31484
andi $0,$0,38476
sw $17,data2
mthi $16
nor $7,$12,$15
mthi $14
sltiu $12,$15,2250
xori $8,$2,43477
andi $2,$7,11481
sub $6,$1,$19
srlv $8,$1,$17
ori $19,$13,18997
sub $8,$3,$14
sltu $14,$12,$3
sltu $2,$19,$5
mflo $2
addi $6,$0,26607
andi $14,$14,2
sh $19,data1($14)
mult $6,$10
srl $2,$16,23
srav $14,$3,$16
mtlo $19
andi $11,$11,2
lh $12,data2($11)
addi $12,$4,59247
addiu $19,$17,47357
lui $0,34472
jr $ra
mthi $15
sltu $11,$13,$8
beq $2,$11,label6
addu $9,$10,$8
addi $7,$3,61063
slt $4,$13,$0
lui $6,46477
srav $18,$19,$4
srlv $19,$18,$19
addu $5,$2,$19
andi $12,$12,3
lbu $3,data1($12)
j label5
srlv $9,$4,$17
sw $9,data0
or $12,$17,$3
slt $1,$8,$2
multu $11,$0
nor $13,$2,$1
xor $1,$8,$18
mtlo $5
sw $0,data2
andi $6,$6,2
sh $11,data2($6)
srlv $1,$9,$9
bgtz $12,label3
addiu $0,$6,65472
sra $13,$7,17
bne $11,$31,label4
mfhi $7
or $6,$0,$9
bgtz $5,label6
mflo $10
lui $16,12393
xori $13,$18,54828
bne $4,$5,label2
srlv $7,$2,$7
mult $5,$19
andi $18,$18,3
sb $2,data0($18)
sw $8,data1
andi $9,$9,2
lhu $3,data0($9)
j label5
andi $3,$3,2
sh $19,data0($3)
mult $0,$12
slt $6,$3,$18
addiu $16,$18,63753
bgtz $14,label4
addiu $19,$12,17002
divu $16,$3
bgtz $17,label6
ori $v0, $0, 10
syscall