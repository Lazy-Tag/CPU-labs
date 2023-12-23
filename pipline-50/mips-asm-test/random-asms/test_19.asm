.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 13723
ori $0, $0, 47791
lui $1, 14754
ori $1, $1, 63587
lui $2, 165
ori $2, $2, 20249
lui $3, 53804
ori $3, $3, 28454
lui $4, 41473
ori $4, $4, 23971
lui $5, 23326
ori $5, $5, 15122
lui $6, 37698
label3:
ori $6, $6, 24715
lui $7, 51099
ori $7, $7, 57334
lui $8, 50178
ori $8, $8, 45749
lui $9, 28456
ori $9, $9, 53095
lui $10, 61976
ori $10, $10, 62445
lui $11, 25690
ori $11, $11, 58346
lui $12, 31982
ori $12, $12, 14132
lui $13, 47204
ori $13, $13, 36683
lui $14, 28466
ori $14, $14, 13637
lui $15, 56214
ori $15, $15, 5358
lui $16, 5306
ori $16, $16, 33851
lui $17, 37274
ori $17, $17, 45559
lui $18, 39826
ori $18, $18, 57822
lui $19, 14716
ori $19, $19, 31111
sw $19, data0
sw $7, data1
sw $17, data2
addiu $7,$16,45321
slt $12,$10,$17
addu $4,$16,$11
add $9,$15,$15
subu $19,$6,$18
subu $13,$15,$19
lui $15,59113
sltu $0,$13,$18
label6:
mfhi $4
sllv $13,$6,$19
ori $12,$16,58692
sw $16,data2
addi $10,$1,56253
sra $19,$3,1
slti $5,$10,24253
mult $16,$9
add $18,$9,$18
andi $11,$11,3
lbu $16,data1($11)
lw $13,data1
subu $2,$3,$12
label5:
mtlo $11
sub $9,$31,$3
ori $6,$2,27729
sw $10,data0
add $17,$12,$6
and $3,$2,$11
label4:
andi $18,$18,2
lh $19,data0($18)
subu $13,$2,$31
andi $17,$17,2
lhu $1,data2($17)
label2:
andi $17,$17,3
lbu $19,data2($17)
slt $15,$14,$6
andi $11,$11,3
lb $19,data2($11)
mthi $1
mtlo $7
addu $6,$4,$19
sltu $18,$4,$1
addiu $2,$9,9711
label1:
lw $9,data0
mult $1,$7
andi $1,$13,1537
subu $9,$8,$7
bne $14,$5,label1
slt $13,$18,$3
andi $0,$0,2
lhu $16,data2($0)
sw $17,data2
bgez $14,label0
add $15,$9,$8
addiu $10,$8,14130
beq $0,$10,label6
subu $14,$13,$14
addiu $7,$0,30316
multu $16,$19
srl $11,$19,5
mthi $1
mflo $10
andi $8,$8,2
lhu $15,data0($8)
sll $7,$1,29
xor $16,$2,$16
sltiu $5,$16,24076
mfhi $19
sll $17,$19,30
div $1,$17
multu $8,$8
sra $2,$7,28
subu $0,$12,$0
sltu $4,$8,$1
srl $13,$9,23
subu $17,$15,$18
sub $1,$12,$4
andi $19,$31,11178
xor $16,$19,$3
sw $19,data1
blez $16,label2
andi $5,$5,2
sh $9,data1($5)
bgtz $9,label2
andi $10,$10,2
lh $19,data1($10)
bne $1,$3,label3
mfhi $2
bltz $6,label6
mflo $10
add $4,$14,$16
srlv $5,$9,$0
or $12,$5,$7
lw $2,data2
slt $12,$8,$9
subu $17,$8,$11
multu $14,$14
sra $1,$4,15
andi $6,$6,3
sb $13,data2($6)
andi $6,$6,3
sb $6,data0($6)
and $1,$5,$18
andi $15,$5,21880
andi $15,$15,2
lhu $16,data1($15)
lui $13,29240
mtlo $12
nor $19,$0,$14
or $1,$11,$10
sra $10,$19,4
label0:
srl $3,$11,13
ori $11,$15,31960
ori $v0, $0, 10
syscall