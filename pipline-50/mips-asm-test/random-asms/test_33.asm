.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 36469
ori $0, $0, 21803
lui $1, 11917
ori $1, $1, 25302
lui $2, 22464
ori $2, $2, 21243
label5:
lui $3, 4133
ori $3, $3, 42667
lui $4, 10913
ori $4, $4, 56029
lui $5, 5475
ori $5, $5, 12569
lui $6, 25930
ori $6, $6, 27600
lui $7, 13725
ori $7, $7, 54751
lui $8, 40456
ori $8, $8, 39852
lui $9, 9724
ori $9, $9, 9972
lui $10, 29949
ori $10, $10, 48699
label1:
lui $11, 50447
ori $11, $11, 16500
lui $12, 448
ori $12, $12, 32500
lui $13, 21494
ori $13, $13, 62508
lui $14, 1154
ori $14, $14, 60897
lui $15, 25548
ori $15, $15, 31433
lui $16, 9131
ori $16, $16, 11199
lui $17, 62354
ori $17, $17, 31162
label6:
lui $18, 32806
ori $18, $18, 26112
lui $19, 32992
ori $19, $19, 36327
sw $7, data0
sw $14, data1
sw $15, data2
lw $7,data0
andi $14,$14,3
lbu $7,data1($14)
sll $18,$0,7
sltu $10,$1,$2
nor $5,$3,$15
sw $10,data1
subu $15,$8,$31
srl $6,$11,22
andi $16,$16,2
lhu $17,data1($16)
sw $9,data1
xori $3,$6,21473
sltiu $17,$7,24324
andi $1,$1,2
sh $3,data1($1)
srav $17,$19,$7
andi $4,$4,2
lhu $1,data0($4)
xori $8,$18,10913
andi $11,$11,3
lb $6,data2($11)
sw $19,data0
div $14,$14
label3:
andi $16,$16,3
lb $1,data1($16)
sltiu $14,$17,26965
srlv $18,$1,$10
label0:
andi $1,$1,3
sb $14,data2($1)
sltiu $3,$31,12062
andi $3,$3,3
lbu $5,data0($3)
mtlo $0
xori $0,$17,64307
label4:
andi $3,$3,3
lbu $15,data1($3)
div $7,$8
label2:
andi $16,$16,2
sh $10,data0($16)
sllv $17,$7,$7
slti $8,$31,11890
or $8,$5,$13
add $16,$14,$18
mfhi $9
slt $12,$16,$19
multu $6,$5
divu $14,$10
sltiu $17,$8,22235
andi $4,$4,3
lb $18,data1($4)
srl $11,$2,6
sllv $18,$17,$17
bltz $17,label4
lui $4,33563
bgez $6,label5
multu $19,$6
or $7,$3,$4
or $4,$0,$31
andi $17,$17,3
sb $19,data1($17)
jal label2
mflo $10
jal label1
sw $9,data1
sw $18,data1
bne $11,$16,label1
or $14,$31,$0
subu $9,$9,$7
srl $19,$19,5
sltu $13,$1,$3
slti $9,$11,-24784
slti $8,$31,15877
andi $18,$18,3
lbu $13,data0($18)
sltiu $0,$3,11688
lw $7,data1
divu $19,$14
div $9,$16
andi $8,$8,2
sh $16,data1($8)
bgez $8,label5
slt $11,$3,$9
slti $2,$6,16793
mtlo $19
or $2,$14,$14
bne $3,$7,label0
slt $15,$5,$14
andi $0,$0,2
lh $12,data0($0)
subu $8,$18,$4
slti $6,$15,14294
srl $18,$7,2
srav $15,$1,$6
subu $0,$7,$15
sra $3,$19,30
bne $5,$5,label1
mtlo $3
andi $14,$14,3
sb $1,data0($14)
srl $17,$19,23
add $0,$15,$4
bne $3,$17,label5
andi $6,$6,3
lbu $18,data0($6)
xor $7,$5,$0
mtlo $17
mult $14,$4
sra $3,$8,13
add $12,$10,$5
sllv $5,$0,$6
lw $4,data2
mult $31,$5
andi $11,$11,2
lh $8,data0($11)
blez $0,label4
addiu $10,$11,35529
mult $3,$18
ori $v0, $0, 10
syscall