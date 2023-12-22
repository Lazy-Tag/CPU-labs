.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 46960
ori $0, $0, 60422
lui $1, 33092
ori $1, $1, 36229
lui $2, 48486
ori $2, $2, 9958
lui $3, 57045
ori $3, $3, 14513
lui $4, 19587
ori $4, $4, 31214
lui $5, 60922
ori $5, $5, 53376
lui $6, 14568
ori $6, $6, 44156
lui $7, 2884
ori $7, $7, 61196
lui $8, 21801
ori $8, $8, 63575
lui $9, 21481
ori $9, $9, 47231
lui $10, 27396
ori $10, $10, 7032
lui $11, 28831
ori $11, $11, 46543
lui $12, 26837
ori $12, $12, 33708
lui $13, 12129
ori $13, $13, 7285
lui $14, 51532
ori $14, $14, 58945
lui $15, 46749
ori $15, $15, 2042
lui $16, 8337
ori $16, $16, 61171
lui $17, 15215
ori $17, $17, 51225
lui $18, 1610
ori $18, $18, 21990
lui $19, 43854
ori $19, $19, 56128
sw $9, data0
sw $9, data1
sw $19, data2
slt $15,$4,$6
andi $9,$9,3
lbu $16,data0($9)
sltu $7,$12,$8
mfhi $19
xori $17,$12,20963
addi $3,$31,34686
add $14,$10,$8
andi $11,$11,3
lb $6,data2($11)
sllv $1,$19,$10
sltu $13,$0,$6
div $6,$16
lw $16,data1
sra $18,$12,12
multu $11,$7
andi $18,$18,3
lb $1,data0($18)
mthi $14
nor $19,$2,$19
addi $17,$12,34439
mfhi $14
andi $0,$0,3
sb $10,data0($0)
or $18,$15,$31
addu $15,$8,$15
addu $5,$16,$5
sub $11,$9,$2
mthi $11
srlv $16,$31,$11
srl $2,$0,11
div $16,$3
lui $19,33790
sltiu $1,$15,20926
ori $15,$1,52485
addu $18,$15,$1
mtlo $17
addi $9,$16,34935
label4:
div $4,$15
andi $8,$8,3
sb $14,data1($8)
sw $3,data2
srav $2,$6,$2
srav $16,$7,$11
label5:
xor $18,$10,$17
label1:
j label6
xori $18,$11,40723
lw $10,data0
addu $0,$15,$5
mthi $13
andi $14,$14,2
sh $12,data2($14)
srl $16,$10,8
andi $8,$8,2
lhu $14,data2($8)
srav $9,$19,$13
and $8,$2,$31
j label3
sub $10,$9,$15
andi $5,$5,2
lh $19,data2($5)
multu $7,$1
srlv $7,$2,$9
lui $3,8333
srav $19,$31,$31
srlv $2,$15,$19
mfhi $1
label6:
srlv $12,$5,$0
label2:
multu $2,$6
andi $8,$15,14089
mtlo $4
bne $9,$2,label0
andi $15,$15,3
lbu $16,data1($15)
or $14,$19,$0
addu $12,$16,$14
mflo $11
andi $10,$10,3
sb $17,data1($10)
bgez $7,label2
subu $16,$9,$7
mthi $12
bgtz $10,label6
mult $12,$7
mfhi $10
addu $3,$0,$16
xor $4,$10,$19
nor $18,$1,$8
div $3,$3
andi $4,$4,3
lb $3,data0($4)
j label0
lw $15,data1
sll $3,$31,27
nor $4,$8,$31
bltz $14,label1
or $0,$2,$13
or $5,$2,$16
jal label0
label3:
divu $18,$17
sll $19,$11,30
or $0,$8,$10
sll $1,$11,17
divu $9,$10
div $16,$18
label0:
bgez $19,label6
subu $2,$19,$31
jalr $1,$ra
xor $11,$4,$16
srlv $12,$31,$0
xori $1,$19,55299
ori $v0, $0, 10
syscall