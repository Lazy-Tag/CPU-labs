.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 41365
ori $0, $0, 9614
label2:
lui $1, 31673
ori $1, $1, 40093
lui $2, 11918
ori $2, $2, 985
lui $3, 63388
ori $3, $3, 7376
lui $4, 27802
ori $4, $4, 20911
lui $5, 41106
ori $5, $5, 8799
label6:
lui $6, 50909
ori $6, $6, 35506
lui $7, 801
ori $7, $7, 53152
lui $8, 10897
ori $8, $8, 37433
lui $9, 31118
ori $9, $9, 48635
lui $10, 58834
ori $10, $10, 33666
lui $11, 47068
ori $11, $11, 19971
lui $12, 37305
ori $12, $12, 57722
lui $13, 51104
label0:
ori $13, $13, 54669
lui $14, 61102
ori $14, $14, 3075
lui $15, 9390
ori $15, $15, 17676
lui $16, 64632
ori $16, $16, 46851
lui $17, 21749
ori $17, $17, 49557
lui $18, 18463
ori $18, $18, 18590
lui $19, 64228
ori $19, $19, 65284
sw $2, data0
sw $10, data1
sw $7, data2
xor $17,$4,$5
add $10,$7,$14
srav $8,$11,$1
mult $10,$3
nor $15,$12,$12
or $16,$13,$5
andi $6,$6,3
sb $7,data1($6)
addu $11,$0,$1
sltiu $12,$0,8278
and $18,$0,$5
andi $11,$11,3
sb $6,data1($11)
label3:
andi $0,$0,2
sh $1,data1($0)
mfhi $16
div $12,$18
sub $12,$5,$17
slt $9,$11,$6
andi $17,$17,3
sb $11,data2($17)
srl $16,$18,5
addi $0,$12,40385
or $18,$1,$3
sw $12,data0
and $3,$9,$5
ori $5,$13,4551
sub $12,$5,$17
mflo $15
addu $0,$0,$12
andi $9,$9,3
sb $6,data0($9)
andi $10,$10,3
lb $19,data0($10)
nor $6,$0,$8
srav $14,$9,$8
addu $15,$9,$16
andi $4,$4,3
lb $11,data2($4)
slt $7,$19,$15
xor $1,$31,$16
multu $14,$16
div $18,$17
mtlo $2
andi $9,$9,2
lh $16,data1($9)
xori $3,$19,44049
sltiu $11,$1,28421
andi $14,$14,2
lh $1,data2($14)
andi $0,$0,3
lbu $1,data0($0)
divu $8,$15
xor $14,$1,$15
bne $18,$31,label6
srl $14,$19,7
divu $3,$11
mult $5,$13
mthi $18
sub $17,$10,$8
mflo $6
slt $11,$5,$3
subu $14,$10,$8
xori $8,$1,32702
addu $12,$7,$7
srav $16,$8,$6
nor $8,$12,$4
nor $17,$15,$11
subu $11,$17,$6
srlv $13,$18,$12
andi $19,$19,3
lbu $5,data2($19)
lui $5,46435
mfhi $5
div $13,$15
label4:
bne $4,$0,label0
or $7,$10,$10
xori $7,$10,62496
jalr $9,$ra
sll $7,$10,26
andi $11,$11,3
lb $9,data2($11)
bltz $17,label5
xor $3,$5,$0
slti $17,$6,-1090
sub $13,$13,$6
slt $11,$8,$7
mtlo $8
bne $7,$18,label1
sllv $11,$14,$10
andi $11,$18,23709
sra $9,$7,1
label1:
xori $12,$9,30925
blez $10,label6
xori $9,$9,29701
nor $7,$18,$6
label5:
subu $14,$9,$19
add $4,$4,$31
andi $15,$15,3
sb $6,data0($15)
nor $17,$18,$3
or $12,$17,$9
sllv $3,$10,$17
lw $8,data1
sltiu $13,$2,25290
add $10,$4,$4
jalr $5,$ra
xor $3,$9,$5
j label4
srav $0,$18,$2
andi $4,$4,2
sh $15,data1($4)
andi $9,$9,2
lhu $9,data1($9)
sw $5,data1
ori $v0, $0, 10
syscall