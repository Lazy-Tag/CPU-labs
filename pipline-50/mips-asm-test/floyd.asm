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
main:                                   # @main
        addiu   $sp, $sp, -40
        sw      $ra, 36($sp)                    # 4-byte Folded Spill
        sw      $fp, 32($sp)                    # 4-byte Folded Spill
        sw      $23, 28($sp)                    # 4-byte Folded Spill
        sw      $22, 24($sp)                    # 4-byte Folded Spill
        sw      $21, 20($sp)                    # 4-byte Folded Spill
        sw      $20, 16($sp)                    # 4-byte Folded Spill
        sw      $19, 12($sp)                    # 4-byte Folded Spill
        sw      $18, 8($sp)                     # 4-byte Folded Spill
        sw      $17, 4($sp)                     # 4-byte Folded Spill
        sw      $16, 0($sp)                     # 4-byte Folded Spill
        move    $fp, $sp
        lui     $2, 0
        addiu   $3, $2, 0
        addiu   $4, $zero, 18032
        addiu   $5, $zero, 2916
        addiu   $6, $zero, 646
        addiu   $7, $zero, 619
        addiu   $8, $zero, 2332
        addiu   $9, $zero, 4608
        addiu   $10, $zero, 4075
        addiu   $11, $zero, 5232
        addiu   $12, $zero, 16350
        addiu   $13, $zero, 10464
        addiu   $14, $zero, 5877
        addiu   $15, $zero, 2600
        addiu   $24, $zero, 184
        addiu   $1, $zero, 81
        addiu   $25, $zero, 652
        addiu   $gp, $zero, 2943
        addiu   $16, $zero, 10480
        addiu   $17, $zero, 23580
        addiu   $18, $zero, 1881
        addiu   $19, $zero, 1676
        addiu   $20, $zero, 872
        addiu   $21, $zero, 3924
        addiu   $22, $zero, 3472
        addiu   $23, $zero, 10875
        addiu   $ra, $zero, 6912
        sw      $11, 292($3)
        addiu   $11, $zero, 5400
        sw      $10, 288($3)
        sw      $5, 284($3)
        addiu   $10, $zero, 6225
        sw      $4, 280($3)
        addiu   $5, $zero, 17928
        sw      $9, 276($3)
        addiu   $9, $zero, 5456
        sw      $8, 272($3)
        addiu   $8, $zero, 243
        sw      $7, 268($3)
        addiu   $4, $zero, 436
        sw      $6, 260($3)
        addiu   $6, $zero, 109
        sw      $15, 256($3)
        addiu   $15, $zero, 216
        sw      $14, 252($3)
        addiu   $14, $zero, 261
        sw      $13, 248($3)
        addiu   $7, $zero, 6419
        sw      $12, 244($3)
        addiu   $12, $zero, 2096
        sw      $17, 240($3)
        addiu   $17, $zero, 393
        sw      $16, 236($3)
        addiu   $16, $zero, 2088
        sw      $gp, 232($3)
        addiu   $13, $zero, 3501
        sw      $25, 228($3)
        sw      $1, 224($3)
        addiu   $25, $zero, 2358
        sw      $24, 216($3)
        addiu   $gp, $zero, 501
        sw      $19, 212($3)
        addiu   $24, $zero, 1384
        sw      $18, 208($3)
        addiu   $19, $zero, 342
        sw      $ra, 204($3)
        addiu   $18, $zero, 1216
        sw      $11, 200($3)
        addiu   $11, $zero, 3825
        sw      $23, 196($3)
        addiu   $23, $zero, 11052
        sw      $22, 192($3)
        addiu   $22, $zero, 30086
        sw      $21, 188($3)
        ori     $21, $zero, 36736
        sw      $20, 184($3)
        ori     $20, $zero, 39852
        sw      $4, 180($3)
        addiu   $ra, $zero, 330
        sw      $6, 172($3)
        addiu   $4, $zero, 10
        sw      $15, 168($3)
        addiu   $6, $zero, 84
        sw      $8, 164($3)
        addiu   $8, $zero, 387
        sw      $9, 160($3)
        addiu   $9, $zero, 1392
        sw      $5, 156($3)
        addiu   $5, $zero, 4350
        sw      $10, 152($3)
        addiu   $1, $zero, 12564
        addiu   $10, $zero, 1984
        sw      $10, 148($3)
        addiu   $10, $zero, 2107
        sw      $13, 144($3)
        addiu   $13, $zero, 5568
        sw      $16, 140($3)
        addiu   $15, $zero, 696
        sw      $14, 136($3)
        addiu   $14, $zero, 348
        sw      $17, 128($3)
        addiu   $16, $zero, 83
        sw      $12, 124($3)
        addiu   $12, $zero, 668
        sw      $25, 120($3)
        addiu   $25, $zero, 3015
        sw      $7, 116($3)
        addiu   $7, $zero, 2340
        sw      $7, 112($3)
        addiu   $7, $zero, 800
        sw      $7, 108($3)
        addiu   $7, $zero, 256
        sw      $7, 104($3)
        sw      $25, 100($3)
        sw      $12, 96($3)
        sw      $16, 92($3)
        sw      $14, 84($3)
        sw      $15, 80($3)
        sw      $13, 76($3)
        sw      $10, 72($3)
        sw      $1, 68($3)
        sw      $5, 64($3)
        sw      $9, 60($3)
        sw      $8, 56($3)
        sw      $6, 52($3)
        sw      $4, 48($3)
        sw      $ra, 40($3)
        sw      $20, 36($3)
        sw      $21, 32($3)
        sw      $22, 28($3)
        sw      $23, 24($3)
        sw      $11, 20($3)
        sw      $18, 16($3)
        sw      $19, 12($3)
        sw      $24, 8($3)
        sw      $gp, 4($3)
        sw      $zero, 0($2)
        sw      $zero, 264($3)
        sw      $zero, 220($3)
        sw      $zero, 176($3)
        sw      $zero, 132($3)
        sw      $zero, 88($3)
        sw      $zero, 44($3)
        addiu   $1, $zero, 324
        addiu   $5, $zero, 666
        addiu   $6, $zero, 592
        addiu   $7, $zero, 3
        addiu   $8, $zero, 28
        addiu   $9, $zero, 896
        addiu   $10, $zero, 1372
        addiu   $11, $zero, 2016
        addiu   $12, $zero, 2800
        addiu   $13, $zero, 3600
        addiu   $14, $zero, 4050
        addiu   $15, $zero, 980
        addiu   $24, $zero, 491
        addiu   $25, $zero, 128
        addiu   $gp, $zero, 196
        addiu   $16, $zero, 450
        addiu   $17, $zero, 296
        sw      $17, 392($3)
        sw      $6, 388($3)
        sw      $5, 384($3)
        sw      $6, 380($3)
        sw      $16, 376($3)
        sw      $1, 372($3)
        sw      $gp, 368($3)
        sw      $25, 364($3)
        addiu   $1, $zero, 81
        sw      $1, 360($3)
        sw      $24, 348($3)
        sw      $15, 344($3)
        sw      $14, 340($3)
        sw      $13, 336($3)
        sw      $12, 332($3)
        sw      $11, 328($3)
        sw      $10, 324($3)
        sw      $9, 320($3)
        sw      $8, 316($3)
        sw      $7, 312($3)
        sw      $zero, 308($3)
        sw      $zero, 304($3)
        sw      $zero, 300($3)
        sw      $zero, 296($3)
        sw      $zero, 396($3)
        sw      $zero, 356($3)
        sw      $zero, 352($3)

        sll $0, $0, 0

        addiu   $5, $zero, 0
        addiu   $6, $zero, 400
        j       $BB2_2
        move    $7, $3
