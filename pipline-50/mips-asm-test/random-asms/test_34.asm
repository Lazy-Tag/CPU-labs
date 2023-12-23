.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 59949
ori $0, $0, 51069
lui $1, 49604
ori $1, $1, 342
lui $2, 63480
ori $2, $2, 30694
lui $3, 14615
ori $3, $3, 54521
lui $4, 51535
label1:
ori $4, $4, 44183
lui $5, 30402
ori $5, $5, 22213
lui $6, 3306
label6:
ori $6, $6, 4064
lui $7, 45335
ori $7, $7, 29594
label5:
lui $8, 42939
ori $8, $8, 51384
lui $9, 60127
ori $9, $9, 37703
lui $10, 8569
ori $10, $10, 25223
lui $11, 35280
ori $11, $11, 1787
lui $12, 13374
ori $12, $12, 45474
lui $13, 32791
ori $13, $13, 10702
lui $14, 27498
ori $14, $14, 56335
lui $15, 19052
ori $15, $15, 43299
lui $16, 22833
ori $16, $16, 35556
lui $17, 14490
ori $17, $17, 20891
lui $18, 31974
ori $18, $18, 17294
lui $19, 33942
ori $19, $19, 5085
sw $5, data0
sw $8, data1
sw $4, data2
nor $17,$14,$7
slti $19,$11,-11481
addu $2,$15,$3
subu $10,$14,$11
mflo $16
divu $31,$17
slt $7,$31,$3
andi $11,$11,3
lbu $6,data2($11)
mult $14,$15
addu $6,$0,$18
mflo $17
ori $16,$14,58953
nor $0,$17,$1
lw $5,data2
label0:
label2:
andi $12,$12,3
sb $8,data2($12)
sll $16,$13,21
sll $8,$8,3
andi $14,$14,3
lb $10,data0($14)
sra $17,$13,18
and $7,$17,$19
div $8,$1
nor $2,$4,$9
multu $16,$5
divu $3,$14
sll $15,$17,2
mfhi $15
sllv $8,$6,$7
addu $4,$13,$16
mthi $13
sltu $4,$0,$18
addiu $16,$15,35633
sltu $10,$0,$6
add $12,$14,$13
sltu $2,$11,$4
or $13,$6,$31
andi $17,$17,2
lh $9,data1($17)
andi $17,$17,3
sb $4,data1($17)
multu $4,$10
sra $19,$4,20
srl $15,$14,20
andi $10,$10,3
lbu $14,data1($10)
add $2,$7,$19
divu $2,$12
sltiu $10,$5,20763
sll $16,$8,6
andi $5,$5,3
sb $8,data2($5)
bgtz $16,label5
label4:
slt $16,$18,$4
xori $19,$8,51610
mult $13,$11
beq $14,$2,label2
sllv $6,$17,$1
addu $10,$3,$9
bne $12,$10,label2
lw $13,data2
lw $19,data0
addiu $1,$9,65389
andi $13,$13,3
lbu $11,data0($13)
jr $ra
sll $9,$11,21
and $0,$2,$4
jal label3
srav $0,$14,$6
sub $11,$18,$12
srl $16,$10,0
bltz $17,label1
mfhi $0
addu $2,$11,$1
divu $17,$6
blez $11,label6
mtlo $10
xor $15,$6,$2
xor $1,$18,$18
div $15,$3
div $14,$7
multu $31,$6
or $5,$18,$10
nor $4,$31,$3
sll $0,$17,4
j label4
slti $0,$19,-6870
andi $14,$14,2
lh $9,data2($14)
xor $7,$8,$3
slt $6,$8,$17
jalr $16,$ra
andi $5,$5,2
lh $5,data2($5)
mfhi $4
mfhi $5
bltz $6,label0
div $19,$9
sra $10,$12,8
sub $5,$5,$14
sllv $13,$3,$5
andi $3,$3,3
sb $19,data1($3)
sll $18,$17,11
label3:
sltiu $13,$0,9000
and $13,$11,$2
mult $3,$1
bgtz $12,label0
div $0,$1
ori $v0, $0, 10
syscall