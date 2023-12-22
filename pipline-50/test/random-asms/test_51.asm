.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
label1:
lui $0, 57917
ori $0, $0, 23709
lui $1, 25946
ori $1, $1, 24736
lui $2, 5197
ori $2, $2, 25943
lui $3, 29674
ori $3, $3, 998
lui $4, 28260
ori $4, $4, 40563
lui $5, 36142
ori $5, $5, 27383
lui $6, 13631
ori $6, $6, 2524
lui $7, 5341
ori $7, $7, 22553
lui $8, 46654
ori $8, $8, 63470
lui $9, 21465
ori $9, $9, 48646
label5:
lui $10, 29715
ori $10, $10, 34359
lui $11, 46758
ori $11, $11, 32936
lui $12, 1895
ori $12, $12, 39273
lui $13, 29706
ori $13, $13, 15449
lui $14, 63526
ori $14, $14, 23907
lui $15, 13771
ori $15, $15, 56262
lui $16, 34993
ori $16, $16, 7987
lui $17, 8649
ori $17, $17, 22352
lui $18, 39800
ori $18, $18, 60875
lui $19, 49935
ori $19, $19, 53079
sw $11, data0
sw $12, data1
sw $11, data2
slt $7,$8,$0
srav $8,$7,$6
xor $4,$4,$9
sll $3,$6,30
or $7,$17,$18
srav $4,$2,$12
div $12,$4
andi $10,$10,3
lb $6,data1($10)
nor $2,$8,$1
nor $7,$14,$14
srlv $8,$15,$9
srav $17,$13,$2
srl $9,$13,3
andi $0,$0,3
lbu $9,data1($0)
lw $14,data2
andi $4,$4,2
sh $13,data0($4)
lw $1,data1
slti $18,$31,14973
mtlo $5
divu $3,$14
xori $14,$0,49159
ori $12,$0,353
addu $10,$15,$6
mflo $2
add $10,$11,$16
addiu $18,$11,3955
sub $11,$6,$5
label4:
subu $16,$15,$2
sltiu $2,$1,6490
mthi $13
mult $4,$12
multu $5,$15
div $5,$17
nor $6,$17,$4
lw $10,data2
slt $13,$14,$31
mflo $16
sw $11,data1
sub $7,$3,$12
label3:
andi $4,$1,13316
ori $9,$14,27405
nor $6,$9,$10
divu $3,$12
div $18,$10
blez $1,label1
mthi $0
divu $4,$11
divu $10,$18
sllv $4,$8,$0
mtlo $12
div $3,$2
label0:
andi $3,$3,3
lbu $17,data0($3)
sltiu $10,$10,30056
bgtz $4,label1
sub $18,$9,$12
sltu $11,$17,$3
mfhi $13
and $7,$8,$6
or $12,$3,$3
label2:
jr $ra
sra $15,$19,23
sllv $15,$6,$9
multu $3,$16
andi $7,$7,2
lhu $2,data2($7)
slt $1,$17,$7
srl $10,$14,25
andi $12,$12,2
lhu $2,data1($12)
andi $16,$16,3
sb $9,data0($16)
blez $17,label3
subu $12,$11,$8
bltz $16,label2
srl $19,$0,25
beq $1,$18,label3
srav $15,$16,$9
sll $9,$8,26
bne $2,$17,label4
ori $7,$4,22801
nor $17,$12,$13
xor $7,$18,$3
andi $13,$13,3
lbu $14,data1($13)
sll $13,$12,2
addiu $9,$11,41347
mthi $6
jal label4
mult $15,$18
sra $17,$12,14
andi $15,$15,2
lhu $17,data0($15)
addu $1,$3,$3
mfhi $10
j label4
subu $12,$0,$14
ori $14,$31,15695
bgtz $2,label1
mtlo $15
j label2
sllv $12,$31,$12
mfhi $8
mflo $2
andi $5,$5,2
sh $12,data0($5)
label6:
sub $5,$13,$0
ori $v0, $0, 10
syscall