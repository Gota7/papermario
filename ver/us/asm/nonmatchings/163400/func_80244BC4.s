.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80244BC4
/* 165424 80244BC4 3C048025 */  lui       $a0, %hi(filemenu_menus)
/* 165428 80244BC8 24849B84 */  addiu     $a0, $a0, %lo(filemenu_menus)
/* 16542C 80244BCC 8C820000 */  lw        $v0, ($a0)
/* 165430 80244BD0 80420004 */  lb        $v0, 4($v0)
/* 165434 80244BD4 14400009 */  bnez      $v0, .L80244BFC
/* 165438 80244BD8 24020001 */   addiu    $v0, $zero, 1
/* 16543C 80244BDC 3C038025 */  lui       $v1, %hi(D_8024C098_C09918)
/* 165440 80244BE0 8063C098 */  lb        $v1, %lo(D_8024C098_C09918)($v1)
/* 165444 80244BE4 14620005 */  bne       $v1, $v0, .L80244BFC
/* 165448 80244BE8 00000000 */   nop
/* 16544C 80244BEC 8C820004 */  lw        $v0, 4($a0)
/* 165450 80244BF0 90420003 */  lbu       $v0, 3($v0)
/* 165454 80244BF4 1040000B */  beqz      $v0, .L80244C24
/* 165458 80244BF8 24020002 */   addiu    $v0, $zero, 2
.L80244BFC:
/* 16545C 80244BFC 3C038025 */  lui       $v1, %hi(filemenu_menus)
/* 165460 80244C00 8C639B84 */  lw        $v1, %lo(filemenu_menus)($v1)
/* 165464 80244C04 80620004 */  lb        $v0, 4($v1)
/* 165468 80244C08 14400006 */  bnez      $v0, .L80244C24
/* 16546C 80244C0C 0000102D */   daddu    $v0, $zero, $zero
/* 165470 80244C10 90630003 */  lbu       $v1, 3($v1)
/* 165474 80244C14 2C630004 */  sltiu     $v1, $v1, 4
/* 165478 80244C18 14600002 */  bnez      $v1, .L80244C24
/* 16547C 80244C1C 24020001 */   addiu    $v0, $zero, 1
/* 165480 80244C20 0000102D */  daddu     $v0, $zero, $zero
.L80244C24:
/* 165484 80244C24 03E00008 */  jr        $ra
/* 165488 80244C28 00000000 */   nop
/* 16548C 80244C2C 00000000 */  nop
