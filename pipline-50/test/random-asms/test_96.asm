.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 54876
label6:
ori $0, $0, 22010
lui $1, 59827
ori $1, $1, 63934
lui $2, 41536
ori $2, $2, 7111
label2:
lui $3, 51877
ori $3, $3, 15006
lui $4, 46247
ori $4, $4, 26224
lui $5, 37025
ori $5, $5, 61812
lui $6, 3399
ori $6, $6, 47222
lui $7, 19425
label1:
ori $7, $7, 58662
lui $8, 21646
ori $8, $8, 36484
lui $9, 7122
ori $9, $9, 28956
lui $10, 52305
ori $10, $10, 51205
lui $11, 4020
ori $11, $11, 41818
lui $12, 65000
ori $12, $12, 26087
lui $13, 62842
ori $13, $13, 20437
lui $14, 49345
ori $14, $14, 50425
lui $15, 60241
ori $15, $15, 25809
lui $16, 36566
ori $16, $16, 3175
lui $17, 60160
ori $17, $17, 46250
lui $18, 33302
ori $18, $18, 17261
lui $19, 30509
ori $19, $19, 44032
sw $7, data0
label3:
sw $7, data1
sw $18, data2
andi $12,$12,2
sh $9,data1($12)
andi $19,$19,2
lhu $13,data2($19)
andi $12,$12,2
lhu $11,data2($12)
and $10,$6,$18
multu $4,$11
mtlo $19
andi $17,$15,34300
multu $12,$19
addu $7,$5,$9
andi $16,$16,2
lh $13,data2($16)
mtlo $15
srl $1,$14,21
mthi $19
lw $4,data1
slt $13,$0,$19
mtlo $10
slti $13,$31,-7446
addiu $6,$11,28742
divu $31,$6
ori $16,$31,30848
sw $15,data1
nor $16,$13,$19
slti $16,$1,7378
sra $13,$16,13
lui $17,51867
mflo $11
xor $12,$12,$2
divu $15,$2
sw $14,data0
add $19,$8,$9
lui $14,44591
divu $10,$2
multu $15,$13
andi $0,$0,2
lhu $11,data0($0)
srav $0,$5,$15
label0:
andi $19,$19,2
lh $13,data2($19)
andi $7,$7,2
lhu $18,data1($7)
addi $2,$15,38796
andi $4,$19,12544
xor $13,$13,$8
srl $10,$10,18
andi $19,$10,4333
bgtz $9,label6
mflo $3
jal label0
sub $4,$9,$6
or $1,$11,$16
xori $1,$15,27278
bne $4,$1,label1
lw $16,data1
andi $7,$7,2
lhu $16,data1($7)
andi $8,$8,3
sb $4,data2($8)
j label5
andi $18,$18,2
lhu $18,data1($18)
andi $3,$3,3
lbu $14,data1($3)
andi $10,$10,3
lbu $9,data1($10)
addi $15,$3,35342
nor $5,$3,$7
divu $2,$5
xor $6,$31,$15
add $1,$15,$3
andi $9,$9,3
sb $10,data2($9)
and $19,$19,$2
or $16,$15,$11
srav $11,$31,$15
label5:
sub $7,$11,$5
jalr $19,$ra
mthi $0
add $11,$16,$2
mflo $8
mtlo $19
andi $14,$14,2
lhu $18,data2($14)
andi $19,$19,3
sb $5,data1($19)
bgez $11,label5
andi $7,$7,2
lh $13,data1($7)
sltiu $15,$3,13475
mfhi $8
andi $4,$4,2
lh $9,data0($4)
or $0,$5,$8
label4:
slti $9,$6,18126
slt $11,$9,$1
addiu $12,$7,43739
srlv $8,$0,$31
andi $12,$12,2
sh $10,data1($12)
andi $10,$10,3
lbu $5,data1($10)
sllv $8,$14,$13
addi $18,$0,36557
bgtz $8,label2
mfhi $7
addi $2,$7,7492
ori $2,$4,6749
beq $9,$13,label3
divu $4,$5
sll $0,$18,29
bgez $9,label2
sltu $10,$12,$12
mfhi $0
blez $18,label2
divu $8,$4
andi $4,$4,2
lh $12,data0($4)
ori $v0, $0, 10
syscall