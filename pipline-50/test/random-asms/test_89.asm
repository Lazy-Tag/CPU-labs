.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 45797
ori $0, $0, 27858
lui $1, 39044
ori $1, $1, 24492
lui $2, 44793
ori $2, $2, 47855
lui $3, 39349
ori $3, $3, 19019
lui $4, 14028
ori $4, $4, 58185
lui $5, 12009
ori $5, $5, 58119
lui $6, 2300
ori $6, $6, 25412
lui $7, 6101
label3:
ori $7, $7, 45080
lui $8, 59781
ori $8, $8, 26298
lui $9, 2407
ori $9, $9, 32105
lui $10, 629
ori $10, $10, 28236
lui $11, 42106
ori $11, $11, 1393
lui $12, 6294
label5:
ori $12, $12, 52205
lui $13, 52833
ori $13, $13, 24365
lui $14, 35232
ori $14, $14, 11780
lui $15, 53531
ori $15, $15, 54413
lui $16, 6653
ori $16, $16, 49714
lui $17, 19291
ori $17, $17, 29820
lui $18, 35507
ori $18, $18, 16764
lui $19, 31509
ori $19, $19, 58831
sw $17, data0
sw $15, data1
sw $5, data2
sub $12,$14,$3
andi $4,$4,3
sb $16,data1($4)
sll $12,$1,19
div $10,$3
label1:
sllv $19,$16,$5
addu $0,$10,$6
mult $17,$12
slt $0,$7,$16
xori $8,$8,12852
andi $7,$7,3
lbu $13,data1($7)
andi $14,$14,3
sb $15,data1($14)
andi $15,$15,2
lh $3,data2($15)
and $6,$16,$4
lw $13,data0
lw $9,data1
srlv $14,$12,$0
slt $13,$19,$4
addiu $0,$14,34562
addi $6,$16,1158
lw $12,data0
sra $13,$0,16
xor $14,$12,$5
mult $13,$14
slt $12,$10,$14
sltiu $16,$19,3735
andi $1,$1,2
lh $4,data1($1)
label2:
addiu $11,$8,30751
and $12,$8,$4
mfhi $10
slt $10,$12,$10
andi $6,$1,38982
sltiu $12,$8,12874
divu $17,$8
srl $8,$1,24
nor $1,$14,$14
sw $19,data2
divu $14,$4
ori $0,$1,41043
sub $7,$13,$5
andi $11,$11,2
lh $8,data1($11)
lui $6,12833
jalr $2,$ra
addi $0,$3,43160
sub $9,$19,$8
mfhi $13
slt $6,$4,$7
label6:
xor $8,$17,$9
lui $15,63549
bne $8,$14,label2
ori $7,$14,59068
slti $10,$1,-1946
andi $4,$4,3
sb $7,data2($4)
sw $0,data1
bgtz $17,label4
slt $11,$0,$18
mfhi $7
xor $6,$2,$0
mult $9,$16
or $3,$15,$17
sltu $10,$0,$9
lui $11,44433
mflo $2
jr $ra
lw $1,data0
bgtz $1,label1
srl $5,$0,29
addi $15,$0,16727
slti $15,$5,28371
sub $19,$14,$2
sra $11,$13,22
mtlo $11
bgez $14,label4
slt $6,$13,$31
label4:
xor $12,$12,$11
mult $3,$11
jalr $0,$ra
srl $13,$0,1
j label1
sltu $15,$9,$1
sllv $2,$16,$18
multu $17,$4
sltu $3,$17,$13
srl $12,$6,3
sw $0,data0
ori $5,$12,30062
j label0
andi $3,$3,3
sb $18,data0($3)
mthi $15
lui $6,62289
sll $18,$9,18
bgtz $7,label4
andi $17,$17,2
lh $19,data1($17)
xori $13,$15,5275
slti $1,$15,10408
mthi $12
sw $11,data0
sll $19,$12,26
bne $13,$12,label4
slt $11,$5,$14
label0:
bne $17,$31,label5
ori $v0, $0, 10
syscall