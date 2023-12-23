.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 52754
ori $0, $0, 37748
lui $1, 42985
ori $1, $1, 7918
lui $2, 55427
ori $2, $2, 56600
lui $3, 50298
ori $3, $3, 53408
lui $4, 19162
ori $4, $4, 43986
lui $5, 42145
ori $5, $5, 60090
lui $6, 47720
ori $6, $6, 12530
lui $7, 59299
ori $7, $7, 30732
lui $8, 44137
ori $8, $8, 22300
lui $9, 37647
ori $9, $9, 4427
lui $10, 39538
ori $10, $10, 21134
lui $11, 43236
ori $11, $11, 24009
lui $12, 23173
ori $12, $12, 11288
lui $13, 49169
ori $13, $13, 32207
label1:
lui $14, 3702
ori $14, $14, 3955
lui $15, 8794
ori $15, $15, 27065
lui $16, 14359
ori $16, $16, 49234
lui $17, 20836
ori $17, $17, 39940
lui $18, 35310
ori $18, $18, 14545
lui $19, 31694
ori $19, $19, 43249
sw $14, data0
sw $14, data1
sw $2, data2
label2:
div $31,$16
add $7,$16,$4
andi $2,$2,2
lh $4,data0($2)
label4:
or $16,$19,$16
ori $12,$16,42042
sllv $1,$3,$3
sub $3,$1,$18
andi $14,$14,3
lbu $0,data0($14)
sltu $1,$2,$8
lw $2,data1
or $15,$10,$12
or $19,$31,$15
andi $17,$17,2
lh $17,data2($17)
sltiu $19,$6,2260
xori $16,$17,61064
multu $4,$15
label3:
lui $19,27484
srl $14,$13,3
sltiu $10,$1,5852
andi $19,$19,2
lh $8,data1($19)
sll $2,$10,29
and $13,$6,$7
andi $18,$18,3
lb $16,data1($18)
add $10,$14,$6
or $0,$19,$9
slt $2,$19,$15
nor $5,$16,$19
slt $1,$14,$6
sw $3,data0
addu $14,$2,$18
andi $5,$5,2
sh $9,data0($5)
mult $5,$4
andi $18,$18,3
sb $4,data0($18)
sltu $15,$13,$6
andi $14,$14,2
sh $18,data1($14)
andi $16,$16,3
lbu $6,data0($16)
andi $4,$4,3
lbu $18,data0($4)
srav $10,$16,$3
slt $10,$4,$3
addiu $1,$6,44736
jal label5
mthi $11
label5:
addu $13,$17,$14
srav $8,$0,$2
sltiu $12,$5,6324
mult $6,$8
sllv $13,$4,$16
divu $12,$5
bgez $12,label2
subu $0,$4,$11
mult $15,$7
xori $14,$16,53661
add $4,$10,$0
lw $8,data1
srlv $19,$31,$31
lw $7,data2
nor $5,$1,$8
sltiu $13,$16,11470
mthi $19
divu $13,$15
sltu $15,$12,$17
multu $4,$8
addi $2,$10,15623
srlv $11,$6,$3
xori $7,$6,58702
sw $2,data2
sll $17,$14,25
bne $19,$4,label1
sra $5,$19,17
jr $ra
multu $19,$7
slti $9,$16,18402
blez $10,label1
sltu $10,$9,$4
andi $15,$15,3
lb $19,data0($15)
bgez $15,label4
andi $0,$0,3
lb $17,data1($0)
sub $7,$13,$14
sltiu $0,$18,22518
andi $14,$14,3
sb $7,data0($14)
addu $7,$16,$14
andi $9,$9,2
lhu $0,data0($9)
sltiu $6,$16,28887
beq $18,$9,label1
lw $11,data0
mfhi $2
label6:
srlv $12,$12,$10
sra $14,$1,25
j label5
mtlo $13
mthi $9
slti $15,$4,-30828
multu $10,$13
sllv $7,$19,$15
label0:
andi $3,$3,2
lh $8,data1($3)
andi $3,$3,3
lbu $16,data2($3)
sw $7,data1
slti $18,$31,25581
lui $2,44957
andi $17,$2,50095
ori $v0, $0, 10
syscall