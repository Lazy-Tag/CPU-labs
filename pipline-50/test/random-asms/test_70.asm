.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 4484
ori $0, $0, 22349
lui $1, 21602
ori $1, $1, 2355
lui $2, 3747
ori $2, $2, 62939
lui $3, 55098
ori $3, $3, 39016
lui $4, 6325
ori $4, $4, 39210
lui $5, 28001
ori $5, $5, 39378
lui $6, 3703
ori $6, $6, 59247
lui $7, 43162
ori $7, $7, 36797
lui $8, 11121
ori $8, $8, 1246
lui $9, 50393
ori $9, $9, 16875
lui $10, 1388
ori $10, $10, 45391
lui $11, 8131
ori $11, $11, 34286
lui $12, 21450
ori $12, $12, 65418
lui $13, 39712
ori $13, $13, 14924
lui $14, 31998
label3:
ori $14, $14, 8592
lui $15, 10175
ori $15, $15, 22827
label5:
lui $16, 26039
ori $16, $16, 28244
lui $17, 37767
ori $17, $17, 6381
lui $18, 10126
ori $18, $18, 43955
lui $19, 62041
ori $19, $19, 46322
sw $11, data0
sw $0, data1
sw $14, data2
srl $7,$16,25
mflo $5
sw $6,data1
and $12,$4,$4
srl $13,$31,20
mthi $17
mfhi $4
sllv $19,$31,$6
div $4,$9
label1:
slti $17,$6,818
sra $3,$14,26
andi $8,$8,2
lhu $17,data2($8)
mult $10,$18
and $18,$31,$7
srav $17,$4,$7
andi $8,$8,3
lbu $13,data1($8)
slti $1,$15,14898
addi $16,$8,3192
ori $11,$11,10447
andi $5,$5,3
sb $16,data0($5)
mult $15,$15
sw $13,data1
subu $0,$13,$8
andi $4,$4,3
lb $2,data2($4)
or $10,$12,$14
sub $2,$31,$10
andi $1,$1,3
lbu $18,data0($1)
subu $2,$1,$13
divu $3,$8
slt $1,$13,$10
add $3,$15,$2
andi $3,$3,2
sh $11,data0($3)
lw $1,data2
andi $15,$18,22786
sw $9,data1
lw $4,data1
mthi $11
sltiu $5,$6,1018
srl $4,$15,16
sw $5,data2
addiu $9,$8,12477
subu $14,$17,$8
and $16,$12,$1
jal label1
lui $11,5495
div $12,$11
multu $5,$14
andi $6,$6,2
lhu $14,data1($6)
multu $15,$6
and $2,$18,$8
andi $0,$0,2
sh $14,data0($0)
sra $11,$7,20
mult $8,$18
addiu $12,$31,28094
label2:
bgez $2,label2
sw $17,data0
divu $7,$5
jal label5
andi $13,$13,2
lhu $5,data0($13)
andi $19,$19,2
lh $2,data2($19)
and $3,$1,$15
slti $1,$17,8831
srav $2,$2,$14
subu $5,$4,$14
addu $13,$8,$6
jal label4
xori $19,$3,8264
lw $8,data0
andi $12,$12,3
sb $1,data2($12)
label4:
mtlo $9
mtlo $5
andi $4,$4,3
sb $7,data1($4)
xori $18,$15,65396
srlv $16,$3,$14
slti $18,$8,-15069
addu $7,$12,$0
label6:
andi $0,$7,27059
sw $11,data0
sltu $13,$2,$14
bne $12,$10,label3
sllv $8,$17,$18
bgez $5,label6
add $11,$17,$9
label0:
addi $5,$17,59591
mult $16,$8
andi $18,$18,2
sh $3,data0($18)
andi $5,$5,3
lb $18,data2($5)
andi $0,$0,2
lh $7,data2($0)
xori $12,$8,29482
sllv $17,$1,$14
andi $0,$17,31510
bgez $12,label3
xori $18,$4,32399
jr $ra
divu $16,$12
sltiu $16,$17,6462
mflo $3
bne $8,$2,label2
nor $2,$3,$12
andi $13,$13,2
sh $14,data2($13)
ori $v0, $0, 10
syscall