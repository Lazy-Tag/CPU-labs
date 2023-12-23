.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 36361
label1:
ori $0, $0, 5105
lui $1, 40890
ori $1, $1, 43752
lui $2, 49973
ori $2, $2, 9398
lui $3, 36286
ori $3, $3, 48503
lui $4, 19146
ori $4, $4, 36514
lui $5, 56855
ori $5, $5, 52155
lui $6, 43719
ori $6, $6, 37892
lui $7, 34877
ori $7, $7, 50598
lui $8, 707
ori $8, $8, 31219
lui $9, 31053
ori $9, $9, 53918
lui $10, 41032
ori $10, $10, 618
lui $11, 17481
ori $11, $11, 45352
lui $12, 7944
ori $12, $12, 61480
lui $13, 1794
ori $13, $13, 27774
lui $14, 7773
ori $14, $14, 38980
label2:
lui $15, 8191
ori $15, $15, 45362
lui $16, 9380
ori $16, $16, 15876
lui $17, 30719
ori $17, $17, 26859
lui $18, 39388
ori $18, $18, 31238
lui $19, 33044
ori $19, $19, 61736
sw $13, data0
sw $14, data1
sw $7, data2
srav $4,$6,$1
mthi $14
mfhi $12
xor $14,$1,$15
subu $3,$8,$0
andi $16,$16,3
sb $5,data0($16)
mthi $15
sllv $19,$9,$13
sll $7,$16,19
ori $16,$2,34879
xori $12,$12,17230
multu $5,$14
lw $11,data0
subu $14,$8,$17
and $14,$19,$7
slt $6,$15,$8
mthi $3
or $1,$15,$16
ori $18,$4,10951
sra $11,$7,26
andi $12,$3,15475
sltu $3,$13,$17
addiu $1,$3,30016
sw $1,data1
multu $7,$9
sltiu $15,$12,4442
slti $12,$17,-12949
sw $10,data2
andi $16,$16,3
sb $16,data1($16)
sllv $11,$16,$2
divu $18,$15
mflo $16
subu $19,$14,$11
sltu $5,$15,$2
slti $7,$18,28371
andi $18,$18,3
sb $12,data0($18)
mflo $8
mthi $14
label3:
srl $14,$12,0
mthi $10
andi $15,$15,2
lh $9,data0($15)
and $1,$31,$1
add $2,$17,$5
multu $3,$12
ori $19,$18,28909
label4:
xori $2,$3,18554
sll $7,$15,21
sll $10,$17,4
sltiu $1,$4,15937
xori $15,$9,57884
lui $17,19217
bne $0,$7,label6
slti $4,$0,30235
beq $17,$14,label1
andi $10,$10,3
lbu $9,data1($10)
lui $13,64203
label5:
sra $13,$19,17
div $13,$3
addiu $12,$1,41538
srlv $6,$13,$17
sra $8,$4,23
label6:
beq $1,$10,label0
label0:
divu $1,$10
jal label0
sra $4,$31,1
andi $16,$5,13924
blez $9,label0
sltu $10,$1,$3
mflo $15
blez $0,label0
xor $11,$8,$12
sra $12,$9,7
andi $0,$19,57390
srl $12,$11,5
bltz $17,label2
mult $10,$4
bne $14,$2,label4
mflo $3
jr $ra
srav $1,$18,$3
sltu $7,$0,$8
nor $2,$14,$9
mthi $13
addiu $1,$5,7196
mthi $3
slt $3,$7,$2
sra $11,$11,3
sllv $1,$19,$10
xori $14,$31,10993
lui $7,61433
mfhi $18
mthi $15
addiu $12,$1,3943
slti $15,$17,-28576
bltz $11,label3
addi $12,$10,28831
andi $9,$9,2
lhu $7,data1($9)
andi $18,$18,2
lh $9,data1($18)
sltu $3,$11,$18
slt $2,$3,$13
ori $v0, $0, 10
syscall