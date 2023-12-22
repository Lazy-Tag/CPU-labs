.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 12237
label2:
ori $0, $0, 54131
lui $1, 404
ori $1, $1, 343
lui $2, 37507
ori $2, $2, 17078
lui $3, 22730
ori $3, $3, 27908
lui $4, 56588
ori $4, $4, 17254
lui $5, 50222
ori $5, $5, 23182
lui $6, 55035
ori $6, $6, 42802
lui $7, 14514
ori $7, $7, 54931
lui $8, 56452
ori $8, $8, 35618
lui $9, 48876
ori $9, $9, 19791
lui $10, 9142
ori $10, $10, 32153
lui $11, 9503
ori $11, $11, 14341
lui $12, 32747
ori $12, $12, 60656
lui $13, 20383
ori $13, $13, 20138
lui $14, 27810
label4:
ori $14, $14, 8221
lui $15, 64863
ori $15, $15, 62419
lui $16, 24993
ori $16, $16, 17463
lui $17, 10826
ori $17, $17, 63077
label1:
lui $18, 42668
ori $18, $18, 4387
lui $19, 6778
ori $19, $19, 16098
sw $9, data0
label3:
sw $31, data1
sw $16, data2
or $8,$15,$4
ori $12,$7,5917
mfhi $13
and $18,$14,$31
srlv $13,$14,$6
or $1,$3,$9
srlv $13,$15,$15
ori $7,$3,62945
andi $12,$12,3
lbu $19,data1($12)
andi $7,$7,3
lbu $12,data2($7)
divu $19,$12
slti $7,$17,32728
lw $8,data0
andi $15,$15,2
lhu $19,data2($15)
label5:
sllv $12,$14,$13
mfhi $8
lui $2,3037
div $19,$14
mfhi $6
sub $4,$4,$5
nor $13,$14,$14
label6:
andi $10,$10,2
lhu $13,data1($10)
addi $14,$31,41852
sltiu $17,$14,20578
xor $7,$7,$14
add $12,$9,$15
divu $18,$0
xori $3,$9,721
xori $15,$31,54779
andi $17,$17,3
sb $15,data1($17)
div $6,$14
andi $5,$5,2
sh $16,data0($5)
mfhi $15
mult $1,$6
or $18,$18,$2
andi $12,$18,22927
mflo $10
div $18,$4
sub $7,$31,$0
add $16,$4,$14
divu $31,$0
addi $16,$3,44098
bne $8,$5,label0
mtlo $6
andi $3,$3,3
sb $16,data0($3)
multu $13,$10
mflo $7
sll $7,$4,11
xori $17,$7,39037
nor $17,$14,$0
andi $5,$5,3
lbu $13,data0($5)
addi $16,$10,977
sll $16,$31,28
mtlo $0
bgez $7,label3
subu $6,$10,$5
bne $10,$5,label6
mult $3,$6
multu $31,$13
multu $11,$6
srav $5,$16,$16
addu $9,$14,$13
mfhi $10
sub $11,$12,$15
j label4
div $3,$14
bgtz $9,label2
divu $10,$8
srav $3,$0,$5
or $13,$1,$1
lw $14,data0
mthi $6
mthi $0
mthi $2
sltu $7,$3,$11
and $15,$18,$12
add $4,$13,$19
lw $18,data2
label0:
andi $4,$4,2
lh $10,data1($4)
beq $5,$6,label3
nor $8,$5,$13
addi $13,$15,9959
sllv $6,$7,$14
andi $3,$3,3
lbu $0,data1($3)
sra $1,$8,21
sub $5,$12,$15
blez $7,label6
addiu $11,$11,50349
add $9,$17,$16
jal label5
mfhi $11
slti $5,$12,-29402
mfhi $14
andi $10,$11,43363
andi $9,$9,2
sh $6,data1($9)
addiu $19,$16,12463
ori $7,$3,32218
slti $2,$4,20183
div $14,$19
div $4,$0
ori $v0, $0, 10
syscall