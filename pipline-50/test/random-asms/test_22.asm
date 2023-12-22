.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 62206
ori $0, $0, 9327
lui $1, 18773
ori $1, $1, 7646
lui $2, 23158
ori $2, $2, 36071
lui $3, 26795
label3:
ori $3, $3, 23097
lui $4, 51268
ori $4, $4, 3516
label2:
lui $5, 22171
ori $5, $5, 61703
lui $6, 10975
ori $6, $6, 5236
lui $7, 10212
ori $7, $7, 41404
lui $8, 32617
ori $8, $8, 39155
lui $9, 13994
label1:
ori $9, $9, 51521
lui $10, 52533
ori $10, $10, 51236
lui $11, 25070
ori $11, $11, 15489
lui $12, 3423
ori $12, $12, 1900
lui $13, 53095
ori $13, $13, 31238
lui $14, 58042
ori $14, $14, 36597
lui $15, 47175
ori $15, $15, 7883
lui $16, 34932
ori $16, $16, 62021
lui $17, 48776
ori $17, $17, 35020
lui $18, 13488
ori $18, $18, 17974
lui $19, 2864
ori $19, $19, 13814
sw $13, data0
sw $10, data1
sw $17, data2
div $6,$16
divu $16,$9
sllv $0,$11,$3
sra $3,$10,29
addiu $18,$17,19756
andi $2,$2,3
lbu $2,data1($2)
sll $13,$12,23
subu $14,$8,$15
mthi $17
ori $13,$9,16607
andi $8,$8,2
lh $4,data2($8)
xor $10,$7,$1
andi $5,$9,2449
mthi $18
sltu $12,$17,$4
xori $16,$8,23498
lui $12,48091
sll $4,$19,6
srlv $18,$5,$12
andi $18,$18,2
sh $0,data0($18)
xori $3,$13,38785
mfhi $0
andi $7,$7,3
sb $12,data0($7)
subu $6,$18,$7
add $11,$12,$19
sllv $4,$13,$16
srlv $12,$13,$12
nor $8,$2,$2
addiu $5,$3,47312
andi $16,$16,2
lhu $3,data2($16)
or $10,$7,$15
addiu $2,$9,132
mtlo $5
srlv $6,$17,$12
andi $12,$12,2
lh $6,data1($12)
slti $13,$5,-5562
addu $9,$10,$18
andi $10,$10,2
lhu $10,data2($10)
div $2,$18
addiu $15,$18,35735
andi $16,$16,2
lhu $12,data2($16)
sllv $9,$31,$8
xor $12,$12,$16
mthi $11
label4:
addu $9,$4,$11
jalr $18,$ra
multu $31,$19
andi $11,$11,3
sb $15,data0($11)
bgez $16,label1
andi $18,$13,56972
srlv $12,$18,$14
sllv $12,$15,$3
srlv $7,$10,$7
lui $10,1757
andi $16,$7,26640
xori $13,$15,13679
sllv $17,$8,$13
sltu $17,$3,$16
bgtz $11,label1
label5:
lui $8,46832
nor $7,$3,$13
ori $17,$14,9895
j label6
mthi $14
sltu $16,$11,$4
beq $1,$4,label2
andi $9,$9,2
lh $11,data0($9)
add $6,$11,$1
label6:
andi $1,$1,3
sb $12,data0($1)
div $18,$7
mflo $0
xor $2,$10,$7
lw $2,data0
lui $10,64518
jal label6
srl $4,$5,27
jal label6
sltu $4,$6,$11
nor $6,$5,$12
mult $2,$0
sllv $19,$0,$14
mfhi $7
andi $3,$3,2
lhu $0,data0($3)
srav $5,$13,$2
lw $6,data2
multu $1,$19
jal label5
label0:
or $6,$7,$1
bgtz $7,label4
add $9,$14,$3
mtlo $12
sltu $8,$16,$3
div $4,$19
nor $17,$14,$17
lw $7,data1
mtlo $10
mfhi $18
add $4,$6,$4
srav $19,$15,$13
bltz $6,label4
ori $v0, $0, 10
syscall