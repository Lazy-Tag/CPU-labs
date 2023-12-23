.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

ori $31, $0, 0x3000
lui $0, 46851
ori $0, $0, 16060
lui $1, 58761
ori $1, $1, 46248
lui $2, 37918
ori $2, $2, 49750
lui $3, 53403
ori $3, $3, 1849
lui $4, 60867
ori $4, $4, 40265
lui $5, 32384
ori $5, $5, 28896
lui $6, 42499
ori $6, $6, 42985
lui $7, 20837
ori $7, $7, 33375
label6:
lui $8, 54911
ori $8, $8, 4633
lui $9, 23894
ori $9, $9, 23619
lui $10, 44741
ori $10, $10, 41067
lui $11, 47425
ori $11, $11, 62319
lui $12, 58173
ori $12, $12, 21109
lui $13, 16078
ori $13, $13, 31955
lui $14, 44951
ori $14, $14, 24927
lui $15, 15586
ori $15, $15, 42480
lui $16, 5975
ori $16, $16, 806
lui $17, 2879
ori $17, $17, 54032
lui $18, 24849
ori $18, $18, 53526
lui $19, 9929
ori $19, $19, 61398
sw $4, data0
sw $3, data1
sw $9, data2
ori $12,$2,57762
add $15,$15,$8
xori $9,$13,54529
sra $8,$7,21
sub $4,$19,$14
srav $4,$14,$17
sllv $4,$10,$11
sltiu $11,$7,26147
sub $13,$7,$17
srav $1,$3,$14
div $9,$15
andi $14,$14,3
lb $5,data2($14)
and $10,$2,$11
addi $12,$6,54726
slt $19,$8,$18
addiu $12,$1,51641
addu $9,$11,$6
add $10,$7,$6
andi $11,$11,3
lbu $18,data1($11)
andi $11,$11,3
lb $10,data0($11)
andi $1,$1,3
lb $14,data1($1)
mtlo $0
and $5,$8,$14
lw $0,data2
srlv $16,$15,$11
label3:
sllv $1,$19,$10
addi $9,$16,47814
sub $7,$16,$18
mfhi $10
mflo $10
andi $16,$16,2
sh $4,data0($16)
andi $6,$6,2
lhu $8,data0($6)
andi $13,$13,3
sb $13,data2($13)
or $1,$17,$3
multu $31,$6
div $12,$3
div $4,$10
srl $14,$10,5
ori $17,$12,8117
lw $17,data0
and $19,$15,$12
mflo $4
addu $7,$16,$17
nor $13,$4,$1
andi $10,$10,2
lh $10,data0($10)
label4:
addiu $16,$4,3398
sra $4,$16,24
jr $ra
mfhi $0
mflo $12
sra $6,$2,21
label2:
sltu $13,$14,$15
andi $15,$1,5461
slt $1,$10,$31
srl $8,$10,10
srav $18,$15,$5
andi $7,$0,26241
andi $14,$14,3
lbu $8,data0($14)
add $8,$10,$19
bgtz $12,label2
addiu $14,$10,37954
xor $12,$10,$18
beq $17,$12,label3
andi $0,$9,21858
add $3,$10,$8
label5:
ori $15,$17,51719
label1:
nor $0,$6,$3
ori $16,$1,30954
divu $17,$18
slt $18,$1,$1
mfhi $17
and $11,$15,$3
or $18,$12,$19
div $4,$2
divu $0,$17
jal label1
mfhi $14
blez $19,label1
mfhi $12
label0:
addu $0,$13,$14
sllv $17,$0,$9
addiu $16,$5,29471
divu $8,$12
xori $1,$9,62596
jalr $11,$ra
andi $18,$18,2
sh $13,data0($18)
lui $6,47984
srl $15,$0,22
slt $14,$17,$17
nor $18,$16,$8
lw $1,data0
slti $11,$0,-12392
srlv $8,$14,$3
srl $0,$12,30
mtlo $3
andi $14,$14,3
sb $6,data2($14)
sltiu $17,$1,18626
sllv $6,$5,$1
mflo $17
slti $18,$4,-16733
ori $v0, $0, 10
syscall