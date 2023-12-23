.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 53172
ori $0, $0, 25897
lui $1, 58303
label3:
ori $1, $1, 19800
lui $2, 46005
ori $2, $2, 23352
lui $3, 19835
ori $3, $3, 6216
lui $4, 2883
ori $4, $4, 1706
lui $5, 28204
label0:
ori $5, $5, 24830
lui $6, 56978
ori $6, $6, 58577
lui $7, 15510
ori $7, $7, 1954
lui $8, 65028
ori $8, $8, 16416
lui $9, 46708
ori $9, $9, 27776
lui $10, 3078
ori $10, $10, 10918
lui $11, 35734
ori $11, $11, 4145
lui $12, 34030
ori $12, $12, 53636
lui $13, 58016
ori $13, $13, 47220
lui $14, 28627
ori $14, $14, 21339
lui $15, 46035
ori $15, $15, 64025
lui $16, 2032
ori $16, $16, 15824
lui $17, 17207
ori $17, $17, 10607
lui $18, 21408
ori $18, $18, 26561
lui $19, 8072
ori $19, $19, 20549
sw $16, data0
sw $13, data1
sw $12, data2
srav $3,$3,$4
and $12,$16,$18
mtlo $6
div $19,$15
andi $17,$17,2
sh $12,data2($17)
sra $0,$3,27
slt $15,$6,$4
multu $10,$17
label1:
lui $18,50908
xor $0,$9,$5
lui $12,35386
andi $8,$8,2
lhu $19,data0($8)
label5:
label2:
and $4,$31,$14
sltiu $5,$15,4660
add $8,$2,$17
slti $2,$4,-21635
sw $17,data0
addu $6,$12,$5
mfhi $15
mult $9,$2
andi $9,$9,2
sh $7,data1($9)
or $1,$31,$19
andi $16,$0,16936
slt $1,$3,$18
mthi $2
or $17,$18,$4
sltiu $4,$8,27663
sllv $0,$0,$4
sllv $17,$3,$12
sllv $19,$2,$15
andi $14,$14,2
sh $14,data2($14)
sltiu $7,$31,16568
sltu $0,$5,$18
ori $5,$10,29035
slt $19,$2,$18
ori $9,$31,7995
andi $19,$19,3
lb $11,data0($19)
mult $11,$19
lw $13,data1
xor $0,$10,$31
srav $16,$31,$16
beq $9,$15,label4
sub $7,$15,$10
jal label5
lui $5,24056
div $4,$6
blez $4,label4
div $6,$0
div $7,$6
blez $14,label4
mfhi $7
jal label4
sllv $3,$4,$5
mflo $7
jal label0
lw $3,data0
lw $7,data1
multu $12,$0
lw $13,data0
srl $1,$15,29
andi $8,$8,2
lh $0,data1($8)
slt $18,$12,$9
bltz $10,label0
addi $1,$16,24468
and $8,$1,$7
lui $6,30875
add $9,$9,$3
sw $16,data1
bne $19,$6,label3
label4:
and $4,$3,$4
and $2,$6,$14
sltu $5,$19,$11
srlv $10,$8,$12
bltz $2,label2
label6:
mult $5,$6
sra $4,$15,2
lui $2,34070
andi $0,$0,2
lhu $11,data2($0)
mflo $1
subu $12,$2,$31
sltu $14,$1,$18
slt $3,$1,$18
ori $1,$8,9261
andi $13,$9,1372
jr $ra
andi $18,$18,3
lb $17,data2($18)
jr $ra
sltiu $9,$2,9665
xor $13,$10,$8
sra $12,$18,16
blez $6,label5
slt $17,$6,$4
bgez $12,label6
and $6,$14,$11
xor $14,$7,$18
jal label5
xori $17,$18,15106
mfhi $18
mflo $2
addu $9,$6,$1
ori $v0, $0, 10
syscall