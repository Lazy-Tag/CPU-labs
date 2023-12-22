.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

label1:
ori $31, $0, 0x3000
lui $0, 44049
ori $0, $0, 16421
lui $1, 60399
ori $1, $1, 22424
lui $2, 53844
ori $2, $2, 22431
lui $3, 29539
ori $3, $3, 42578
lui $4, 31201
ori $4, $4, 6005
lui $5, 60589
ori $5, $5, 57601
lui $6, 31117
ori $6, $6, 38182
lui $7, 58098
ori $7, $7, 49871
lui $8, 62872
ori $8, $8, 7202
lui $9, 20440
ori $9, $9, 24109
lui $10, 47383
ori $10, $10, 25050
lui $11, 61624
ori $11, $11, 30794
lui $12, 47137
ori $12, $12, 65326
lui $13, 63344
ori $13, $13, 15048
lui $14, 57727
ori $14, $14, 7795
lui $15, 4102
ori $15, $15, 61341
lui $16, 47131
ori $16, $16, 60852
lui $17, 13741
ori $17, $17, 30549
lui $18, 26931
ori $18, $18, 9526
lui $19, 24797
ori $19, $19, 5412
sw $10, data0
sw $16, data1
sw $2, data2
andi $5,$5,2
lhu $1,data1($5)
mthi $18
and $13,$19,$13
slti $14,$1,-26312
andi $6,$6,3
lbu $5,data1($6)
label3:
divu $10,$0
sll $6,$3,6
srl $5,$1,10
sllv $11,$7,$6
add $13,$6,$4
label4:
add $12,$9,$16
lui $9,42705
label2:
sltu $15,$2,$14
lw $10,data1
xor $13,$3,$9
andi $5,$5,3
sb $5,data1($5)
slt $8,$7,$15
andi $8,$8,3
sb $13,data2($8)
addiu $8,$5,42976
slti $1,$13,10709
subu $3,$14,$9
mflo $10
andi $13,$13,3
lb $8,data1($13)
subu $19,$3,$8
sub $8,$0,$1
sub $8,$8,$0
subu $16,$2,$14
subu $16,$3,$11
slt $10,$14,$9
addi $12,$5,9529
srav $8,$10,$16
xor $7,$3,$19
andi $17,$17,2
sh $18,data0($17)
divu $3,$11
sll $14,$6,5
sll $4,$18,21
divu $7,$9
addu $10,$5,$14
slt $13,$17,$18
divu $17,$12
bltz $11,label5
sll $14,$19,6
andi $9,$9,3
sb $13,data1($9)
srlv $9,$7,$16
mthi $18
multu $0,$10
sltiu $0,$11,24259
sllv $12,$11,$12
andi $16,$16,2
lh $1,data0($16)
addiu $8,$7,44467
nor $19,$19,$14
mult $1,$5
mthi $1
sub $14,$15,$18
addi $9,$4,52405
addu $10,$17,$13
sltiu $19,$16,21363
xori $1,$5,53372
or $19,$1,$10
sllv $3,$2,$1
mflo $4
bgtz $4,label5
andi $16,$16,2
sh $0,data1($16)
mtlo $19
srav $0,$12,$2
multu $0,$9
ori $6,$1,49875
andi $19,$19,3
lb $0,data0($19)
andi $9,$9,2
lh $19,data1($9)
mtlo $9
andi $14,$3,43601
and $12,$19,$5
bgtz $7,label3
div $8,$11
divu $6,$9
sltu $2,$4,$5
divu $12,$3
srav $11,$0,$31
sltiu $19,$9,16081
bne $16,$10,label1
label6:
srlv $13,$11,$11
andi $1,$1,2
lhu $19,data2($1)
xor $0,$11,$0
blez $0,label4
nor $17,$31,$9
mult $2,$11
mult $16,$4
srlv $7,$31,$3
mthi $2
andi $12,$12,3
lbu $11,data1($12)
srav $15,$16,$13
srav $2,$31,$2
label5:
sllv $14,$6,$8
mthi $15
andi $0,$0,3
sb $1,data1($0)
sltu $0,$2,$5
label0:
lw $3,data2
addu $11,$7,$10
srlv $2,$15,$11
jal label3
ori $v0, $0, 10
syscall