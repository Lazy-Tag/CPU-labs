.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 32316
ori $0, $0, 51751
lui $1, 22297
ori $1, $1, 27116
label2:
lui $2, 7591
ori $2, $2, 57004
lui $3, 11665
label1:
ori $3, $3, 61200
lui $4, 60419
ori $4, $4, 4606
lui $5, 25985
ori $5, $5, 5690
lui $6, 20606
ori $6, $6, 10928
lui $7, 2991
ori $7, $7, 59254
lui $8, 47881
ori $8, $8, 33348
lui $9, 11907
ori $9, $9, 57834
lui $10, 8073
label3:
ori $10, $10, 26591
lui $11, 31728
ori $11, $11, 37849
lui $12, 4823
ori $12, $12, 19342
lui $13, 62890
ori $13, $13, 18007
lui $14, 46015
ori $14, $14, 45640
lui $15, 38983
ori $15, $15, 15761
lui $16, 25295
ori $16, $16, 64091
lui $17, 11415
ori $17, $17, 37176
lui $18, 23544
ori $18, $18, 32524
lui $19, 20475
ori $19, $19, 52704
sw $13, data0
sw $0, data1
sw $12, data2
sllv $12,$6,$31
andi $3,$3,3
sb $13,data2($3)
label6:
andi $9,$9,2
lhu $5,data0($9)
xor $3,$14,$13
andi $12,$12,2
lhu $16,data1($12)
ori $3,$18,10124
andi $18,$18,3
lb $12,data0($18)
andi $6,$6,3
lbu $14,data2($6)
lw $13,data2
lui $19,42750
and $11,$11,$31
andi $18,$18,2
sh $9,data0($18)
and $3,$8,$14
sw $1,data1
srl $19,$11,8
andi $8,$16,8435
andi $1,$1,2
sh $1,data1($1)
sltu $13,$7,$1
mult $31,$17
multu $16,$7
lw $7,data2
xor $7,$31,$6
addiu $5,$18,26394
sllv $2,$11,$8
div $9,$4
srav $15,$31,$9
srav $11,$7,$4
divu $13,$18
label4:
and $3,$0,$31
mtlo $3
mflo $10
lw $3,data2
andi $18,$18,2
sh $10,data1($18)
addi $11,$8,43456
mfhi $8
andi $19,$19,3
lbu $14,data0($19)
andi $17,$17,3
lbu $12,data2($17)
addiu $7,$17,37709
addi $9,$19,55235
lw $13,data1
add $11,$6,$17
sllv $18,$4,$15
srlv $9,$1,$19
sw $15,data0
and $16,$3,$10
andi $13,$13,2
lhu $13,data2($13)
srav $14,$6,$19
slti $14,$18,22577
xor $14,$0,$2
bgez $19,label6
mtlo $19
mfhi $4
xor $16,$1,$17
ori $4,$8,37363
andi $13,$8,49608
andi $3,$3,3
sb $6,data0($3)
xor $12,$4,$19
sll $5,$13,0
sw $4,data0
or $18,$13,$7
sub $4,$11,$11
sltu $7,$0,$14
ori $9,$18,17891
or $13,$1,$4
label5:
lui $4,45894
srlv $8,$11,$19
blez $12,label6
xori $18,$15,16596
slti $1,$8,-8808
andi $5,$5,2
sh $9,data2($5)
nor $7,$18,$4
andi $0,$0,3
lb $2,data0($0)
blez $11,label5
sll $15,$31,6
xori $19,$13,50280
lui $11,56802
subu $3,$7,$10
bne $6,$17,label1
xor $15,$17,$10
mult $10,$11
mthi $15
label0:
addiu $8,$5,54747
mthi $14
j label1
add $3,$16,$8
addi $3,$13,60341
andi $6,$6,2
sh $2,data0($6)
or $11,$5,$10
blez $31,label3
andi $12,$12,2
lh $1,data2($12)
j label6
xor $10,$5,$7
slti $16,$9,6768
multu $12,$5
ori $10,$11,50955
srl $2,$10,16
srav $3,$3,$1
j label6
lw $10,data0
andi $7,$7,2
lhu $1,data0($7)
ori $v0, $0, 10
syscall