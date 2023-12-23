.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 10851
ori $0, $0, 4641
lui $1, 2731
ori $1, $1, 17178
lui $2, 51777
ori $2, $2, 29090
lui $3, 41129
label2:
ori $3, $3, 44884
lui $4, 43162
ori $4, $4, 10440
lui $5, 25250
ori $5, $5, 24664
lui $6, 22441
ori $6, $6, 11953
lui $7, 24371
ori $7, $7, 44473
lui $8, 47457
ori $8, $8, 52752
lui $9, 62908
ori $9, $9, 12801
lui $10, 55404
ori $10, $10, 31786
lui $11, 57574
ori $11, $11, 5053
lui $12, 23525
label4:
ori $12, $12, 45145
lui $13, 59599
ori $13, $13, 5781
lui $14, 42367
ori $14, $14, 42313
lui $15, 43814
ori $15, $15, 12613
lui $16, 24229
ori $16, $16, 28217
lui $17, 23760
ori $17, $17, 51311
lui $18, 63325
ori $18, $18, 51430
lui $19, 35053
ori $19, $19, 52842
sw $13, data0
sw $13, data1
sw $10, data2
sra $11,$17,26
srl $5,$15,21
xor $14,$8,$3
andi $8,$8,3
lb $13,data1($8)
slti $11,$1,14218
lui $3,6228
slti $13,$10,-29059
srav $7,$0,$2
ori $1,$1,46383
andi $16,$16,3
sb $9,data0($16)
mthi $9
ori $0,$6,39343
lui $8,11784
and $1,$17,$12
lw $2,data2
sll $13,$31,10
mult $15,$14
mfhi $9
ori $7,$10,52075
sw $3,data2
sub $13,$1,$8
mthi $2
xori $17,$7,49904
sra $19,$2,25
srav $0,$31,$11
sra $5,$16,28
srlv $2,$17,$5
mflo $5
andi $6,$6,3
lb $3,data2($6)
addu $7,$18,$6
sltiu $0,$17,26611
lw $16,data2
srav $18,$5,$11
subu $12,$9,$10
div $12,$18
subu $11,$8,$12
slt $15,$19,$10
andi $3,$3,3
lbu $7,data0($3)
and $11,$11,$18
srl $1,$19,20
beq $5,$8,label1
or $3,$6,$5
beq $14,$13,label4
andi $8,$8,2
lh $4,data0($8)
andi $3,$3,2
lh $18,data2($3)
bltz $10,label5
mtlo $3
ori $13,$12,43738
j label3
label0:
nor $6,$7,$14
and $2,$11,$6
slt $2,$11,$9
slti $13,$9,-16504
srl $16,$0,10
mult $15,$14
srlv $4,$6,$1
andi $4,$4,2
sh $17,data2($4)
bgtz $10,label2
mflo $4
mflo $5
addiu $18,$4,5130
mult $5,$5
andi $16,$16,2
lh $19,data1($16)
addiu $4,$18,33970
sw $14,data1
blez $16,label4
andi $5,$5,3
lb $4,data0($5)
label5:
div $3,$19
andi $4,$4,3
lbu $19,data2($4)
label1:
sltiu $15,$8,4024
sltu $13,$18,$1
subu $11,$15,$31
andi $6,$13,48105
sra $15,$2,20
lui $2,57879
and $0,$7,$16
bgez $31,label6
sll $19,$19,23
andi $7,$7,2
lh $13,data1($7)
div $11,$15
andi $10,$10,2
lh $3,data0($10)
sltiu $4,$16,24007
sw $4,data2
subu $12,$6,$7
addiu $2,$0,38644
srav $14,$16,$9
blez $12,label6
andi $3,$3,2
lh $0,data1($3)
mtlo $0
xor $8,$0,$17
lui $12,55235
label3:
sltu $4,$11,$19
mtlo $8
label6:
or $6,$10,$8
blez $8,label0
addu $6,$14,$4
srl $15,$9,2
subu $19,$7,$2
andi $6,$6,2
lh $8,data2($6)
sll $9,$12,19
ori $v0, $0, 10
syscall