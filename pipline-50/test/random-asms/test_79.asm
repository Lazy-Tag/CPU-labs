.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 12469
ori $0, $0, 40450
lui $1, 9757
ori $1, $1, 21064
lui $2, 52821
ori $2, $2, 50591
lui $3, 53420
ori $3, $3, 1044
lui $4, 45414
ori $4, $4, 21692
lui $5, 46479
ori $5, $5, 52715
lui $6, 61142
label1:
ori $6, $6, 29366
lui $7, 43743
ori $7, $7, 64349
lui $8, 23966
ori $8, $8, 39954
lui $9, 36920
ori $9, $9, 33960
label5:
lui $10, 8812
ori $10, $10, 21378
lui $11, 12179
ori $11, $11, 19170
lui $12, 28052
ori $12, $12, 6271
lui $13, 4292
ori $13, $13, 57320
lui $14, 11787
ori $14, $14, 27629
lui $15, 64864
ori $15, $15, 17981
lui $16, 50308
ori $16, $16, 42562
label0:
lui $17, 29869
ori $17, $17, 16714
label4:
lui $18, 24136
ori $18, $18, 57818
lui $19, 22481
ori $19, $19, 44493
sw $6, data0
sw $9, data1
sw $18, data2
ori $14,$19,45812
nor $7,$1,$11
ori $4,$3,45809
xor $16,$1,$5
xori $3,$31,44561
mult $3,$16
srlv $6,$2,$10
mfhi $5
xor $15,$5,$2
mult $0,$13
andi $16,$16,2
lh $18,data0($16)
sll $9,$8,19
sll $17,$10,30
div $4,$19
andi $16,$16,3
lb $9,data2($16)
slt $2,$4,$19
sll $13,$0,7
multu $14,$12
sltiu $19,$13,15797
div $5,$7
andi $1,$1,2
sh $11,data1($1)
xor $8,$16,$6
multu $17,$17
addiu $2,$9,43331
sltiu $11,$14,6875
andi $15,$15,3
sb $5,data1($15)
addi $10,$15,21987
addu $4,$5,$3
lw $12,data1
srav $12,$14,$12
lui $9,34937
srav $19,$14,$18
addi $8,$14,5362
subu $3,$0,$31
addu $11,$3,$14
and $10,$0,$12
sltu $19,$6,$2
mflo $18
srlv $15,$5,$0
div $7,$5
sltu $5,$31,$11
add $15,$5,$3
srl $11,$16,13
bgtz $11,label2
andi $7,$7,3
lb $17,data2($7)
mtlo $4
xor $12,$7,$9
andi $18,$14,55227
slti $2,$11,-13275
xori $8,$3,4178
beq $14,$0,label2
mthi $13
bltz $12,label0
addi $17,$1,44117
sll $7,$4,6
andi $4,$4,3
lb $8,data2($4)
sra $13,$14,16
xor $11,$5,$10
bne $13,$13,label6
andi $5,$13,1741
slt $12,$8,$13
ori $1,$2,54017
addi $15,$13,18786
sub $6,$31,$11
bne $6,$15,label0
slt $19,$4,$15
bgtz $31,label3
divu $10,$8
mtlo $7
andi $0,$0,3
lb $11,data0($0)
srl $12,$17,28
andi $0,$0,2
lhu $11,data2($0)
xori $2,$15,4398
sra $3,$8,0
sub $19,$14,$17
srl $11,$31,6
label2:
andi $9,$9,2
lhu $8,data0($9)
andi $18,$18,2
lh $1,data1($18)
mthi $11
andi $14,$14,2
lh $3,data1($14)
andi $14,$14,2
lhu $17,data0($14)
bgez $17,label2
label3:
slt $0,$5,$9
slt $11,$15,$1
andi $19,$8,15982
and $4,$0,$4
jalr $3,$ra
mtlo $14
srav $10,$14,$19
label6:
mfhi $12
blez $3,label5
sllv $2,$31,$12
div $18,$8
sllv $12,$10,$9
sll $2,$9,2
slti $7,$7,-23466
mflo $14
andi $9,$9,2
lh $11,data1($9)
sltu $7,$7,$16
addiu $8,$7,48849
ori $v0, $0, 10
syscall