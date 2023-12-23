.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 32184
ori $0, $0, 14454
lui $1, 18324
ori $1, $1, 44496
label2:
lui $2, 12374
ori $2, $2, 65448
lui $3, 55471
ori $3, $3, 33398
lui $4, 20164
ori $4, $4, 11469
lui $5, 20732
ori $5, $5, 18888
lui $6, 64232
ori $6, $6, 13179
lui $7, 39545
ori $7, $7, 1687
lui $8, 29796
ori $8, $8, 29993
lui $9, 63824
ori $9, $9, 36967
lui $10, 50058
ori $10, $10, 26099
lui $11, 2868
ori $11, $11, 6894
lui $12, 62385
ori $12, $12, 17006
lui $13, 6394
ori $13, $13, 30454
lui $14, 11957
ori $14, $14, 33540
lui $15, 21867
ori $15, $15, 22725
lui $16, 19803
ori $16, $16, 30538
lui $17, 57782
ori $17, $17, 49163
lui $18, 42177
ori $18, $18, 42367
lui $19, 17788
ori $19, $19, 3520
sw $16, data0
sw $9, data1
sw $14, data2
mult $7,$17
subu $2,$4,$1
sll $7,$14,28
lw $0,data0
andi $2,$2,3
sb $14,data0($2)
subu $1,$12,$31
or $8,$31,$7
ori $7,$6,46542
ori $3,$2,45712
addi $13,$16,46113
addu $12,$6,$31
xor $8,$19,$0
andi $0,$0,2
lhu $15,data0($0)
addiu $1,$31,32859
multu $11,$15
add $3,$18,$16
andi $13,$13,3
lb $7,data2($13)
mfhi $7
label3:
sra $17,$3,21
addi $13,$31,6231
lui $8,49799
xori $6,$10,53638
sub $10,$6,$15
sltiu $16,$3,9204
div $11,$6
nor $0,$14,$16
andi $18,$18,2
lhu $2,data0($18)
multu $7,$13
srav $5,$4,$6
sw $1,data0
sra $4,$13,12
andi $7,$7,3
sb $11,data1($7)
label4:
slti $5,$6,16651
subu $8,$16,$4
slt $6,$17,$10
lw $1,data2
mtlo $2
andi $13,$8,25761
sw $2,data2
srav $11,$6,$6
bgez $12,label1
sltu $4,$12,$12
lui $6,40626
and $3,$14,$3
lw $5,data0
andi $8,$8,3
lb $1,data1($8)
label1:
mtlo $1
add $11,$0,$31
subu $16,$9,$9
label6:
addu $15,$10,$2
ori $2,$5,18820
beq $14,$7,label2
multu $19,$14
srlv $16,$19,$7
andi $4,$4,3
sb $17,data2($4)
label0:
andi $18,$18,2
lhu $18,data0($18)
slti $4,$16,-7306
sll $1,$14,19
mfhi $7
mult $8,$13
addiu $12,$10,8516
sll $18,$10,6
srav $10,$18,$15
lui $8,47746
bgtz $7,label0
mfhi $6
andi $19,$19,3
lbu $17,data0($19)
xori $11,$15,11867
andi $4,$4,3
lbu $3,data2($4)
andi $7,$16,34170
lui $12,16105
lw $19,data0
mfhi $7
and $6,$7,$4
addu $8,$5,$3
xor $17,$19,$5
sub $15,$12,$10
sltiu $11,$0,6654
mult $19,$17
ori $19,$12,414
addu $19,$5,$5
sltu $16,$9,$3
lw $18,data2
mthi $10
or $3,$4,$14
blez $12,label4
srl $1,$17,12
mflo $18
lw $10,data2
subu $9,$1,$13
ori $4,$12,29116
slt $12,$1,$10
mtlo $4
j label0
nor $3,$0,$8
label5:
addi $2,$13,52202
ori $3,$8,53472
mfhi $0
andi $8,$8,2
lh $4,data1($8)
jal label3
ori $v0, $0, 10
syscall