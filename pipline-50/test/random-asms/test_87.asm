.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 6185
label4:
ori $0, $0, 6453
lui $1, 3339
ori $1, $1, 47051
lui $2, 40103
ori $2, $2, 2640
lui $3, 8003
ori $3, $3, 14341
lui $4, 30349
ori $4, $4, 38190
lui $5, 29162
ori $5, $5, 54760
lui $6, 4623
ori $6, $6, 61873
lui $7, 6765
ori $7, $7, 60449
lui $8, 41612
ori $8, $8, 24094
lui $9, 26612
ori $9, $9, 35046
lui $10, 26891
ori $10, $10, 13949
lui $11, 42204
ori $11, $11, 43976
lui $12, 50492
ori $12, $12, 4739
lui $13, 61360
ori $13, $13, 49552
label2:
lui $14, 19873
ori $14, $14, 57203
lui $15, 23564
ori $15, $15, 43219
lui $16, 44643
ori $16, $16, 10202
lui $17, 56980
ori $17, $17, 22336
lui $18, 64535
ori $18, $18, 11492
lui $19, 12292
ori $19, $19, 23888
sw $10, data0
sw $13, data1
sw $17, data2
nor $1,$4,$0
mfhi $18
mthi $0
andi $10,$10,3
sb $11,data2($10)
andi $0,$15,58913
andi $14,$14,2
lhu $0,data0($14)
and $3,$14,$14
srl $9,$12,11
label0:
multu $15,$8
sw $16,data1
mtlo $19
mult $8,$18
sw $9,data1
addu $11,$4,$10
srl $15,$1,24
and $17,$6,$19
mult $4,$16
label5:
lui $6,23726
and $14,$15,$13
andi $1,$1,3
lb $9,data1($1)
lw $2,data2
andi $10,$10,2
lhu $2,data1($10)
mflo $1
andi $16,$16,2
lhu $19,data1($16)
andi $12,$12,2
lhu $6,data0($12)
lw $14,data1
slt $19,$16,$31
andi $17,$17,3
lbu $8,data1($17)
xor $11,$4,$6
multu $5,$18
srl $0,$9,26
andi $14,$14,3
lbu $16,data2($14)
xori $3,$9,37724
addu $17,$14,$5
slt $9,$0,$0
lui $1,7941
sltu $3,$9,$6
divu $1,$2
xor $16,$19,$13
addi $2,$11,22017
beq $5,$9,label2
subu $4,$19,$19
bgtz $6,label6
mult $14,$1
blez $11,label5
srl $8,$2,16
div $6,$18
label1:
j label4
xori $5,$18,1832
mfhi $10
xor $9,$7,$0
slti $11,$15,-29941
xor $14,$7,$12
subu $0,$6,$1
sub $19,$13,$15
add $12,$3,$3
div $10,$0
srlv $3,$13,$3
addi $19,$16,2354
add $13,$17,$5
andi $12,$12,3
lb $0,data0($12)
subu $14,$1,$2
blez $7,label2
srl $9,$1,30
sllv $1,$17,$10
label6:
blez $15,label5
ori $15,$11,10743
lui $1,38474
sll $11,$2,24
andi $4,$4,3
lb $5,data0($4)
lui $8,15712
sw $19,data2
divu $10,$10
sll $10,$19,21
sltiu $17,$11,27190
slti $17,$19,-12866
ori $11,$2,24273
lw $7,data1
slt $10,$3,$0
xori $18,$7,35653
sll $9,$11,20
sra $12,$1,3
mfhi $3
xori $0,$31,13459
lui $9,57852
addiu $1,$7,23125
label3:
jalr $13,$ra
addiu $13,$9,15338
mtlo $1
bgez $0,label0
mthi $4
addu $13,$6,$19
srlv $19,$10,$9
div $13,$15
mtlo $8
bltz $14,label5
xori $0,$31,2028
slt $17,$5,$6
sltu $19,$16,$13
div $2,$16
ori $v0, $0, 10
syscall