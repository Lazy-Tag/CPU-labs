.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 50602
ori $0, $0, 59706
lui $1, 6971
label2:
ori $1, $1, 41631
lui $2, 44965
ori $2, $2, 63973
lui $3, 46551
ori $3, $3, 53919
lui $4, 37253
ori $4, $4, 35454
lui $5, 43214
ori $5, $5, 48087
lui $6, 59193
ori $6, $6, 46707
lui $7, 55414
ori $7, $7, 3884
lui $8, 23065
ori $8, $8, 36968
lui $9, 45223
ori $9, $9, 25080
lui $10, 19179
ori $10, $10, 35618
lui $11, 35442
ori $11, $11, 51406
lui $12, 1252
ori $12, $12, 37978
lui $13, 39188
ori $13, $13, 3745
lui $14, 36713
ori $14, $14, 39311
lui $15, 12933
ori $15, $15, 53272
lui $16, 63470
ori $16, $16, 55107
lui $17, 61181
ori $17, $17, 38406
lui $18, 19184
ori $18, $18, 29844
lui $19, 54880
ori $19, $19, 7138
sw $18, data0
sw $13, data1
sw $15, data2
multu $15,$3
slt $0,$17,$1
mthi $10
addiu $19,$17,12843
label1:
div $1,$7
xori $15,$10,42533
srav $18,$5,$11
andi $4,$13,31299
andi $2,$2,2
lhu $19,data1($2)
andi $4,$4,2
lh $11,data1($4)
multu $15,$14
add $2,$15,$8
andi $3,$3,2
lh $16,data1($3)
label0:
slt $19,$13,$12
mult $16,$7
lui $3,12309
slt $18,$17,$17
mflo $7
sw $8,data2
label6:
srlv $13,$1,$14
add $1,$19,$10
ori $12,$18,47549
mthi $1
mflo $19
mthi $10
andi $16,$4,22355
sll $17,$0,9
sltiu $6,$2,17406
lui $3,29443
div $4,$8
srl $14,$4,21
andi $12,$12,17395
xor $7,$15,$31
lui $5,32675
andi $7,$31,39038
xori $19,$6,53981
xori $19,$31,11947
srav $3,$13,$8
addi $6,$3,43484
andi $15,$15,2
sh $18,data2($15)
mult $6,$3
andi $4,$7,45258
lw $1,data1
and $8,$11,$8
label4:
sllv $10,$10,$1
mflo $12
subu $0,$6,$2
bgtz $18,label2
sub $7,$3,$4
bgez $1,label1
andi $10,$10,2
sh $5,data1($10)
addu $9,$13,$4
andi $13,$13,3
sb $3,data1($13)
addu $13,$10,$3
andi $7,$7,2
sh $5,data2($7)
sllv $8,$31,$31
andi $13,$13,2
sh $17,data0($13)
sllv $5,$3,$18
add $14,$19,$17
j label3
addi $5,$12,42237
bgtz $5,label3
sw $3,data2
andi $16,$16,2
sh $10,data1($16)
xor $7,$12,$17
subu $13,$9,$0
sub $5,$17,$5
lui $2,63305
beq $15,$13,label0
sltu $6,$5,$17
multu $8,$9
andi $6,$10,32939
sw $31,data2
andi $4,$4,2
lh $2,data1($4)
lui $12,54681
blez $4,label0
mflo $5
blez $5,label1
mfhi $9
bne $7,$31,label1
sw $15,data2
j label3
andi $8,$8,3
sb $14,data2($8)
bgez $2,label5
srl $11,$16,17
and $6,$14,$8
addiu $13,$7,38214
mult $15,$8
label3:
andi $6,$6,3
sb $9,data0($6)
bgez $7,label1
and $6,$15,$10
sw $19,data1
andi $8,$8,2
lhu $18,data2($8)
and $16,$14,$16
andi $3,$3,2
lhu $17,data0($3)
subu $5,$9,$2
ori $4,$31,29610
bgtz $17,label6
andi $0,$0,3
lb $15,data1($0)
label5:
add $5,$0,$7
ori $v0, $0, 10
syscall