$BB2_1:                                 #   in Loop: Header=BB2_2 Depth=1
        addiu   $5, $5, 1
        beq     $5, $4, $BB2_24
        addiu   $7, $7, 4
$BB2_2:                                 # =>This Loop Header: Depth=1
        sll     $1, $5, 3
        sll     $8, $5, 5
        addu    $1, $8, $1
        addu    $8, $3, $1
        addiu   $9, $8, 36
        addiu   $10, $8, 32
        addiu   $11, $8, 28
        addiu   $12, $8, 24
        addiu   $13, $8, 20
        addiu   $14, $8, 16
        addiu   $15, $8, 12
        addiu   $24, $8, 8
        addiu   $25, $8, 4
        j       $BB2_4
        addiu   $gp, $zero, 0
$BB2_3:                                 #   in Loop: Header=BB2_4 Depth=2
        addiu   $gp, $gp, 40
        beq     $gp, $6, $BB2_1
        sll $0, $0, 0
$BB2_4:                                 #   Parent Loop BB2_2 Depth=1
        addu    $16, $7, $gp
        lw      $17, 0($16)
        lw      $1, 0($8)
        addu    $20, $1, $17
        addiu   $1, $2, 0
        addu    $19, $1, $gp
        lw      $1, 0($19)
        slt     $1, $20, $1
        beqz    $1, $BB2_6
        addiu   $18, $19, 20
        sw      $20, -20($18)
        lw      $17, 0($16)
