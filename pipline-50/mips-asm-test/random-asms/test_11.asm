.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 9796
ori $0, $0, 36890
lui $1, 19153
ori $1, $1, 41075
lui $2, 41756
ori $2, $2, 53131
lui $3, 27819
ori $3, $3, 62665
lui $4, 47132
ori $4, $4, 53649
lui $5, 15901
ori $5, $5, 63286
lui $6, 57667
ori $6, $6, 16808
lui $7, 28214
ori $7, $7, 16073
lui $8, 46380
ori $8, $8, 52275
lui $9, 16806
ori $9, $9, 57290
lui $10, 32173
label1:
ori $10, $10, 50073
lui $11, 23759
ori $11, $11, 36477
label5:
lui $12, 21075
ori $12, $12, 57707
lui $13, 34889
ori $13, $13, 48034
lui $14, 27629
ori $14, $14, 62948
lui $15, 24269
ori $15, $15, 15410
lui $16, 35866
ori $16, $16, 5227
lui $17, 22940
ori $17, $17, 12222
lui $18, 32639
ori $18, $18, 55692
lui $19, 64808
ori $19, $19, 46696
sw $11, data0
sw $9, data1
sw $2, data2
multu $2,$15
andi $3,$3,3
sb $5,data0($3)
mthi $5
sltu $10,$31,$6
sltu $0,$10,$5
add $9,$19,$14
mfhi $13
div $14,$10
srlv $11,$6,$13
add $15,$5,$18
andi $15,$15,3
lb $18,data1($15)
mfhi $3
andi $8,$8,2
sh $2,data1($8)
mtlo $16
mtlo $11
nor $4,$14,$10
srav $11,$8,$9
mflo $5
label2:
or $3,$6,$18
div $10,$14
divu $8,$8
label4:
nor $0,$5,$17
andi $5,$2,34631
xor $0,$19,$6
sllv $5,$3,$17
slti $2,$12,23869
sra $11,$31,12
mthi $7
divu $31,$7
lui $19,46977
mthi $8
xor $1,$6,$31
sw $9,data0
srav $16,$2,$5
mfhi $4
addi $17,$15,44928
andi $14,$14,2
lhu $18,data1($14)
add $1,$13,$1
or $0,$8,$15
sllv $15,$2,$5
srl $5,$11,28
andi $9,$10,4873
div $10,$12
xori $2,$8,6881
sll $0,$12,2
blez $13,label4
mthi $19
bgez $5,label2
label6:
sllv $14,$9,$19
lui $18,59081
nor $9,$13,$14
slti $8,$5,-3777
srl $17,$1,25
multu $16,$1
lw $6,data0
label0:
xor $1,$1,$3
label3:
multu $6,$8
sll $8,$17,10
sll $18,$8,10
slti $6,$31,-21696
srlv $10,$19,$2
srlv $4,$10,$3
xori $7,$0,15041
j label2
andi $6,$6,2
lh $19,data2($6)
sllv $0,$1,$16
andi $3,$3,2
lh $6,data2($3)
xor $2,$15,$5
slti $16,$10,-13259
beq $19,$16,label1
lw $13,data0
xori $12,$31,16696
andi $12,$12,2
lh $18,data0($12)
srl $2,$19,24
addu $10,$15,$8
sllv $11,$7,$6
mflo $16
addi $16,$5,4850
srlv $10,$5,$1
bne $12,$7,label1
lui $5,54685
andi $9,$9,2
lhu $12,data2($9)
xori $14,$6,18902
multu $0,$15
jal label3
mtlo $8
beq $7,$19,label3
andi $8,$8,2
lh $10,data2($8)
slt $8,$15,$31
add $1,$4,$3
andi $14,$14,3
lb $6,data0($14)
andi $15,$15,2
lh $7,data2($15)
mult $18,$5
bgez $31,label2
sub $1,$16,$0
andi $8,$8,3
sb $6,data1($8)
bgez $5,label2
slti $4,$1,1698
srlv $0,$14,$6
sltiu $6,$6,3460
ori $v0, $0, 10
syscall