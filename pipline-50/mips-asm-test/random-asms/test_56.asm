.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 24943
ori $0, $0, 36513
lui $1, 43184
ori $1, $1, 1825
lui $2, 13884
ori $2, $2, 27812
lui $3, 11196
ori $3, $3, 46490
lui $4, 37082
ori $4, $4, 56387
lui $5, 45155
ori $5, $5, 5093
lui $6, 22022
ori $6, $6, 46958
lui $7, 49551
ori $7, $7, 34799
lui $8, 32688
ori $8, $8, 14325
lui $9, 35692
ori $9, $9, 20324
lui $10, 39394
label0:
ori $10, $10, 5793
lui $11, 46670
ori $11, $11, 49298
lui $12, 35859
ori $12, $12, 17126
lui $13, 16718
ori $13, $13, 26834
lui $14, 18884
ori $14, $14, 2840
lui $15, 15685
ori $15, $15, 8520
lui $16, 5429
ori $16, $16, 55050
lui $17, 22390
ori $17, $17, 48821
lui $18, 36036
ori $18, $18, 30675
lui $19, 39562
ori $19, $19, 18651
sw $8, data0
sw $0, data1
sw $11, data2
slti $15,$1,22290
lui $3,11288
lui $14,43827
sltu $14,$4,$10
srl $9,$14,15
mtlo $12
and $13,$8,$2
andi $11,$11,2
lh $16,data2($11)
andi $18,$18,2
sh $6,data0($18)
div $0,$6
andi $4,$4,3
lb $13,data0($4)
srav $9,$13,$15
mult $11,$1
andi $14,$14,20709
sra $6,$2,17
label1:
sw $3,data1
sllv $18,$3,$7
nor $12,$17,$31
lui $5,14637
sllv $4,$9,$19
divu $7,$17
andi $15,$15,3
sb $18,data1($15)
andi $19,$19,3
lb $3,data1($19)
add $1,$7,$3
addu $11,$6,$8
subu $0,$0,$9
srav $11,$16,$13
andi $7,$7,2
lh $12,data2($7)
sll $11,$11,2
srav $0,$16,$6
sllv $14,$10,$6
srav $19,$14,$2
addi $9,$12,51809
mtlo $11
slt $6,$8,$5
sra $5,$12,3
slt $5,$16,$4
andi $10,$11,53025
andi $8,$8,2
sh $3,data1($8)
srl $6,$4,16
jalr $19,$ra
addu $9,$5,$13
bgtz $18,label2
divu $12,$5
jal label0
sll $9,$10,28
andi $9,$9,3
lb $16,data0($9)
addi $4,$1,14059
andi $5,$5,3
lb $19,data2($5)
div $9,$5
j label0
sltiu $18,$31,32273
add $16,$7,$10
lw $1,data2
andi $16,$16,2
lh $8,data0($16)
andi $11,$11,3
lbu $16,data0($11)
add $8,$1,$1
andi $7,$7,2
sh $2,data0($7)
srlv $17,$0,$14
mult $5,$6
srav $14,$4,$4
sltiu $19,$17,5135
jalr $5,$ra
divu $8,$16
mthi $0
andi $16,$16,3
lb $15,data1($16)
mflo $17
subu $3,$9,$12
jal label1
label4:
xor $15,$4,$7
addi $13,$16,52827
jal label2
xori $9,$9,10380
srlv $4,$18,$4
label2:
label6:
sra $0,$17,1
and $11,$17,$5
andi $16,$16,2
lhu $18,data0($16)
nor $11,$16,$3
bne $9,$6,label1
slti $14,$9,-27516
lw $6,data0
jal label2
sltiu $15,$6,20256
addi $5,$1,64927
subu $1,$10,$17
nor $4,$16,$17
label5:
jal label0
or $6,$12,$1
mflo $2
addu $4,$9,$12
xori $13,$18,17807
andi $19,$19,2
lh $1,data2($19)
sra $1,$19,15
j label2
andi $8,$8,2
sh $6,data1($8)
add $2,$0,$6
jal label3
label3:
multu $16,$18
sllv $3,$4,$0
bgez $17,label2
ori $v0, $0, 10
syscall