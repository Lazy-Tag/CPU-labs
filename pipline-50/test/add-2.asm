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
main:
$LVL2:
$LBB5:
        lui     $2,0
        lw      $2,0($2)
$LVL3:
        slti     $3,$2,10000
        beq     $3,$0,$L7
        andi    $4,$2,0x1

$LBE5:
        move    $3,$0
        beq     $4,$0,$L6
        li      $5,10000                    # 0x2710

$LBB6:
$LVL4:
        move    $3,$2
        addiu   $2,$2,1
$LVL5:
        beq     $2,$5,$L5
$LVL6:
$L6:
        addu    $3,$3,$2
$LVL7:
        addiu   $4,$2,1
$LVL8:
        addiu   $2,$2,2
$LVL9:
        bne     $2,$5,$L6
        addu    $3,$3,$4

$LVL10:
$L5:
$LBE6:
$LBB7:
$LBI7:
$LBB8:
        xori $v0, $0, 1
        move $a0, $3
        syscall

        jal _Z6__exitv
        sll $0, $0, 0

$LVL11:
$LBE8:
$LBE7:
        jr      $31
        move    $2,$0

$LVL12:
$L7:
        b       $L5
        move    $3,$0

.data
sum:
        .space  4
