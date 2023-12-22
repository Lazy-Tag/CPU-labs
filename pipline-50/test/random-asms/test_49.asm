.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

label1:
ori $31, $0, 0x3000
lui $0, 65343
ori $0, $0, 43872
lui $1, 46784
ori $1, $1, 47926
lui $2, 1854
ori $2, $2, 24629
lui $3, 25489
ori $3, $3, 63297
lui $4, 50344
ori $4, $4, 7101
lui $5, 25578
ori $5, $5, 20466
lui $6, 64650
ori $6, $6, 3594
label4:
lui $7, 17212
ori $7, $7, 17744
lui $8, 61441
ori $8, $8, 12012
lui $9, 18493
ori $9, $9, 32253
lui $10, 43446
ori $10, $10, 373
lui $11, 32776
ori $11, $11, 19585
lui $12, 39315
ori $12, $12, 39667
lui $13, 60063
ori $13, $13, 27664
lui $14, 6451
ori $14, $14, 5795
lui $15, 37105
ori $15, $15, 52942
lui $16, 33776
ori $16, $16, 12789
lui $17, 8510
ori $17, $17, 29971
lui $18, 29036
ori $18, $18, 8098
lui $19, 63028
ori $19, $19, 17531
sw $14, data0
sw $4, data1
sw $2, data2
andi $12,$12,2
lhu $9,data1($12)
sra $18,$10,26
lw $8,data1
andi $13,$13,3
lb $14,data2($13)
label2:
sra $4,$0,30
sltiu $0,$10,26881
srlv $6,$1,$9
nor $18,$0,$10
srl $10,$0,11
mfhi $9
ori $10,$6,8333
srl $19,$17,23
label3:
slt $16,$0,$2
andi $9,$9,2
lh $1,data0($9)
addu $13,$5,$31
srl $17,$17,14
label5:
xori $13,$15,10298
andi $11,$11,2
lh $11,data0($11)
srav $1,$19,$13
andi $9,$9,3
lb $14,data2($9)
andi $19,$19,3
lbu $8,data0($19)
sltiu $15,$2,1498
label6:
ori $12,$1,6307
slti $16,$14,12562
sub $12,$4,$5
lui $0,35187
nor $18,$10,$2
lui $7,11610
add $4,$4,$4
andi $0,$0,2
lhu $6,data1($0)
sra $0,$11,25
or $9,$0,$14
xori $2,$1,26452
xori $1,$15,61192
multu $0,$7
sw $31,data1
sllv $0,$7,$9
srlv $1,$15,$19
sll $3,$2,13
ori $10,$18,43496
andi $4,$4,3
lb $11,data1($4)
addiu $18,$8,11669
add $3,$2,$19
lw $13,data1
mfhi $1
andi $8,$8,3
lbu $2,data0($8)
andi $9,$9,3
lb $13,data1($9)
andi $11,$11,2
lh $18,data1($11)
subu $14,$14,$5
andi $6,$6,2
sh $3,data1($6)
sra $6,$9,30
andi $1,$1,3
lb $8,data2($1)
mult $1,$12
andi $11,$11,3
sb $18,data2($11)
sw $0,data0
sltu $15,$2,$9
addi $3,$8,56246
divu $8,$2
and $7,$18,$9
bne $13,$8,label2
andi $15,$15,3
lb $7,data2($15)
nor $4,$1,$14
andi $6,$6,2
lhu $1,data1($6)
andi $15,$0,21190
mflo $7
mfhi $4
blez $13,label6
andi $12,$12,2
lh $14,data1($12)
addiu $13,$7,45635
andi $5,$5,3
lbu $15,data1($5)
slt $1,$18,$1
andi $12,$12,2
lh $17,data1($12)
ori $6,$18,53911
div $31,$0
sltiu $1,$12,14666
sllv $4,$17,$8
mult $4,$9
srl $13,$4,4
add $15,$7,$11
srl $15,$13,21
j label4
addiu $15,$16,5264
andi $15,$15,3
lb $6,data2($15)
bgez $4,label1
andi $19,$18,43440
subu $13,$11,$12
ori $15,$13,36430
slt $1,$16,$6
mult $19,$4
addu $6,$17,$12
xor $0,$2,$3
jr $ra
and $1,$6,$4
mult $12,$10
andi $6,$6,3
lbu $17,data0($6)
slt $16,$10,$4
beq $18,$6,label5
label0:
sub $5,$19,$12
andi $17,$17,2
lh $16,data1($17)
and $8,$3,$16
ori $v0, $0, 10
syscall