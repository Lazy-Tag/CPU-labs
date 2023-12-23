.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 27283
ori $0, $0, 56674
lui $1, 4355
ori $1, $1, 63805
lui $2, 35974
ori $2, $2, 53171
label0:
lui $3, 21565
ori $3, $3, 6025
lui $4, 56776
ori $4, $4, 8081
lui $5, 12375
ori $5, $5, 49932
lui $6, 63436
ori $6, $6, 4192
lui $7, 58
ori $7, $7, 30955
lui $8, 29805
ori $8, $8, 62583
lui $9, 13156
ori $9, $9, 8116
lui $10, 39708
ori $10, $10, 45420
lui $11, 18060
ori $11, $11, 43127
lui $12, 37128
ori $12, $12, 5467
lui $13, 10793
ori $13, $13, 13896
lui $14, 42875
ori $14, $14, 4037
lui $15, 19839
ori $15, $15, 2690
lui $16, 4260
ori $16, $16, 43802
lui $17, 36634
ori $17, $17, 35131
lui $18, 57865
ori $18, $18, 7641
lui $19, 43679
ori $19, $19, 61650
sw $12, data0
sw $15, data1
sw $17, data2
srlv $13,$16,$15
subu $11,$6,$15
andi $18,$18,3
sb $7,data0($18)
sw $2,data2
sub $5,$13,$0
mflo $13
sllv $7,$1,$10
andi $14,$14,3
lb $6,data0($14)
xor $11,$6,$14
label3:
multu $13,$9
mtlo $9
add $6,$11,$3
srl $4,$1,4
mthi $1
srav $14,$19,$12
addi $3,$4,30919
divu $19,$0
srl $14,$4,19
slt $8,$13,$19
sltiu $9,$2,2697
srav $10,$6,$7
andi $3,$3,3
lb $5,data0($3)
mthi $6
mult $6,$10
andi $12,$12,3
sb $17,data0($12)
andi $14,$14,3
lb $14,data0($14)
multu $19,$15
sw $8,data0
addi $9,$7,56500
mthi $17
ori $2,$3,21981
slti $5,$31,-19447
slt $17,$1,$3
addu $1,$31,$17
sllv $6,$1,$8
sw $1,data2
mflo $13
ori $9,$4,57980
sub $4,$13,$4
label5:
lw $16,data0
jal label2
mtlo $17
bne $17,$5,label3
ori $11,$6,45924
and $6,$12,$15
bltz $18,label3
addu $0,$5,$9
andi $17,$17,3
sb $3,data2($17)
or $0,$7,$8
andi $18,$18,2
lhu $8,data0($18)
jalr $16,$ra
lui $0,6470
and $5,$18,$10
andi $11,$11,2
lh $13,data0($11)
mtlo $11
andi $3,$3,3
lbu $4,data0($3)
j label1
xor $14,$19,$31
slti $7,$13,-8148
beq $15,$11,label2
label4:
addi $14,$9,60127
andi $13,$15,28173
jal label3
andi $3,$3,3
lb $6,data2($3)
mthi $2
srav $16,$8,$1
xori $12,$13,14204
bne $13,$17,label5
srav $17,$12,$19
slt $4,$16,$19
sll $16,$31,26
blez $13,label0
srlv $13,$9,$5
xor $17,$14,$19
sll $8,$10,16
bne $0,$13,label4
label2:
sltiu $16,$19,24242
srl $2,$31,13
sub $3,$18,$11
srlv $3,$11,$10
andi $12,$13,8123
mflo $14
bne $15,$2,label0
andi $8,$8,3
lbu $2,data1($8)
andi $3,$3,3
lbu $11,data2($3)
sw $18,data0
sltu $3,$4,$11
slti $17,$11,16702
jal label0
multu $15,$17
andi $5,$5,2
sh $17,data1($5)
multu $16,$14
label1:
mtlo $9
andi $19,$15,45324
srlv $2,$12,$9
blez $13,label6
addu $0,$3,$5
label6:
beq $31,$16,label6
sra $0,$2,18
bltz $14,label3
ori $v0, $0, 10
syscall