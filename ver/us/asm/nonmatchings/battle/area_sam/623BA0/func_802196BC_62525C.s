.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802196BC_62525C
/* 62525C 802196BC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 625260 802196C0 AFB1001C */  sw        $s1, 0x1c($sp)
/* 625264 802196C4 0080882D */  daddu     $s1, $a0, $zero
/* 625268 802196C8 AFBF0034 */  sw        $ra, 0x34($sp)
/* 62526C 802196CC AFB60030 */  sw        $s6, 0x30($sp)
/* 625270 802196D0 AFB5002C */  sw        $s5, 0x2c($sp)
/* 625274 802196D4 AFB40028 */  sw        $s4, 0x28($sp)
/* 625278 802196D8 AFB30024 */  sw        $s3, 0x24($sp)
/* 62527C 802196DC AFB20020 */  sw        $s2, 0x20($sp)
/* 625280 802196E0 AFB00018 */  sw        $s0, 0x18($sp)
/* 625284 802196E4 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 625288 802196E8 8E30000C */  lw        $s0, 0xc($s1)
/* 62528C 802196EC 8E050000 */  lw        $a1, ($s0)
/* 625290 802196F0 0C0B1EAF */  jal       evt_get_variable
/* 625294 802196F4 26100004 */   addiu    $s0, $s0, 4
/* 625298 802196F8 8E050000 */  lw        $a1, ($s0)
/* 62529C 802196FC 26100004 */  addiu     $s0, $s0, 4
/* 6252A0 80219700 0C0B1EAF */  jal       evt_get_variable
/* 6252A4 80219704 0220202D */   daddu    $a0, $s1, $zero
/* 6252A8 80219708 8E050000 */  lw        $a1, ($s0)
/* 6252AC 8021970C 26100004 */  addiu     $s0, $s0, 4
/* 6252B0 80219710 0220202D */  daddu     $a0, $s1, $zero
/* 6252B4 80219714 0C0B1EAF */  jal       evt_get_variable
/* 6252B8 80219718 0040B02D */   daddu    $s6, $v0, $zero
/* 6252BC 8021971C 8E050000 */  lw        $a1, ($s0)
/* 6252C0 80219720 26100004 */  addiu     $s0, $s0, 4
/* 6252C4 80219724 0220202D */  daddu     $a0, $s1, $zero
/* 6252C8 80219728 0C0B1EAF */  jal       evt_get_variable
/* 6252CC 8021972C 0040A82D */   daddu    $s5, $v0, $zero
/* 6252D0 80219730 8E050000 */  lw        $a1, ($s0)
/* 6252D4 80219734 26100004 */  addiu     $s0, $s0, 4
/* 6252D8 80219738 0220202D */  daddu     $a0, $s1, $zero
/* 6252DC 8021973C 0C0B210B */  jal       evt_get_float_variable
/* 6252E0 80219740 0040A02D */   daddu    $s4, $v0, $zero
/* 6252E4 80219744 8E050000 */  lw        $a1, ($s0)
/* 6252E8 80219748 26100004 */  addiu     $s0, $s0, 4
/* 6252EC 8021974C 0220202D */  daddu     $a0, $s1, $zero
/* 6252F0 80219750 0C0B1EAF */  jal       evt_get_variable
/* 6252F4 80219754 46000506 */   mov.s    $f20, $f0
/* 6252F8 80219758 8E050000 */  lw        $a1, ($s0)
/* 6252FC 8021975C 26100004 */  addiu     $s0, $s0, 4
/* 625300 80219760 0220202D */  daddu     $a0, $s1, $zero
/* 625304 80219764 0C0B1EAF */  jal       evt_get_variable
/* 625308 80219768 0040902D */   daddu    $s2, $v0, $zero
/* 62530C 8021976C 8E050000 */  lw        $a1, ($s0)
/* 625310 80219770 26100004 */  addiu     $s0, $s0, 4
/* 625314 80219774 0220202D */  daddu     $a0, $s1, $zero
/* 625318 80219778 0C0B1EAF */  jal       evt_get_variable
/* 62531C 8021977C 0040982D */   daddu    $s3, $v0, $zero
/* 625320 80219780 0220202D */  daddu     $a0, $s1, $zero
/* 625324 80219784 8E050000 */  lw        $a1, ($s0)
/* 625328 80219788 0C0B1EAF */  jal       evt_get_variable
/* 62532C 8021978C 0040882D */   daddu    $s1, $v0, $zero
/* 625330 80219790 24040001 */  addiu     $a0, $zero, 1
/* 625334 80219794 44961000 */  mtc1      $s6, $f2
/* 625338 80219798 00000000 */  nop
/* 62533C 8021979C 468010A0 */  cvt.s.w   $f2, $f2
/* 625340 802197A0 44051000 */  mfc1      $a1, $f2
/* 625344 802197A4 44951000 */  mtc1      $s5, $f2
/* 625348 802197A8 00000000 */  nop
/* 62534C 802197AC 468010A0 */  cvt.s.w   $f2, $f2
/* 625350 802197B0 44061000 */  mfc1      $a2, $f2
/* 625354 802197B4 44941000 */  mtc1      $s4, $f2
/* 625358 802197B8 00000000 */  nop
/* 62535C 802197BC 468010A0 */  cvt.s.w   $f2, $f2
/* 625360 802197C0 44071000 */  mfc1      $a3, $f2
/* 625364 802197C4 0040802D */  daddu     $s0, $v0, $zero
/* 625368 802197C8 E7B40010 */  swc1      $f20, 0x10($sp)
/* 62536C 802197CC 0C01C88C */  jal       playFX_6F
/* 625370 802197D0 AFB20014 */   sw       $s2, 0x14($sp)
/* 625374 802197D4 8C43000C */  lw        $v1, 0xc($v0)
/* 625378 802197D8 AC730018 */  sw        $s3, 0x18($v1)
/* 62537C 802197DC 8C43000C */  lw        $v1, 0xc($v0)
/* 625380 802197E0 AC71001C */  sw        $s1, 0x1c($v1)
/* 625384 802197E4 8C43000C */  lw        $v1, 0xc($v0)
/* 625388 802197E8 AC700020 */  sw        $s0, 0x20($v1)
/* 62538C 802197EC 8C43000C */  lw        $v1, 0xc($v0)
/* 625390 802197F0 240400FF */  addiu     $a0, $zero, 0xff
/* 625394 802197F4 AC640028 */  sw        $a0, 0x28($v1)
/* 625398 802197F8 8C43000C */  lw        $v1, 0xc($v0)
/* 62539C 802197FC AC64002C */  sw        $a0, 0x2c($v1)
/* 6253A0 80219800 8C43000C */  lw        $v1, 0xc($v0)
/* 6253A4 80219804 AC640030 */  sw        $a0, 0x30($v1)
/* 6253A8 80219808 8FBF0034 */  lw        $ra, 0x34($sp)
/* 6253AC 8021980C 8FB60030 */  lw        $s6, 0x30($sp)
/* 6253B0 80219810 8FB5002C */  lw        $s5, 0x2c($sp)
/* 6253B4 80219814 8FB40028 */  lw        $s4, 0x28($sp)
/* 6253B8 80219818 8FB30024 */  lw        $s3, 0x24($sp)
/* 6253BC 8021981C 8FB20020 */  lw        $s2, 0x20($sp)
/* 6253C0 80219820 8FB1001C */  lw        $s1, 0x1c($sp)
/* 6253C4 80219824 8FB00018 */  lw        $s0, 0x18($sp)
/* 6253C8 80219828 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 6253CC 8021982C 24020002 */  addiu     $v0, $zero, 2
/* 6253D0 80219830 03E00008 */  jr        $ra
/* 6253D4 80219834 27BD0040 */   addiu    $sp, $sp, 0x40
/* 6253D8 80219838 00000000 */  nop
/* 6253DC 8021983C 00000000 */  nop
