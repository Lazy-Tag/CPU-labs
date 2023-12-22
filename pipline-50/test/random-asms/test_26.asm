.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 3885
ori $0, $0, 10632
lui $1, 56535
ori $1, $1, 6978
lui $2, 20356
ori $2, $2, 27549
lui $3, 5776
ori $3, $3, 21735
lui $4, 31384
ori $4, $4, 50819
lui $5, 8621
ori $5, $5, 52143
lui $6, 13995
ori $6, $6, 41824
lui $7, 61177
ori $7, $7, 344
lui $8, 35279
ori $8, $8, 56053
lui $9, 16032
ori $9, $9, 56053
lui $10, 29283
ori $10, $10, 22859
lui $11, 51543
ori $11, $11, 14278
lui $12, 39157
ori $12, $12, 6822
lui $13, 55150
ori $13, $13, 13227
lui $14, 35235
ori $14, $14, 56818
lui $15, 29224
ori $15, $15, 45036
lui $16, 8823
ori $16, $16, 14243
lui $17, 48464
ori $17, $17, 4814
lui $18, 41177
ori $18, $18, 58754
lui $19, 59929
ori $19, $19, 55349
sw $5, data0
sw $7, data1
sw $14, data2
xori $7,$9,1321
addiu $1,$0,44582
lui $4,38685
sub $12,$16,$14
subu $7,$1,$19
xori $2,$17,12922
sltiu $11,$3,6567
andi $2,$2,3
sb $16,data2($2)
mflo $15
xor $12,$6,$19
mthi $5
mtlo $17
divu $10,$9
slti $18,$12,-17574
xori $11,$31,13445
xor $6,$4,$15
and $1,$10,$0
sllv $10,$19,$1
nor $19,$14,$2
andi $14,$14,3
lbu $12,data1($14)
xor $5,$4,$5
mfhi $5
sub $1,$11,$8
addi $9,$17,28783
andi $10,$10,2
lhu $9,data0($10)
multu $1,$4
label6:
sw $4,data0
sra $0,$5,27
andi $6,$6,3
lbu $18,data2($6)
sll $14,$12,29
div $13,$16
andi $11,$11,3
sb $16,data0($11)
mult $9,$1
addi $8,$10,43109
label4:
multu $17,$7
label2:
sra $11,$31,11
or $6,$14,$0
mflo $9
lw $6,data2
andi $3,$3,3
lbu $13,data2($3)
andi $9,$9,3
sb $10,data2($9)
andi $19,$19,2
lhu $1,data0($19)
xori $0,$31,8278
andi $1,$1,3
sb $15,data1($1)
sltu $1,$19,$7
srlv $17,$9,$14
mult $3,$6
multu $4,$14
label5:
slti $14,$14,-12406
sllv $3,$15,$18
mthi $0
mtlo $12
srl $11,$6,15
divu $3,$10
mtlo $8
srav $16,$13,$17
sllv $0,$17,$14
slt $5,$18,$17
lui $6,42504
mflo $18
xor $10,$0,$17
andi $10,$10,3
lb $18,data1($10)
mtlo $4
bgez $8,label2
sra $18,$5,14
bne $18,$6,label6
label3:
andi $12,$12,3
sb $2,data2($12)
j label4
lui $16,9218
label1:
ori $7,$1,5285
j label3
addiu $0,$31,38217
andi $2,$2,3
sb $17,data2($2)
sltiu $16,$12,5109
jal label2
andi $7,$7,2
lhu $5,data2($7)
sra $13,$15,24
bgtz $13,label1
sra $12,$10,29
andi $4,$4,2
lh $7,data1($4)
sltiu $4,$11,31198
slti $8,$10,-23829
andi $8,$8,2
sh $5,data2($8)
sub $10,$4,$0
sra $4,$8,8
andi $2,$2,2
lhu $2,data0($2)
srl $4,$9,11
divu $1,$14
multu $6,$11
sll $17,$31,9
andi $19,$19,3
lb $11,data1($19)
label0:
sub $4,$14,$19
slt $15,$10,$2
mflo $15
srl $7,$9,5
andi $17,$17,2
lhu $10,data1($17)
bltz $11,label2
divu $5,$13
j label5
lui $1,52419
ori $v0, $0, 10
syscall