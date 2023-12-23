.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 31072
ori $0, $0, 54190
lui $1, 60615
ori $1, $1, 13919
lui $2, 8277
ori $2, $2, 59833
lui $3, 8140
ori $3, $3, 50950
lui $4, 6429
ori $4, $4, 35168
lui $5, 19309
ori $5, $5, 2440
lui $6, 47441
label4:
ori $6, $6, 21437
lui $7, 40196
ori $7, $7, 52089
lui $8, 60424
ori $8, $8, 60769
lui $9, 49379
ori $9, $9, 16015
lui $10, 33882
ori $10, $10, 20409
lui $11, 62143
ori $11, $11, 22077
lui $12, 2892
ori $12, $12, 56973
lui $13, 28057
ori $13, $13, 39885
label6:
lui $14, 8598
ori $14, $14, 30006
label1:
lui $15, 31464
ori $15, $15, 9310
lui $16, 62602
ori $16, $16, 8191
lui $17, 3475
ori $17, $17, 45027
lui $18, 14774
ori $18, $18, 5171
lui $19, 49828
ori $19, $19, 50828
sw $17, data0
sw $31, data1
sw $17, data2
lui $19,53426
andi $11,$11,2
lh $1,data2($11)
addi $2,$31,40065
andi $7,$7,2
lh $15,data2($7)
sub $7,$3,$18
sltu $0,$7,$12
div $8,$8
mult $14,$1
mtlo $8
sltu $12,$7,$9
multu $13,$17
andi $15,$15,3
lb $15,data0($15)
sllv $17,$8,$1
andi $10,$10,2
lh $4,data1($10)
addiu $4,$15,2072
srlv $6,$31,$7
addi $2,$3,34328
sll $18,$11,20
sltiu $15,$3,19820
srav $16,$2,$7
mult $19,$19
andi $3,$3,2
lh $14,data1($3)
addu $13,$6,$2
sw $16,data0
mult $14,$5
sra $9,$17,27
multu $19,$3
sllv $13,$13,$18
mthi $17
slti $11,$11,1823
andi $12,$12,3
lb $13,data1($12)
subu $15,$2,$19
andi $7,$7,3
lb $4,data0($7)
add $10,$8,$18
andi $7,$7,14769
div $19,$0
mthi $16
slt $3,$31,$0
sltiu $9,$6,4230
mult $8,$19
or $5,$1,$14
sra $9,$3,2
addi $11,$7,55387
bgtz $13,label2
xor $13,$9,$12
label0:
sub $11,$19,$16
bltz $17,label2
lw $3,data2
label5:
srlv $1,$13,$4
mtlo $11
andi $14,$14,2
sh $6,data1($14)
add $14,$8,$15
sub $16,$2,$15
andi $15,$15,3
sb $12,data0($15)
bgez $7,label1
srl $10,$15,16
andi $15,$15,2
lhu $8,data0($15)
lui $3,7413
mthi $2
addi $5,$6,34662
addu $2,$18,$13
andi $10,$10,3
lb $8,data0($10)
and $16,$19,$31
xor $12,$9,$1
bltz $10,label4
mthi $2
sw $15,data2
srlv $18,$5,$13
mthi $16
jal label6
srav $16,$17,$12
ori $13,$2,40899
srl $18,$31,11
andi $7,$7,2
sh $7,data0($7)
mflo $10
andi $10,$10,2
lhu $14,data1($10)
andi $1,$1,2
lhu $15,data1($1)
andi $7,$7,2
lh $18,data2($7)
addi $13,$6,22482
divu $7,$14
nor $2,$5,$8
mflo $16
andi $7,$7,2
lh $11,data0($7)
bltz $11,label1
divu $8,$0
nor $1,$14,$15
ori $1,$17,64844
bltz $12,label6
addi $3,$0,6994
sltu $17,$14,$2
lui $2,36480
sltu $12,$10,$12
srl $7,$31,27
andi $11,$11,3
lb $19,data0($11)
beq $1,$13,label0
div $0,$11
multu $7,$6
sltiu $19,$4,2905
bgtz $17,label5
label3:
label2:
mult $19,$13
ori $v0, $0, 10
syscall