.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 21503
ori $0, $0, 22459
lui $1, 36371
ori $1, $1, 19542
lui $2, 51521
ori $2, $2, 3338
lui $3, 34492
ori $3, $3, 27986
lui $4, 61284
ori $4, $4, 61293
lui $5, 14303
ori $5, $5, 24221
lui $6, 15551
ori $6, $6, 9388
lui $7, 62282
ori $7, $7, 26440
lui $8, 1905
ori $8, $8, 32759
lui $9, 28878
ori $9, $9, 12157
lui $10, 20284
ori $10, $10, 32889
lui $11, 63880
ori $11, $11, 61606
lui $12, 26430
ori $12, $12, 36706
lui $13, 47137
ori $13, $13, 50685
lui $14, 47513
ori $14, $14, 62194
lui $15, 24884
ori $15, $15, 9707
lui $16, 61125
ori $16, $16, 14276
lui $17, 31197
label3:
ori $17, $17, 23487
lui $18, 63192
ori $18, $18, 53909
label1:
lui $19, 33720
ori $19, $19, 52497
sw $16, data0
sw $17, data1
sw $11, data2
andi $2,$2,2
lh $12,data2($2)
sra $18,$0,23
mthi $14
sll $11,$2,11
lui $5,37002
sllv $16,$6,$3
label6:
mfhi $6
sw $15,data0
addi $5,$9,50383
andi $12,$12,3
lb $18,data2($12)
label2:
srl $9,$5,12
mflo $10
srl $6,$0,27
xor $11,$1,$17
andi $7,$11,55231
slt $15,$17,$4
mtlo $3
sub $10,$12,$4
ori $19,$11,48875
andi $5,$5,2
lhu $16,data2($5)
divu $17,$18
or $1,$2,$3
sllv $19,$6,$2
sll $12,$31,10
or $7,$10,$16
srl $12,$16,0
label0:
sllv $10,$4,$0
ori $12,$15,37962
andi $16,$16,2
lhu $12,data0($16)
divu $15,$4
and $18,$4,$8
mflo $11
andi $18,$18,3
lbu $5,data0($18)
slti $15,$6,-1373
slti $0,$3,6297
sllv $0,$16,$11
mtlo $15
mtlo $19
divu $15,$7
slt $15,$3,$19
add $3,$3,$16
addi $12,$13,7777
sw $31,data0
mfhi $1
label5:
xor $0,$9,$31
slt $7,$8,$31
bltz $5,label4
sw $10,data2
slti $16,$18,-18152
bgez $0,label4
andi $14,$14,2
lhu $10,data1($14)
div $7,$3
sll $13,$12,26
add $15,$3,$2
slt $0,$11,$7
jal label0
slti $19,$3,24417
label4:
ori $4,$11,55010
mtlo $12
beq $5,$3,label6
xor $13,$0,$15
mflo $12
divu $6,$2
sltiu $3,$16,11623
xori $6,$9,45349
jal label1
or $15,$9,$15
sltiu $2,$14,7351
slt $8,$14,$17
nor $4,$0,$6
or $17,$15,$8
divu $7,$9
andi $0,$0,2
sh $11,data2($0)
bgez $4,label2
sw $31,data2
bltz $15,label2
lui $16,51256
beq $0,$7,label3
multu $12,$12
andi $6,$6,2
sh $6,data0($6)
srl $2,$4,22
multu $17,$19
sub $13,$17,$15
subu $6,$12,$11
subu $19,$18,$15
sllv $8,$8,$8
bltz $5,label4
add $0,$11,$18
multu $11,$15
subu $18,$10,$12
addi $2,$17,9837
andi $15,$15,2
lhu $6,data2($15)
sub $6,$2,$15
bltz $10,label0
sllv $17,$8,$5
blez $11,label4
addiu $4,$31,21823
lui $9,43307
slt $17,$17,$11
bgez $14,label4
ori $v0, $0, 10
syscall