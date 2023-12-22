.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 39757
ori $0, $0, 61063
lui $1, 40053
ori $1, $1, 18849
lui $2, 29764
ori $2, $2, 28515
lui $3, 15526
ori $3, $3, 63445
lui $4, 7660
ori $4, $4, 62099
lui $5, 37091
ori $5, $5, 33246
label4:
lui $6, 12015
ori $6, $6, 63555
lui $7, 46193
ori $7, $7, 1166
lui $8, 10168
ori $8, $8, 38936
lui $9, 52350
ori $9, $9, 26146
lui $10, 24290
ori $10, $10, 636
lui $11, 33959
label1:
ori $11, $11, 11455
lui $12, 63365
ori $12, $12, 56907
lui $13, 8990
ori $13, $13, 49102
lui $14, 15780
ori $14, $14, 25093
lui $15, 50600
ori $15, $15, 31336
lui $16, 64345
ori $16, $16, 35624
lui $17, 8824
ori $17, $17, 13697
lui $18, 34633
ori $18, $18, 38057
lui $19, 12587
ori $19, $19, 15752
sw $14, data0
sw $7, data1
sw $5, data2
srl $6,$4,14
sllv $12,$7,$7
sll $8,$4,13
sw $2,data0
andi $8,$8,2
lhu $4,data0($8)
andi $13,$13,3
lbu $15,data1($13)
lw $5,data0
andi $15,$15,3
lb $7,data1($15)
addiu $3,$9,25420
andi $8,$8,3
lbu $18,data2($8)
andi $6,$6,3
lb $11,data1($6)
label3:
divu $8,$6
andi $17,$5,19123
srav $5,$1,$9
sub $17,$3,$9
sllv $11,$14,$2
multu $2,$14
ori $9,$31,61485
addi $14,$7,10735
subu $0,$18,$31
ori $11,$11,46277
mthi $15
addu $6,$6,$17
mthi $10
or $13,$2,$4
sllv $11,$14,$9
mflo $4
andi $5,$5,2
lh $12,data0($5)
andi $17,$17,2
sh $18,data0($17)
xor $18,$5,$3
andi $16,$16,3
lbu $8,data0($16)
mflo $5
andi $13,$13,2
lh $10,data2($13)
srlv $6,$6,$16
mfhi $1
andi $14,$14,3
lbu $19,data1($14)
andi $4,$4,2
sh $3,data1($4)
lw $7,data2
andi $8,$2,12843
srlv $12,$14,$2
andi $1,$1,2
lhu $17,data0($1)
label0:
bltz $1,label5
sub $2,$12,$15
jr $ra
sub $15,$10,$3
sll $13,$10,20
srl $9,$6,24
andi $14,$14,2
lh $1,data1($14)
sub $1,$9,$2
andi $3,$3,3
sb $15,data2($3)
lui $13,65231
srl $8,$2,25
srlv $0,$12,$5
mult $15,$5
sub $6,$3,$8
sll $6,$13,2
sub $17,$6,$10
bgez $15,label5
lui $13,57889
xori $2,$12,7038
andi $0,$0,2
lh $10,data1($0)
blez $8,label5
andi $9,$9,3
lbu $8,data1($9)
lw $6,data0
bgtz $15,label0
xori $11,$14,65065
mult $14,$18
srlv $11,$19,$11
xor $2,$15,$1
sra $15,$7,19
mfhi $4
label2:
sllv $12,$31,$16
sltu $11,$7,$0
mfhi $7
lw $4,data1
j label1
sltu $2,$7,$6
xor $9,$12,$14
andi $18,$18,2
sh $12,data0($18)
divu $12,$6
sllv $8,$1,$17
slti $0,$1,-21712
ori $16,$16,51669
andi $6,$6,2
lh $11,data0($6)
lui $2,58580
divu $14,$12
sltu $4,$1,$14
bltz $17,label6
srlv $2,$3,$18
beq $2,$2,label6
andi $2,$2,3
lb $9,data0($2)
multu $5,$11
label5:
divu $15,$1
div $12,$9
mfhi $9
xori $14,$11,48465
lw $13,data1
jal label1
and $4,$8,$15
label6:
slti $9,$0,26732
ori $v0, $0, 10
syscall