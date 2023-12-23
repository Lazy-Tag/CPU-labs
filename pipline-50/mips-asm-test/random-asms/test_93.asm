.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

label3:
ori $31, $0, 0x3000
lui $0, 55918
ori $0, $0, 60778
lui $1, 63617
ori $1, $1, 56628
lui $2, 24911
ori $2, $2, 16321
lui $3, 19092
ori $3, $3, 56094
lui $4, 53658
ori $4, $4, 9463
lui $5, 23
ori $5, $5, 22753
lui $6, 22295
ori $6, $6, 54221
lui $7, 54986
ori $7, $7, 43278
lui $8, 64726
ori $8, $8, 16280
lui $9, 10290
ori $9, $9, 59777
lui $10, 23897
label6:
ori $10, $10, 62056
lui $11, 23176
ori $11, $11, 56136
lui $12, 55675
ori $12, $12, 30547
lui $13, 2350
ori $13, $13, 41577
lui $14, 24447
ori $14, $14, 41514
lui $15, 8014
ori $15, $15, 46032
lui $16, 27373
ori $16, $16, 30357
lui $17, 58822
ori $17, $17, 1980
lui $18, 47363
ori $18, $18, 30020
lui $19, 11539
ori $19, $19, 39992
sw $6, data0
sw $16, data1
sw $19, data2
addi $12,$0,59369
xori $3,$2,8881
sltu $16,$18,$2
xori $10,$18,21913
addu $1,$19,$8
andi $5,$5,3
lbu $4,data0($5)
xori $18,$4,16190
label1:
sltiu $3,$9,29288
mflo $7
subu $12,$6,$10
xor $8,$19,$8
andi $16,$16,3
lb $2,data1($16)
sltu $7,$6,$14
lui $14,25493
label2:
sll $2,$7,18
srav $7,$8,$11
sllv $0,$12,$6
mflo $12
mult $19,$7
srl $10,$3,2
or $8,$5,$14
addu $3,$0,$16
mflo $10
ori $9,$13,56894
add $5,$10,$2
xori $17,$17,48087
nor $17,$7,$3
or $15,$12,$15
lui $10,45643
srav $4,$4,$0
mthi $4
addiu $16,$31,3131
divu $1,$16
and $5,$2,$6
mfhi $6
andi $15,$15,3
lb $2,data0($15)
addiu $8,$12,47667
andi $2,$2,3
sb $9,data0($2)
mfhi $12
or $17,$12,$7
bne $13,$18,label3
sra $17,$0,27
xori $16,$9,49715
lui $17,48286
sltu $19,$31,$11
sll $19,$8,3
nor $18,$4,$3
andi $5,$5,2
sh $15,data2($5)
multu $6,$10
label4:
sra $7,$16,1
mflo $15
bltz $14,label6
sll $5,$7,10
lw $4,data0
beq $12,$6,label2
mtlo $2
jal label2
sub $1,$15,$16
or $9,$6,$12
lw $7,data0
lui $5,8320
nor $19,$6,$19
sub $5,$14,$9
and $19,$14,$3
bgez $19,label1
lw $4,data1
sub $5,$3,$2
bgez $8,label3
subu $11,$13,$10
lw $5,data1
xori $5,$7,17062
slti $16,$4,-7079
andi $17,$17,2
lh $12,data1($17)
jalr $3,$ra
addiu $18,$10,47537
label5:
slt $16,$9,$2
addi $19,$4,39046
andi $12,$12,2
lh $18,data1($12)
sltiu $6,$0,31780
srl $10,$1,12
andi $4,$4,3
lb $0,data2($4)
srav $17,$19,$7
and $3,$7,$3
bne $10,$4,label2
label0:
andi $15,$15,2
lh $12,data2($15)
addiu $0,$15,11374
jr $ra
srlv $9,$16,$5
bltz $17,label0
sw $15,data2
sltiu $10,$16,21036
add $2,$17,$12
lw $17,data2
sltiu $8,$3,16397
bgtz $8,label3
sllv $0,$8,$7
bne $17,$12,label2
sll $19,$13,15
sra $19,$0,7
divu $19,$14
ori $v0, $0, 10
syscall