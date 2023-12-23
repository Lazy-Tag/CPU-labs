.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 19773
ori $0, $0, 7919
lui $1, 796
ori $1, $1, 2218
lui $2, 29099
ori $2, $2, 22987
lui $3, 52438
label5:
ori $3, $3, 41719
lui $4, 31600
ori $4, $4, 43361
lui $5, 3676
ori $5, $5, 43520
lui $6, 27072
label6:
ori $6, $6, 56592
lui $7, 54993
ori $7, $7, 34458
lui $8, 47644
ori $8, $8, 18782
lui $9, 16165
ori $9, $9, 14566
lui $10, 34140
ori $10, $10, 43969
lui $11, 29149
ori $11, $11, 477
lui $12, 42187
ori $12, $12, 23738
lui $13, 47327
ori $13, $13, 35639
lui $14, 41883
ori $14, $14, 42768
lui $15, 1334
ori $15, $15, 16328
lui $16, 875
ori $16, $16, 16688
lui $17, 20410
ori $17, $17, 24897
lui $18, 49094
ori $18, $18, 55811
lui $19, 64945
ori $19, $19, 62478
sw $31, data0
sw $3, data1
sw $15, data2
add $16,$9,$16
subu $4,$8,$31
andi $3,$3,2
sh $0,data2($3)
sllv $0,$2,$10
label3:
xori $7,$5,43903
lw $17,data0
sltu $12,$4,$18
add $7,$15,$12
sllv $5,$11,$11
slti $5,$4,26548
slt $5,$19,$0
andi $0,$0,2
sh $1,data1($0)
sub $5,$8,$16
andi $6,$6,2
lh $10,data2($6)
subu $11,$10,$0
nor $0,$11,$3
addu $9,$2,$1
andi $16,$16,3
sb $17,data2($16)
sll $5,$6,25
sub $12,$11,$1
divu $18,$10
label2:
andi $12,$12,3
lbu $18,data0($12)
xor $11,$13,$31
slti $3,$10,19239
and $11,$14,$11
slt $19,$12,$1
mult $14,$13
and $2,$12,$15
mfhi $0
or $14,$7,$5
srav $17,$9,$0
add $6,$4,$12
sw $10,data1
mfhi $1
mthi $13
div $9,$0
add $0,$13,$17
andi $7,$7,3
lbu $7,data0($7)
addi $12,$13,25797
subu $6,$12,$16
multu $1,$15
sra $16,$1,1
addu $3,$15,$7
mflo $12
mthi $18
sltu $1,$16,$11
label1:
bltz $31,label1
subu $2,$0,$19
addiu $14,$18,35985
beq $2,$17,label5
sll $17,$15,27
j label0
lui $14,47898
andi $1,$1,3
lb $18,data0($1)
mult $8,$4
mflo $19
sw $11,data0
sub $14,$17,$19
slti $3,$9,12333
slt $4,$0,$2
srlv $19,$18,$14
or $13,$19,$11
subu $13,$19,$17
or $0,$5,$12
srlv $10,$2,$5
sll $11,$19,14
sllv $14,$6,$18
mfhi $10
andi $7,$7,2
sh $18,data2($7)
andi $12,$12,2
sh $13,data0($12)
and $12,$4,$31
andi $17,$17,3
lb $15,data2($17)
label4:
mtlo $12
bne $14,$4,label3
addiu $5,$7,46957
andi $19,$19,2
sh $12,data0($19)
addu $1,$19,$11
and $15,$3,$6
jal label2
mtlo $8
nor $18,$0,$8
slt $8,$6,$31
andi $18,$18,2
lhu $5,data0($18)
label0:
and $15,$10,$18
xor $16,$10,$12
andi $4,$9,60245
sltu $16,$10,$16
lw $7,data1
mthi $17
jr $ra
addi $15,$3,32699
sltu $16,$18,$5
lui $8,35079
srav $18,$12,$19
mthi $17
mflo $18
div $6,$2
mflo $7
or $3,$2,$17
lw $11,data0
ori $v0, $0, 10
syscall