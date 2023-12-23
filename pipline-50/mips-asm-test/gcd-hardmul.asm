        ori     $sp, $zero, 4096
        j       main
        sll $0, $0, 0

_Z8printinti:                           # @_Z8printinti
        addiu   $sp, $sp, -8
        sw      $ra, 4($sp)                     # 4-byte Folded Spill
        sw      $fp, 0($sp)                     # 4-byte Folded Spill
        move    $fp, $sp
        move    $3, $4

        xori    $2, $zero, 1
        move    $4, $3
        syscall

        move    $sp, $fp
        lw      $fp, 0($sp)                     # 4-byte Folded Reload
        lw      $ra, 4($sp)                     # 4-byte Folded Reload
        jr      $ra
        addiu   $sp, $sp, 8
_Z6__exitv:                             # @_Z6__exitv
        addiu   $sp, $sp, -8
        sw      $ra, 4($sp)                     # 4-byte Folded Spill
        sw      $fp, 0($sp)                     # 4-byte Folded Spill
        move    $fp, $sp

        xori    $2, $zero, 10
        syscall

        move    $sp, $fp
        lw      $fp, 0($sp)                     # 4-byte Folded Reload
        lw      $ra, 4($sp)                     # 4-byte Folded Reload
        jr      $ra
        addiu   $sp, $sp, 8
_Z3gcdjj:                               # @_Z3gcdjj
        addiu   $sp, $sp, -8
        sw      $ra, 4($sp)                     # 4-byte Folded Spill
        sw      $fp, 0($sp)                     # 4-byte Folded Spill
        move    $fp, $sp
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
        move    $2, $5
        move    $5, $4
        sltu    $1, $4, $2
        bnez    $1, $BB2_1
        move    $4, $2
        beqz    $2, $BB2_4
        sll $0, $0, 0
        # divu    $zero, $5, $2
        divu    $5, $2
        mflo    $0
        # teq     $2, $zero, 7
        move    $4, $2
        j       $BB2_1
        mfhi    $5
$BB2_4:
        move    $2, $5
        move    $sp, $fp
        lw      $fp, 0($sp)                     # 4-byte Folded Reload
        lw      $ra, 4($sp)                     # 4-byte Folded Reload
        jr      $ra
        addiu   $sp, $sp, 8
main:                                   # @main
        addiu   $sp, $sp, -24
        sw      $ra, 20($sp)                    # 4-byte Folded Spill
        sw      $fp, 16($sp)                    # 4-byte Folded Spill
        move    $fp, $sp
        addiu   $4, $zero, 4181
        jal     _Z3gcdjj
        addiu   $5, $zero, 2584
        move    $3, $2

        xori    $2, $zero, 1
        move    $4, $3
        syscall

        xori    $2, $zero, 10
        syscall

        addiu   $2, $zero, 0
        move    $sp, $fp
        lw      $fp, 16($sp)                    # 4-byte Folded Reload
        lw      $ra, 20($sp)                    # 4-byte Folded Reload
        jr      $ra
        addiu   $sp, $sp, 24
