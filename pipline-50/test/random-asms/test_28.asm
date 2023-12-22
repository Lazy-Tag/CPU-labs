.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 32108
ori $0, $0, 10279
lui $1, 51408
ori $1, $1, 62725
lui $2, 9766
ori $2, $2, 205
lui $3, 51544
ori $3, $3, 14634
lui $4, 42707
ori $4, $4, 23646
lui $5, 51736
ori $5, $5, 5788
lui $6, 60516
ori $6, $6, 50164
lui $7, 29701
ori $7, $7, 4694
lui $8, 27727
ori $8, $8, 36502
lui $9, 6130
ori $9, $9, 47395
lui $10, 61287
ori $10, $10, 21279
lui $11, 12207
ori $11, $11, 18258
lui $12, 389
label5:
ori $12, $12, 12687
lui $13, 32896
ori $13, $13, 50196
lui $14, 57544
ori $14, $14, 1462
lui $15, 46135
ori $15, $15, 37286
lui $16, 43045
ori $16, $16, 3227
lui $17, 32671
ori $17, $17, 44577
label6:
lui $18, 42790
ori $18, $18, 38479
lui $19, 24661
ori $19, $19, 61554
sw $9, data0
sw $3, data1
sw $31, data2
lui $6,39062
nor $18,$15,$17
subu $5,$17,$8
ori $2,$15,29760
mult $17,$18
srlv $11,$6,$1
ori $3,$1,6469
andi $2,$2,2
sh $13,data2($2)
or $14,$16,$19
sra $3,$8,11
lw $12,data0
xori $7,$5,4296
mtlo $1
mtlo $19
addu $7,$16,$11
addu $17,$4,$31
ori $16,$16,15225
or $19,$31,$19
srl $3,$31,0
mult $11,$15
label2:
ori $10,$10,47034
mtlo $1
andi $4,$14,64114
divu $31,$19
addi $6,$19,32979
slt $0,$17,$14
mtlo $7
subu $0,$16,$10
subu $4,$16,$11
sltiu $11,$2,28405
xor $11,$1,$13
mflo $13
sub $19,$4,$4
mthi $11
andi $11,$11,2
sh $10,data1($11)
sra $9,$3,26
divu $0,$6
addu $1,$16,$19
addiu $11,$13,63451
label0:
sll $14,$12,5
ori $6,$0,8994
addi $10,$14,8939
nor $19,$16,$3
bgez $2,label0
srl $13,$12,25
srl $11,$17,14
srl $1,$2,5
label4:
mult $10,$14
beq $15,$12,label1
sll $16,$4,10
andi $8,$18,7329
addu $11,$6,$12
srlv $17,$4,$4
bgtz $7,label1
add $11,$18,$14
andi $0,$0,2
lh $7,data2($0)
mfhi $2
nor $11,$5,$19
xor $18,$17,$6
ori $1,$2,5315
blez $2,label3
lw $16,data0
mfhi $14
mfhi $5
addi $12,$17,31078
andi $18,$18,3
lb $17,data1($18)
and $6,$16,$11
srav $0,$3,$12
mtlo $1
beq $31,$1,label6
andi $13,$13,3
lbu $2,data1($13)
label1:
divu $16,$14
j label3
sltu $2,$15,$6
andi $12,$9,486
beq $11,$31,label3
lui $3,7461
ori $0,$7,11122
mflo $16
blez $14,label5
slt $14,$10,$13
multu $1,$18
or $14,$5,$2
andi $19,$19,3
lb $9,data0($19)
label3:
mfhi $4
andi $16,$16,2
sh $9,data0($16)
divu $2,$11
srl $12,$18,28
mfhi $0
mult $2,$6
bltz $13,label5
sllv $19,$6,$31
multu $5,$5
addiu $19,$14,28022
slti $9,$1,14169
bgtz $3,label5
andi $18,$18,3
lb $16,data2($18)
srlv $14,$13,$4
jal label4
sub $10,$15,$16
ori $v0, $0, 10
syscall