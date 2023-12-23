.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 44022
ori $0, $0, 42867
lui $1, 21705
ori $1, $1, 3646
lui $2, 28433
ori $2, $2, 56451
lui $3, 37054
ori $3, $3, 50461
lui $4, 48958
label0:
ori $4, $4, 57113
lui $5, 10865
ori $5, $5, 21299
lui $6, 61971
ori $6, $6, 34849
label3:
lui $7, 52640
ori $7, $7, 57622
lui $8, 60006
ori $8, $8, 12406
label1:
lui $9, 39635
ori $9, $9, 61951
lui $10, 33424
ori $10, $10, 48863
lui $11, 17119
ori $11, $11, 64429
lui $12, 25624
ori $12, $12, 10845
lui $13, 56099
ori $13, $13, 35584
lui $14, 20203
ori $14, $14, 64590
lui $15, 39731
ori $15, $15, 27532
lui $16, 39107
ori $16, $16, 17415
lui $17, 46503
ori $17, $17, 5839
lui $18, 40177
ori $18, $18, 13390
lui $19, 22182
ori $19, $19, 64178
sw $4, data0
sw $7, data1
sw $14, data2
xor $7,$0,$10
slti $11,$15,19976
sllv $8,$11,$19
and $8,$16,$0
addi $3,$18,13123
slt $17,$15,$3
multu $19,$6
sltu $17,$19,$15
sltu $7,$6,$12
sltu $15,$16,$6
andi $11,$11,3
lb $11,data0($11)
sw $1,data1
andi $12,$12,2
lhu $17,data2($12)
ori $11,$16,20907
mflo $17
andi $8,$8,3
sb $7,data2($8)
sw $11,data1
xor $0,$10,$17
sw $2,data1
andi $2,$31,39399
srav $14,$5,$2
add $14,$4,$16
slt $6,$4,$16
addi $13,$12,24105
label6:
sra $0,$6,13
and $18,$31,$14
srlv $14,$14,$13
mult $7,$9
xor $13,$11,$17
add $19,$7,$16
andi $1,$1,2
sh $1,data1($1)
add $5,$6,$17
multu $12,$17
andi $1,$1,3
lb $13,data1($1)
sllv $14,$13,$31
sub $11,$0,$3
andi $13,$13,3
lb $16,data1($13)
srav $12,$7,$10
andi $1,$1,3
lbu $3,data0($1)
mtlo $5
srav $7,$7,$19
andi $6,$6,2
lh $18,data2($6)
mtlo $14
mfhi $19
label2:
j label6
xori $15,$17,55998
sltiu $3,$19,16731
addi $7,$1,16572
bgtz $9,label4
sllv $2,$12,$31
jal label3
and $8,$4,$11
andi $12,$12,3
lbu $8,data2($12)
sw $10,data2
beq $15,$19,label0
andi $9,$9,3
sb $16,data0($9)
label5:
mthi $1
andi $16,$16,3
lbu $14,data2($16)
srav $2,$11,$10
and $19,$2,$2
andi $17,$17,2
lhu $6,data1($17)
bgez $2,label6
andi $17,$17,2
sh $1,data0($17)
sltu $5,$3,$0
or $7,$15,$7
srav $3,$15,$12
xori $13,$7,22783
srav $0,$13,$14
sw $14,data0
mult $10,$1
bltz $9,label4
addi $10,$9,5743
sll $16,$9,3
sub $10,$5,$5
or $14,$18,$3
srlv $16,$5,$16
mfhi $4
mfhi $0
beq $11,$13,label6
ori $2,$14,48834
sub $1,$13,$3
andi $19,$19,2
lhu $2,data1($19)
xor $12,$8,$0
label4:
beq $19,$2,label3
sllv $10,$17,$10
andi $2,$2,2
sh $13,data0($2)
or $18,$8,$18
addi $3,$3,43230
slt $12,$11,$0
andi $13,$13,3
sb $8,data0($13)
mflo $5
andi $14,$14,3
lbu $4,data1($14)
sub $5,$4,$8
div $16,$13
andi $1,$1,2
lh $12,data2($1)
mflo $10
mtlo $4
slt $12,$12,$4
j label6
addiu $6,$9,50355
ori $v0, $0, 10
syscall