.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 62393
ori $0, $0, 59868
lui $1, 18242
ori $1, $1, 372
lui $2, 35763
ori $2, $2, 27979
lui $3, 49831
ori $3, $3, 53340
lui $4, 27246
ori $4, $4, 15746
lui $5, 49991
ori $5, $5, 9451
lui $6, 41620
ori $6, $6, 22967
lui $7, 61096
ori $7, $7, 4404
lui $8, 45964
ori $8, $8, 13126
lui $9, 34864
ori $9, $9, 6594
lui $10, 3766
ori $10, $10, 27215
lui $11, 47145
ori $11, $11, 35308
lui $12, 9137
label3:
ori $12, $12, 35253
lui $13, 30998
ori $13, $13, 28202
lui $14, 57419
ori $14, $14, 20218
lui $15, 46779
ori $15, $15, 17912
lui $16, 27125
ori $16, $16, 62613
lui $17, 47363
ori $17, $17, 56661
lui $18, 14209
ori $18, $18, 1360
label5:
lui $19, 36326
ori $19, $19, 51174
sw $15, data0
sw $5, data1
sw $9, data2
sra $1,$4,30
label1:
srl $12,$16,1
multu $17,$1
andi $13,$13,3
lbu $12,data0($13)
or $0,$15,$0
div $9,$18
andi $15,$15,3
sb $19,data0($15)
multu $4,$12
divu $19,$3
label4:
label2:
label0:
or $2,$11,$7
sllv $11,$3,$19
andi $13,$13,3
sb $7,data0($13)
sll $19,$1,5
sllv $10,$15,$15
and $0,$6,$14
nor $12,$17,$3
and $8,$19,$14
andi $17,$17,2
lh $1,data1($17)
andi $11,$11,2
lh $13,data0($11)
lw $19,data0
sltu $3,$0,$9
addu $7,$2,$4
or $4,$11,$17
sltiu $19,$11,6362
mult $10,$17
divu $7,$13
sll $15,$17,19
andi $11,$11,3
sb $8,data1($11)
sltu $9,$14,$7
multu $5,$15
slti $15,$18,12133
slt $13,$15,$5
addi $11,$1,4854
xor $18,$16,$6
divu $13,$1
xor $10,$0,$14
sllv $10,$8,$31
mfhi $11
or $7,$13,$5
sltu $4,$4,$17
mflo $4
srav $15,$8,$1
blez $6,label1
sw $19,data1
mtlo $13
sll $19,$19,2
j label3
sub $7,$9,$19
mthi $0
jalr $2,$ra
andi $18,$18,2
lh $16,data0($18)
srav $10,$19,$7
sll $3,$18,12
or $6,$14,$6
lui $6,63815
j label3
sra $3,$11,8
lui $13,26644
mflo $2
or $18,$14,$9
multu $9,$4
bgez $1,label6
srl $6,$14,10
ori $17,$18,54371
andi $17,$17,3
sb $8,data1($17)
bltz $4,label1
slti $2,$13,8705
div $3,$7
jal label4
slti $11,$7,20722
xor $19,$6,$5
slt $12,$19,$7
lw $5,data2
mult $9,$17
sllv $0,$17,$19
bgtz $11,label3
mult $12,$0
sll $18,$10,9
beq $6,$10,label2
sll $4,$10,14
addi $9,$9,64804
lui $11,54141
j label4
lui $10,2776
mtlo $16
ori $6,$16,46088
sltiu $4,$7,30984
mthi $18
bgtz $4,label1
sltiu $0,$10,30853
blez $16,label5
slti $0,$2,17740
bgtz $5,label2
slti $16,$15,-29855
ori $4,$5,3078
label6:
andi $15,$15,3
lb $1,data0($15)
xori $0,$12,44495
mult $15,$19
subu $4,$18,$10
blez $13,label1
ori $v0, $0, 10
syscall