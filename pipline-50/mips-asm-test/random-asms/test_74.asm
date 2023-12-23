.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 37985
ori $0, $0, 2143
lui $1, 43705
ori $1, $1, 41338
lui $2, 32051
ori $2, $2, 47167
lui $3, 48481
ori $3, $3, 41011
lui $4, 28455
label3:
ori $4, $4, 15575
lui $5, 50374
ori $5, $5, 50305
lui $6, 30114
ori $6, $6, 32445
lui $7, 5838
ori $7, $7, 40651
lui $8, 36828
ori $8, $8, 43134
lui $9, 38673
ori $9, $9, 65173
lui $10, 40673
ori $10, $10, 23811
lui $11, 29473
ori $11, $11, 2758
lui $12, 33459
ori $12, $12, 56490
lui $13, 14828
ori $13, $13, 39917
lui $14, 1266
label6:
ori $14, $14, 31939
lui $15, 14047
ori $15, $15, 29087
lui $16, 9309
ori $16, $16, 1686
lui $17, 36860
ori $17, $17, 34836
lui $18, 47535
ori $18, $18, 30698
lui $19, 64024
ori $19, $19, 27768
sw $6, data0
sw $15, data1
sw $15, data2
mfhi $0
srl $10,$7,2
lw $12,data0
mflo $6
sltu $19,$3,$4
sll $3,$13,14
andi $11,$11,2
lhu $3,data1($11)
andi $16,$16,2
sh $17,data1($16)
multu $31,$1
andi $19,$19,3
lbu $6,data0($19)
srav $16,$10,$31
slti $8,$16,-25718
andi $0,$0,2
sh $6,data2($0)
and $12,$15,$31
xori $6,$31,21565
addiu $19,$17,4824
mflo $8
divu $3,$8
sll $15,$2,14
and $7,$14,$1
andi $2,$2,2
lh $7,data1($2)
sra $16,$9,19
andi $0,$0,2
sh $3,data1($0)
andi $1,$1,3
sb $12,data0($1)
andi $16,$16,2
sh $11,data2($16)
mfhi $12
mtlo $15
andi $8,$8,3
lbu $12,data1($8)
mtlo $7
or $8,$9,$17
mtlo $16
divu $12,$18
andi $5,$5,3
lb $4,data2($5)
lw $8,data1
andi $7,$7,2
lhu $13,data2($7)
and $5,$8,$4
andi $2,$2,2
lhu $15,data1($2)
mfhi $3
mthi $2
andi $1,$1,2
lh $16,data0($1)
multu $19,$10
or $4,$3,$13
ori $16,$7,38806
label5:
mtlo $4
sw $7,data0
mflo $5
xori $5,$5,14696
div $2,$8
sllv $0,$13,$3
slti $1,$15,-750
div $0,$7
bltz $13,label2
andi $14,$14,2
lhu $18,data2($14)
andi $13,$13,2
lh $14,data2($13)
subu $1,$18,$8
sw $4,data1
div $16,$14
srlv $2,$13,$13
bne $14,$31,label5
andi $16,$16,2
sh $7,data2($16)
mtlo $3
addi $1,$5,51033
or $1,$4,$5
label2:
sub $3,$3,$31
bne $8,$7,label5
lui $15,50241
sltu $11,$13,$3
beq $4,$15,label1
or $7,$13,$0
blez $31,label1
div $16,$2
bgez $18,label3
andi $12,$12,2
sh $10,data0($12)
bgtz $18,label1
xori $15,$8,32746
label1:
slt $5,$31,$15
bgez $3,label4
xori $0,$12,4213
mfhi $6
sllv $18,$11,$1
bne $12,$5,label3
mflo $15
blez $0,label0
andi $1,$1,2
lhu $3,data0($1)
sra $2,$4,13
mtlo $18
sll $8,$18,26
bgez $16,label2
label4:
label0:
slt $4,$1,$4
sub $17,$7,$5
andi $5,$5,3
lb $8,data2($5)
add $6,$17,$7
andi $16,$16,3
lb $17,data1($16)
andi $15,$15,3
lb $15,data1($15)
xori $15,$18,58572
blez $19,label4
sltu $0,$5,$13
andi $12,$12,3
lbu $2,data1($12)
nor $13,$10,$0
lw $0,data2
ori $v0, $0, 10
syscall