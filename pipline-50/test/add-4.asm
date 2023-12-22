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
        subu    $4,$0,$2

        andi    $4,$4,0x3
$LBE5:
        move    $3,$0
        beq     $4,$0,$L6
        li      $5,10000                    # 0x2710

        li      $6,1                        # 0x1
        beq     $4,$6,$L18
        li      $6,2                        # 0x2

        beq     $4,$6,$L22
        addu    $3,$3,$2

$LBB6:
$LVL4:
        move    $3,$2
        addiu   $2,$2,1
$LVL5:
        addu    $3,$3,$2
$LVL6:
$L22:
        addiu   $2,$2,1
$LVL7:
$L18:
        addu    $3,$3,$2
$LVL8:
        addiu   $2,$2,1
$LVL9:
        beq     $2,$5,$L5
$LVL10:
$L6:
        addiu   $4,$2,1
$L23:
        addu    $3,$3,$2
$LVL11:
        addu    $3,$3,$4
$LVL12:
        addiu   $2,$2,2
$LVL13:
        addu    $3,$3,$2
$LVL14:
        addiu   $2,$4,2
$LVL15:
        addu    $3,$3,$2
$LVL16:
        addiu   $2,$4,3
$LVL17:
        bne     $2,$5,$L23
        addiu   $4,$2,1

$LVL18:
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

$LVL19:
$LBE8:
$LBE7:
        jr      $31
        move    $2,$0

$LVL20:
$L7:
        b       $L5
        move    $3,$0

.data
sum:
        .space  4
