.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 24766
ori $0, $0, 43798
lui $1, 58367
label3:
ori $1, $1, 39034
lui $2, 8912
ori $2, $2, 15915
lui $3, 13011
ori $3, $3, 46672
lui $4, 40856
ori $4, $4, 48662
lui $5, 37252
ori $5, $5, 61966
lui $6, 61982
ori $6, $6, 61378
lui $7, 32869
ori $7, $7, 14315
lui $8, 57131
ori $8, $8, 16110
lui $9, 62746
ori $9, $9, 31143
label2:
lui $10, 24052
ori $10, $10, 34268
lui $11, 22746
ori $11, $11, 11403
lui $12, 6005
ori $12, $12, 34071
lui $13, 34680
ori $13, $13, 35642
lui $14, 37037
ori $14, $14, 56950
lui $15, 41664
ori $15, $15, 39871
lui $16, 50268
ori $16, $16, 27660
lui $17, 41193
ori $17, $17, 45224
lui $18, 51982
ori $18, $18, 6468
lui $19, 30013
ori $19, $19, 61094
sw $10, data0
sw $14, data1
sw $14, data2
sw $16,data0
andi $7,$14,28194
andi $4,$4,2
sh $16,data2($4)
sltu $17,$31,$19
ori $8,$4,50825
mtlo $4
sw $2,data2
andi $14,$14,2
lh $13,data1($14)
addu $14,$31,$6
label4:
mfhi $11
lw $6,data1
lui $15,43010
sra $18,$10,18
andi $19,$19,2
lh $3,data2($19)
nor $13,$11,$1
slt $9,$18,$15
addiu $17,$0,20006
andi $12,$10,48697
srl $4,$8,24
slti $9,$3,-10294
nor $4,$5,$12
srl $2,$13,19
andi $3,$0,28556
sub $11,$31,$12
lui $9,31202
addi $4,$9,6109
addu $10,$16,$6
andi $3,$3,3
lbu $9,data2($3)
sltu $0,$15,$11
andi $7,$7,3
lb $9,data2($7)
srl $3,$31,27
label5:
srav $3,$2,$3
slti $15,$0,-6612
or $19,$9,$15
sw $11,data2
sltu $15,$18,$4
andi $10,$10,3
sb $10,data1($10)
srlv $10,$5,$0
addu $15,$6,$4
andi $3,$13,5028
andi $3,$3,3
lbu $9,data2($3)
sub $15,$3,$9
ori $2,$4,39662
jalr $11,$ra
xori $8,$18,41429
mflo $15
sra $4,$16,19
sll $3,$11,9
addi $17,$12,23243
label6:
mflo $0
mflo $15
andi $14,$14,3
lb $9,data2($14)
xor $4,$13,$9
label1:
divu $11,$2
srl $4,$15,29
andi $10,$31,8995
label0:
j label2
mfhi $10
lui $1,31930
bgez $4,label1
mthi $7
bne $7,$19,label5
mtlo $1
slti $4,$12,-12633
andi $4,$4,2
lh $0,data2($4)
addu $14,$14,$8
bgez $17,label5
and $6,$8,$0
sra $12,$15,29
addiu $16,$19,36255
sltiu $10,$5,18844
andi $17,$1,53918
mtlo $5
jr $ra
sll $5,$1,26
mthi $0
andi $10,$10,2
lhu $0,data1($10)
andi $14,$1,3901
andi $2,$2,2
sh $8,data0($2)
addu $14,$4,$9
slt $2,$2,$1
srl $5,$15,14
or $0,$6,$15
beq $2,$5,label6
slti $12,$12,1978
xor $12,$5,$16
mflo $19
sllv $12,$9,$0
srav $12,$15,$8
srlv $2,$4,$19
andi $15,$15,2
lhu $17,data0($15)
andi $16,$16,3
lb $1,data0($16)
nor $8,$5,$1
andi $15,$15,2
sh $6,data2($15)
jal label4
srl $9,$0,3
mtlo $13
slti $9,$0,-25358
and $9,$19,$5
srl $17,$16,20
ori $v0, $0, 10
syscall