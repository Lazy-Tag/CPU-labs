.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 28468
ori $0, $0, 58126
lui $1, 10956
ori $1, $1, 17124
lui $2, 12659
ori $2, $2, 57052
lui $3, 8193
ori $3, $3, 17721
lui $4, 63372
ori $4, $4, 28671
lui $5, 11539
ori $5, $5, 47743
lui $6, 23173
ori $6, $6, 35564
lui $7, 52855
ori $7, $7, 62291
lui $8, 18784
ori $8, $8, 3860
lui $9, 14793
ori $9, $9, 59202
lui $10, 15288
ori $10, $10, 3965
lui $11, 2344
ori $11, $11, 4697
lui $12, 1860
ori $12, $12, 22806
lui $13, 45060
ori $13, $13, 43596
lui $14, 48000
ori $14, $14, 21808
lui $15, 14958
ori $15, $15, 5783
lui $16, 48567
ori $16, $16, 9419
lui $17, 62017
ori $17, $17, 23884
lui $18, 2497
ori $18, $18, 19804
label6:
lui $19, 13420
ori $19, $19, 46962
sw $10, data0
sw $1, data1
sw $3, data2
subu $14,$9,$6
divu $12,$0
addiu $3,$31,57852
multu $31,$15
slt $12,$5,$11
nor $16,$15,$18
addiu $10,$11,40328
addu $11,$12,$8
sub $1,$12,$13
sra $2,$6,21
ori $3,$5,8432
srav $0,$10,$19
label2:
srav $16,$6,$12
ori $5,$16,36155
lw $17,data0
lui $12,40724
slt $19,$18,$8
mthi $15
mthi $2
srav $11,$2,$14
multu $17,$16
andi $14,$14,2
sh $14,data2($14)
label1:
xori $2,$18,62249
addi $2,$15,29599
nor $18,$11,$12
nor $14,$13,$3
label3:
xor $6,$19,$31
nor $9,$15,$0
srl $17,$16,28
sub $0,$3,$3
andi $14,$9,64265
lui $12,41702
andi $16,$16,3
lb $17,data0($16)
addu $16,$18,$10
label4:
div $9,$13
ori $13,$13,22483
subu $3,$5,$5
and $18,$3,$8
andi $14,$14,2
sh $10,data2($14)
ori $11,$19,57599
andi $16,$3,56111
addu $18,$14,$0
multu $15,$11
xori $5,$1,59085
andi $11,$11,2
lh $4,data0($11)
srlv $12,$15,$4
bgez $3,label5
nor $12,$0,$5
bgtz $0,label3
xor $11,$11,$19
bgez $6,label5
andi $11,$16,52645
lui $0,9500
subu $9,$0,$3
mfhi $12
lui $7,10220
mfhi $7
ori $7,$9,19434
mflo $14
label0:
bne $5,$12,label3
sltiu $12,$31,12877
slti $10,$1,10080
sltu $12,$5,$9
bltz $17,label2
label5:
slt $15,$11,$31
blez $3,label0
sub $8,$11,$12
srl $3,$13,21
srav $18,$19,$31
slt $19,$5,$15
xor $19,$14,$2
srav $9,$16,$10
lui $14,45212
ori $16,$3,42064
srl $8,$8,1
addiu $16,$12,60085
andi $19,$1,4833
jal label1
sra $17,$10,2
subu $16,$9,$18
add $9,$19,$31
bgtz $6,label1
mfhi $7
mthi $2
sltiu $3,$5,5584
sra $3,$9,11
ori $17,$14,59114
or $8,$5,$11
xor $18,$17,$12
srlv $6,$15,$14
andi $10,$10,3
sb $5,data1($10)
sllv $19,$9,$13
addi $9,$19,41312
xori $13,$31,52883
andi $9,$19,56610
andi $0,$2,29546
andi $2,$2,2
lhu $8,data1($2)
andi $16,$16,3
sb $0,data2($16)
andi $16,$16,3
lbu $17,data2($16)
and $15,$13,$13
ori $v0, $0, 10
syscall