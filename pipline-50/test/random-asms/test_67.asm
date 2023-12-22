.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 53836
ori $0, $0, 8194
lui $1, 54626
ori $1, $1, 26975
lui $2, 26531
ori $2, $2, 12706
lui $3, 49932
ori $3, $3, 29412
lui $4, 45099
ori $4, $4, 17808
lui $5, 59003
ori $5, $5, 54112
label5:
lui $6, 59286
ori $6, $6, 22026
lui $7, 42834
ori $7, $7, 20035
lui $8, 8037
ori $8, $8, 17419
lui $9, 62154
ori $9, $9, 48635
lui $10, 10166
ori $10, $10, 43360
lui $11, 40549
ori $11, $11, 20508
lui $12, 5123
ori $12, $12, 63317
lui $13, 14045
ori $13, $13, 57838
label3:
lui $14, 65150
label6:
ori $14, $14, 38121
lui $15, 13109
ori $15, $15, 21002
lui $16, 56880
ori $16, $16, 12191
lui $17, 10547
ori $17, $17, 33773
lui $18, 10004
ori $18, $18, 40740
lui $19, 32256
ori $19, $19, 63595
sw $18, data0
sw $8, data1
sw $18, data2
add $5,$4,$3
lui $0,38114
slti $8,$7,-12005
mfhi $16
sltiu $16,$12,4247
or $0,$17,$1
andi $12,$12,3
lbu $2,data2($12)
addiu $14,$1,59471
add $10,$7,$31
sra $2,$0,29
addu $1,$2,$11
add $11,$2,$0
srav $1,$13,$6
mfhi $17
ori $10,$12,36360
sltu $19,$15,$16
and $17,$12,$3
slti $0,$14,758
slti $17,$1,-19487
xor $19,$6,$17
xor $18,$1,$13
sra $4,$19,24
sllv $15,$18,$5
addi $9,$16,12214
xori $1,$31,49875
andi $4,$4,2
lhu $11,data0($4)
sltiu $10,$11,5076
sllv $17,$9,$7
andi $9,$9,2
sh $19,data2($9)
sllv $0,$12,$31
slti $4,$14,17004
sltiu $6,$17,23453
divu $16,$11
sub $6,$0,$8
andi $1,$1,3
lb $18,data2($1)
and $1,$6,$16
divu $10,$17
andi $17,$17,2
sh $3,data1($17)
xor $7,$11,$17
sw $1,data0
xor $0,$0,$6
mtlo $15
bne $11,$9,label6
andi $15,$15,2
lhu $9,data2($15)
beq $4,$10,label4
lw $1,data2
jalr $16,$ra
sltiu $3,$7,26657
srl $14,$16,14
srlv $3,$18,$13
mthi $6
multu $12,$13
label2:
bgtz $10,label1
sltu $15,$8,$10
divu $31,$12
addiu $16,$16,29524
and $3,$3,$3
sra $14,$13,23
jal label6
label4:
andi $19,$19,2
lhu $8,data2($19)
sll $0,$19,5
lui $2,729
addu $16,$5,$2
div $18,$4
xori $16,$10,21541
xor $9,$4,$14
andi $8,$13,14670
beq $6,$7,label4
label1:
xori $5,$10,13028
mfhi $2
mfhi $11
subu $2,$0,$0
jr $ra
andi $5,$31,7402
mult $0,$16
add $13,$13,$19
sltu $11,$14,$4
add $12,$19,$10
sra $1,$16,27
div $8,$5
sub $16,$17,$15
or $14,$0,$19
sw $1,data0
andi $19,$19,2
sh $15,data0($19)
mflo $1
addi $1,$8,37483
sllv $8,$16,$13
bgtz $11,label6
divu $5,$14
ori $6,$5,14244
bltz $31,label4
add $14,$14,$17
sra $0,$5,24
sltu $13,$16,$1
label0:
addi $15,$13,59578
srl $11,$11,17
addiu $10,$16,56471
andi $19,$19,3
lb $15,data0($19)
sltu $10,$9,$5
andi $17,$17,3
lbu $17,data0($17)
ori $v0, $0, 10
syscall