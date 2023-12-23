.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 29396
ori $0, $0, 60295
lui $1, 43408
ori $1, $1, 50455
lui $2, 42135
ori $2, $2, 19481
lui $3, 56528
ori $3, $3, 1851
lui $4, 16323
label6:
ori $4, $4, 13656
lui $5, 13275
ori $5, $5, 13844
lui $6, 23401
ori $6, $6, 56134
lui $7, 19460
ori $7, $7, 47806
lui $8, 54308
ori $8, $8, 45079
lui $9, 35242
ori $9, $9, 56615
lui $10, 11426
ori $10, $10, 25705
lui $11, 56193
ori $11, $11, 47044
lui $12, 5705
ori $12, $12, 43746
lui $13, 17341
ori $13, $13, 58077
lui $14, 31171
ori $14, $14, 33043
lui $15, 14914
label3:
ori $15, $15, 51097
lui $16, 41062
ori $16, $16, 22632
lui $17, 38693
ori $17, $17, 6170
lui $18, 56390
ori $18, $18, 46932
lui $19, 5523
ori $19, $19, 43775
sw $3, data0
sw $5, data1
sw $14, data2
mult $9,$17
sw $6,data2
and $18,$17,$4
subu $16,$4,$16
addi $0,$4,31015
nor $9,$8,$18
mfhi $17
ori $2,$15,11367
sw $7,data2
srl $14,$12,20
slt $0,$8,$19
lw $9,data1
sll $12,$7,4
sra $15,$13,15
subu $0,$17,$17
subu $19,$12,$12
add $14,$2,$31
label2:
subu $3,$1,$18
andi $8,$8,3
lbu $16,data2($8)
andi $5,$5,2
lhu $5,data1($5)
nor $19,$5,$14
and $12,$9,$13
srav $10,$12,$8
or $6,$19,$16
srav $8,$7,$14
and $15,$18,$3
andi $19,$10,24122
ori $9,$10,53015
slti $3,$9,13775
add $3,$5,$1
andi $18,$18,3
sb $17,data2($18)
sra $2,$15,15
divu $12,$7
andi $5,$5,3
lb $11,data0($5)
srl $0,$19,12
label5:
or $18,$14,$17
xori $19,$10,48756
nor $4,$1,$4
mflo $3
addu $19,$0,$15
label0:
div $13,$7
mult $9,$15
label4:
add $19,$5,$0
addiu $19,$8,62557
slti $16,$13,27956
addiu $17,$8,53217
jalr $14,$ra
andi $7,$7,3
lb $2,data1($7)
srlv $0,$15,$2
mult $31,$6
and $3,$1,$12
addiu $9,$0,12705
srlv $17,$8,$6
andi $5,$5,3
sb $12,data0($5)
and $12,$14,$17
andi $19,$19,3
lbu $1,data2($19)
nor $6,$12,$4
andi $13,$13,3
lbu $10,data2($13)
sltiu $16,$5,30291
bltz $4,label4
andi $0,$0,3
lbu $15,data2($0)
andi $14,$14,3
sb $16,data2($14)
srav $16,$10,$14
slt $18,$0,$14
j label1
multu $16,$3
sltu $18,$11,$2
j label4
divu $15,$11
mfhi $12
subu $16,$16,$4
label1:
sltu $7,$15,$17
j label6
and $13,$9,$19
bgtz $4,label3
srl $3,$16,27
div $15,$7
slti $0,$19,-3276
mfhi $1
and $4,$13,$12
subu $11,$5,$12
andi $1,$1,2
lhu $18,data0($1)
sra $10,$7,30
addiu $14,$19,21045
addu $4,$4,$5
mthi $2
add $14,$4,$16
addu $12,$4,$16
bgez $0,label2
slti $6,$0,21194
multu $4,$12
bltz $3,label4
sw $15,data1
andi $14,$14,2
sh $7,data1($14)
andi $14,$14,2
sh $19,data1($14)
slt $19,$1,$7
andi $12,$12,2
lhu $0,data0($12)
subu $10,$14,$5
ori $1,$1,9827
slti $10,$11,4966
ori $v0, $0, 10
syscall