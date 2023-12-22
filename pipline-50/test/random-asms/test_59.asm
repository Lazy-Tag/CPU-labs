.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 49083
ori $0, $0, 62563
lui $1, 18831
ori $1, $1, 13657
lui $2, 62963
ori $2, $2, 16606
lui $3, 58803
ori $3, $3, 64815
lui $4, 2267
ori $4, $4, 59081
lui $5, 41741
ori $5, $5, 47551
lui $6, 22784
ori $6, $6, 39843
lui $7, 26528
ori $7, $7, 56957
lui $8, 51530
ori $8, $8, 49284
lui $9, 39349
ori $9, $9, 47283
lui $10, 22460
ori $10, $10, 26575
lui $11, 11207
label4:
ori $11, $11, 7342
lui $12, 44730
ori $12, $12, 44471
lui $13, 50719
ori $13, $13, 19305
lui $14, 51385
ori $14, $14, 33004
lui $15, 51400
ori $15, $15, 32702
lui $16, 22079
ori $16, $16, 22688
lui $17, 4938
ori $17, $17, 64488
label3:
lui $18, 23607
ori $18, $18, 60739
lui $19, 64186
ori $19, $19, 4553
sw $3, data0
sw $5, data1
sw $11, data2
subu $12,$18,$9
lui $2,14191
sub $2,$11,$15
mtlo $7
slt $16,$11,$9
mflo $5
sltiu $12,$2,19902
andi $15,$15,3
sb $7,data1($15)
mthi $17
mfhi $10
addiu $3,$17,4788
sltiu $3,$5,28438
and $3,$9,$3
andi $7,$7,2
lhu $11,data1($7)
ori $10,$5,39265
ori $16,$3,31971
sw $18,data0
andi $19,$19,3
sb $5,data2($19)
divu $2,$14
multu $0,$13
andi $14,$14,3
sb $11,data0($14)
div $9,$0
div $16,$2
andi $17,$17,3
lb $1,data2($17)
srlv $18,$4,$12
mult $8,$6
divu $12,$14
sllv $16,$17,$1
subu $17,$31,$6
mthi $17
srlv $10,$15,$5
sll $4,$10,27
lw $1,data1
mthi $8
mult $9,$17
add $17,$17,$8
add $2,$16,$15
sll $12,$0,24
andi $4,$4,3
lbu $12,data0($4)
andi $4,$4,2
lh $19,data1($4)
andi $7,$7,16871
andi $1,$1,2
lhu $11,data1($1)
bltz $1,label4
label0:
slt $8,$8,$6
add $14,$15,$31
and $8,$10,$0
sra $6,$13,0
xori $18,$10,30265
bgez $10,label6
sub $5,$12,$31
label2:
srlv $5,$15,$9
srav $18,$4,$8
srl $6,$15,22
beq $7,$17,label3
mthi $2
subu $1,$16,$2
sra $1,$14,10
jal label2
sub $19,$10,$9
and $16,$0,$6
ori $11,$6,33613
xori $15,$10,40339
jal label6
sllv $8,$13,$19
lui $18,18747
sub $2,$1,$13
bgtz $19,label6
div $2,$18
label5:
andi $5,$5,2
sh $11,data0($5)
blez $7,label0
sub $19,$4,$12
xor $11,$3,$4
xor $7,$31,$10
addiu $9,$13,47306
subu $9,$17,$19
andi $15,$15,3
sb $2,data2($15)
sra $14,$12,7
subu $13,$1,$4
and $0,$7,$0
srlv $9,$9,$0
bgez $13,label1
andi $19,$19,3
lb $18,data0($19)
multu $17,$18
bne $2,$3,label5
label6:
or $17,$13,$2
mthi $11
mfhi $10
sltiu $14,$3,25240
andi $5,$5,3
lbu $11,data1($5)
bgtz $12,label1
mflo $7
label1:
sll $19,$12,20
addu $11,$14,$13
div $3,$15
andi $4,$4,14441
ori $5,$4,60491
andi $11,$11,2
sh $10,data2($11)
andi $17,$1,24632
blez $0,label0
andi $16,$13,54005
ori $v0, $0, 10
syscall