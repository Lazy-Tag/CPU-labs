.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 48130
ori $0, $0, 28165
lui $1, 62775
ori $1, $1, 62119
lui $2, 9487
ori $2, $2, 10818
lui $3, 19401
label4:
ori $3, $3, 56955
lui $4, 31698
ori $4, $4, 16955
lui $5, 54575
ori $5, $5, 11156
label5:
lui $6, 25438
ori $6, $6, 47486
lui $7, 59639
ori $7, $7, 61691
lui $8, 7319
ori $8, $8, 65080
lui $9, 64378
ori $9, $9, 39020
lui $10, 15339
ori $10, $10, 14765
lui $11, 2518
ori $11, $11, 18042
lui $12, 53159
ori $12, $12, 15100
lui $13, 29378
ori $13, $13, 39090
lui $14, 62111
label2:
ori $14, $14, 27279
lui $15, 44984
ori $15, $15, 44116
lui $16, 56548
ori $16, $16, 19524
lui $17, 12255
ori $17, $17, 49942
lui $18, 47111
ori $18, $18, 52342
lui $19, 5903
ori $19, $19, 16211
label0:
sw $10, data0
sw $1, data1
sw $9, data2
divu $31,$0
mtlo $0
label6:
addiu $4,$3,46279
andi $15,$15,2
sh $13,data0($15)
sub $12,$16,$4
sra $11,$18,9
sltiu $1,$14,14345
sub $2,$18,$12
ori $13,$9,63345
andi $13,$13,3
sb $16,data0($13)
or $3,$5,$11
lw $6,data2
label3:
nor $17,$10,$10
mfhi $16
andi $15,$15,2
lh $18,data2($15)
slt $1,$7,$9
andi $16,$16,3
sb $8,data1($16)
xor $8,$14,$19
div $3,$5
andi $8,$8,2
sh $11,data1($8)
or $16,$17,$8
sltu $17,$4,$14
andi $12,$12,3
sb $15,data0($12)
divu $18,$17
sw $31,data1
addi $0,$16,50609
mult $14,$3
xor $6,$31,$3
slt $16,$18,$0
sw $11,data2
addu $6,$8,$0
divu $14,$0
addiu $8,$18,17851
andi $9,$9,2
lhu $17,data2($9)
srlv $4,$18,$12
label1:
sra $19,$2,30
andi $0,$0,2
lhu $15,data1($0)
sub $4,$8,$3
andi $5,$10,28607
andi $17,$17,2
lh $5,data1($17)
xor $3,$14,$8
beq $31,$4,label2
addu $8,$8,$18
andi $10,$10,2
lh $14,data1($10)
sltu $1,$15,$14
jalr $7,$ra
andi $15,$15,2
sh $15,data2($15)
sw $6,data1
nor $5,$18,$13
j label0
slti $8,$13,20960
mthi $10
bgez $6,label6
srl $19,$19,14
nor $9,$8,$4
andi $14,$14,2
sh $2,data1($14)
jr $ra
ori $9,$0,42626
and $11,$14,$18
addiu $6,$2,23726
sub $6,$7,$3
sub $12,$13,$13
blez $13,label4
sllv $5,$4,$14
beq $4,$9,label2
xor $16,$13,$13
bne $10,$8,label0
mtlo $19
nor $19,$8,$4
sub $19,$12,$1
srlv $13,$13,$19
bgez $15,label1
andi $6,$6,3
sb $18,data0($6)
jal label5
lui $5,29180
sll $9,$11,23
andi $2,$2,3
sb $3,data0($2)
sub $17,$11,$15
bne $11,$31,label4
ori $4,$16,44371
lui $18,37453
sll $1,$3,2
sltu $1,$7,$6
lui $3,37782
nor $17,$13,$15
mthi $18
srl $11,$15,30
mult $10,$12
slt $19,$3,$4
divu $17,$3
addiu $9,$1,35198
sw $13,data2
srl $9,$3,10
slti $0,$6,14925
slt $11,$9,$16
sub $10,$18,$31
nor $10,$17,$19
beq $1,$11,label3
sll $18,$0,23
slti $16,$5,-30910
ori $v0, $0, 10
syscall