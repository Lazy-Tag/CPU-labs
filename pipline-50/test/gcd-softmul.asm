        ori     $sp, $zero, 4096
        j       main
        nop

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
_Z3divjj:                               # @_Z3divjj
        addiu   $sp, $sp, -8
        sw      $ra, 4($sp)                     # 4-byte Folded Spill
        sw      $fp, 0($sp)                     # 4-byte Folded Spill
        move    $fp, $sp
        sltu    $1, $5, $6
        sw      $zero, 4($4)
        bnez    $1, $BB2_4
        sw      $zero, 0($4)
        addiu   $2, $zero, 0
$BB2_2:                                 # =>This Inner Loop Header: Depth=1
        subu    $5, $5, $6
        sltu    $1, $5, $6
        beqz    $1, $BB2_2
        addiu   $2, $2, 1
        sw      $2, 0($4)
$BB2_4:
        sw      $5, 4($4)
        move    $2, $4
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
$BB3_1:                                 # =>This Loop Header: Depth=1
        move    $2, $5
        move    $5, $4
        sltu    $1, $4, $2
        bnez    $1, $BB3_1
        move    $4, $2
        beqz    $2, $BB3_5
        nop
$BB3_3:                                 #   Parent Loop BB3_1 Depth=1
        subu    $5, $5, $2
        sltu    $1, $5, $2
        beqz    $1, $BB3_3
        nop
        j       $BB3_1
        move    $4, $2
$BB3_5:
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
