.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 49392
ori $0, $0, 47963
lui $1, 7802
ori $1, $1, 54910
lui $2, 41895
ori $2, $2, 18776
lui $3, 63459
ori $3, $3, 15534
lui $4, 41155
ori $4, $4, 58511
lui $5, 27006
ori $5, $5, 11714
lui $6, 27935
ori $6, $6, 64720
lui $7, 56372
ori $7, $7, 32458
lui $8, 50295
ori $8, $8, 57795
lui $9, 55465
ori $9, $9, 62609
lui $10, 30364
ori $10, $10, 1792
lui $11, 20168
ori $11, $11, 44445
lui $12, 10661
ori $12, $12, 12566
lui $13, 57862
ori $13, $13, 6038
lui $14, 24410
label0:
ori $14, $14, 37781
lui $15, 20011
ori $15, $15, 63494
lui $16, 3894
ori $16, $16, 57710
lui $17, 45624
ori $17, $17, 30162
lui $18, 29206
ori $18, $18, 18931
lui $19, 36622
label2:
ori $19, $19, 54755
sw $19, data0
sw $0, data1
sw $6, data2
xor $12,$4,$14
sltiu $6,$17,32042
add $4,$6,$17
sub $7,$9,$0
srl $8,$1,16
multu $12,$8
srl $13,$14,21
mthi $10
lui $14,20316
sll $9,$2,22
andi $4,$4,2
lhu $5,data1($4)
mfhi $13
lui $3,61780
add $10,$15,$14
srl $13,$2,1
sw $12,data1
mthi $17
mult $9,$1
lw $4,data1
label3:
andi $6,$6,2
lhu $9,data1($6)
addi $1,$4,52472
slti $17,$10,4670
multu $31,$15
nor $6,$16,$1
srav $13,$14,$31
lui $11,23460
andi $5,$5,2
lh $1,data0($5)
andi $0,$7,27815
andi $4,$4,3
lbu $11,data1($4)
srl $16,$1,10
addi $15,$15,15560
srlv $3,$3,$11
mtlo $5
sltiu $4,$2,27659
divu $12,$12
andi $13,$13,2
lhu $17,data2($13)
sw $31,data2
mfhi $5
sub $13,$19,$0
sub $12,$19,$8
lui $13,18403
sra $9,$10,23
sub $6,$11,$6
mfhi $11
mult $13,$11
div $18,$7
bgez $31,label3
andi $16,$16,3
sb $11,data0($16)
andi $9,$9,3
sb $5,data1($9)
slt $16,$18,$1
sub $6,$14,$31
andi $1,$13,273
label5:
blez $6,label2
lui $1,54143
j label0
andi $13,$0,46488
xor $19,$6,$19
xori $13,$31,2343
addiu $8,$17,21530
andi $8,$8,3
lbu $19,data1($8)
andi $15,$15,3
lbu $12,data2($15)
sltiu $9,$13,32576
andi $13,$13,3
lb $11,data2($13)
bne $7,$13,label2
and $1,$7,$15
andi $15,$15,2
sh $6,data1($15)
addi $4,$31,21214
label6:
mfhi $14
sltiu $13,$4,6596
andi $8,$8,3
sb $10,data0($8)
sll $17,$5,10
multu $6,$16
ori $2,$18,33415
slti $15,$8,-9179
lui $17,7494
and $7,$2,$8
ori $14,$12,30504
slti $6,$8,-14250
addiu $12,$16,53198
mtlo $19
label4:
addi $11,$3,36087
srlv $12,$19,$1
label1:
bne $4,$6,label2
mult $0,$12
beq $2,$3,label1
sltiu $17,$4,29723
mthi $10
lw $15,data2
lw $5,data2
blez $7,label3
divu $14,$11
sllv $8,$14,$15
divu $10,$9
ori $18,$17,8591
bgtz $13,label0
slti $7,$19,-25646
blez $0,label6
mtlo $13
srlv $18,$8,$7
mflo $4
ori $v0, $0, 10
syscall