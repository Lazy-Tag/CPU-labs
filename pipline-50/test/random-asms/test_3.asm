.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 22610
ori $0, $0, 21100
lui $1, 65519
ori $1, $1, 44888
lui $2, 1726
ori $2, $2, 600
lui $3, 8582
ori $3, $3, 53672
lui $4, 47730
ori $4, $4, 15960
lui $5, 22723
label0:
ori $5, $5, 48013
lui $6, 14361
ori $6, $6, 58329
lui $7, 18449
ori $7, $7, 35274
lui $8, 53659
ori $8, $8, 10996
lui $9, 27833
ori $9, $9, 61194
lui $10, 29369
ori $10, $10, 26396
lui $11, 40339
ori $11, $11, 33732
lui $12, 29063
ori $12, $12, 35798
lui $13, 15813
ori $13, $13, 63593
lui $14, 25785
label6:
ori $14, $14, 62006
lui $15, 21722
ori $15, $15, 20013
lui $16, 43750
ori $16, $16, 1378
lui $17, 38481
ori $17, $17, 64079
lui $18, 24810
label1:
ori $18, $18, 11906
lui $19, 35753
ori $19, $19, 11257
sw $5, data0
sw $10, data1
sw $18, data2
andi $10,$1,28852
addiu $11,$17,21887
mthi $1
andi $3,$3,3
sb $8,data0($3)
andi $18,$18,2
lhu $5,data1($18)
sw $13,data2
and $12,$7,$0
sll $7,$5,14
sll $6,$5,9
add $0,$0,$1
sw $11,data1
mfhi $11
multu $0,$0
sltiu $17,$16,29098
nor $18,$13,$7
addiu $7,$14,41571
srl $2,$8,26
ori $11,$11,52439
xori $0,$31,20779
mtlo $10
addu $7,$16,$5
and $19,$9,$18
srlv $13,$31,$11
andi $9,$9,3
lb $3,data1($9)
andi $7,$7,3
sb $4,data1($7)
sltu $11,$6,$31
andi $1,$1,2
sh $4,data1($1)
sra $12,$17,24
mfhi $9
multu $8,$5
nor $10,$18,$6
sw $2,data1
sltiu $5,$8,22577
sltiu $1,$16,8387
addi $5,$7,10031
mtlo $4
sll $12,$14,5
subu $16,$17,$10
sra $11,$5,5
lui $10,43405
and $0,$14,$1
and $12,$13,$17
andi $12,$12,3
lbu $10,data0($12)
slti $17,$17,26777
jalr $15,$ra
sltiu $4,$4,30377
label4:
andi $12,$12,2
sh $2,data1($12)
divu $10,$11
mthi $4
ori $2,$0,5751
label3:
sltiu $11,$5,17132
sw $15,data2
andi $1,$12,6349
add $7,$14,$19
beq $15,$17,label4
label2:
multu $4,$19
ori $1,$3,64035
mfhi $10
sra $15,$7,18
beq $11,$12,label6
sw $6,data2
sltiu $6,$11,26264
lui $9,38674
andi $13,$13,2
lh $19,data2($13)
slt $17,$17,$2
slt $17,$0,$19
andi $4,$1,50831
lw $16,data2
sw $1,data0
nor $4,$4,$31
lw $9,data1
sll $10,$2,16
srlv $10,$2,$2
lw $8,data2
andi $1,$1,2
lhu $7,data2($1)
sltu $5,$12,$17
lw $16,data1
subu $19,$2,$5
label5:
divu $2,$0
lw $14,data1
sltu $15,$17,$31
srlv $0,$3,$8
andi $4,$4,3
sb $11,data1($4)
mfhi $1
andi $12,$12,3
lbu $13,data2($12)
srlv $12,$31,$3
mtlo $9
bne $2,$1,label3
srl $12,$14,1
mtlo $3
addi $4,$9,43007
sra $11,$14,22
sll $14,$13,13
sub $10,$1,$31
sra $1,$9,6
addiu $4,$15,30302
srav $5,$9,$4
mult $6,$8
andi $19,$9,53083
lw $17,data2
ori $v0, $0, 10
syscall