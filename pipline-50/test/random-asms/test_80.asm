.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 52328
ori $0, $0, 51355
lui $1, 34243
label0:
ori $1, $1, 3161
lui $2, 44572
ori $2, $2, 20274
lui $3, 1313
ori $3, $3, 14633
lui $4, 23202
ori $4, $4, 18201
lui $5, 58236
ori $5, $5, 40744
lui $6, 40687
ori $6, $6, 42212
lui $7, 38979
ori $7, $7, 31939
lui $8, 17753
ori $8, $8, 53376
lui $9, 18388
label2:
ori $9, $9, 13225
lui $10, 33876
ori $10, $10, 36572
lui $11, 2470
ori $11, $11, 46646
lui $12, 23872
ori $12, $12, 41685
lui $13, 31126
ori $13, $13, 26960
lui $14, 6326
ori $14, $14, 1740
lui $15, 59447
ori $15, $15, 9570
lui $16, 46606
ori $16, $16, 56983
lui $17, 25454
ori $17, $17, 42724
label1:
lui $18, 38631
ori $18, $18, 52419
lui $19, 25946
ori $19, $19, 63841
sw $6, data0
sw $3, data1
sw $14, data2
subu $16,$1,$2
sllv $17,$17,$5
sw $8,data0
mflo $0
xor $2,$11,$19
xor $12,$1,$31
sllv $14,$31,$17
ori $17,$4,61462
addi $19,$10,30482
addu $1,$15,$17
div $2,$5
andi $4,$4,2
lh $15,data1($4)
andi $15,$15,2
lh $1,data1($15)
slti $7,$1,-4132
sllv $9,$6,$10
srl $5,$4,13
sra $15,$3,0
nor $9,$19,$5
slt $19,$14,$17
lui $11,28377
and $0,$2,$19
andi $6,$6,3
sb $12,data0($6)
addi $7,$3,45724
andi $2,$2,2
lh $1,data0($2)
andi $6,$6,2
sh $4,data2($6)
lui $18,26071
addi $11,$7,41874
and $2,$6,$16
srl $5,$10,3
srlv $16,$31,$4
div $6,$10
mthi $4
addiu $6,$31,21892
addi $15,$16,23489
and $19,$2,$4
andi $3,$3,2
sh $13,data2($3)
mult $6,$8
sltu $19,$4,$16
srav $8,$13,$5
sll $0,$14,29
sltiu $16,$10,19468
addi $8,$10,27537
j label0
andi $2,$2,2
lh $9,data1($2)
srlv $3,$7,$8
bgtz $3,label0
add $10,$8,$16
bne $9,$14,label6
or $9,$16,$18
andi $1,$1,3
lb $0,data0($1)
andi $17,$17,2
sh $11,data0($17)
andi $18,$18,2
lhu $14,data0($18)
mfhi $17
subu $0,$15,$8
label6:
sra $18,$16,2
addi $12,$2,1585
mult $9,$9
multu $31,$6
jal label3
multu $13,$8
andi $0,$0,3
lb $14,data2($0)
bgtz $16,label3
andi $17,$0,7113
label3:
andi $16,$16,3
lb $17,data2($16)
mfhi $6
xor $14,$12,$14
bgez $0,label2
label5:
sw $0,data1
multu $16,$6
j label6
sltiu $1,$12,20572
srlv $1,$16,$6
mtlo $13
label4:
andi $15,$15,2
sh $15,data0($15)
multu $10,$6
addiu $10,$13,34938
srlv $16,$18,$18
addi $2,$8,50430
and $13,$6,$4
srl $5,$1,27
mthi $0
bltz $12,label0
or $5,$14,$4
mthi $4
and $4,$10,$2
or $11,$14,$19
beq $9,$9,label2
subu $2,$17,$2
srlv $16,$17,$12
j label6
addiu $4,$9,5839
bltz $0,label2
andi $7,$7,3
lbu $4,data1($7)
ori $0,$0,31811
blez $12,label1
multu $13,$15
divu $6,$16
srlv $3,$2,$12
ori $13,$0,5232
nor $7,$15,$11
ori $v0, $0, 10
syscall