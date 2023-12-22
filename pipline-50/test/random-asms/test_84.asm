.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 20041
ori $0, $0, 56505
lui $1, 25650
ori $1, $1, 37221
lui $2, 46366
ori $2, $2, 42205
lui $3, 41238
ori $3, $3, 34454
lui $4, 60586
ori $4, $4, 3727
lui $5, 24722
ori $5, $5, 1378
lui $6, 36295
ori $6, $6, 56273
lui $7, 52976
ori $7, $7, 62473
lui $8, 36425
ori $8, $8, 45065
lui $9, 36478
ori $9, $9, 10984
lui $10, 33337
ori $10, $10, 21249
lui $11, 59879
ori $11, $11, 61560
lui $12, 21470
ori $12, $12, 54027
label0:
lui $13, 56541
ori $13, $13, 60861
lui $14, 59102
ori $14, $14, 38497
lui $15, 51982
ori $15, $15, 10107
lui $16, 14378
ori $16, $16, 28806
lui $17, 35722
ori $17, $17, 31879
lui $18, 2376
ori $18, $18, 32527
lui $19, 32902
ori $19, $19, 23462
sw $12, data0
sw $14, data1
sw $2, data2
mtlo $7
mflo $9
mult $9,$15
srl $12,$6,8
andi $7,$7,3
lbu $9,data1($7)
addi $15,$6,32927
nor $4,$9,$13
subu $0,$7,$8
andi $13,$13,2
lh $10,data1($13)
andi $7,$7,2
lh $8,data0($7)
andi $11,$11,2
lhu $6,data2($11)
or $15,$1,$14
or $2,$18,$11
and $17,$13,$15
sll $11,$6,23
sub $2,$3,$2
sub $13,$3,$2
label5:
mfhi $7
andi $5,$5,2
lhu $4,data0($5)
andi $13,$13,2
lhu $5,data2($13)
nor $3,$5,$0
srav $9,$4,$10
sllv $0,$7,$18
srl $14,$9,16
add $2,$19,$9
andi $3,$0,48089
andi $11,$11,2
lh $5,data2($11)
mtlo $12
divu $8,$6
sllv $5,$13,$2
srlv $8,$12,$3
divu $11,$10
subu $14,$18,$15
mult $19,$16
addu $10,$5,$4
sra $17,$7,2
andi $11,$16,7763
mult $3,$5
sra $17,$6,20
addi $1,$7,41854
slti $7,$9,-4140
addiu $15,$2,46794
sllv $19,$15,$0
blez $19,label5
sltiu $2,$5,24521
slti $19,$11,-22839
label6:
addu $7,$9,$10
div $0,$19
andi $5,$5,3
sb $0,data2($5)
srlv $14,$15,$5
andi $10,$10,2
lhu $2,data0($10)
and $17,$11,$8
xor $11,$14,$19
blez $19,label5
mtlo $8
ori $4,$16,29977
andi $9,$9,3
lb $5,data0($9)
label4:
srl $19,$1,0
sltu $12,$31,$8
div $7,$2
divu $15,$17
or $13,$7,$8
mfhi $11
mthi $7
sw $11,data1
xor $8,$7,$3
andi $3,$3,2
lhu $7,data0($3)
sll $2,$8,22
div $12,$7
beq $14,$13,label3
div $12,$5
andi $7,$7,3
lbu $7,data0($7)
xor $16,$18,$17
j label1
andi $16,$16,2
lh $13,data0($16)
or $13,$19,$19
label3:
mflo $12
and $8,$9,$5
label1:
multu $10,$1
mthi $4
andi $10,$10,3
lbu $7,data0($10)
mult $19,$18
lui $12,63749
slti $19,$18,29100
lui $8,12049
or $14,$6,$0
sra $17,$5,8
andi $8,$8,3
lb $16,data1($8)
sltu $16,$2,$18
ori $13,$7,61228
and $5,$17,$6
div $11,$13
lui $14,10067
sra $7,$16,23
andi $15,$8,5432
nor $16,$12,$15
label2:
mfhi $15
or $16,$1,$2
xori $1,$31,8656
andi $19,$19,3
lb $1,data2($19)
ori $v0, $0, 10
syscall