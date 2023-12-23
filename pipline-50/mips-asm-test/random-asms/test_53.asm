.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 37470
ori $0, $0, 60625
lui $1, 23279
ori $1, $1, 55766
lui $2, 30756
ori $2, $2, 45638
lui $3, 4539
ori $3, $3, 41463
lui $4, 29062
ori $4, $4, 14045
lui $5, 11673
ori $5, $5, 26683
lui $6, 44018
ori $6, $6, 34704
lui $7, 32811
ori $7, $7, 16158
lui $8, 59393
ori $8, $8, 58560
lui $9, 44316
ori $9, $9, 10706
lui $10, 28977
ori $10, $10, 2957
lui $11, 46555
ori $11, $11, 25932
lui $12, 693
ori $12, $12, 53918
lui $13, 31512
ori $13, $13, 9227
lui $14, 60655
ori $14, $14, 40351
lui $15, 55653
ori $15, $15, 27472
lui $16, 2305
ori $16, $16, 968
lui $17, 47693
ori $17, $17, 28263
lui $18, 63378
ori $18, $18, 31715
lui $19, 64450
ori $19, $19, 19604
sw $17, data0
sw $12, data1
sw $6, data2
sw $1,data0
andi $8,$8,3
lbu $5,data2($8)
lw $9,data1
label2:
and $8,$5,$0
mthi $15
andi $5,$18,36347
ori $7,$10,6133
andi $10,$15,57639
srl $5,$9,24
mfhi $2
sllv $13,$1,$11
xori $0,$5,10850
andi $4,$4,3
lb $10,data2($4)
mflo $7
sll $6,$4,20
xor $7,$31,$17
sra $3,$3,18
srav $9,$31,$19
ori $16,$2,41314
subu $10,$2,$14
sub $16,$3,$0
sw $15,data1
andi $2,$2,3
lbu $15,data2($2)
andi $2,$2,2
lh $7,data2($2)
mthi $0
lui $18,64145
andi $12,$14,37059
mthi $5
andi $13,$13,3
lb $16,data2($13)
or $8,$19,$31
subu $10,$31,$16
addi $16,$4,30079
or $0,$7,$18
label3:
multu $19,$11
addu $10,$5,$1
sll $16,$16,9
andi $15,$15,3
lb $7,data0($15)
sra $14,$1,4
sll $12,$1,19
srlv $3,$2,$1
ori $7,$10,33317
andi $8,$8,2
sh $7,data1($8)
sll $17,$3,5
label6:
j label2
ori $1,$5,10239
slt $16,$19,$19
mflo $15
xor $13,$2,$7
sllv $11,$4,$15
srav $10,$3,$4
srlv $19,$10,$4
bgtz $16,label2
mtlo $5
mthi $1
srav $9,$3,$6
j label6
label1:
slt $6,$9,$12
bgtz $3,label5
andi $6,$15,50093
sub $1,$1,$12
label0:
lw $0,data0
bne $19,$11,label5
andi $8,$8,2
sh $0,data2($8)
mthi $14
sll $5,$12,29
sra $12,$19,5
multu $7,$11
andi $6,$6,3
lbu $18,data0($6)
slt $2,$31,$0
srl $1,$14,19
ori $1,$18,15108
xor $13,$18,$13
div $17,$11
mflo $8
bgez $11,label0
sra $10,$12,3
or $18,$9,$12
label4:
srl $19,$4,5
mthi $10
div $10,$19
andi $17,$31,64025
lw $3,data1
addu $4,$14,$15
mfhi $6
bgez $3,label2
and $4,$0,$31
div $10,$17
addiu $5,$6,32992
label5:
andi $5,$5,3
sb $18,data1($5)
andi $9,$9,2
lhu $8,data2($9)
andi $5,$5,3
lb $13,data2($5)
slt $8,$18,$15
srav $3,$31,$19
mfhi $12
j label0
sra $7,$14,16
sra $0,$16,21
slt $8,$12,$8
div $7,$17
div $3,$1
ori $v0, $0, 10
syscall