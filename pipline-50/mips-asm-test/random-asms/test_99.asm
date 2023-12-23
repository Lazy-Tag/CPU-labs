.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 18031
label6:
ori $0, $0, 11896
lui $1, 8825
ori $1, $1, 48396
lui $2, 44689
ori $2, $2, 35116
lui $3, 58452
ori $3, $3, 12804
lui $4, 10221
ori $4, $4, 60011
lui $5, 34223
ori $5, $5, 40322
lui $6, 38234
ori $6, $6, 36502
lui $7, 39896
ori $7, $7, 56335
lui $8, 51021
ori $8, $8, 50216
lui $9, 36443
ori $9, $9, 15562
lui $10, 17399
ori $10, $10, 30575
lui $11, 64882
ori $11, $11, 33470
label5:
lui $12, 43036
ori $12, $12, 20078
lui $13, 21516
ori $13, $13, 4597
lui $14, 15051
ori $14, $14, 42196
lui $15, 13767
ori $15, $15, 9245
lui $16, 24256
ori $16, $16, 21198
lui $17, 59952
ori $17, $17, 2603
lui $18, 83
ori $18, $18, 48655
lui $19, 8118
ori $19, $19, 38837
sw $15, data0
sw $10, data1
sw $1, data2
ori $19,$5,55194
addiu $9,$0,52479
sltu $0,$13,$12
div $19,$8
addi $2,$3,45292
sltu $1,$12,$13
label4:
andi $0,$0,3
lbu $12,data2($0)
srav $11,$19,$9
multu $31,$14
srlv $9,$18,$9
andi $13,$13,3
sb $11,data2($13)
addi $10,$1,27724
nor $8,$16,$15
xori $12,$17,6266
andi $16,$16,2
lh $15,data0($16)
andi $11,$11,2
lhu $13,data1($11)
div $14,$2
lw $4,data2
divu $15,$3
andi $10,$10,2
lhu $17,data2($10)
xor $1,$0,$4
sub $17,$6,$14
sltiu $0,$0,14734
sw $13,data1
lui $5,49721
andi $7,$7,2
lhu $17,data1($7)
sll $14,$8,12
andi $15,$15,2
sh $15,data0($15)
sw $11,data1
lui $0,43426
mthi $17
add $17,$15,$7
mult $16,$19
slt $11,$5,$13
addiu $10,$1,24151
mflo $12
srlv $11,$16,$9
mtlo $1
mtlo $13
ori $10,$9,25287
andi $18,$18,2
lhu $19,data1($18)
mthi $13
nor $9,$19,$7
blez $17,label1
mfhi $17
andi $6,$6,2
lhu $18,data1($6)
andi $9,$9,2
sh $2,data1($9)
andi $9,$9,3
lbu $13,data0($9)
ori $0,$12,55289
sltu $4,$5,$13
ori $8,$18,50129
divu $13,$5
lui $14,17250
mult $11,$17
mult $5,$12
lui $18,25268
subu $12,$5,$4
addi $16,$19,55906
xori $19,$19,18008
addu $17,$16,$31
andi $19,$19,3
lbu $8,data2($19)
addu $5,$10,$13
sub $10,$16,$1
sra $16,$12,24
addiu $6,$1,35075
sw $16,data2
jalr $4,$ra
sltu $1,$17,$7
srl $0,$14,17
sw $17,data1
sllv $10,$11,$31
mult $19,$7
andi $14,$19,50020
sw $9,data0
sub $17,$10,$6
lui $16,5177
mult $8,$1
sltu $11,$19,$18
jal label4
andi $9,$9,2
lhu $16,data1($9)
bgez $16,label0
srl $7,$4,22
sltiu $15,$8,10732
div $9,$0
sub $6,$17,$19
label1:
xor $19,$10,$4
xor $8,$31,$2
sra $9,$31,10
or $9,$13,$31
label2:
srlv $16,$10,$17
srlv $13,$6,$9
label3:
bne $16,$8,label0
andi $19,$19,3
lb $16,data0($19)
addiu $2,$5,54751
andi $5,$5,3
sb $17,data2($5)
label0:
beq $11,$9,label5
add $5,$10,$12
andi $18,$0,32933
mult $15,$13
andi $2,$2,3
sb $5,data2($2)
ori $v0, $0, 10
syscall