.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

label1:
ori $31, $0, 0x3000
lui $0, 9977
ori $0, $0, 1928
lui $1, 23674
ori $1, $1, 52224
lui $2, 6439
ori $2, $2, 51808
lui $3, 32231
ori $3, $3, 29526
lui $4, 29043
ori $4, $4, 38082
lui $5, 9003
ori $5, $5, 13481
lui $6, 16539
ori $6, $6, 64161
lui $7, 13756
ori $7, $7, 29726
lui $8, 35925
ori $8, $8, 2327
lui $9, 41244
ori $9, $9, 14289
lui $10, 21622
ori $10, $10, 11365
lui $11, 54110
ori $11, $11, 62851
lui $12, 1446
ori $12, $12, 3970
lui $13, 41917
ori $13, $13, 15292
lui $14, 49558
ori $14, $14, 722
label6:
lui $15, 7497
ori $15, $15, 45014
lui $16, 32927
ori $16, $16, 37969
lui $17, 20758
ori $17, $17, 20801
lui $18, 15972
ori $18, $18, 39216
lui $19, 28093
ori $19, $19, 63945
sw $11, data0
sw $8, data1
sw $1, data2
label2:
or $0,$11,$9
andi $17,$7,98
mflo $16
addi $6,$2,19734
slti $5,$10,17569
andi $3,$3,2
lhu $15,data2($3)
addi $13,$2,6793
srlv $4,$2,$0
srav $12,$19,$12
lui $0,23816
addi $9,$6,33595
addiu $3,$7,38091
andi $5,$5,2
sh $14,data2($5)
sltiu $19,$0,28804
sra $18,$31,2
andi $16,$16,2
sh $1,data1($16)
xor $16,$8,$0
mfhi $1
div $13,$14
sra $8,$12,23
sra $2,$2,9
and $13,$12,$5
srav $0,$6,$18
ori $4,$11,3162
andi $12,$12,3
lbu $15,data1($12)
subu $0,$16,$7
mthi $13
mfhi $10
andi $12,$18,28701
mult $10,$2
andi $13,$13,3
sb $7,data2($13)
sra $5,$12,21
subu $13,$0,$31
andi $15,$14,38446
add $5,$14,$15
lui $16,28882
andi $3,$3,3
lb $5,data0($3)
sll $14,$5,19
mthi $17
label3:
slti $4,$16,-21423
label4:
bgez $14,label5
label5:
mfhi $9
bltz $1,label5
addiu $10,$8,26919
jal label0
sra $11,$12,27
andi $19,$19,2
lhu $12,data0($19)
beq $14,$17,label6
slt $2,$19,$12
blez $1,label3
add $10,$8,$17
bgez $7,label6
andi $7,$7,2
sh $5,data1($7)
bgez $12,label6
sub $9,$0,$11
sub $5,$14,$7
divu $12,$3
slti $11,$4,-22620
bgtz $5,label1
mflo $19
beq $10,$19,label6
label0:
div $0,$9
mthi $11
andi $1,$1,2
sh $0,data0($1)
andi $19,$19,2
lh $6,data1($19)
sra $9,$3,27
srav $8,$7,$16
div $31,$3
mtlo $17
srav $5,$11,$9
bne $16,$19,label3
andi $2,$2,2
sh $3,data0($2)
sll $4,$14,15
j label2
sllv $11,$15,$8
add $13,$2,$8
slti $7,$13,-6437
sltiu $8,$16,24249
mtlo $10
and $14,$13,$31
sll $16,$9,0
xor $1,$11,$9
beq $18,$11,label4
addi $13,$31,16425
andi $5,$5,3
lbu $18,data2($5)
srlv $14,$4,$8
mfhi $11
xor $6,$5,$12
addiu $0,$19,29215
slti $15,$3,23952
lw $5,data2
j label4
sll $17,$13,15
andi $17,$17,2
lh $10,data0($17)
beq $12,$17,label5
multu $18,$10
addi $4,$18,45054
xori $2,$15,22435
mtlo $5
bgtz $16,label1
ori $v0, $0, 10
syscall