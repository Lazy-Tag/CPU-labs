.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 31268
ori $0, $0, 18484
lui $1, 55584
ori $1, $1, 34115
lui $2, 8942
ori $2, $2, 12789
lui $3, 34973
ori $3, $3, 34877
lui $4, 59665
ori $4, $4, 23018
lui $5, 40001
ori $5, $5, 59035
lui $6, 52133
ori $6, $6, 9393
lui $7, 57907
ori $7, $7, 27870
lui $8, 47213
ori $8, $8, 35470
lui $9, 63906
ori $9, $9, 52831
lui $10, 22253
ori $10, $10, 8031
lui $11, 36353
ori $11, $11, 53579
lui $12, 63254
ori $12, $12, 57174
lui $13, 45210
ori $13, $13, 6541
label5:
lui $14, 18612
ori $14, $14, 13566
lui $15, 21724
ori $15, $15, 41423
lui $16, 33644
ori $16, $16, 11488
lui $17, 25997
ori $17, $17, 28341
lui $18, 44346
ori $18, $18, 53947
lui $19, 43139
ori $19, $19, 61143
sw $4, data0
sw $12, data1
sw $12, data2
add $13,$0,$9
label6:
divu $6,$5
addiu $10,$11,42060
or $13,$1,$7
andi $18,$18,2
lhu $16,data2($18)
andi $12,$12,3
lb $1,data2($12)
mflo $15
nor $1,$11,$15
slti $0,$16,-20664
xor $12,$11,$9
label3:
divu $12,$18
andi $17,$17,3
lbu $2,data2($17)
andi $13,$13,2
lh $9,data1($13)
mfhi $16
andi $14,$14,2
lhu $15,data0($14)
lui $3,19677
nor $14,$16,$10
mtlo $9
addiu $19,$11,9143
and $18,$17,$10
xor $0,$11,$8
mfhi $5
nor $14,$11,$18
srlv $0,$1,$16
nor $10,$8,$8
sltiu $13,$14,26870
sw $15,data1
mfhi $13
sll $16,$15,15
andi $9,$9,2
sh $16,data1($9)
sra $5,$18,14
andi $8,$8,2
lhu $11,data2($8)
sltiu $17,$7,11764
divu $1,$14
andi $16,$16,2
lh $9,data2($16)
mflo $10
addu $9,$15,$16
sub $7,$4,$13
or $19,$6,$9
mtlo $13
andi $7,$7,3
lbu $0,data2($7)
sltiu $12,$7,29021
addu $3,$2,$4
xor $1,$19,$13
andi $15,$15,2
lhu $4,data1($15)
ori $14,$6,48763
andi $2,$2,3
lbu $18,data2($2)
sub $18,$5,$4
j label3
sltu $15,$0,$18
sllv $18,$12,$14
and $19,$19,$19
andi $10,$10,3873
lui $7,49036
div $19,$12
multu $16,$2
addu $5,$2,$16
mflo $14
sw $11,data2
lw $0,data0
bne $14,$13,label5
sltu $8,$19,$16
sra $11,$0,7
srl $8,$13,19
sltu $13,$3,$14
or $10,$18,$13
sub $16,$14,$12
j label2
xor $9,$12,$6
lw $11,data0
and $17,$0,$0
xori $4,$5,37231
xor $7,$3,$12
andi $2,$2,2
sh $8,data1($2)
subu $18,$11,$18
nor $13,$6,$15
mtlo $0
xori $17,$19,28530
nor $16,$9,$5
andi $17,$17,3
lb $15,data0($17)
mflo $16
sllv $19,$11,$9
andi $19,$19,2
sh $6,data1($19)
label0:
andi $1,$9,35550
j label6
addi $0,$31,35862
label4:
label1:
andi $8,$8,2
lhu $8,data1($8)
sltiu $10,$4,18674
bgez $3,label3
ori $11,$19,47744
srav $10,$31,$17
nor $2,$9,$5
jal label6
add $6,$3,$7
and $10,$6,$14
andi $14,$14,3
lb $17,data1($14)
beq $8,$7,label0
xori $7,$31,1320
label2:
mtlo $2
sltu $5,$31,$2
ori $v0, $0, 10
syscall