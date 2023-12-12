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
$LFB2:
_Z10initializev:
$LVL2:
$LBB9:
        lui     $8,0
        move    $4,$0
$LBE9:
        li      $2,-1                 # 0xffffffffffffffff
        addiu   $8,$8,0
$LBB10:
        li      $9,1023           # 0x3ff
$LVL3:
$L5:
        srl     $3,$2,30
        srl     $7,$2,31
        andi    $3,$3,0x1
        andi    $6,$2,0x1
        addu    $5,$8,$4
        sll     $2,$2,1
$LVL4:
        xor     $3,$3,$7
        addiu   $4,$4,1
$LVL5:
        sb      $6,0($5)
$LVL6:
        bne     $4,$9,$L5
        or      $2,$2,$3

$LBE10:
        jr      $31
        nop

$LFB3:
main:
$LBB11:
$LBI11:
$LBB12:
$LVL7:
$LBB13:
        lui     $8,0
        move    $4,$0
$LBE13:
        li      $2,-1                 # 0xffffffffffffffff
        addiu   $8,$8,0
$LBB14:
        li      $9,1023           # 0x3ff
$LVL8:
$L8:
        srl     $3,$2,30
        srl     $7,$2,31
        andi    $3,$3,0x1
        andi    $6,$2,0x1
        addu    $5,$8,$4
        sll     $2,$2,1
$LVL9:
        xor     $3,$3,$7
        addiu   $4,$4,1
$LVL10:
        sb      $6,0($5)
$LVL11:
        bne     $4,$9,$L8
        or      $2,$2,$3

$LVL12:
$LBE14:
$LBE12:
$LBE11:
        nop

$LVL13:
        move    $3,$0
$LVL14:
$L10:
        addu    $2,$8,$3
        lbu     $2,0($2)
$LVL15:
        andi    $2,$2,0x00ff
        beq     $2,$0,$L9
        sll     $3,$3,1

        addiu   $3,$3,1
$LVL16:
$L9:
        slti     $2,$3,1024
        bne     $2,$0,$L10
$LVL17:
$LBB15:
$LBI15:
$LBB16:
        xori $v0, $0, 1
        move $a0, $3
        syscall

$LVL18:
$LBE16:
$LBE15:
$LBB17:
$LBI17:
$LBB18:
        xori $v0, $0, 10
        syscall

$LBE18:
$LBE17:
        jr      $31
        move    $2,$0

.data
flags:
        .space  1023
