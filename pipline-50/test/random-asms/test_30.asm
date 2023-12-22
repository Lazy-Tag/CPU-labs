.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 27911
ori $0, $0, 48909
lui $1, 27930
ori $1, $1, 36152
lui $2, 396
ori $2, $2, 43152
lui $3, 51223
ori $3, $3, 23847
lui $4, 29312
ori $4, $4, 12032
lui $5, 58119
ori $5, $5, 52420
lui $6, 27849
ori $6, $6, 47511
lui $7, 47872
ori $7, $7, 53108
lui $8, 15789
ori $8, $8, 27941
lui $9, 380
ori $9, $9, 50858
lui $10, 47213
ori $10, $10, 54756
lui $11, 33604
ori $11, $11, 4633
lui $12, 45860
ori $12, $12, 32740
lui $13, 59049
label5:
ori $13, $13, 12056
lui $14, 61714
ori $14, $14, 28283
lui $15, 62983
ori $15, $15, 40807
lui $16, 63586
ori $16, $16, 22644
lui $17, 23981
ori $17, $17, 29230
lui $18, 33514
ori $18, $18, 54183
lui $19, 38946
ori $19, $19, 7189
sw $14, data0
sw $18, data1
sw $15, data2
addu $13,$3,$10
srl $9,$14,12
multu $19,$18
andi $12,$10,15236
mult $16,$6
xor $9,$18,$4
sltu $15,$4,$1
xor $2,$8,$9
sll $8,$19,12
multu $16,$13
slti $15,$11,32148
sw $14,data2
andi $14,$14,2
lh $10,data0($14)
multu $19,$17
sub $11,$5,$2
sw $0,data0
lui $1,59466
nor $5,$6,$17
andi $3,$0,28794
xori $4,$19,34607
addu $2,$5,$6
addu $1,$6,$12
srlv $17,$19,$15
div $5,$18
addi $16,$0,8631
add $8,$18,$4
div $9,$16
andi $13,$13,3
lbu $3,data1($13)
add $15,$31,$19
or $15,$16,$18
ori $3,$8,44728
addiu $3,$3,43076
andi $7,$7,2
lhu $3,data0($7)
xor $9,$11,$2
divu $16,$19
and $8,$14,$19
ori $18,$9,28544
sllv $4,$18,$10
divu $6,$16
addu $17,$1,$1
andi $10,$10,3
sb $11,data1($10)
label1:
sw $18,data2
bne $12,$6,label5
andi $2,$17,36468
label2:
lw $9,data1
sllv $11,$16,$0
lw $3,data2
multu $31,$16
bgez $4,label5
sw $12,data0
bltz $1,label3
sw $14,data0
andi $9,$9,2
lhu $13,data0($9)
blez $12,label6
ori $11,$8,3048
lui $17,48018
mthi $2
label3:
srlv $9,$18,$14
beq $5,$9,label5
andi $3,$3,3
sb $11,data0($3)
andi $14,$14,2
lhu $3,data0($14)
srlv $4,$14,$10
divu $0,$8
addu $7,$9,$31
label0:
nor $11,$17,$3
jal label6
andi $1,$1,2
lh $14,data0($1)
andi $16,$16,3
lbu $17,data0($16)
bltz $17,label3
srl $13,$16,7
addu $19,$31,$2
label4:
lw $1,data0
mult $6,$4
or $11,$1,$0
sltiu $13,$15,17495
mult $15,$5
mthi $1
sltiu $8,$9,9288
j label3
andi $5,$5,2
lh $10,data0($5)
divu $5,$13
srav $1,$9,$13
andi $5,$5,3
lb $10,data0($5)
mult $0,$12
subu $9,$2,$17
bgez $6,label5
label6:
sw $5,data0
mult $1,$6
srl $14,$31,26
mtlo $5
addu $7,$6,$17
jal label4
multu $9,$1
sltiu $3,$5,3406
andi $9,$9,2
lh $6,data0($9)
andi $17,$17,3
lb $13,data1($17)
jr $ra
andi $6,$6,2
sh $13,data0($6)
sltiu $18,$8,17320
nor $5,$11,$6
ori $v0, $0, 10
syscall