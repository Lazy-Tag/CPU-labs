.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 37912
ori $0, $0, 45436
lui $1, 31568
ori $1, $1, 64090
lui $2, 47486
ori $2, $2, 23452
lui $3, 15412
ori $3, $3, 53244
lui $4, 14918
ori $4, $4, 55469
lui $5, 33015
ori $5, $5, 60651
lui $6, 15627
ori $6, $6, 59649
lui $7, 19396
ori $7, $7, 364
lui $8, 44976
ori $8, $8, 51318
lui $9, 52391
ori $9, $9, 40992
lui $10, 44257
ori $10, $10, 32971
lui $11, 2301
ori $11, $11, 36335
lui $12, 30978
ori $12, $12, 61100
lui $13, 11826
ori $13, $13, 27461
lui $14, 27343
ori $14, $14, 6749
lui $15, 5302
ori $15, $15, 65372
lui $16, 62352
label6:
ori $16, $16, 5952
lui $17, 25690
label4:
ori $17, $17, 22414
lui $18, 56526
ori $18, $18, 65101
lui $19, 31654
ori $19, $19, 54035
sw $7, data0
sw $18, data1
sw $8, data2
andi $7,$7,2
lh $1,data2($7)
slt $1,$4,$18
andi $1,$19,6653
label2:
nor $14,$1,$1
andi $10,$10,2
lhu $17,data2($10)
sra $5,$9,0
andi $11,$11,3
lbu $18,data0($11)
mtlo $17
sw $18,data1
mthi $10
andi $11,$6,7072
slti $7,$14,-16053
lui $7,48305
xor $15,$3,$5
andi $16,$16,2
sh $13,data2($16)
mthi $10
subu $9,$12,$7
sll $4,$2,28
mflo $4
or $2,$17,$1
andi $12,$12,3
lb $5,data2($12)
srlv $9,$31,$18
sltiu $19,$12,14218
andi $18,$18,3
lbu $17,data2($18)
multu $13,$8
and $0,$14,$16
subu $4,$2,$5
div $10,$4
or $14,$1,$10
xori $18,$0,60068
lw $2,data1
ori $16,$16,48785
srl $9,$6,1
divu $5,$14
or $16,$0,$6
andi $0,$0,3
lbu $12,data1($0)
addi $3,$0,60424
nor $7,$12,$17
andi $10,$10,2
lhu $16,data1($10)
addu $5,$8,$4
beq $13,$4,label5
or $2,$31,$2
jal label0
sw $3,data1
label0:
sll $16,$0,27
multu $9,$5
and $18,$11,$13
sllv $2,$15,$1
bgez $14,label2
andi $9,$3,60383
ori $17,$18,5744
sra $8,$0,12
addi $10,$4,18734
jal label5
sltiu $14,$5,27633
beq $9,$13,label6
xori $9,$31,26118
mflo $3
andi $5,$9,6221
xor $5,$15,$31
srav $9,$11,$5
bltz $12,label2
sltiu $4,$12,12196
mthi $15
bne $0,$13,label4
ori $3,$15,20425
bgtz $18,label2
sltiu $13,$8,8592
sll $8,$10,24
addu $13,$16,$8
sltu $14,$4,$5
blez $12,label1
slti $7,$13,-13396
andi $13,$13,2
lh $15,data1($13)
andi $17,$17,2
sh $9,data1($17)
sllv $15,$5,$10
lw $6,data2
mtlo $11
lui $4,25494
srl $8,$14,13
addi $10,$8,34591
slt $16,$0,$6
sw $0,data1
andi $18,$18,3
lb $9,data0($18)
bne $9,$0,label4
slt $13,$3,$7
label5:
addi $6,$1,6570
bne $10,$9,label5
sra $12,$11,24
srl $0,$4,4
label1:
addi $15,$31,234
bgez $7,label3
subu $11,$17,$13
slt $15,$9,$16
subu $14,$7,$8
bgtz $14,label3
label3:
or $12,$4,$31
srav $5,$11,$8
ori $3,$14,64477
addiu $11,$11,20020
ori $v0, $0, 10
syscall