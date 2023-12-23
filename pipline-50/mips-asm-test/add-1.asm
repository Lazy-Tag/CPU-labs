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
        li      $4,10000                    # 0x2710

$LBE5:
        move    $3,$0
$LVL4:
$L6:
$LBB6:
        addu    $3,$3,$2
$LVL5:
        addiu   $2,$2,1
$LVL6:
        bne     $2,$4,$L6
        sll $0, $0, 0
$LVL7:
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

$LVL8:
$LBE8:
$LBE7:
        jr      $31
        move    $2,$0

$LVL9:
$L7:
        b       $L5
        move    $3,$0

.data
run:
        .space  4
