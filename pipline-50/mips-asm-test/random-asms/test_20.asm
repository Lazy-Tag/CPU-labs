.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 46074
ori $0, $0, 29835
lui $1, 5450
ori $1, $1, 40756
lui $2, 29100
ori $2, $2, 47456
lui $3, 59132
ori $3, $3, 50173
lui $4, 6326
ori $4, $4, 54264
lui $5, 50442
ori $5, $5, 16324
lui $6, 59770
label1:
label3:
ori $6, $6, 64378
label4:
lui $7, 7476
ori $7, $7, 60082
lui $8, 60052
ori $8, $8, 29168
lui $9, 60779
ori $9, $9, 54147
lui $10, 20651
ori $10, $10, 13258
lui $11, 36382
ori $11, $11, 4467
lui $12, 25756
ori $12, $12, 11090
lui $13, 52897
ori $13, $13, 26221
lui $14, 24430
ori $14, $14, 46703
label5:
lui $15, 39622
ori $15, $15, 57777
lui $16, 52061
ori $16, $16, 3543
lui $17, 13149
ori $17, $17, 39118
lui $18, 54799
ori $18, $18, 24005
lui $19, 6898
ori $19, $19, 40156
sw $3, data0
sw $9, data1
label6:
sw $6, data2
lui $6,25613
andi $5,$5,3
lb $11,data2($5)
andi $11,$11,2
lhu $5,data2($11)
andi $2,$1,16737
nor $15,$13,$16
slt $12,$12,$11
slt $18,$5,$4
and $11,$8,$7
mtlo $17
sltiu $16,$11,28034
mtlo $19
sra $10,$9,21
sra $7,$6,6
mfhi $11
mflo $12
lw $12,data2
slt $15,$8,$8
sltiu $14,$6,27923
andi $17,$18,24263
lui $13,64061
addu $19,$3,$18
and $19,$31,$19
sll $1,$11,27
divu $7,$8
divu $3,$5
sra $15,$8,24
srav $3,$12,$13
or $9,$11,$17
and $14,$16,$5
andi $12,$12,3
lbu $15,data2($12)
sub $6,$8,$7
mthi $6
divu $9,$19
lui $8,58184
xori $18,$0,54808
mflo $13
xor $15,$15,$11
sll $10,$0,2
div $8,$4
sra $13,$13,19
beq $3,$0,label6
divu $31,$13
bne $12,$0,label5
slt $6,$8,$16
bgez $8,label6
andi $8,$8,3
lbu $9,data0($8)
multu $15,$9
lw $12,data1
nor $10,$31,$19
bgez $3,label1
sub $7,$12,$3
beq $13,$12,label0
mfhi $2
srlv $9,$12,$11
andi $15,$15,3
sb $14,data2($15)
slti $2,$14,-19295
blez $7,label6
andi $13,$13,2
lhu $19,data2($13)
andi $9,$9,3
lbu $1,data2($9)
srav $5,$2,$18
bgez $11,label3
subu $9,$12,$4
multu $14,$9
subu $9,$15,$0
srlv $6,$19,$6
bgez $8,label5
and $4,$1,$6
nor $14,$12,$19
andi $3,$8,65099
sllv $17,$0,$8
nor $13,$1,$17
label2:
jal label4
addiu $10,$31,62144
bltz $17,label1
multu $6,$10
srlv $18,$8,$9
ori $7,$7,14174
subu $15,$2,$0
xori $14,$1,591
nor $12,$31,$3
sra $18,$2,27
or $2,$12,$14
label0:
jr $ra
div $3,$8
divu $18,$13
j label2
andi $7,$7,3
lb $3,data1($7)
multu $31,$7
mtlo $10
srl $4,$0,5
lui $7,16667
srl $18,$3,21
srl $14,$6,28
sra $14,$16,26
bne $14,$12,label3
or $7,$15,$31
add $7,$18,$13
j label3
sra $2,$17,22
slt $2,$12,$16
ori $v0, $0, 10
syscall