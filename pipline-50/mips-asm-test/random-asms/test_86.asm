.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 55760
ori $0, $0, 10472
lui $1, 38764
ori $1, $1, 31667
lui $2, 17959
ori $2, $2, 25748
lui $3, 19971
ori $3, $3, 57395
lui $4, 44964
ori $4, $4, 49551
lui $5, 59638
ori $5, $5, 35929
lui $6, 7718
ori $6, $6, 18720
lui $7, 38848
ori $7, $7, 3394
lui $8, 55570
ori $8, $8, 45377
lui $9, 14480
ori $9, $9, 27320
lui $10, 16448
ori $10, $10, 59926
lui $11, 58513
ori $11, $11, 15493
lui $12, 54229
ori $12, $12, 62447
lui $13, 1600
ori $13, $13, 48675
lui $14, 14690
ori $14, $14, 43023
lui $15, 55458
ori $15, $15, 19610
lui $16, 23702
label4:
ori $16, $16, 12076
lui $17, 63186
ori $17, $17, 52502
lui $18, 58908
ori $18, $18, 22030
lui $19, 48713
ori $19, $19, 22709
sw $16, data0
sw $18, data1
label3:
sw $18, data2
mtlo $3
mthi $8
mthi $14
nor $8,$11,$16
ori $18,$18,52989
sltiu $16,$18,28865
andi $14,$14,2
lhu $8,data0($14)
andi $9,$3,63291
mult $16,$12
mult $18,$2
sltu $3,$17,$31
mthi $15
ori $18,$2,16211
addi $19,$0,57306
andi $16,$16,2
sh $14,data0($16)
sltu $2,$12,$10
sltu $14,$2,$0
add $16,$7,$15
andi $12,$12,2
lh $17,data0($12)
label2:
sllv $16,$14,$4
srlv $3,$31,$0
sub $3,$14,$2
sw $13,data0
mult $31,$19
mthi $11
xori $7,$0,45015
andi $13,$13,3
lbu $10,data2($13)
label0:
multu $18,$14
mtlo $12
divu $8,$4
slti $14,$19,-13204
nor $13,$1,$5
mult $10,$19
addu $3,$12,$12
addi $12,$9,36462
nor $7,$18,$8
addu $18,$12,$10
sra $13,$0,13
divu $3,$3
sw $13,data1
div $7,$8
multu $19,$0
addiu $4,$17,36755
lw $16,data0
addu $3,$17,$10
andi $13,$13,2
sh $9,data1($13)
jal label2
sub $7,$6,$5
srl $18,$1,19
and $15,$19,$12
srl $17,$8,1
andi $6,$6,3
sb $15,data1($6)
and $11,$18,$31
sw $12,data1
label5:
jal label0
div $2,$7
andi $16,$16,3
lb $19,data1($16)
div $4,$19
subu $2,$3,$2
j label1
mfhi $16
andi $2,$2,3
lb $11,data2($2)
label1:
mfhi $3
srlv $14,$1,$10
addi $2,$17,52744
label6:
addi $8,$4,55233
srlv $2,$15,$8
srlv $6,$12,$5
andi $3,$3,2
lh $19,data2($3)
andi $6,$6,3
sb $0,data0($6)
xor $15,$31,$16
bltz $0,label3
nor $8,$11,$16
lui $11,4607
andi $19,$19,2
lhu $4,data0($19)
mfhi $10
or $11,$14,$9
lui $9,38148
sub $6,$5,$18
andi $11,$11,2
sh $9,data1($11)
divu $14,$19
srlv $2,$13,$11
j label2
andi $15,$16,6693
jal label5
xor $1,$1,$0
andi $7,$7,2
lhu $4,data0($7)
sll $16,$4,27
mtlo $16
bne $7,$31,label5
ori $10,$19,56669
multu $19,$13
bgez $2,label4
addi $9,$19,63924
sub $7,$11,$13
bgez $15,label3
andi $4,$4,3
sb $15,data0($4)
nor $0,$4,$6
lui $7,6328
ori $6,$17,27846
ori $v0, $0, 10
syscall