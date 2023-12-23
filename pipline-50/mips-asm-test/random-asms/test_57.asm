.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 63091
ori $0, $0, 50502
lui $1, 6285
ori $1, $1, 48598
lui $2, 34348
ori $2, $2, 2275
lui $3, 27111
ori $3, $3, 13133
lui $4, 64895
ori $4, $4, 13517
lui $5, 2236
ori $5, $5, 21340
lui $6, 866
ori $6, $6, 16114
lui $7, 21240
ori $7, $7, 51879
lui $8, 21775
ori $8, $8, 3945
lui $9, 25037
ori $9, $9, 60610
lui $10, 6977
ori $10, $10, 12771
lui $11, 2204
ori $11, $11, 36406
lui $12, 58273
ori $12, $12, 19224
lui $13, 25764
label0:
ori $13, $13, 18723
lui $14, 39264
ori $14, $14, 17491
lui $15, 43873
label2:
ori $15, $15, 61860
lui $16, 38859
ori $16, $16, 26931
lui $17, 23253
ori $17, $17, 57769
lui $18, 27213
ori $18, $18, 1285
lui $19, 63803
ori $19, $19, 55591
label6:
sw $17, data0
sw $3, data1
sw $14, data2
andi $4,$4,2
lhu $17,data1($4)
andi $12,$12,2
lhu $16,data1($12)
subu $9,$1,$11
subu $12,$15,$31
sw $3,data2
slt $18,$4,$17
andi $13,$13,2
sh $0,data1($13)
srav $14,$17,$10
srav $13,$14,$8
label5:
add $17,$10,$5
sltiu $0,$31,32688
mtlo $15
mthi $6
mtlo $3
label4:
andi $6,$6,2
lh $11,data0($6)
sra $13,$16,17
sub $8,$19,$17
addu $4,$13,$13
sllv $18,$2,$1
sra $16,$15,12
lw $0,data0
and $18,$5,$3
addi $5,$9,22998
mflo $14
mult $31,$15
sra $12,$10,19
mult $6,$1
addi $17,$6,58896
slti $9,$8,25073
srav $1,$7,$31
lw $2,data1
addi $3,$2,21357
sltiu $16,$19,31825
andi $5,$7,39468
slt $7,$11,$18
srav $9,$15,$17
or $6,$9,$6
sllv $11,$17,$14
lui $10,65154
sub $1,$0,$7
srl $13,$3,1
divu $7,$0
xori $13,$15,2003
andi $14,$14,2
lh $11,data0($14)
sra $11,$4,9
andi $15,$15,2
lh $7,data0($15)
srlv $7,$14,$3
mthi $10
or $11,$31,$6
label1:
slti $8,$5,6111
divu $15,$8
andi $1,$1,3
lbu $13,data0($1)
mflo $4
andi $3,$3,3
lb $13,data2($3)
andi $4,$4,3
sb $2,data0($4)
andi $11,$11,3
sb $2,data1($11)
label3:
srl $9,$4,29
sw $10,data1
sub $10,$8,$8
mthi $3
mflo $8
mflo $13
or $2,$12,$31
lui $1,43282
andi $17,$17,2
lhu $4,data1($17)
bltz $11,label4
andi $9,$1,49472
bgtz $11,label3
mflo $18
srlv $6,$31,$0
slti $8,$17,7355
lui $4,50218
sltiu $4,$13,13573
mthi $0
andi $15,$12,50088
sw $7,data0
sll $10,$4,11
sll $10,$14,3
blez $5,label4
srlv $10,$4,$8
bltz $7,label0
div $10,$8
andi $6,$6,3
lb $1,data2($6)
mtlo $9
srlv $13,$1,$3
lui $6,21334
jal label3
and $8,$17,$12
sub $3,$11,$5
add $14,$16,$2
sltiu $9,$2,5875
div $16,$15
mtlo $4
beq $3,$7,label6
mtlo $0
sw $11,data2
slt $14,$2,$8
ori $19,$31,48479
addiu $2,$5,28776
andi $10,$10,2
lh $11,data0($10)
ori $v0, $0, 10
syscall