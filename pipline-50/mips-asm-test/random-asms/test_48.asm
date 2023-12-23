.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 26987
ori $0, $0, 28342
lui $1, 64419
ori $1, $1, 64797
lui $2, 2302
ori $2, $2, 56209
lui $3, 57644
ori $3, $3, 59651
lui $4, 21899
label3:
ori $4, $4, 59183
lui $5, 45542
ori $5, $5, 44759
lui $6, 21637
ori $6, $6, 40384
lui $7, 58768
label5:
ori $7, $7, 7679
lui $8, 47822
ori $8, $8, 7599
lui $9, 63505
ori $9, $9, 52069
label6:
lui $10, 41124
ori $10, $10, 12776
lui $11, 7349
ori $11, $11, 15156
lui $12, 43668
ori $12, $12, 12499
lui $13, 12599
label4:
ori $13, $13, 10312
lui $14, 8915
ori $14, $14, 15323
lui $15, 36740
ori $15, $15, 17290
lui $16, 63669
ori $16, $16, 50876
lui $17, 23549
ori $17, $17, 34699
lui $18, 57665
ori $18, $18, 19046
lui $19, 26147
ori $19, $19, 37340
sw $4, data0
sw $17, data1
sw $6, data2
nor $12,$19,$6
multu $6,$8
srl $5,$17,5
divu $16,$17
slti $4,$4,8278
divu $6,$11
subu $9,$0,$9
slt $2,$3,$6
multu $18,$2
andi $15,$15,2
lh $19,data1($15)
xor $2,$13,$7
mflo $1
mfhi $15
xori $2,$2,54572
addi $14,$1,40307
sra $0,$17,10
addiu $8,$15,45158
sra $7,$10,9
sra $12,$12,15
andi $3,$3,3
lb $17,data1($3)
andi $3,$3,2
sh $6,data1($3)
sllv $17,$4,$14
andi $19,$19,2
sh $8,data1($19)
sra $6,$7,18
lui $0,34942
xor $3,$16,$2
srav $7,$0,$14
andi $18,$18,3
lbu $1,data0($18)
slt $2,$13,$17
add $5,$1,$5
srav $4,$18,$5
add $1,$15,$7
sltiu $9,$19,12803
sllv $9,$6,$0
addi $16,$14,4965
add $15,$31,$7
andi $10,$10,3
sb $18,data0($10)
subu $15,$16,$17
sw $8,data0
or $5,$15,$4
beq $19,$19,label0
mthi $13
sw $11,data2
xor $5,$9,$19
andi $13,$13,3
lbu $5,data0($13)
j label3
addiu $10,$13,9902
jr $ra
addiu $16,$12,58543
j label4
mflo $2
bne $13,$6,label3
sltiu $13,$15,19958
nor $9,$18,$17
label0:
lui $2,36695
lw $6,data2
sub $16,$17,$1
bgez $17,label2
sllv $18,$5,$4
slt $12,$3,$0
xor $3,$0,$0
j label0
mflo $17
andi $0,$15,7822
bgtz $8,label3
addu $0,$18,$7
bgez $5,label1
sltiu $12,$14,26539
multu $12,$1
addiu $13,$0,36555
slti $3,$16,-23967
mtlo $17
mflo $17
andi $16,$12,52487
bgez $2,label4
andi $5,$5,3
sb $18,data1($5)
divu $18,$11
blez $9,label6
mfhi $7
mult $11,$17
multu $1,$10
mthi $9
andi $12,$12,3
sb $15,data1($12)
andi $1,$1,2
sh $9,data2($1)
sw $17,data0
beq $17,$8,label0
add $18,$2,$2
addu $18,$0,$17
label1:
div $11,$12
mtlo $16
label2:
andi $14,$14,2
lh $19,data0($14)
divu $10,$19
slti $12,$5,-22804
sub $19,$3,$7
andi $4,$4,3
sb $5,data2($4)
sllv $18,$14,$14
addiu $10,$7,24002
xor $15,$10,$2
mthi $5
sllv $4,$5,$4
ori $v0, $0, 10
syscall