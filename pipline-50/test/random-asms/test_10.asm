.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

label6:
ori $31, $0, 0x3000
lui $0, 35551
ori $0, $0, 57802
lui $1, 4764
ori $1, $1, 45719
lui $2, 19714
ori $2, $2, 18324
lui $3, 36253
ori $3, $3, 41565
lui $4, 41384
ori $4, $4, 49130
lui $5, 58905
label5:
ori $5, $5, 31365
lui $6, 6569
ori $6, $6, 31236
lui $7, 47061
ori $7, $7, 42719
lui $8, 18522
ori $8, $8, 19136
lui $9, 17161
ori $9, $9, 5395
lui $10, 43273
ori $10, $10, 712
lui $11, 62359
ori $11, $11, 14870
lui $12, 8315
ori $12, $12, 48231
lui $13, 12035
ori $13, $13, 51226
lui $14, 47421
ori $14, $14, 15827
lui $15, 11017
label2:
ori $15, $15, 30058
lui $16, 6131
ori $16, $16, 1777
lui $17, 60828
ori $17, $17, 6957
lui $18, 13073
ori $18, $18, 22049
lui $19, 7565
ori $19, $19, 5924
sw $2, data0
sw $0, data1
sw $3, data2
ori $2,$6,23492
srav $4,$9,$18
srl $4,$14,20
andi $13,$13,3
lbu $18,data2($13)
xori $14,$16,730
andi $6,$6,3
sb $0,data2($6)
sub $15,$2,$4
ori $8,$10,38683
or $13,$11,$5
label0:
andi $18,$18,3
lbu $5,data2($18)
nor $11,$11,$19
sllv $14,$12,$16
andi $18,$5,24781
sub $18,$18,$5
mult $11,$15
sllv $10,$12,$11
lw $4,data1
div $5,$3
ori $5,$9,3222
sra $8,$12,10
mtlo $4
mfhi $10
or $0,$8,$16
ori $1,$17,27060
andi $5,$5,2
lh $4,data2($5)
slt $5,$4,$1
lui $16,2887
andi $8,$8,3
lbu $5,data1($8)
sltiu $2,$13,14698
multu $19,$8
andi $11,$11,3
sb $2,data1($11)
andi $0,$0,2
lhu $10,data2($0)
mflo $15
andi $17,$17,3
lb $1,data0($17)
andi $18,$18,3
lbu $5,data2($18)
andi $6,$6,2
lhu $14,data2($6)
lui $6,56815
andi $17,$17,3
sb $7,data0($17)
nor $0,$16,$5
andi $5,$13,60425
j label2
andi $12,$1,18531
srlv $17,$31,$11
multu $2,$2
bltz $6,label6
sll $5,$31,29
slti $6,$0,31324
xor $6,$15,$3
xor $5,$17,$19
andi $7,$7,3
lbu $6,data2($7)
sllv $17,$31,$19
sltu $11,$1,$14
addi $5,$10,27205
andi $12,$12,2
lhu $17,data0($12)
slt $2,$0,$31
slti $2,$4,-21471
bltz $13,label5
andi $12,$12,3
lb $15,data1($12)
divu $14,$14
andi $11,$9,60068
addiu $8,$18,33890
bgez $18,label2
andi $5,$4,51282
label4:
sub $10,$3,$2
divu $14,$19
jal label3
label1:
mtlo $3
bne $1,$16,label1
andi $1,$1,2
lhu $14,data2($1)
label3:
subu $7,$31,$2
mthi $17
sll $4,$13,9
mthi $12
multu $7,$2
andi $9,$14,10897
andi $5,$5,3
lbu $3,data2($5)
multu $31,$16
mthi $5
div $1,$4
j label4
mult $19,$12
and $15,$0,$9
add $8,$10,$5
andi $8,$8,2
sh $13,data1($8)
srl $17,$15,7
mtlo $12
slti $7,$6,13204
sltiu $16,$10,17779
ori $4,$1,20326
andi $13,$1,64134
mfhi $17
divu $15,$15
blez $17,label1
mflo $1
addiu $14,$17,55082
ori $5,$14,46713
subu $2,$9,$0
jal label6
div $16,$8
addiu $0,$1,36862
ori $v0, $0, 10
syscall