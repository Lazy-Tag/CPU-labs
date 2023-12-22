.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 20086
ori $0, $0, 21668
lui $1, 18466
ori $1, $1, 40226
lui $2, 20360
ori $2, $2, 21155
lui $3, 61533
ori $3, $3, 41463
label2:
lui $4, 16936
ori $4, $4, 20042
lui $5, 15032
ori $5, $5, 24781
lui $6, 42060
ori $6, $6, 33774
lui $7, 45692
ori $7, $7, 57772
lui $8, 21311
ori $8, $8, 9280
lui $9, 42528
ori $9, $9, 23775
lui $10, 32631
ori $10, $10, 26671
lui $11, 4262
ori $11, $11, 27684
lui $12, 27269
ori $12, $12, 46615
label6:
lui $13, 15903
ori $13, $13, 39966
lui $14, 7526
ori $14, $14, 43156
lui $15, 40145
ori $15, $15, 60654
lui $16, 412
ori $16, $16, 3615
lui $17, 46306
ori $17, $17, 32065
lui $18, 32194
ori $18, $18, 35043
lui $19, 16638
ori $19, $19, 15325
sw $31, data0
sw $6, data1
sw $6, data2
sltu $19,$1,$14
andi $8,$8,3
sb $11,data2($8)
sltiu $14,$19,21479
nor $6,$5,$7
xor $17,$14,$0
multu $2,$1
xori $8,$0,3334
slti $16,$4,12697
andi $7,$0,41271
subu $3,$14,$1
sll $19,$12,10
mflo $4
divu $19,$14
andi $3,$3,2
lhu $1,data0($3)
multu $3,$3
and $18,$15,$5
sub $1,$16,$6
andi $6,$6,3
sb $14,data2($6)
andi $15,$15,3
lbu $4,data0($15)
label3:
subu $5,$1,$11
sllv $11,$0,$14
addu $15,$17,$31
mthi $9
mthi $13
srlv $7,$5,$4
sll $0,$0,4
sra $5,$18,21
srav $12,$12,$12
slt $2,$6,$2
multu $31,$9
subu $19,$12,$5
multu $15,$13
mult $1,$9
srlv $19,$16,$7
xor $12,$9,$18
nor $0,$8,$3
addiu $8,$4,17242
andi $2,$2,2
sh $18,data1($2)
xor $14,$31,$6
srl $7,$2,16
div $7,$10
subu $6,$7,$1
mthi $16
andi $15,$15,2
lhu $7,data2($15)
label5:
andi $7,$7,3
lb $8,data1($7)
addu $2,$2,$14
mtlo $13
andi $0,$0,2
lh $10,data0($0)
bgez $3,label2
andi $16,$16,3
lb $12,data2($16)
multu $2,$9
xori $8,$14,8034
sll $1,$7,28
blez $7,label4
divu $17,$19
andi $1,$31,24868
srlv $8,$2,$1
mthi $6
srav $4,$1,$7
sra $19,$7,8
divu $13,$3
label0:
subu $17,$5,$2
sllv $6,$18,$4
ori $0,$13,53590
andi $18,$18,2
lh $18,data1($18)
xor $14,$14,$14
addiu $6,$2,7562
mfhi $1
label1:
jal label0
subu $10,$0,$3
jalr $17,$ra
sltu $1,$13,$13
andi $7,$18,16376
jal label3
andi $13,$13,2
lh $5,data1($13)
sra $0,$3,29
slti $11,$6,-18603
divu $10,$14
lui $16,57712
andi $8,$8,2
sh $12,data1($8)
add $1,$15,$2
andi $1,$1,2
sh $18,data1($1)
add $10,$31,$12
slti $1,$11,25829
slti $15,$4,-24923
andi $5,$15,1418
ori $4,$8,24115
ori $4,$7,29590
divu $9,$18
add $13,$17,$14
and $13,$3,$1
bgtz $13,label4
mflo $0
bgez $6,label0
or $3,$16,$6
bltz $0,label4
sll $11,$7,25
slt $7,$16,$19
add $7,$14,$0
label4:
blez $1,label3
ori $v0, $0, 10
syscall