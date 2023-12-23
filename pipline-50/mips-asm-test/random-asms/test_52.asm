.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 37882
ori $0, $0, 20861
lui $1, 65100
ori $1, $1, 21614
lui $2, 63765
ori $2, $2, 38782
lui $3, 2956
ori $3, $3, 51215
lui $4, 59220
ori $4, $4, 328
lui $5, 41791
ori $5, $5, 21523
lui $6, 5550
ori $6, $6, 45664
lui $7, 48096
ori $7, $7, 65247
lui $8, 29726
ori $8, $8, 1574
lui $9, 53883
ori $9, $9, 9939
lui $10, 39726
ori $10, $10, 60723
lui $11, 56028
label6:
label5:
ori $11, $11, 14679
lui $12, 49824
ori $12, $12, 37164
lui $13, 12287
ori $13, $13, 12123
lui $14, 12502
ori $14, $14, 55826
lui $15, 2027
ori $15, $15, 177
lui $16, 59942
ori $16, $16, 27952
lui $17, 13564
ori $17, $17, 57878
lui $18, 46032
ori $18, $18, 18338
lui $19, 46213
ori $19, $19, 35968
sw $16, data0
sw $1, data1
sw $5, data2
mfhi $8
lw $12,data1
mult $5,$13
xor $1,$12,$17
sub $14,$16,$4
addiu $11,$16,37822
andi $8,$8,3
lb $5,data0($8)
slt $16,$7,$9
mthi $12
srl $5,$4,29
addi $13,$6,56580
nor $9,$1,$8
srl $1,$17,27
lw $15,data0
addiu $0,$0,21250
sll $5,$14,0
divu $4,$19
lw $7,data2
div $16,$12
sltiu $2,$4,3979
srav $19,$4,$9
sltu $14,$6,$12
slt $10,$19,$14
sub $14,$6,$18
mfhi $5
andi $8,$8,3
lb $3,data0($8)
label3:
sll $5,$5,14
sltu $4,$18,$13
srl $10,$4,19
andi $8,$8,2
lh $14,data1($8)
andi $16,$13,18442
andi $8,$8,2
lh $4,data1($8)
mult $9,$19
sub $8,$3,$4
label4:
mtlo $17
andi $12,$12,2
lh $7,data1($12)
addu $4,$11,$4
sltu $0,$8,$2
addi $3,$7,31030
sll $14,$17,25
bne $14,$4,label0
label0:
andi $6,$6,3
sb $7,data0($6)
mthi $4
sra $11,$4,6
mflo $19
addu $6,$8,$1
mthi $0
jal label6
subu $5,$17,$6
sllv $12,$7,$6
sra $11,$1,13
or $11,$17,$11
sll $8,$1,24
sltiu $17,$13,12962
andi $2,$2,2
sh $2,data1($2)
addiu $11,$15,23923
bgez $14,label4
lw $15,data0
sllv $0,$16,$16
sw $11,data1
label2:
andi $1,$1,2
lh $12,data0($1)
blez $12,label6
srl $14,$16,6
bne $0,$3,label0
andi $10,$10,3
lb $9,data0($10)
mfhi $4
andi $14,$14,2
lhu $12,data1($14)
lw $0,data0
xori $2,$11,11223
lw $11,data0
sltiu $5,$13,7951
mult $3,$17
addu $2,$31,$31
add $4,$3,$12
andi $13,$13,3
lbu $11,data0($13)
slti $10,$4,-6690
andi $4,$13,19771
or $12,$11,$9
andi $18,$0,53278
sw $12,data1
sra $18,$1,10
mthi $1
or $18,$31,$15
bltz $10,label3
andi $7,$7,2
lh $9,data2($7)
addiu $12,$7,31864
andi $5,$5,3
lbu $17,data1($5)
jal label4
sw $15,data2
sw $8,data1
or $16,$7,$0
mult $10,$12
andi $19,$19,3
sb $0,data2($19)
label1:
mthi $1
slti $8,$12,-14689
addu $14,$10,$7
sltiu $9,$19,28567
lw $5,data2
multu $8,$16
sltu $19,$0,$4
ori $v0, $0, 10
syscall