$BB2_6:                                 #   in Loop: Header=BB2_4 Depth=2
        lw      $1, 0($25)
        addu    $20, $1, $17
        lw      $1, 4($19)
        slt     $1, $20, $1
        beqz    $1, $BB2_8
        sll $0, $0, 0
        sw      $20, -16($18)
        lw      $17, 0($16)
$BB2_8:                                 #   in Loop: Header=BB2_4 Depth=2
        lw      $1, 0($24)
        addu    $20, $1, $17
        addiu   $1, $2, 0
        addu    $19, $1, $gp
        lw      $1, 8($19)
        slt     $1, $20, $1
        beqz    $1, $BB2_10
        addiu   $18, $19, 20
        sw      $20, -12($18)
        lw      $17, 0($16)
$BB2_10:                                #   in Loop: Header=BB2_4 Depth=2
        lw      $1, 0($15)
        addu    $20, $1, $17
        lw      $1, 12($19)
        slt     $1, $20, $1
        beqz    $1, $BB2_12
        sll $0, $0, 0
        sw      $20, -8($18)
        lw      $17, 0($16)
$BB2_12:                                #   in Loop: Header=BB2_4 Depth=2
        lw      $1, 0($14)
        addu    $20, $1, $17
        addiu   $1, $2, 0
        addu    $19, $1, $gp
        lw      $1, 16($19)
        slt     $1, $20, $1
        beqz    $1, $BB2_14
        addiu   $18, $19, 20
        sw      $20, -4($18)
        lw      $17, 0($16)
$BB2_14:                                #   in Loop: Header=BB2_4 Depth=2
        lw      $1, 0($13)
        addu    $20, $1, $17
        lw      $1, 20($19)
        slt     $1, $20, $1
        beqz    $1, $BB2_16
        sll $0, $0, 0
        sw      $20, 0($18)
        lw      $17, 0($16)
$BB2_16:                                #   in Loop: Header=BB2_4 Depth=2
        lw      $1, 0($12)
        addu    $20, $1, $17
        addiu   $1, $2, 0
        addu    $19, $1, $gp
        lw      $1, 24($19)
        slt     $1, $20, $1
        beqz    $1, $BB2_18
        addiu   $18, $19, 20
        sw      $20, 4($18)
        lw      $17, 0($16)
$BB2_18:                                #   in Loop: Header=BB2_4 Depth=2
        lw      $1, 0($11)
        addu    $20, $1, $17
        lw      $1, 28($19)
        slt     $1, $20, $1
        beqz    $1, $BB2_20
        sll $0, $0, 0
        sw      $20, 8($18)
        lw      $17, 0($16)
$BB2_20:                                #   in Loop: Header=BB2_4 Depth=2
        lw      $1, 0($10)
        addu    $20, $1, $17
        addiu   $1, $2, 0
        addu    $19, $1, $gp
        lw      $1, 32($19)
        slt     $1, $20, $1
        beqz    $1, $BB2_22
        addiu   $18, $19, 20
        sw      $20, 12($18)
        lw      $17, 0($16)
$BB2_22:                                #   in Loop: Header=BB2_4 Depth=2
        lw      $1, 0($9)
        addu    $16, $1, $17
        lw      $1, 36($19)
        slt     $1, $16, $1
        beqz    $1, $BB2_3
        sll $0, $0, 0
        j       $BB2_3
        sw      $16, 16($18)
$BB2_24:
        lui     $1, 0
        addiu   $1, $1, 0
        lw      $3, 36($1)

        xori    $2, $zero, 1
        move    $4, $3
        syscall

        xori    $2, $zero, 10
        syscall

        addiu   $2, $zero, 0
        move    $sp, $fp
        lw      $16, 0($sp)                     # 4-byte Folded Reload
        lw      $17, 4($sp)                     # 4-byte Folded Reload
        lw      $18, 8($sp)                     # 4-byte Folded Reload
        lw      $19, 12($sp)                    # 4-byte Folded Reload
        lw      $20, 16($sp)                    # 4-byte Folded Reload
        lw      $21, 20($sp)                    # 4-byte Folded Reload
        lw      $22, 24($sp)                    # 4-byte Folded Reload
        lw      $23, 28($sp)                    # 4-byte Folded Reload
        lw      $fp, 32($sp)                    # 4-byte Folded Reload
        lw      $ra, 36($sp)                    # 4-byte Folded Reload
        jr      $ra
        addiu   $sp, $sp, 40
.data
G:
        .space  400
