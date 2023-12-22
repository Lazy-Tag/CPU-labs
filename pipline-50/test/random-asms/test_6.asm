.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 51852
ori $0, $0, 7457
lui $1, 63520
ori $1, $1, 57103
lui $2, 12099
ori $2, $2, 54074
lui $3, 34746
ori $3, $3, 3891
lui $4, 18023
ori $4, $4, 29874
lui $5, 54390
label5:
ori $5, $5, 9119
lui $6, 16428
ori $6, $6, 58030
lui $7, 63631
ori $7, $7, 63879
lui $8, 4006
ori $8, $8, 35628
lui $9, 26626
label4:
ori $9, $9, 42065
lui $10, 25291
ori $10, $10, 15168
lui $11, 16290
ori $11, $11, 41775
lui $12, 22751
ori $12, $12, 47428
lui $13, 37052
ori $13, $13, 36833
lui $14, 56921
ori $14, $14, 55859
lui $15, 56187
ori $15, $15, 33932
lui $16, 18726
ori $16, $16, 38907
lui $17, 50662
ori $17, $17, 5753
lui $18, 50013
ori $18, $18, 22399
lui $19, 28296
ori $19, $19, 24030
sw $13, data0
sw $15, data1
sw $8, data2
sllv $1,$9,$7
nor $10,$0,$6
nor $4,$1,$4
subu $9,$18,$8
addu $11,$5,$12
addi $7,$16,57355
mult $2,$12
label1:
sllv $19,$15,$10
nor $10,$8,$5
andi $13,$13,2
lhu $18,data1($13)
mult $13,$16
slti $4,$10,31747
srl $11,$19,28
xori $9,$19,6962
lui $11,35802
sll $13,$19,8
sllv $15,$6,$31
sub $1,$6,$16
andi $6,$6,3
sb $0,data1($6)
label2:
xor $9,$31,$16
xor $11,$18,$10
and $10,$5,$8
xori $2,$12,21818
slt $9,$6,$6
andi $10,$10,2
lhu $18,data0($10)
sllv $3,$11,$7
multu $16,$16
multu $10,$8
multu $11,$8
mflo $5
andi $5,$5,2
lhu $14,data0($5)
sltiu $10,$15,25264
mtlo $5
sub $17,$6,$7
sltu $0,$1,$2
sltiu $7,$6,10901
addiu $10,$31,1374
andi $10,$10,2
lh $6,data0($10)
andi $16,$16,2
lh $12,data0($16)
or $9,$5,$13
beq $11,$14,label5
andi $16,$16,2
lhu $19,data0($16)
div $6,$14
andi $4,$4,3
sb $14,data0($4)
slt $19,$0,$7
blez $17,label6
mflo $11
sllv $6,$6,$18
mult $17,$3
or $3,$18,$17
addi $1,$4,41038
sub $19,$8,$12
mfhi $15
sltiu $15,$6,7481
label0:
or $18,$3,$9
slt $3,$18,$15
multu $5,$4
sltu $0,$9,$14
divu $3,$19
or $8,$17,$17
nor $14,$12,$19
addiu $1,$5,24633
srav $10,$6,$9
slt $9,$9,$5
label3:
mtlo $11
sw $5,data0
div $1,$12
j label4
addu $12,$6,$6
bltz $31,label4
div $14,$5
mfhi $5
sra $14,$5,23
jal label1
divu $11,$9
mult $3,$5
label6:
nor $13,$8,$4
sllv $0,$31,$18
addiu $15,$31,57794
srlv $10,$7,$9
blez $15,label1
srav $9,$12,$12
ori $5,$11,47085
mfhi $17
andi $17,$17,2
sh $12,data0($17)
lw $2,data0
sll $14,$7,20
jal label6
and $16,$11,$11
lui $9,29220
divu $9,$7
andi $5,$5,2
sh $5,data1($5)
mult $0,$12
bgtz $31,label6
xori $16,$12,4331
andi $12,$12,2
lhu $5,data1($12)
and $17,$14,$10
sub $2,$17,$18
addi $18,$17,9451
andi $6,$6,2
lh $9,data1($6)
ori $v0, $0, 10
syscall