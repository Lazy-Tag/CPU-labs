.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 9552
ori $0, $0, 28802
lui $1, 8526
ori $1, $1, 6279
lui $2, 32865
ori $2, $2, 47135
lui $3, 59222
ori $3, $3, 42352
lui $4, 31969
ori $4, $4, 36019
lui $5, 58514
ori $5, $5, 40023
lui $6, 48936
ori $6, $6, 50717
lui $7, 10294
ori $7, $7, 14360
label5:
lui $8, 18449
ori $8, $8, 14469
lui $9, 19859
ori $9, $9, 52468
lui $10, 17385
ori $10, $10, 3133
lui $11, 16853
ori $11, $11, 39549
lui $12, 54370
ori $12, $12, 19444
lui $13, 19478
ori $13, $13, 37644
label2:
lui $14, 39444
ori $14, $14, 20513
lui $15, 33496
ori $15, $15, 60258
lui $16, 57289
ori $16, $16, 2906
lui $17, 55494
ori $17, $17, 64352
lui $18, 12449
ori $18, $18, 16233
lui $19, 31884
ori $19, $19, 36491
sw $6, data0
sw $11, data1
sw $2, data2
sw $3,data1
srlv $11,$12,$16
mult $10,$11
srav $8,$2,$13
slti $5,$11,-15748
andi $0,$0,2
lh $1,data0($0)
sltiu $16,$14,15172
mflo $10
divu $19,$4
sub $19,$2,$12
andi $0,$0,3
sb $9,data0($0)
addiu $14,$13,31079
andi $12,$12,2
sh $3,data1($12)
sw $6,data0
or $16,$0,$8
and $7,$8,$11
slti $9,$3,15443
addi $9,$4,46474
ori $18,$12,37649
sllv $7,$6,$18
mthi $9
xor $18,$2,$3
sra $3,$12,10
slti $5,$11,-27986
lw $9,data2
mthi $1
sltu $1,$9,$9
andi $1,$1,2
sh $13,data2($1)
subu $2,$2,$8
addiu $9,$4,22377
label1:
sub $10,$19,$16
andi $0,$0,3
sb $10,data2($0)
xori $16,$15,61881
addiu $2,$15,33006
slt $2,$15,$8
label3:
sub $12,$2,$0
addi $3,$11,9758
multu $4,$0
mfhi $14
andi $10,$10,2
lhu $9,data2($10)
andi $1,$1,65050
andi $10,$10,3
sb $8,data2($10)
andi $17,$17,3
lb $7,data2($17)
mtlo $19
mult $18,$6
addiu $19,$5,48738
sltu $3,$4,$12
andi $7,$7,2
sh $2,data2($7)
andi $13,$13,2
sh $11,data2($13)
andi $18,$18,2
lhu $7,data2($18)
multu $31,$19
srlv $7,$6,$16
beq $3,$11,label6
mtlo $12
and $17,$13,$18
mflo $6
andi $19,$19,2
lhu $8,data2($19)
addu $0,$19,$16
div $4,$4
mult $9,$10
mfhi $18
sra $17,$5,3
sw $11,data0
mtlo $9
srl $10,$15,23
srlv $13,$9,$10
srlv $4,$8,$17
mflo $1
bltz $9,label2
andi $19,$19,3
sb $3,data0($19)
subu $15,$14,$8
addi $1,$12,41271
divu $3,$9
andi $11,$11,3
lbu $18,data1($11)
blez $4,label2
sltiu $15,$0,24580
bgez $0,label0
label0:
andi $8,$8,3
lb $8,data1($8)
addu $4,$1,$18
addi $17,$9,63096
mfhi $5
xori $14,$14,20458
j label3
lui $7,10276
divu $2,$19
sw $3,data1
mflo $5
or $19,$12,$5
add $0,$0,$16
mflo $17
multu $12,$9
sllv $8,$1,$1
slt $3,$31,$4
sub $14,$1,$0
addi $4,$17,31332
blez $11,label4
label4:
mtlo $3
bne $1,$10,label5
sltu $17,$18,$10
label6:
mult $11,$10
ori $v0, $0, 10
syscall