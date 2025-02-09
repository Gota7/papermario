.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240438_B70C98
/* B70C98 80240438 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* B70C9C 8024043C AFB3001C */  sw        $s3, 0x1c($sp)
/* B70CA0 80240440 0080982D */  daddu     $s3, $a0, $zero
/* B70CA4 80240444 AFBF0020 */  sw        $ra, 0x20($sp)
/* B70CA8 80240448 AFB20018 */  sw        $s2, 0x18($sp)
/* B70CAC 8024044C AFB10014 */  sw        $s1, 0x14($sp)
/* B70CB0 80240450 AFB00010 */  sw        $s0, 0x10($sp)
/* B70CB4 80240454 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* B70CB8 80240458 F7B80038 */  sdc1      $f24, 0x38($sp)
/* B70CBC 8024045C F7B60030 */  sdc1      $f22, 0x30($sp)
/* B70CC0 80240460 F7B40028 */  sdc1      $f20, 0x28($sp)
/* B70CC4 80240464 8E62000C */  lw        $v0, 0xc($s3)
/* B70CC8 80240468 0C0B1EAF */  jal       evt_get_variable
/* B70CCC 8024046C 8C450000 */   lw       $a1, ($v0)
/* B70CD0 80240470 2404FFFC */  addiu     $a0, $zero, -4
/* B70CD4 80240474 0C00EABB */  jal       get_npc_unsafe
/* B70CD8 80240478 0040802D */   daddu    $s0, $v0, $zero
/* B70CDC 8024047C 0200202D */  daddu     $a0, $s0, $zero
/* B70CE0 80240480 0C046C04 */  jal       get_model_list_index_from_tree_index
/* B70CE4 80240484 0040802D */   daddu    $s0, $v0, $zero
/* B70CE8 80240488 0C046B4C */  jal       get_model_from_list_index
/* B70CEC 8024048C 0040202D */   daddu    $a0, $v0, $zero
/* B70CF0 80240490 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* B70CF4 80240494 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* B70CF8 80240498 0040902D */  daddu     $s2, $v0, $zero
/* B70CFC 8024049C AE60008C */  sw        $zero, 0x8c($s3)
/* B70D00 802404A0 C4620028 */  lwc1      $f2, 0x28($v1)
/* B70D04 802404A4 C6400098 */  lwc1      $f0, 0x98($s2)
/* B70D08 802404A8 46001081 */  sub.s     $f2, $f2, $f0
/* B70D0C 802404AC 46021182 */  mul.s     $f6, $f2, $f2
/* B70D10 802404B0 00000000 */  nop
/* B70D14 802404B4 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* B70D18 802404B8 C4620030 */  lwc1      $f2, 0x30($v1)
/* B70D1C 802404BC 46001081 */  sub.s     $f2, $f2, $f0
/* B70D20 802404C0 46021102 */  mul.s     $f4, $f2, $f2
/* B70D24 802404C4 00000000 */  nop
/* B70D28 802404C8 846200B0 */  lh        $v0, 0xb0($v1)
/* B70D2C 802404CC C462002C */  lwc1      $f2, 0x2c($v1)
/* B70D30 802404D0 44820000 */  mtc1      $v0, $f0
/* B70D34 802404D4 00000000 */  nop
/* B70D38 802404D8 46800020 */  cvt.s.w   $f0, $f0
/* B70D3C 802404DC 46001080 */  add.s     $f2, $f2, $f0
/* B70D40 802404E0 3C013FC0 */  lui       $at, 0x3fc0
/* B70D44 802404E4 44810000 */  mtc1      $at, $f0
/* B70D48 802404E8 00000000 */  nop
/* B70D4C 802404EC 46001081 */  sub.s     $f2, $f2, $f0
/* B70D50 802404F0 46043300 */  add.s     $f12, $f6, $f4
/* B70D54 802404F4 C640009C */  lwc1      $f0, 0x9c($s2)
/* B70D58 802404F8 46001501 */  sub.s     $f20, $f2, $f0
/* B70D5C 802404FC 46006084 */  sqrt.s    $f2, $f12
/* B70D60 80240500 46021032 */  c.eq.s    $f2, $f2
/* B70D64 80240504 00000000 */  nop
/* B70D68 80240508 45010004 */  bc1t      .L8024051C
/* B70D6C 8024050C 0060882D */   daddu    $s1, $v1, $zero
/* B70D70 80240510 0C0187BC */  jal       sqrtf
/* B70D74 80240514 00000000 */   nop
/* B70D78 80240518 46000086 */  mov.s     $f2, $f0
.L8024051C:
/* B70D7C 8024051C 44800000 */  mtc1      $zero, $f0
/* B70D80 80240520 00000000 */  nop
/* B70D84 80240524 4614003C */  c.lt.s    $f0, $f20
/* B70D88 80240528 00000000 */  nop
/* B70D8C 8024052C 45000016 */  bc1f      .L80240588
/* B70D90 80240530 46001106 */   mov.s    $f4, $f2
/* B70D94 80240534 862200B0 */  lh        $v0, 0xb0($s1)
/* B70D98 80240538 44820000 */  mtc1      $v0, $f0
/* B70D9C 8024053C 00000000 */  nop
/* B70DA0 80240540 46800020 */  cvt.s.w   $f0, $f0
/* B70DA4 80240544 4600A03C */  c.lt.s    $f20, $f0
/* B70DA8 80240548 00000000 */  nop
/* B70DAC 8024054C 4500000E */  bc1f      .L80240588
/* B70DB0 80240550 00000000 */   nop
/* B70DB4 80240554 862200B2 */  lh        $v0, 0xb2($s1)
/* B70DB8 80240558 3C013F00 */  lui       $at, 0x3f00
/* B70DBC 8024055C 44811000 */  mtc1      $at, $f2
/* B70DC0 80240560 44820000 */  mtc1      $v0, $f0
/* B70DC4 80240564 00000000 */  nop
/* B70DC8 80240568 46800020 */  cvt.s.w   $f0, $f0
/* B70DCC 8024056C 46020002 */  mul.s     $f0, $f0, $f2
/* B70DD0 80240570 00000000 */  nop
/* B70DD4 80240574 4600203C */  c.lt.s    $f4, $f0
/* B70DD8 80240578 00000000 */  nop
/* B70DDC 8024057C 45000002 */  bc1f      .L80240588
/* B70DE0 80240580 24020001 */   addiu    $v0, $zero, 1
/* B70DE4 80240584 AE62008C */  sw        $v0, 0x8c($s3)
.L80240588:
/* B70DE8 80240588 C6020038 */  lwc1      $f2, 0x38($s0)
/* B70DEC 8024058C C6400098 */  lwc1      $f0, 0x98($s2)
/* B70DF0 80240590 46001081 */  sub.s     $f2, $f2, $f0
/* B70DF4 80240594 46021182 */  mul.s     $f6, $f2, $f2
/* B70DF8 80240598 00000000 */  nop
/* B70DFC 8024059C C64000A0 */  lwc1      $f0, 0xa0($s2)
/* B70E00 802405A0 C6020040 */  lwc1      $f2, 0x40($s0)
/* B70E04 802405A4 46001081 */  sub.s     $f2, $f2, $f0
/* B70E08 802405A8 46021102 */  mul.s     $f4, $f2, $f2
/* B70E0C 802405AC 00000000 */  nop
/* B70E10 802405B0 860200A8 */  lh        $v0, 0xa8($s0)
/* B70E14 802405B4 C602003C */  lwc1      $f2, 0x3c($s0)
/* B70E18 802405B8 44820000 */  mtc1      $v0, $f0
/* B70E1C 802405BC 00000000 */  nop
/* B70E20 802405C0 46800020 */  cvt.s.w   $f0, $f0
/* B70E24 802405C4 46001080 */  add.s     $f2, $f2, $f0
/* B70E28 802405C8 3C013FC0 */  lui       $at, 0x3fc0
/* B70E2C 802405CC 44810000 */  mtc1      $at, $f0
/* B70E30 802405D0 00000000 */  nop
/* B70E34 802405D4 46001081 */  sub.s     $f2, $f2, $f0
/* B70E38 802405D8 46043300 */  add.s     $f12, $f6, $f4
/* B70E3C 802405DC C640009C */  lwc1      $f0, 0x9c($s2)
/* B70E40 802405E0 46001501 */  sub.s     $f20, $f2, $f0
/* B70E44 802405E4 46006084 */  sqrt.s    $f2, $f12
/* B70E48 802405E8 46021032 */  c.eq.s    $f2, $f2
/* B70E4C 802405EC 00000000 */  nop
/* B70E50 802405F0 45010004 */  bc1t      .L80240604
/* B70E54 802405F4 00000000 */   nop
/* B70E58 802405F8 0C0187BC */  jal       sqrtf
/* B70E5C 802405FC 00000000 */   nop
/* B70E60 80240600 46000086 */  mov.s     $f2, $f0
.L80240604:
/* B70E64 80240604 44800000 */  mtc1      $zero, $f0
/* B70E68 80240608 00000000 */  nop
/* B70E6C 8024060C 4614003C */  c.lt.s    $f0, $f20
/* B70E70 80240610 00000000 */  nop
/* B70E74 80240614 45000016 */  bc1f      .L80240670
/* B70E78 80240618 46001106 */   mov.s    $f4, $f2
/* B70E7C 8024061C 860200A8 */  lh        $v0, 0xa8($s0)
/* B70E80 80240620 44820000 */  mtc1      $v0, $f0
/* B70E84 80240624 00000000 */  nop
/* B70E88 80240628 46800020 */  cvt.s.w   $f0, $f0
/* B70E8C 8024062C 4600A03C */  c.lt.s    $f20, $f0
/* B70E90 80240630 00000000 */  nop
/* B70E94 80240634 4500000F */  bc1f      .L80240674
/* B70E98 80240638 0000882D */   daddu    $s1, $zero, $zero
/* B70E9C 8024063C 860200A6 */  lh        $v0, 0xa6($s0)
/* B70EA0 80240640 3C013F00 */  lui       $at, 0x3f00
/* B70EA4 80240644 44811000 */  mtc1      $at, $f2
/* B70EA8 80240648 44820000 */  mtc1      $v0, $f0
/* B70EAC 8024064C 00000000 */  nop
/* B70EB0 80240650 46800020 */  cvt.s.w   $f0, $f0
/* B70EB4 80240654 46020002 */  mul.s     $f0, $f0, $f2
/* B70EB8 80240658 00000000 */  nop
/* B70EBC 8024065C 4600203C */  c.lt.s    $f4, $f0
/* B70EC0 80240660 00000000 */  nop
/* B70EC4 80240664 45000003 */  bc1f      .L80240674
/* B70EC8 80240668 24020001 */   addiu    $v0, $zero, 1
/* B70ECC 8024066C AE62008C */  sw        $v0, 0x8c($s3)
.L80240670:
/* B70ED0 80240670 0000882D */  daddu     $s1, $zero, $zero
.L80240674:
/* B70ED4 80240674 3C013FC0 */  lui       $at, 0x3fc0
/* B70ED8 80240678 4481D000 */  mtc1      $at, $f26
/* B70EDC 8024067C 4480C000 */  mtc1      $zero, $f24
/* B70EE0 80240680 3C013F00 */  lui       $at, 0x3f00
/* B70EE4 80240684 4481B000 */  mtc1      $at, $f22
.L80240688:
/* B70EE8 80240688 0C00EAD2 */  jal       get_npc_safe
/* B70EEC 8024068C 0220202D */   daddu    $a0, $s1, $zero
/* B70EF0 80240690 0040802D */  daddu     $s0, $v0, $zero
/* B70EF4 80240694 52000035 */  beql      $s0, $zero, .L8024076C
/* B70EF8 80240698 26310001 */   addiu    $s1, $s1, 1
/* B70EFC 8024069C C6020038 */  lwc1      $f2, 0x38($s0)
/* B70F00 802406A0 C6400098 */  lwc1      $f0, 0x98($s2)
/* B70F04 802406A4 46001081 */  sub.s     $f2, $f2, $f0
/* B70F08 802406A8 46021182 */  mul.s     $f6, $f2, $f2
/* B70F0C 802406AC 00000000 */  nop
/* B70F10 802406B0 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* B70F14 802406B4 C6020040 */  lwc1      $f2, 0x40($s0)
/* B70F18 802406B8 46001081 */  sub.s     $f2, $f2, $f0
/* B70F1C 802406BC 46021102 */  mul.s     $f4, $f2, $f2
/* B70F20 802406C0 00000000 */  nop
/* B70F24 802406C4 860200A8 */  lh        $v0, 0xa8($s0)
/* B70F28 802406C8 C602003C */  lwc1      $f2, 0x3c($s0)
/* B70F2C 802406CC 44820000 */  mtc1      $v0, $f0
/* B70F30 802406D0 00000000 */  nop
/* B70F34 802406D4 46800020 */  cvt.s.w   $f0, $f0
/* B70F38 802406D8 46001080 */  add.s     $f2, $f2, $f0
/* B70F3C 802406DC 461A1081 */  sub.s     $f2, $f2, $f26
/* B70F40 802406E0 46043300 */  add.s     $f12, $f6, $f4
/* B70F44 802406E4 C640009C */  lwc1      $f0, 0x9c($s2)
/* B70F48 802406E8 46001501 */  sub.s     $f20, $f2, $f0
/* B70F4C 802406EC 46006004 */  sqrt.s    $f0, $f12
/* B70F50 802406F0 46000032 */  c.eq.s    $f0, $f0
/* B70F54 802406F4 00000000 */  nop
/* B70F58 802406F8 45010003 */  bc1t      .L80240708
/* B70F5C 802406FC 00000000 */   nop
/* B70F60 80240700 0C0187BC */  jal       sqrtf
/* B70F64 80240704 00000000 */   nop
.L80240708:
/* B70F68 80240708 4614C03C */  c.lt.s    $f24, $f20
/* B70F6C 8024070C 00000000 */  nop
/* B70F70 80240710 45000015 */  bc1f      .L80240768
/* B70F74 80240714 46000106 */   mov.s    $f4, $f0
/* B70F78 80240718 860200A8 */  lh        $v0, 0xa8($s0)
/* B70F7C 8024071C 44820000 */  mtc1      $v0, $f0
/* B70F80 80240720 00000000 */  nop
/* B70F84 80240724 46800020 */  cvt.s.w   $f0, $f0
/* B70F88 80240728 4600A03C */  c.lt.s    $f20, $f0
/* B70F8C 8024072C 00000000 */  nop
/* B70F90 80240730 4500000E */  bc1f      .L8024076C
/* B70F94 80240734 26310001 */   addiu    $s1, $s1, 1
/* B70F98 80240738 860200A6 */  lh        $v0, 0xa6($s0)
/* B70F9C 8024073C 44820000 */  mtc1      $v0, $f0
/* B70FA0 80240740 00000000 */  nop
/* B70FA4 80240744 46800020 */  cvt.s.w   $f0, $f0
/* B70FA8 80240748 46160002 */  mul.s     $f0, $f0, $f22
/* B70FAC 8024074C 00000000 */  nop
/* B70FB0 80240750 4600203C */  c.lt.s    $f4, $f0
/* B70FB4 80240754 00000000 */  nop
/* B70FB8 80240758 45000004 */  bc1f      .L8024076C
/* B70FBC 8024075C 24020001 */   addiu    $v0, $zero, 1
/* B70FC0 80240760 080901DE */  j         .L80240778
/* B70FC4 80240764 AE62008C */   sw       $v0, 0x8c($s3)
.L80240768:
/* B70FC8 80240768 26310001 */  addiu     $s1, $s1, 1
.L8024076C:
/* B70FCC 8024076C 2A220040 */  slti      $v0, $s1, 0x40
/* B70FD0 80240770 1440FFC5 */  bnez      $v0, .L80240688
/* B70FD4 80240774 00000000 */   nop
.L80240778:
/* B70FD8 80240778 8FBF0020 */  lw        $ra, 0x20($sp)
/* B70FDC 8024077C 8FB3001C */  lw        $s3, 0x1c($sp)
/* B70FE0 80240780 8FB20018 */  lw        $s2, 0x18($sp)
/* B70FE4 80240784 8FB10014 */  lw        $s1, 0x14($sp)
/* B70FE8 80240788 8FB00010 */  lw        $s0, 0x10($sp)
/* B70FEC 8024078C D7BA0040 */  ldc1      $f26, 0x40($sp)
/* B70FF0 80240790 D7B80038 */  ldc1      $f24, 0x38($sp)
/* B70FF4 80240794 D7B60030 */  ldc1      $f22, 0x30($sp)
/* B70FF8 80240798 D7B40028 */  ldc1      $f20, 0x28($sp)
/* B70FFC 8024079C 24020002 */  addiu     $v0, $zero, 2
/* B71000 802407A0 03E00008 */  jr        $ra
/* B71004 802407A4 27BD0048 */   addiu    $sp, $sp, 0x48
/* B71008 802407A8 00000000 */  nop
/* B7100C 802407AC 00000000 */  nop
