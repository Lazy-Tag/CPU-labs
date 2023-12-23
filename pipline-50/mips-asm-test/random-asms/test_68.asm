.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 8153
ori $0, $0, 48402
lui $1, 12003
ori $1, $1, 12184
lui $2, 50191
ori $2, $2, 56808
lui $3, 22817
ori $3, $3, 1367
lui $4, 16314
ori $4, $4, 56458
lui $5, 6949
ori $5, $5, 12995
lui $6, 2859
ori $6, $6, 6669
lui $7, 19621
ori $7, $7, 38300
lui $8, 16324
ori $8, $8, 38587
lui $9, 48743
ori $9, $9, 20268
lui $10, 56654
ori $10, $10, 7146
lui $11, 62359
ori $11, $11, 42185
lui $12, 53888
ori $12, $12, 31830
lui $13, 15057
ori $13, $13, 29028
lui $14, 52277
ori $14, $14, 55889
lui $15, 38289
ori $15, $15, 23782
lui $16, 46049
ori $16, $16, 53583
lui $17, 23645
ori $17, $17, 41320
lui $18, 56713
ori $18, $18, 57495
lui $19, 30605
ori $19, $19, 28551
sw $3, data0
label4:
sw $11, data1
sw $10, data2
srav $3,$14,$15
andi $5,$5,3
lb $16,data1($5)
lui $16,37335
andi $14,$14,3
sb $2,data2($14)
andi $8,$8,2
sh $10,data1($8)
slt $12,$19,$10
xori $8,$18,40100
srl $10,$0,23
andi $10,$10,2
sh $13,data0($10)
mfhi $1
slti $6,$2,28641
andi $19,$13,40175
andi $0,$0,3
lb $13,data1($0)
lw $14,data2
andi $2,$2,2
lhu $16,data1($2)
sltiu $14,$19,24200
lui $5,54052
srl $11,$13,1
lui $4,4971
xor $15,$31,$5
mtlo $18
sw $11,data0
addiu $5,$2,5439
srlv $7,$10,$5
srl $10,$0,16
lui $16,11971
mtlo $9
andi $12,$12,2
lhu $5,data2($12)
label1:
xori $3,$5,49349
andi $13,$13,3
sb $15,data1($13)
nor $12,$15,$12
label0:
sllv $18,$31,$2
slti $19,$7,26706
srl $16,$0,28
andi $3,$3,2
lhu $18,data0($3)
slti $18,$16,-26178
mflo $5
mthi $0
srl $11,$4,22
sltu $5,$4,$0
sw $15,data2
jal label2
label2:
addu $7,$9,$9
mthi $8
mult $1,$19
subu $4,$6,$6
lui $11,16518
sra $17,$8,16
label6:
andi $16,$7,62697
sltu $13,$10,$18
srav $17,$12,$10
mult $16,$10
xor $6,$8,$11
sra $6,$9,19
srav $12,$14,$8
srav $4,$12,$17
bgtz $16,label5
addiu $19,$8,76
label3:
slti $0,$19,-24881
beq $1,$4,label1
addi $0,$0,36422
sub $12,$18,$5
mtlo $7
xor $5,$6,$0
bne $8,$7,label6
div $18,$14
andi $16,$16,2
lhu $13,data0($16)
mult $12,$17
mfhi $15
divu $12,$14
ori $14,$10,1183
sub $16,$10,$13
andi $11,$11,3
lbu $6,data2($11)
div $16,$8
sw $1,data2
andi $12,$12,2
lh $2,data0($12)
sll $2,$3,16
lui $4,65260
xori $15,$15,50307
mfhi $9
sltiu $12,$16,2589
bltz $19,label5
xori $15,$2,29320
sltu $0,$7,$8
lw $15,data0
nor $0,$11,$1
addu $17,$10,$17
mult $31,$2
mtlo $8
slt $6,$17,$0
sltu $13,$1,$31
bgtz $16,label1
srlv $13,$16,$10
subu $12,$2,$14
addu $4,$1,$17
div $8,$16
and $9,$16,$10
label5:
nor $6,$9,$10
subu $5,$5,$12
mfhi $14
ori $v0, $0, 10
syscall