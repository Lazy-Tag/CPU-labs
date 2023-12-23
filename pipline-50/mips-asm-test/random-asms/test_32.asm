.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 20736
ori $0, $0, 53809
lui $1, 44284
ori $1, $1, 10405
lui $2, 16441
ori $2, $2, 44621
lui $3, 53121
ori $3, $3, 36898
lui $4, 24624
ori $4, $4, 61908
label2:
lui $5, 32600
ori $5, $5, 57907
lui $6, 45405
ori $6, $6, 30382
lui $7, 61004
ori $7, $7, 45838
label5:
lui $8, 34000
ori $8, $8, 4824
lui $9, 19032
ori $9, $9, 12878
lui $10, 65165
ori $10, $10, 5886
lui $11, 9216
label0:
ori $11, $11, 36244
lui $12, 20142
ori $12, $12, 48369
lui $13, 4692
ori $13, $13, 22266
lui $14, 34010
ori $14, $14, 62328
lui $15, 4669
ori $15, $15, 20897
lui $16, 57943
ori $16, $16, 23091
lui $17, 53509
ori $17, $17, 30059
lui $18, 59691
ori $18, $18, 52048
lui $19, 59470
ori $19, $19, 3005
label6:
sw $4, data0
sw $11, data1
sw $9, data2
lw $17,data0
sltu $10,$0,$7
or $18,$12,$2
mtlo $14
sllv $14,$12,$18
sra $15,$0,11
xor $14,$4,$10
mflo $12
divu $12,$17
addiu $5,$16,43140
mthi $8
andi $2,$2,3
sb $9,data1($2)
mtlo $13
addiu $0,$10,15385
div $19,$4
lui $2,34338
add $17,$17,$11
add $1,$19,$16
sw $16,data1
srav $12,$2,$9
or $10,$10,$12
andi $11,$11,2
lhu $18,data2($11)
sltiu $13,$1,3166
add $17,$13,$11
lw $5,data2
mtlo $0
andi $8,$14,54955
addi $1,$17,51264
multu $9,$17
sltiu $15,$12,15566
addi $11,$16,46043
add $9,$5,$13
sltiu $13,$2,4252
mthi $7
or $16,$18,$1
label3:
slt $3,$16,$5
sra $8,$1,23
lw $7,data0
addu $10,$19,$16
mtlo $16
lw $15,data1
mult $17,$6
jalr $14,$ra
lui $8,5335
sltu $5,$0,$16
sll $15,$1,1
mthi $0
jr $ra
or $12,$8,$14
andi $4,$4,2
lh $1,data0($4)
mthi $8
jr $ra
sra $14,$15,21
addiu $7,$13,43652
bgez $18,label0
srlv $3,$12,$13
addiu $9,$2,39205
j label5
srlv $3,$3,$1
xori $16,$14,41180
sltiu $10,$13,28730
blez $3,label3
mfhi $0
bne $19,$14,label2
sll $14,$6,29
subu $16,$7,$15
sltiu $6,$5,24598
sll $6,$7,17
subu $0,$10,$2
sllv $3,$5,$5
addu $5,$19,$14
mflo $9
xor $3,$10,$0
add $7,$11,$14
div $10,$13
sllv $16,$4,$8
bne $31,$13,label1
nor $17,$1,$3
label1:
label4:
bltz $0,label3
andi $19,$19,3
lbu $1,data0($19)
addi $16,$14,47144
andi $2,$2,3
lb $16,data1($2)
slt $11,$18,$6
slti $5,$0,-5662
bgez $16,label6
mtlo $18
srl $5,$13,29
sll $10,$31,23
bne $6,$18,label6
divu $18,$8
andi $18,$18,3
lb $6,data2($18)
andi $0,$0,3
sb $1,data2($0)
andi $6,$6,3
lbu $15,data0($6)
mtlo $4
ori $12,$19,44258
xor $11,$9,$11
sltu $19,$19,$14
or $13,$31,$19
srav $19,$6,$18
mflo $16
ori $v0, $0, 10
syscall