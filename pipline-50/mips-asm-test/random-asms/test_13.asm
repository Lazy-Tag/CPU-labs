.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 51032
label4:
ori $0, $0, 38308
lui $1, 50516
ori $1, $1, 4330
lui $2, 34509
ori $2, $2, 33048
lui $3, 57177
ori $3, $3, 34693
lui $4, 58735
ori $4, $4, 17842
lui $5, 14756
ori $5, $5, 21993
lui $6, 11165
ori $6, $6, 36749
lui $7, 40330
ori $7, $7, 21002
lui $8, 13804
ori $8, $8, 25336
lui $9, 48545
ori $9, $9, 854
lui $10, 7107
ori $10, $10, 5886
lui $11, 21914
ori $11, $11, 42857
lui $12, 31277
ori $12, $12, 14214
lui $13, 51195
ori $13, $13, 22493
lui $14, 25074
ori $14, $14, 11679
lui $15, 60584
ori $15, $15, 54289
lui $16, 49242
ori $16, $16, 44714
lui $17, 23485
ori $17, $17, 59449
lui $18, 58373
ori $18, $18, 54674
lui $19, 46109
ori $19, $19, 31928
sw $3, data0
sw $17, data1
sw $9, data2
sub $14,$0,$5
sll $15,$8,19
sllv $0,$18,$1
andi $2,$2,2
lh $7,data1($2)
sw $16,data1
subu $10,$8,$13
label1:
mthi $19
add $8,$1,$0
mfhi $18
multu $2,$2
andi $8,$8,2
sh $14,data0($8)
subu $7,$12,$13
nor $0,$13,$10
ori $8,$2,45262
xor $17,$31,$9
ori $7,$7,64062
label3:
andi $13,$13,2
sh $11,data0($13)
sltu $7,$17,$9
divu $10,$13
andi $5,$5,3
sb $16,data0($5)
srl $9,$11,30
addi $4,$3,64195
sll $2,$2,6
andi $17,$8,22656
mthi $8
andi $13,$13,3
lb $2,data1($13)
sra $10,$13,21
sra $13,$12,30
mflo $6
xori $10,$15,46457
andi $1,$1,2
sh $2,data1($1)
slti $6,$15,-31941
mflo $15
xor $17,$10,$0
andi $1,$1,2
sh $5,data0($1)
srav $4,$1,$0
subu $9,$15,$12
sub $13,$19,$14
mtlo $14
multu $9,$9
andi $8,$8,2
lhu $4,data2($8)
mthi $14
sw $14,data1
andi $5,$5,2
lh $7,data1($5)
label5:
xori $7,$5,39060
slti $1,$1,-13114
andi $1,$1,2
sh $7,data0($1)
andi $17,$17,3
lb $17,data2($17)
sltiu $3,$3,13376
bltz $4,label0
add $15,$3,$8
andi $13,$13,2
sh $8,data1($13)
xor $1,$6,$10
mult $19,$2
div $15,$2
bgtz $17,label6
srav $16,$5,$12
sw $9,data1
andi $12,$12,3
lb $10,data0($12)
andi $18,$18,3
sb $0,data2($18)
bltz $8,label3
xori $4,$5,18806
srav $14,$31,$7
beq $4,$5,label4
nor $9,$2,$19
lw $12,data1
addi $13,$8,13399
lui $14,4922
andi $6,$6,3
lbu $11,data2($6)
andi $2,$2,2
lh $11,data0($2)
mflo $1
srav $8,$2,$11
addiu $16,$9,65532
jal label6
andi $9,$9,3
lb $7,data1($9)
subu $0,$17,$4
srav $19,$5,$14
andi $15,$15,2
lhu $14,data2($15)
bne $10,$19,label0
divu $19,$1
slt $16,$1,$6
beq $2,$3,label1
sw $9,data2
xori $12,$10,58040
label6:
srav $14,$17,$17
bgez $11,label6
divu $1,$13
sub $17,$4,$2
label2:
mflo $8
add $8,$7,$2
sll $4,$10,15
add $8,$9,$14
mult $1,$2
xori $2,$12,8135
label0:
andi $1,$6,21540
andi $12,$12,3
lbu $9,data1($12)
sltiu $15,$19,541
slti $3,$15,2469
bgez $16,label1
add $4,$2,$3
ori $v0, $0, 10
syscall