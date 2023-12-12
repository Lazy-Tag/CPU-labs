        ori $sp, $0, 0x1000
        j main

$LVL0:
$LFB0:
_Z8printinti:
        move    $3,$4
        xori $v0, $0, 1
        move $a0, $3
        syscall

$LVL1:
        jr      $31
$LFB1:
_Z6__exitv:
        xori $v0, $0, 10
        syscall

        jr      $31
$LVL2:
$LFB2:
_Z4lfsrjj:
$LBB6:
        beq     $5,$0,$L9
        move    $2,$4

        move    $4,$0
$LVL3:
$L6:
        srl     $3,$2,30
        srl     $6,$2,31
        andi    $3,$3,0x1
        sll     $2,$2,1
$LVL4:
        xor     $3,$3,$6
        addiu   $4,$4,1
$LVL5:
        bne     $4,$5,$L6
        or      $2,$2,$3

$LVL6:
$L9:
$LBE6:
        jr      $31
        nop

$LFB3:
main:
        addiu   $sp,$sp,-32
        li      $5,1000           # 0x3e8
        sw      $31,28($sp)
        jal     _Z4lfsrjj
$LVL7:
        li      $4,-1                 # 0xffffffffffffffff

        move    $3,$2
$LVL8:
$LBB7:
$LBI7:
$LBB8:
$LBE8:
$LBE7:
$LBB10:
$LBB9:
        xori $v0, $0, 1
        move $a0, $3
        syscall

$LVL9:
$LBE9:
$LBE10:
$LBB11:
$LBI11:
$LBB12:
        xori $v0, $0, 10
        syscall

$LBE12:
$LBE11:
        lw      $31,28($sp)
        move    $2,$0
        jr      $31
        addiu   $sp,$sp,32
