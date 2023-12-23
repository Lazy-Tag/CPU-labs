.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 34290
ori $0, $0, 58935
lui $1, 27115
ori $1, $1, 2406
lui $2, 35013
ori $2, $2, 31183
lui $3, 53859
ori $3, $3, 20516
lui $4, 51798
ori $4, $4, 19976
lui $5, 18597
ori $5, $5, 61668
lui $6, 39348
ori $6, $6, 13075
lui $7, 62439
ori $7, $7, 65199
lui $8, 23406
ori $8, $8, 54759
lui $9, 16239
ori $9, $9, 23222
lui $10, 44111
ori $10, $10, 668
lui $11, 22831
ori $11, $11, 44490
lui $12, 1991
ori $12, $12, 44055
label0:
lui $13, 55309
ori $13, $13, 18623
lui $14, 53192
ori $14, $14, 39167
lui $15, 33319
ori $15, $15, 23901
label4:
lui $16, 12462
ori $16, $16, 14182
lui $17, 25861
ori $17, $17, 39571
lui $18, 64483
ori $18, $18, 24578
lui $19, 4630
label1:
ori $19, $19, 5012
sw $0, data0
sw $15, data1
sw $19, data2
srav $15,$13,$16
divu $11,$18
subu $11,$15,$2
xor $1,$4,$18
xor $17,$17,$4
srav $10,$19,$5
andi $9,$9,2
lh $2,data1($9)
multu $15,$7
multu $16,$15
subu $1,$6,$31
srl $19,$31,6
ori $17,$9,53395
mfhi $8
sub $12,$7,$17
label5:
andi $10,$10,3
lbu $12,data2($10)
mthi $3
addi $4,$3,21688
sllv $17,$16,$10
andi $19,$19,3
lbu $15,data2($19)
addi $5,$4,65463
xor $5,$2,$31
subu $4,$16,$16
mflo $10
andi $18,$6,12059
slti $1,$15,-29675
andi $15,$15,2
lh $9,data0($15)
sra $2,$7,10
label2:
label6:
srl $17,$0,24
andi $2,$2,3
lbu $16,data2($2)
slti $18,$4,-13392
andi $12,$12,2
lhu $16,data1($12)
srav $17,$4,$4
andi $8,$8,2
sh $18,data1($8)
xor $2,$6,$10
slt $9,$9,$19
sltu $19,$31,$9
lui $5,33540
lui $3,46672
xori $11,$0,9688
sltiu $4,$9,13440
andi $0,$0,3
lbu $2,data0($0)
addi $14,$2,9384
divu $10,$6
mflo $6
bltz $4,label3
sltu $12,$0,$13
and $11,$3,$11
nor $5,$3,$15
andi $7,$7,3
sb $18,data1($7)
andi $11,$11,3
lb $19,data0($11)
or $18,$4,$14
andi $3,$3,3
lb $17,data1($3)
j label6
addiu $13,$17,36731
bgez $10,label2
andi $0,$31,47294
div $0,$6
multu $3,$16
mult $15,$2
div $15,$2
bgez $16,label2
addu $0,$0,$5
mult $2,$0
jal label3
andi $15,$1,40612
xor $6,$13,$7
jalr $9,$ra
sllv $16,$14,$17
bne $13,$6,label1
sltiu $9,$18,1163
bltz $5,label6
mfhi $15
sltu $2,$8,$5
blez $12,label1
andi $10,$10,3
sb $11,data2($10)
bne $5,$1,label5
slt $1,$4,$6
j label3
andi $19,$19,2
lhu $11,data0($19)
mtlo $10
andi $1,$1,3
lbu $10,data2($1)
xor $1,$8,$2
bgtz $8,label3
srl $0,$10,30
bgez $3,label5
xor $3,$13,$5
divu $12,$15
xori $1,$1,34842
lw $13,data2
add $14,$9,$10
div $10,$14
sw $11,data2
srav $15,$16,$3
label3:
andi $18,$18,2
lhu $3,data0($18)
srlv $16,$6,$17
xori $18,$17,38775
or $2,$11,$15
mtlo $11
xori $1,$18,9051
bgez $10,label4
ori $v0, $0, 10
syscall