.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 40515
ori $0, $0, 29460
lui $1, 56607
ori $1, $1, 33029
lui $2, 58472
ori $2, $2, 34999
lui $3, 14137
ori $3, $3, 12241
lui $4, 20897
ori $4, $4, 40481
label4:
lui $5, 15387
ori $5, $5, 64485
lui $6, 36683
ori $6, $6, 50177
lui $7, 64305
ori $7, $7, 60220
lui $8, 55500
ori $8, $8, 4378
lui $9, 38069
ori $9, $9, 17008
lui $10, 30705
ori $10, $10, 46010
lui $11, 48394
ori $11, $11, 10602
lui $12, 42983
ori $12, $12, 48673
lui $13, 23214
ori $13, $13, 27692
lui $14, 40158
label0:
ori $14, $14, 1329
lui $15, 64784
ori $15, $15, 54102
lui $16, 29064
ori $16, $16, 12179
lui $17, 56027
ori $17, $17, 34649
label6:
lui $18, 50900
ori $18, $18, 27077
lui $19, 9692
ori $19, $19, 25225
sw $4, data0
sw $13, data1
sw $9, data2
divu $13,$16
multu $31,$13
nor $9,$16,$7
andi $5,$0,13927
sub $8,$17,$2
addu $14,$4,$6
mflo $17
mfhi $1
mult $4,$3
andi $7,$7,2
lhu $4,data0($7)
ori $17,$14,48253
sltiu $12,$0,31308
and $3,$11,$2
slti $7,$2,-7810
addi $6,$2,12240
andi $16,$16,3
sb $0,data1($16)
addu $3,$11,$5
sw $4,data1
srl $10,$19,2
andi $7,$7,3
lb $8,data2($7)
sra $5,$12,5
addi $7,$18,26572
andi $10,$10,2
lhu $8,data0($10)
andi $0,$0,3
lb $16,data0($0)
mthi $15
addi $4,$12,25458
xor $0,$1,$13
mflo $18
andi $8,$8,3
lb $14,data0($8)
sll $9,$18,4
andi $6,$6,3
sb $3,data0($6)
andi $13,$11,1424
andi $6,$11,60216
andi $10,$10,2
lhu $1,data2($10)
mfhi $10
andi $6,$12,45047
andi $4,$4,3
sb $6,data0($4)
sllv $7,$9,$13
sra $16,$4,15
mthi $2
bgez $14,label4
sltu $19,$0,$18
sll $0,$11,19
add $4,$13,$1
sltiu $7,$3,23014
slti $2,$12,23372
jal label5
andi $15,$15,2
sh $10,data2($15)
label5:
mult $5,$6
srlv $17,$9,$17
mult $31,$4
bltz $16,label3
div $14,$12
jal label0
label1:
sll $0,$16,22
sra $3,$7,16
blez $15,label0
sll $17,$19,10
sllv $8,$31,$1
xori $10,$1,32022
srl $18,$3,0
mflo $15
slt $11,$6,$16
andi $0,$0,2
sh $15,data0($0)
andi $0,$1,32404
mthi $10
mtlo $19
sltiu $3,$7,16081
sll $12,$9,8
andi $5,$5,2
sh $10,data1($5)
bltz $9,label0
divu $12,$2
subu $4,$7,$14
blez $19,label6
sll $2,$14,17
bgez $3,label4
srav $5,$18,$31
addiu $13,$7,31635
srav $9,$12,$17
srl $4,$8,6
xor $13,$8,$18
label3:
and $18,$17,$1
sw $12,data1
slti $14,$13,-30450
nor $17,$14,$15
addu $1,$17,$14
andi $18,$18,2
lh $13,data1($18)
andi $13,$13,2
lh $1,data0($13)
sltiu $6,$1,21392
label2:
mtlo $12
addiu $8,$13,7056
ori $5,$6,47682
mult $3,$11
andi $5,$5,2
sh $0,data0($5)
add $4,$3,$9
div $4,$11
mflo $0
srl $19,$5,19
lui $7,7905
srlv $9,$17,$0
ori $v0, $0, 10
syscall