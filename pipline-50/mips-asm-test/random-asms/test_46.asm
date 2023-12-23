.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 64709
ori $0, $0, 5247
lui $1, 15084
ori $1, $1, 10579
label0:
lui $2, 45190
ori $2, $2, 16237
lui $3, 48904
ori $3, $3, 22392
label2:
lui $4, 961
ori $4, $4, 20470
lui $5, 5938
ori $5, $5, 27819
lui $6, 11549
ori $6, $6, 37040
lui $7, 7013
ori $7, $7, 37531
lui $8, 57669
ori $8, $8, 27681
lui $9, 24256
ori $9, $9, 60388
lui $10, 7998
ori $10, $10, 51055
lui $11, 52375
ori $11, $11, 60007
lui $12, 49643
ori $12, $12, 28356
lui $13, 2731
ori $13, $13, 11508
lui $14, 917
ori $14, $14, 19214
lui $15, 7721
ori $15, $15, 15086
lui $16, 13846
ori $16, $16, 62722
lui $17, 721
ori $17, $17, 5481
lui $18, 40164
label3:
ori $18, $18, 1563
lui $19, 20593
ori $19, $19, 20534
sw $16, data0
sw $17, data1
sw $14, data2
sltiu $0,$8,3982
and $13,$6,$19
label4:
multu $2,$3
and $14,$1,$14
nor $1,$1,$31
and $6,$8,$19
slt $10,$31,$13
mthi $5
sltu $3,$12,$7
or $8,$10,$8
subu $4,$31,$12
andi $0,$12,39320
sub $7,$15,$12
andi $19,$19,3
lbu $6,data1($19)
xor $10,$16,$4
xor $17,$8,$12
mtlo $0
mflo $12
srav $6,$5,$31
andi $16,$16,3
lbu $1,data2($16)
sltu $13,$13,$7
ori $11,$10,13875
and $8,$13,$18
lui $13,33388
sra $6,$31,17
andi $13,$13,3
lb $7,data2($13)
mflo $5
mflo $12
mfhi $11
xori $17,$6,39139
or $8,$9,$13
multu $18,$15
lw $10,data1
addiu $19,$19,23231
mflo $7
andi $10,$10,3
sb $15,data1($10)
ori $5,$6,22652
srav $2,$14,$5
andi $2,$8,54851
andi $5,$5,2
lh $4,data1($5)
addiu $11,$16,45757
andi $5,$5,2
lh $18,data1($5)
j label0
sltiu $8,$0,30177
addi $18,$0,13668
andi $6,$6,27421
sltu $8,$3,$6
bgtz $19,label5
mtlo $3
sll $19,$5,3
sltiu $13,$14,333
andi $19,$19,2
lhu $8,data0($19)
add $1,$2,$14
andi $15,$15,3
lb $1,data0($15)
bgtz $8,label0
divu $12,$13
andi $9,$4,46462
addiu $0,$7,47312
xori $17,$11,45807
sll $13,$19,19
xor $3,$15,$18
mult $3,$3
srlv $3,$16,$7
j label3
sltiu $12,$5,8318
andi $8,$8,2
sh $8,data1($8)
ori $8,$2,36217
andi $13,$13,2
sh $3,data0($13)
lui $6,27295
xor $12,$19,$15
srl $2,$8,18
slt $17,$7,$9
sll $19,$13,21
blez $17,label0
srav $9,$4,$1
addu $6,$7,$6
lui $18,48141
bltz $10,label5
addi $6,$2,15247
label6:
andi $11,$11,3
lb $5,data0($11)
label1:
andi $18,$3,14592
sll $4,$3,8
sw $5,data2
bgtz $12,label2
andi $0,$0,2
sh $7,data0($0)
andi $2,$2,2
sh $10,data2($2)
xori $8,$31,46988
sllv $15,$3,$19
lui $5,62815
xor $15,$8,$18
sub $7,$10,$1
lui $19,53318
label5:
subu $2,$12,$5
lw $3,data0
or $10,$3,$14
srlv $13,$1,$0
ori $2,$3,59256
j label5
slt $19,$0,$3
blez $31,label6
ori $v0, $0, 10
syscall