.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 51531
ori $0, $0, 13944
lui $1, 43101
ori $1, $1, 296
label2:
lui $2, 53753
label4:
ori $2, $2, 37060
lui $3, 21382
ori $3, $3, 19892
lui $4, 50446
ori $4, $4, 56928
lui $5, 40387
ori $5, $5, 33305
lui $6, 59585
ori $6, $6, 23865
lui $7, 13237
ori $7, $7, 19186
lui $8, 4071
ori $8, $8, 18322
lui $9, 41250
ori $9, $9, 33754
lui $10, 46654
ori $10, $10, 37950
lui $11, 49280
ori $11, $11, 15886
lui $12, 14480
ori $12, $12, 21175
lui $13, 60087
ori $13, $13, 42739
lui $14, 1673
ori $14, $14, 6650
lui $15, 12072
ori $15, $15, 2890
label1:
lui $16, 7481
ori $16, $16, 10317
lui $17, 37313
ori $17, $17, 2411
lui $18, 65298
ori $18, $18, 48420
lui $19, 64291
ori $19, $19, 26103
sw $14, data0
sw $7, data1
sw $4, data2
sw $1,data0
andi $6,$6,2
lhu $6,data1($6)
div $4,$14
addi $10,$3,35850
sllv $16,$11,$19
multu $8,$9
mtlo $1
mult $11,$1
andi $17,$17,3
sb $16,data0($17)
andi $4,$4,2
sh $13,data0($4)
add $17,$12,$0
addi $7,$16,19396
label3:
slti $10,$12,4794
label5:
xori $12,$9,51439
andi $11,$11,3
sb $14,data0($11)
div $15,$7
sllv $2,$12,$31
xor $8,$3,$3
sltiu $16,$10,14026
mult $8,$12
multu $11,$18
sllv $8,$4,$3
sltu $7,$12,$14
srav $17,$3,$31
addu $2,$4,$14
sll $14,$0,10
mtlo $19
label6:
div $15,$9
mflo $12
slt $17,$6,$10
mtlo $17
divu $13,$17
andi $1,$1,2
lh $17,data2($1)
mthi $5
sltu $10,$4,$16
and $5,$11,$19
andi $2,$13,16484
andi $9,$9,3
lb $18,data0($9)
lw $19,data0
sra $5,$5,21
addu $19,$8,$18
addu $5,$7,$7
slt $6,$10,$16
and $17,$13,$1
sllv $7,$5,$0
andi $14,$14,2
lh $7,data1($14)
lui $4,26613
label0:
nor $15,$15,$3
add $11,$18,$2
andi $18,$18,2
sh $8,data2($18)
srav $11,$9,$11
or $13,$3,$15
sub $14,$15,$31
mflo $19
mthi $13
addiu $17,$13,20663
div $12,$3
ori $4,$1,64238
andi $6,$6,2
lhu $8,data0($6)
and $14,$10,$13
addiu $13,$31,60024
bne $13,$11,label0
sra $3,$12,8
slt $4,$16,$18
lw $17,data0
subu $15,$2,$14
mfhi $4
sll $15,$8,28
andi $15,$15,2
lhu $2,data2($15)
mthi $13
bgtz $11,label4
multu $13,$2
mfhi $12
bltz $15,label3
sllv $3,$12,$1
j label4
xori $19,$2,52903
andi $1,$1,3
lb $11,data0($1)
xori $3,$6,28090
andi $10,$10,3
lb $18,data1($10)
sw $18,data2
mflo $18
andi $7,$7,2
lhu $5,data0($7)
mfhi $9
nor $0,$31,$14
lw $0,data1
sra $12,$13,22
mthi $10
sll $7,$16,9
andi $5,$5,2
lh $4,data1($5)
srlv $12,$0,$16
bltz $11,label5
mult $9,$1
or $11,$10,$10
ori $19,$14,50856
addu $10,$0,$12
bltz $16,label5
sllv $7,$1,$4
andi $2,$2,2
sh $4,data2($2)
ori $5,$10,3916
ori $v0, $0, 10
syscall