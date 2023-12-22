.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 54178
ori $0, $0, 56286
lui $1, 19881
ori $1, $1, 46983
lui $2, 17085
ori $2, $2, 46398
lui $3, 26642
ori $3, $3, 25984
lui $4, 45596
ori $4, $4, 13954
lui $5, 8058
ori $5, $5, 18111
lui $6, 42278
ori $6, $6, 24846
label5:
lui $7, 5672
ori $7, $7, 24441
lui $8, 28569
ori $8, $8, 42957
lui $9, 55657
ori $9, $9, 52531
lui $10, 7935
ori $10, $10, 4754
lui $11, 18620
ori $11, $11, 27227
lui $12, 36264
ori $12, $12, 12256
lui $13, 22423
ori $13, $13, 40043
lui $14, 8853
ori $14, $14, 14760
lui $15, 3564
ori $15, $15, 51440
label0:
lui $16, 64328
ori $16, $16, 48544
lui $17, 31386
ori $17, $17, 32304
lui $18, 47068
ori $18, $18, 39518
lui $19, 33839
ori $19, $19, 43595
sw $18, data0
label3:
sw $7, data1
sw $9, data2
nor $6,$17,$13
xor $7,$9,$2
label6:
andi $2,$2,3
lb $13,data0($2)
sra $5,$10,19
lw $2,data1
srl $6,$6,17
sltiu $18,$8,24873
xori $16,$14,5484
andi $16,$13,14984
add $8,$17,$0
xori $1,$1,14151
addu $15,$5,$5
multu $16,$0
label4:
andi $5,$5,2
lhu $0,data2($5)
and $17,$5,$4
slti $19,$18,24364
sub $16,$31,$13
srlv $19,$9,$17
div $19,$15
addiu $16,$1,52426
or $13,$11,$3
slti $13,$6,-18164
lw $15,data1
andi $16,$16,3
lbu $19,data0($16)
or $8,$14,$31
andi $8,$8,2
lh $8,data2($8)
sll $1,$18,8
andi $9,$17,30523
andi $1,$1,2
lhu $6,data2($1)
andi $4,$4,2
lhu $12,data0($4)
subu $3,$14,$2
sllv $4,$12,$2
addu $0,$18,$0
label2:
andi $17,$17,2
lhu $19,data0($17)
ori $18,$13,24231
andi $4,$15,39241
or $0,$3,$12
lui $6,51840
addi $5,$10,49908
ori $7,$10,2919
sltu $10,$11,$5
bltz $11,label3
lui $4,20344
sllv $17,$6,$1
sra $16,$5,4
sll $13,$16,20
mthi $3
mthi $11
addi $2,$7,34305
slti $0,$5,2748
sll $15,$13,30
andi $7,$7,2
sh $1,data2($7)
sll $12,$13,12
bgez $0,label6
andi $15,$10,27640
andi $10,$10,2
lh $1,data0($10)
xori $4,$11,48763
xori $7,$5,20698
lw $5,data2
addu $7,$17,$14
bltz $10,label1
and $15,$1,$6
or $8,$3,$7
bltz $7,label2
sllv $7,$11,$31
nor $18,$4,$18
bgtz $13,label5
srl $10,$11,14
bgtz $6,label4
divu $5,$12
mtlo $4
beq $8,$8,label4
andi $4,$4,2
lh $0,data1($4)
sllv $11,$6,$13
jal label4
label1:
sltu $3,$6,$3
sw $12,data1
xor $11,$16,$6
j label3
andi $15,$19,63861
slt $1,$5,$9
lui $13,33407
mthi $6
bltz $18,label6
sra $8,$10,12
bltz $7,label5
mfhi $4
bgtz $9,label6
mtlo $15
addiu $0,$17,30119
xor $9,$12,$11
srl $18,$3,14
add $13,$19,$0
andi $0,$0,3
sb $6,data1($0)
srlv $5,$31,$17
mfhi $18
mtlo $6
sw $12,data2
sw $9,data1
mflo $11
ori $v0, $0, 10
syscall