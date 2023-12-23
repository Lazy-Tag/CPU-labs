.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 15230
ori $0, $0, 31399
lui $1, 23672
ori $1, $1, 50075
lui $2, 60638
ori $2, $2, 43118
lui $3, 19542
ori $3, $3, 32624
lui $4, 42941
ori $4, $4, 27003
lui $5, 39687
ori $5, $5, 25699
lui $6, 51026
ori $6, $6, 32908
lui $7, 23373
ori $7, $7, 45146
label0:
lui $8, 55475
ori $8, $8, 35685
lui $9, 8295
ori $9, $9, 13366
lui $10, 37859
ori $10, $10, 42897
lui $11, 42267
ori $11, $11, 10308
lui $12, 16617
ori $12, $12, 26343
lui $13, 53676
ori $13, $13, 1726
lui $14, 5140
ori $14, $14, 10838
lui $15, 4363
ori $15, $15, 16828
lui $16, 41104
ori $16, $16, 3754
lui $17, 15922
ori $17, $17, 23499
lui $18, 16470
ori $18, $18, 48869
lui $19, 34141
ori $19, $19, 30794
sw $3, data0
sw $31, data1
sw $2, data2
srlv $15,$6,$0
srav $3,$9,$1
or $6,$17,$17
sw $16,data0
andi $2,$2,3
lbu $14,data0($2)
label5:
sra $7,$0,7
mult $3,$15
andi $3,$3,3
lbu $9,data0($3)
andi $14,$14,3
lb $4,data2($14)
lw $19,data0
andi $14,$14,2
lhu $7,data1($14)
addiu $6,$14,59161
sll $8,$3,25
andi $12,$12,3
lb $12,data2($12)
mthi $14
label1:
mult $1,$6
nor $8,$31,$13
mfhi $4
sw $7,data1
slt $0,$5,$7
lui $13,839
andi $7,$7,3
lbu $15,data0($7)
xori $8,$13,50424
addu $10,$13,$16
slti $10,$19,-18294
sub $3,$14,$17
div $11,$5
sltu $10,$15,$18
sub $18,$15,$5
addiu $12,$12,45947
mthi $3
srlv $3,$18,$12
xor $1,$4,$6
sra $1,$12,9
srl $16,$8,15
divu $9,$8
ori $5,$11,42528
mflo $4
lw $6,data0
or $4,$7,$14
bne $1,$1,label2
mult $7,$16
lui $9,2733
beq $8,$18,label3
sllv $19,$8,$10
bgez $18,label4
multu $8,$0
andi $1,$1,3
sb $11,data2($1)
mtlo $9
beq $3,$13,label3
andi $2,$2,2
lhu $16,data1($2)
andi $4,$4,3
lbu $15,data2($4)
divu $16,$14
jal label5
sllv $3,$4,$5
ori $11,$14,19342
mtlo $0
bltz $15,label4
label3:
label2:
sltiu $8,$12,16711
sub $13,$18,$15
label4:
xor $3,$31,$16
jal label1
sllv $0,$15,$0
sllv $6,$17,$14
sllv $3,$6,$5
andi $1,$3,57429
sw $1,data0
div $18,$5
srlv $9,$15,$19
blez $0,label6
lui $5,59872
xori $9,$18,7441
bgez $31,label1
mtlo $18
andi $19,$19,2
sh $18,data2($19)
multu $8,$4
slti $12,$4,4887
lui $4,40012
and $13,$6,$10
andi $8,$8,3
lb $1,data1($8)
and $3,$5,$4
addiu $5,$14,18034
label6:
xori $13,$12,44248
xor $6,$11,$4
addiu $4,$8,59905
nor $14,$2,$19
slti $4,$3,-13309
slti $4,$12,31728
andi $2,$2,2
sh $16,data1($2)
mthi $18
sltu $15,$3,$15
mtlo $15
ori $17,$15,33054
add $13,$4,$19
mthi $15
bne $17,$11,label6
sw $16,data1
slt $19,$19,$5
and $9,$13,$9
jal label4
ori $v0, $0, 10
syscall