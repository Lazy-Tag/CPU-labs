.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 51075
ori $0, $0, 46379
lui $1, 50390
ori $1, $1, 33618
lui $2, 16974
ori $2, $2, 53024
lui $3, 15668
ori $3, $3, 15412
lui $4, 50893
ori $4, $4, 53041
lui $5, 37039
ori $5, $5, 61152
lui $6, 17834
ori $6, $6, 107
lui $7, 39115
ori $7, $7, 12268
lui $8, 4029
ori $8, $8, 42946
lui $9, 1517
ori $9, $9, 21125
lui $10, 11083
ori $10, $10, 26708
lui $11, 51334
ori $11, $11, 64912
lui $12, 21123
ori $12, $12, 6602
lui $13, 33752
ori $13, $13, 10105
lui $14, 4019
ori $14, $14, 38826
lui $15, 25777
ori $15, $15, 38920
lui $16, 20303
ori $16, $16, 31989
lui $17, 21441
ori $17, $17, 32171
lui $18, 37010
label2:
ori $18, $18, 59314
label6:
lui $19, 24371
ori $19, $19, 59828
sw $4, data0
sw $6, data1
sw $18, data2
lw $8,data2
andi $3,$3,3
lb $13,data0($3)
addi $7,$14,21952
xor $16,$6,$8
slt $12,$19,$18
divu $10,$14
andi $1,$1,3
sb $4,data2($1)
andi $6,$6,2
lhu $4,data1($6)
sll $0,$6,13
sll $9,$2,12
andi $4,$4,2
sh $15,data0($4)
multu $6,$4
divu $6,$19
srav $10,$14,$31
divu $6,$15
andi $18,$18,3
lb $0,data1($18)
srl $10,$12,6
sltu $17,$10,$16
srlv $13,$4,$7
subu $1,$16,$18
sllv $4,$2,$8
addiu $3,$9,52611
add $18,$18,$9
mtlo $2
or $9,$10,$7
nor $10,$14,$9
ori $6,$3,13357
sllv $4,$12,$12
sra $19,$31,6
multu $9,$19
addi $18,$2,57083
srl $10,$18,2
mfhi $2
add $19,$6,$2
slt $4,$11,$19
divu $13,$5
addiu $10,$4,54535
div $5,$12
addiu $6,$31,38414
slti $13,$10,-12409
sw $3,data2
label5:
mthi $11
mthi $10
andi $17,$17,3
lbu $11,data1($17)
sltiu $8,$16,14354
andi $3,$3,3
lb $12,data2($3)
sra $6,$3,15
jal label5
addi $5,$1,48123
div $10,$19
jal label5
divu $19,$0
andi $17,$17,2
sh $8,data2($17)
mtlo $12
xori $4,$2,60468
xor $2,$10,$7
srlv $18,$18,$13
multu $5,$0
divu $19,$5
mtlo $2
addi $16,$4,26346
lw $0,data1
bgez $3,label2
ori $8,$7,26068
label0:
srl $11,$18,29
label1:
blez $18,label0
andi $16,$16,2
sh $0,data0($16)
andi $3,$5,63657
srlv $19,$3,$10
slti $14,$6,19119
beq $19,$14,label6
srl $7,$13,25
andi $13,$13,3
lb $15,data2($13)
and $18,$5,$5
sltiu $12,$13,19415
andi $8,$8,3
lb $19,data0($8)
sw $12,data0
blez $11,label3
andi $0,$0,2
sh $2,data1($0)
divu $12,$19
andi $6,$6,2
sh $5,data2($6)
xor $19,$17,$15
label3:
sw $17,data2
sub $13,$14,$10
sra $4,$15,26
bltz $17,label2
addiu $7,$6,60824
multu $3,$0
lw $11,data2
lw $18,data2
andi $17,$17,2
lh $19,data2($17)
addu $7,$5,$16
mtlo $0
and $12,$15,$7
andi $6,$6,2
lhu $0,data0($6)
or $3,$9,$9
jalr $2,$ra
label4:
subu $6,$12,$15
beq $13,$5,label2
andi $6,$6,3
lb $10,data2($6)
ori $v0, $0, 10
syscall