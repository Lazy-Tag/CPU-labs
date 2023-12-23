.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 56011
ori $0, $0, 27158
lui $1, 24271
ori $1, $1, 33407
label1:
lui $2, 63573
ori $2, $2, 38276
lui $3, 26138
ori $3, $3, 32583
lui $4, 38353
ori $4, $4, 54139
lui $5, 8780
ori $5, $5, 30566
lui $6, 12813
ori $6, $6, 14789
lui $7, 50202
ori $7, $7, 15039
lui $8, 2094
ori $8, $8, 41834
lui $9, 29153
ori $9, $9, 22710
lui $10, 61382
ori $10, $10, 34209
lui $11, 33060
ori $11, $11, 40095
lui $12, 64655
ori $12, $12, 53939
lui $13, 816
ori $13, $13, 46270
lui $14, 64432
ori $14, $14, 26084
lui $15, 13624
ori $15, $15, 32169
lui $16, 13456
ori $16, $16, 27942
label4:
lui $17, 53708
ori $17, $17, 42755
lui $18, 18644
ori $18, $18, 50906
lui $19, 47165
ori $19, $19, 34683
sw $10, data0
sw $2, data1
sw $31, data2
andi $7,$7,2
lh $17,data2($7)
mult $11,$18
addi $9,$5,39422
label6:
sra $0,$9,28
andi $0,$0,3
lbu $2,data1($0)
div $0,$13
mthi $14
sub $1,$11,$5
xori $4,$0,226
addi $13,$2,36636
sllv $2,$14,$18
andi $6,$6,2
lh $3,data0($6)
srav $0,$15,$1
sltiu $4,$2,5934
and $12,$6,$19
andi $9,$9,3
lbu $1,data1($9)
or $12,$14,$7
label5:
andi $8,$8,2
sh $8,data1($8)
sltu $8,$3,$14
div $16,$14
mthi $16
slt $7,$1,$8
andi $12,$12,2
sh $4,data2($12)
div $0,$4
subu $1,$13,$17
subu $14,$17,$9
and $10,$19,$14
xori $14,$4,41447
andi $8,$8,3
lbu $2,data2($8)
div $10,$1
addu $13,$15,$2
label0:
mfhi $13
sw $7,data1
addiu $18,$17,1389
andi $9,$9,2
lhu $8,data0($9)
multu $3,$6
sltu $19,$13,$0
sw $16,data0
mult $18,$8
sra $13,$12,25
srlv $11,$18,$18
srlv $11,$5,$7
sllv $17,$4,$15
andi $14,$14,3
sb $12,data1($14)
label3:
andi $7,$7,2
lhu $13,data1($7)
sub $14,$9,$17
subu $8,$6,$19
bgez $3,label5
mult $0,$6
sll $14,$4,26
mult $13,$3
addu $0,$4,$4
sltu $11,$13,$17
jal label4
multu $5,$6
andi $12,$12,2
lh $18,data1($12)
label2:
lui $7,42926
bne $1,$8,label2
mflo $1
and $12,$31,$14
xor $8,$4,$1
or $17,$1,$12
sll $16,$0,25
jr $ra
lw $3,data0
sra $12,$19,15
andi $12,$12,3
lb $15,data2($12)
addu $8,$19,$12
andi $18,$18,3
lb $4,data1($18)
srlv $15,$18,$17
bgez $14,label1
mfhi $2
srav $4,$3,$10
divu $15,$1
sub $1,$31,$11
or $7,$9,$12
blez $9,label0
andi $13,$13,2
lh $17,data0($13)
mflo $3
subu $10,$14,$31
srav $2,$1,$10
andi $16,$16,2
lhu $11,data1($16)
beq $10,$4,label6
srav $16,$10,$9
beq $2,$19,label2
srav $8,$15,$1
sltu $12,$15,$17
or $0,$11,$19
srl $14,$18,9
addu $7,$16,$7
nor $3,$1,$17
subu $17,$19,$13
addiu $7,$10,43252
slti $10,$4,-19401
and $4,$9,$2
addu $17,$0,$7
andi $19,$19,2
lh $5,data0($19)
sub $3,$9,$1
andi $6,$6,2
lhu $2,data2($6)
lw $17,data1
ori $v0, $0, 10
syscall