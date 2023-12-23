.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 54584
ori $0, $0, 53779
lui $1, 26829
ori $1, $1, 16380
lui $2, 13853
ori $2, $2, 32792
lui $3, 49246
ori $3, $3, 54300
lui $4, 43167
ori $4, $4, 30903
lui $5, 20824
ori $5, $5, 47089
lui $6, 19441
ori $6, $6, 5159
label4:
lui $7, 5432
label5:
ori $7, $7, 22209
lui $8, 19334
ori $8, $8, 46450
lui $9, 32940
ori $9, $9, 52549
lui $10, 12035
ori $10, $10, 45890
lui $11, 53744
ori $11, $11, 14146
lui $12, 45599
ori $12, $12, 48539
lui $13, 39765
ori $13, $13, 21084
lui $14, 59796
ori $14, $14, 35973
lui $15, 23992
ori $15, $15, 33553
lui $16, 51964
ori $16, $16, 25254
lui $17, 14813
ori $17, $17, 6348
lui $18, 10454
ori $18, $18, 16247
lui $19, 3089
ori $19, $19, 2335
sw $2, data0
sw $16, data1
sw $13, data2
mthi $17
and $12,$5,$9
mflo $3
addu $2,$8,$18
subu $10,$16,$5
ori $6,$31,21209
and $6,$7,$1
xori $16,$12,8819
andi $3,$16,29621
srav $8,$11,$8
sll $19,$19,7
mtlo $16
lui $3,34558
mflo $2
divu $3,$13
andi $5,$5,3
lb $8,data1($5)
or $3,$4,$12
sra $15,$12,29
label3:
sltiu $0,$12,25739
addu $0,$6,$4
srav $4,$12,$13
xor $13,$7,$7
slt $15,$9,$5
mthi $2
sub $0,$15,$13
ori $13,$13,15862
sltu $8,$14,$6
sltiu $2,$0,26235
slt $4,$31,$14
divu $13,$19
andi $6,$6,2
lh $14,data0($6)
sub $0,$16,$11
label0:
srlv $13,$14,$9
mflo $9
div $9,$16
lui $19,14191
andi $5,$5,2
lhu $1,data1($5)
andi $11,$11,3
lbu $9,data1($11)
slti $2,$5,-182
andi $1,$1,3
sb $10,data1($1)
xori $2,$6,19323
j label6
andi $17,$19,19656
subu $16,$11,$0
subu $11,$16,$13
xor $6,$3,$14
sub $10,$11,$16
subu $7,$9,$14
mflo $18
addu $18,$12,$9
bne $11,$18,label0
and $9,$19,$19
srl $14,$3,14
srl $13,$1,30
mfhi $5
mthi $1
mthi $5
andi $1,$1,2
sh $18,data1($1)
mthi $13
mflo $9
sra $1,$15,0
andi $10,$10,3
lbu $8,data1($10)
xor $10,$19,$13
and $16,$11,$4
mthi $1
srav $16,$5,$17
srlv $19,$18,$16
bltz $11,label2
andi $0,$0,3
lbu $8,data0($0)
beq $12,$14,label1
andi $8,$8,2
lhu $17,data2($8)
xori $13,$0,44473
lw $10,data2
jal label4
sub $14,$13,$0
sltiu $5,$8,18405
addiu $3,$4,11867
sllv $9,$17,$0
andi $15,$15,3
sb $5,data1($15)
jal label5
srl $9,$17,10
blez $6,label4
sltiu $15,$16,12251
bgez $13,label0
sw $18,data1
label2:
label1:
andi $9,$9,2
lh $2,data0($9)
sltu $5,$11,$4
andi $6,$6,3
lbu $12,data2($6)
xori $16,$11,43600
andi $12,$12,3
lb $18,data0($12)
label6:
sllv $17,$12,$7
mult $5,$5
jal label1
nor $7,$4,$8
slt $6,$18,$2
slt $4,$0,$7
bgtz $4,label6
srlv $16,$31,$31
subu $17,$10,$1
sra $2,$1,22
ori $v0, $0, 10
syscall