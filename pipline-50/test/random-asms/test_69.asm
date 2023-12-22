.data

data0: .space 4

data1: .space 4

data2: .space 4


.text

label3:
ori $31, $0, 0x3000
lui $0, 52113
label1:
ori $0, $0, 559
lui $1, 52948
ori $1, $1, 37714
lui $2, 19890
ori $2, $2, 52210
lui $3, 28302
ori $3, $3, 17215
lui $4, 9975
ori $4, $4, 53912
lui $5, 40695
ori $5, $5, 44035
lui $6, 390
ori $6, $6, 56952
lui $7, 39508
ori $7, $7, 21980
lui $8, 26829
ori $8, $8, 43307
lui $9, 27626
label4:
ori $9, $9, 34790
lui $10, 1788
ori $10, $10, 3731
lui $11, 42507
ori $11, $11, 63782
lui $12, 55048
ori $12, $12, 1473
label5:
lui $13, 19758
ori $13, $13, 42539
lui $14, 43723
ori $14, $14, 21543
lui $15, 15715
ori $15, $15, 58863
lui $16, 22559
ori $16, $16, 59065
lui $17, 29036
ori $17, $17, 24260
lui $18, 60640
ori $18, $18, 62616
lui $19, 42704
ori $19, $19, 62256
sw $0, data0
sw $4, data1
sw $1, data2
sltu $12,$3,$6
add $14,$8,$14
ori $14,$8,16072
sw $6,data2
slti $4,$12,-15187
lui $9,27912
srlv $6,$6,$9
andi $2,$2,3
sb $6,data0($2)
lw $6,data0
label2:
andi $10,$10,3
lbu $19,data0($10)
andi $4,$4,2
sh $3,data2($4)
sw $8,data2
mfhi $17
mthi $14
sub $7,$1,$3
andi $16,$16,2
sh $2,data1($16)
andi $11,$5,5101
sltu $17,$5,$16
ori $4,$0,586
lw $6,data1
and $4,$9,$6
subu $10,$3,$10
sra $15,$10,16
mult $7,$1
add $0,$6,$19
srav $4,$31,$1
andi $2,$2,3
lbu $14,data2($2)
srlv $3,$7,$6
label6:
sra $1,$2,19
lui $6,39954
andi $5,$5,3
lb $2,data1($5)
srlv $12,$1,$16
andi $4,$12,9157
subu $16,$13,$11
addi $14,$31,55375
slt $9,$5,$2
addu $11,$10,$19
ori $18,$31,26394
mfhi $5
lw $7,data1
or $7,$18,$5
add $8,$9,$6
andi $15,$15,3
sb $17,data2($15)
label0:
sltiu $12,$6,15256
sra $10,$0,26
mflo $8
bne $3,$2,label4
sw $19,data2
andi $17,$17,3
lb $18,data2($17)
srav $16,$15,$9
bgtz $6,label4
and $14,$4,$4
bgtz $4,label0
sltu $6,$17,$13
addiu $6,$11,55175
lui $10,53259
addi $18,$14,46636
addi $17,$17,1044
sub $11,$31,$18
beq $18,$8,label1
srav $15,$15,$15
ori $13,$18,50523
add $13,$9,$12
sra $19,$14,28
andi $18,$18,2
sh $18,data1($18)
ori $6,$17,43521
and $12,$9,$4
sll $10,$14,1
slti $10,$16,-15968
sltiu $4,$31,24119
sra $1,$3,16
sltu $14,$12,$10
lw $3,data2
blez $10,label4
mthi $13
divu $1,$7
srlv $2,$9,$6
bgez $11,label1
lw $19,data0
lw $12,data0
div $6,$9
mtlo $15
andi $11,$11,3
sb $0,data2($11)
sw $12,data0
addiu $19,$18,24987
jal label0
sub $4,$18,$5
sll $10,$12,19
div $13,$6
andi $4,$4,2
sh $14,data1($4)
sltiu $13,$14,27324
add $9,$12,$19
srav $11,$3,$1
jr $ra
andi $4,$4,3
lb $14,data2($4)
xori $14,$3,54793
sltiu $3,$1,10223
addu $5,$31,$3
mflo $19
ori $0,$9,26080
ori $v0, $0, 10
syscall