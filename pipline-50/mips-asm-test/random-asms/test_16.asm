.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 41549
ori $0, $0, 57840
lui $1, 63989
ori $1, $1, 31896
lui $2, 19273
ori $2, $2, 24292
lui $3, 40340
ori $3, $3, 37496
lui $4, 42923
ori $4, $4, 58531
lui $5, 30171
ori $5, $5, 32841
lui $6, 61268
ori $6, $6, 15238
lui $7, 37812
ori $7, $7, 26709
lui $8, 22069
ori $8, $8, 8763
lui $9, 16795
ori $9, $9, 1408
lui $10, 22711
ori $10, $10, 7458
lui $11, 60749
ori $11, $11, 23615
lui $12, 21988
ori $12, $12, 14304
lui $13, 17865
ori $13, $13, 13746
lui $14, 5190
ori $14, $14, 37962
lui $15, 32890
ori $15, $15, 44998
lui $16, 9467
ori $16, $16, 10555
lui $17, 8066
ori $17, $17, 19186
lui $18, 33960
ori $18, $18, 48773
lui $19, 46766
ori $19, $19, 65398
sw $1, data0
sw $7, data1
sw $6, data2
div $15,$6
mthi $4
ori $2,$1,555
div $0,$0
label1:
andi $15,$15,3
lbu $3,data2($15)
srav $11,$7,$4
andi $5,$5,3
sb $2,data1($5)
addi $8,$9,13283
sllv $17,$19,$2
andi $12,$8,54910
label3:
lui $10,40214
mult $18,$0
nor $10,$6,$15
add $14,$3,$11
andi $18,$18,2
lh $12,data0($18)
div $7,$6
srav $2,$11,$11
nor $14,$31,$3
mfhi $9
mflo $13
srl $9,$2,10
andi $5,$17,21473
slti $4,$12,-23209
div $4,$13
label0:
sltu $13,$7,$0
and $17,$13,$17
div $12,$6
add $17,$3,$0
sltu $18,$16,$10
sltiu $18,$15,4854
nor $4,$0,$14
sra $2,$3,8
divu $16,$7
sw $14,data2
mult $5,$7
addu $19,$10,$19
sw $2,data2
or $19,$9,$18
div $3,$18
sltiu $6,$31,20745
srav $16,$8,$16
label2:
sra $16,$12,30
lui $6,32511
j label0
mflo $4
addi $16,$10,62549
srl $8,$31,25
label6:
mflo $3
sub $18,$19,$1
label5:
bgtz $11,label3
mtlo $17
bltz $6,label0
and $9,$5,$16
sll $13,$6,1
slti $14,$2,-13422
mtlo $11
andi $3,$3,3
sb $7,data2($3)
lui $18,11423
sub $9,$14,$19
addiu $5,$19,33383
mult $10,$6
andi $2,$2,3
lbu $5,data1($2)
srav $7,$14,$0
bgtz $12,label5
mult $14,$13
sltiu $16,$1,27583
addi $8,$4,7811
andi $1,$1,3
lb $7,data0($1)
sub $10,$3,$7
sltiu $19,$5,5682
jalr $14,$ra
sltu $8,$12,$12
andi $18,$18,2
lhu $7,data0($18)
andi $19,$19,3
sb $2,data1($19)
mtlo $17
blez $19,label1
subu $13,$14,$31
jal label5
nor $9,$15,$8
andi $9,$3,20913
ori $14,$13,10250
addu $11,$1,$11
mult $17,$17
lw $19,data1
bltz $14,label0
srl $5,$5,9
bgtz $3,label5
and $13,$0,$19
blez $8,label6
div $6,$3
sltiu $5,$16,29137
andi $17,$17,2
lhu $12,data1($17)
mflo $11
mtlo $9
andi $10,$31,42997
srl $9,$8,24
blez $2,label5
addu $19,$17,$19
srlv $8,$8,$14
label4:
div $9,$6
ori $v0, $0, 10
syscall