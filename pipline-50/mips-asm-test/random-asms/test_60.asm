.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 55107
ori $0, $0, 11539
lui $1, 24945
ori $1, $1, 52695
lui $2, 14638
ori $2, $2, 30472
lui $3, 11680
ori $3, $3, 55193
lui $4, 19975
ori $4, $4, 18737
lui $5, 57715
ori $5, $5, 50185
lui $6, 34219
ori $6, $6, 8575
label2:
lui $7, 46113
ori $7, $7, 41320
lui $8, 31239
ori $8, $8, 51074
lui $9, 20656
ori $9, $9, 41070
lui $10, 47319
ori $10, $10, 21856
lui $11, 41180
ori $11, $11, 44354
lui $12, 37764
ori $12, $12, 10779
lui $13, 6896
ori $13, $13, 12911
lui $14, 7562
ori $14, $14, 54766
lui $15, 11491
ori $15, $15, 2602
lui $16, 3429
ori $16, $16, 1390
lui $17, 2458
ori $17, $17, 9303
lui $18, 10228
ori $18, $18, 48637
lui $19, 14838
ori $19, $19, 22142
sw $13, data0
sw $14, data1
sw $11, data2
divu $16,$16
multu $5,$11
divu $1,$15
multu $4,$0
sltu $9,$8,$14
sltiu $9,$15,10516
srlv $0,$31,$17
addiu $8,$13,38108
mfhi $16
lui $6,64118
sltu $3,$6,$16
sltiu $0,$14,9610
sll $5,$10,9
lw $0,data1
div $19,$16
div $10,$14
slti $7,$2,28908
sub $6,$9,$6
sll $8,$0,29
add $13,$19,$6
or $8,$31,$12
andi $19,$18,51418
andi $17,$17,2
lhu $16,data1($17)
divu $2,$17
label0:
nor $9,$18,$31
nor $12,$18,$31
mthi $8
mflo $1
label5:
add $18,$15,$4
addiu $6,$14,32678
srlv $18,$13,$9
div $13,$14
mtlo $7
sra $12,$13,6
sll $11,$2,9
divu $13,$8
mtlo $9
lui $9,31055
andi $0,$0,3
lbu $4,data0($0)
div $10,$10
or $18,$9,$5
slt $17,$14,$13
mtlo $5
and $3,$4,$14
label1:
ori $13,$1,60931
lw $12,data2
ori $6,$2,28125
andi $0,$0,2
lhu $19,data1($0)
div $16,$6
mult $13,$0
label4:
xori $10,$31,55413
bgtz $14,label1
lui $5,19051
addiu $6,$13,42207
and $10,$7,$19
blez $31,label0
andi $16,$19,27318
andi $17,$4,25118
jr $ra
mflo $5
label3:
andi $2,$2,2
sh $1,data0($2)
sltiu $14,$18,21953
bgez $2,label0
and $16,$17,$12
lui $17,40983
add $16,$1,$19
xori $9,$4,26531
j label3
srav $10,$7,$31
lui $8,305
jalr $10,$ra
nor $5,$31,$0
beq $5,$31,label3
ori $16,$12,33472
srl $8,$0,23
srlv $9,$17,$3
div $19,$7
sra $9,$31,24
lw $4,data1
andi $12,$12,3
lb $18,data1($12)
srlv $5,$3,$31
add $5,$7,$10
xori $14,$15,29457
add $11,$17,$5
sllv $15,$13,$5
srlv $14,$9,$18
label6:
div $12,$9
divu $8,$5
addiu $17,$5,35062
nor $15,$10,$4
slt $5,$17,$7
j label1
div $8,$12
divu $18,$10
subu $5,$0,$18
sub $10,$7,$17
bne $16,$16,label1
andi $4,$4,3
lbu $7,data2($4)
multu $10,$19
addi $17,$6,40599
ori $v0, $0, 10
syscall