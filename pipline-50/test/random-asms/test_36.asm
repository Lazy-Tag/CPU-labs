.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 65415
ori $0, $0, 23506
lui $1, 48391
ori $1, $1, 25333
lui $2, 58594
label1:
ori $2, $2, 52605
lui $3, 19358
ori $3, $3, 63069
lui $4, 1360
ori $4, $4, 55496
lui $5, 21001
ori $5, $5, 53557
lui $6, 25022
ori $6, $6, 19580
lui $7, 47363
ori $7, $7, 27452
lui $8, 30707
ori $8, $8, 38141
lui $9, 52181
ori $9, $9, 6101
lui $10, 23155
ori $10, $10, 14975
lui $11, 21235
ori $11, $11, 53265
lui $12, 4163
ori $12, $12, 47276
lui $13, 36994
ori $13, $13, 24451
lui $14, 50062
ori $14, $14, 48501
lui $15, 48449
ori $15, $15, 12838
lui $16, 64088
ori $16, $16, 21780
lui $17, 62080
ori $17, $17, 25025
lui $18, 46815
ori $18, $18, 53745
lui $19, 41890
ori $19, $19, 30076
sw $3, data0
sw $0, data1
sw $3, data2
addu $18,$19,$1
multu $14,$17
mflo $9
andi $18,$18,2
lh $12,data2($18)
mult $6,$13
mflo $7
div $6,$8
label0:
andi $16,$16,3
lb $8,data0($16)
mfhi $13
or $16,$17,$18
div $18,$1
div $12,$17
mthi $17
andi $19,$19,2
lhu $7,data2($19)
label2:
andi $9,$10,43959
addiu $14,$7,63542
andi $1,$1,2
lh $16,data2($1)
sltiu $5,$31,14952
andi $17,$17,3
lbu $17,data1($17)
lw $16,data1
sra $18,$14,21
srav $12,$11,$3
nor $4,$14,$13
sltiu $9,$8,4623
ori $4,$5,51331
lw $15,data1
srlv $18,$4,$10
slt $17,$6,$11
srav $10,$18,$10
srlv $9,$2,$5
addi $4,$15,59995
srl $19,$6,1
sltiu $9,$8,1766
and $14,$1,$13
andi $3,$3,2
sh $1,data0($3)
xor $1,$4,$6
addi $1,$6,8553
sltiu $12,$10,18996
sra $15,$31,17
slt $2,$14,$31
multu $9,$8
bgez $31,label3
sll $4,$0,17
lui $17,23430
sll $14,$3,23
label6:
addi $7,$3,32838
jal label0
andi $6,$6,2
sh $3,data0($6)
add $11,$12,$13
div $8,$16
sw $2,data2
sllv $9,$5,$7
mthi $5
lw $2,data1
sllv $13,$18,$5
srav $6,$12,$2
and $1,$16,$7
slti $16,$15,-2739
bltz $19,label5
sllv $11,$2,$17
srav $17,$9,$13
mult $31,$2
label4:
mfhi $5
andi $19,$19,2
lhu $8,data1($19)
andi $4,$4,3
lb $5,data0($4)
lw $3,data1
xor $1,$4,$17
sll $12,$18,11
jr $ra
label5:
label3:
and $9,$18,$2
slt $8,$31,$8
ori $2,$6,33458
bne $10,$18,label4
sub $1,$15,$18
and $2,$19,$18
nor $1,$3,$8
andi $2,$2,2
sh $0,data0($2)
xori $12,$0,57031
andi $11,$11,2
sh $4,data2($11)
srlv $14,$12,$19
andi $19,$19,3
sb $11,data1($19)
sw $10,data1
ori $18,$0,29529
andi $1,$13,39089
addiu $13,$8,45086
mthi $5
mtlo $9
add $8,$6,$19
jr $ra
lw $4,data2
add $5,$5,$2
mult $16,$17
addu $18,$8,$2
div $17,$7
bgez $13,label3
andi $0,$0,3
lbu $15,data0($0)
jal label2
andi $5,$5,3
sb $0,data1($5)
srav $4,$9,$16
addiu $6,$1,35945
ori $v0, $0, 10
syscall