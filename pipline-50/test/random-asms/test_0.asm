.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
label6:
lui $0, 40544
ori $0, $0, 8176
lui $1, 55596
ori $1, $1, 45776
lui $2, 36498
ori $2, $2, 29915
lui $3, 38277
ori $3, $3, 38556
lui $4, 54963
ori $4, $4, 1275
lui $5, 45616
ori $5, $5, 30389
lui $6, 64264
ori $6, $6, 48736
lui $7, 26368
ori $7, $7, 32682
lui $8, 46909
ori $8, $8, 64115
lui $9, 30182
ori $9, $9, 28183
lui $10, 4671
ori $10, $10, 33939
lui $11, 14813
ori $11, $11, 36
lui $12, 3730
ori $12, $12, 1740
lui $13, 41086
ori $13, $13, 1667
lui $14, 9823
ori $14, $14, 6964
label2:
lui $15, 17054
ori $15, $15, 52330
lui $16, 53209
ori $16, $16, 18646
lui $17, 22091
ori $17, $17, 33892
lui $18, 10834
ori $18, $18, 11813
lui $19, 16751
ori $19, $19, 18621
sw $19, data0
sw $18, data1
sw $2, data2
multu $5,$8
andi $1,$1,2
sh $1,data2($1)
andi $14,$14,3
lb $7,data0($14)
label5:
sub $3,$7,$8
ori $18,$13,32807
sub $5,$6,$31
ori $19,$1,24331
div $5,$18
sw $10,data1
sllv $4,$5,$13
sll $5,$2,6
andi $12,$17,12730
mult $17,$19
srl $6,$2,8
lui $11,28170
sltu $11,$11,$1
lui $4,36832
nor $19,$12,$31
label4:
multu $17,$2
mtlo $3
or $11,$17,$0
label0:
label3:
slt $1,$17,$13
andi $3,$3,3
lbu $0,data0($3)
mflo $16
multu $13,$6
xori $4,$14,11062
andi $19,$19,3
sb $4,data1($19)
lw $3,data1
slti $0,$7,19019
mfhi $6
addiu $14,$31,22471
srl $14,$0,30
andi $19,$19,3
lbu $14,data1($19)
slt $10,$3,$12
and $14,$5,$10
slt $0,$9,$12
mfhi $17
multu $9,$19
xori $7,$3,21429
mflo $19
sll $8,$3,23
addi $0,$2,7196
jalr $0,$ra
sra $15,$2,10
jal label6
andi $0,$0,3
lb $13,data2($0)
mult $7,$19
mflo $10
mthi $12
srav $5,$31,$0
srav $2,$2,$13
lw $2,data0
andi $2,$2,3
sb $16,data1($2)
mult $18,$13
mthi $11
andi $4,$4,2
sh $12,data1($4)
andi $4,$4,2
lhu $13,data0($4)
andi $5,$5,3
sb $16,data2($5)
or $1,$10,$17
srav $16,$14,$16
andi $13,$13,3
lbu $12,data1($13)
nor $1,$16,$8
sw $13,data1
slt $2,$8,$16
sw $18,data1
andi $5,$5,2
sh $14,data0($5)
bne $19,$6,label3
or $17,$8,$1
subu $0,$15,$12
jal label0
addi $6,$8,24899
xor $2,$19,$5
andi $15,$15,3
lbu $4,data2($15)
beq $10,$13,label6
label1:
mfhi $4
srav $14,$8,$19
j label5
andi $2,$2,2
lh $9,data1($2)
sub $15,$2,$3
j label2
andi $12,$12,2
lhu $7,data0($12)
srl $19,$0,20
bgez $12,label1
sllv $11,$11,$8
sra $4,$3,20
srav $8,$3,$12
sra $17,$14,28
bgtz $12,label1
addu $19,$7,$6
divu $15,$18
xori $3,$8,35
sltu $0,$9,$11
and $7,$6,$18
mult $14,$3
lw $1,data2
sltu $13,$10,$17
sll $14,$17,3
andi $18,$18,2
lhu $0,data0($18)
sll $17,$1,28
add $19,$4,$17
ori $v0, $0, 10
syscall