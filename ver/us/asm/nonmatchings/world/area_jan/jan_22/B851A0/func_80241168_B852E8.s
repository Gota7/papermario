.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241168_B852E8
/* B852E8 80241168 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* B852EC 8024116C AFB10014 */  sw        $s1, 0x14($sp)
/* B852F0 80241170 0080882D */  daddu     $s1, $a0, $zero
/* B852F4 80241174 AFBF001C */  sw        $ra, 0x1c($sp)
/* B852F8 80241178 AFB20018 */  sw        $s2, 0x18($sp)
/* B852FC 8024117C AFB00010 */  sw        $s0, 0x10($sp)
/* B85300 80241180 8E22000C */  lw        $v0, 0xc($s1)
/* B85304 80241184 0C0B1EAF */  jal       evt_get_variable
/* B85308 80241188 8C450000 */   lw       $a1, ($v0)
/* B8530C 8024118C 8E23013C */  lw        $v1, 0x13c($s1)
/* B85310 80241190 8C720000 */  lw        $s2, ($v1)
/* B85314 80241194 C646000C */  lwc1      $f6, 0xc($s2)
/* B85318 80241198 C6400000 */  lwc1      $f0, ($s2)
/* B8531C 8024119C 46003181 */  sub.s     $f6, $f6, $f0
/* B85320 802411A0 3C01447A */  lui       $at, 0x447a
/* B85324 802411A4 44814000 */  mtc1      $at, $f8
/* B85328 802411A8 C6200084 */  lwc1      $f0, 0x84($s1)
/* B8532C 802411AC 46800020 */  cvt.s.w   $f0, $f0
/* B85330 802411B0 46083183 */  div.s     $f6, $f6, $f8
/* B85334 802411B4 46003182 */  mul.s     $f6, $f6, $f0
/* B85338 802411B8 00000000 */  nop
/* B8533C 802411BC C6440010 */  lwc1      $f4, 0x10($s2)
/* B85340 802411C0 C6420004 */  lwc1      $f2, 4($s2)
/* B85344 802411C4 46022101 */  sub.s     $f4, $f4, $f2
/* B85348 802411C8 C6420008 */  lwc1      $f2, 8($s2)
/* B8534C 802411CC C6400014 */  lwc1      $f0, 0x14($s2)
/* B85350 802411D0 46020001 */  sub.s     $f0, $f0, $f2
/* B85354 802411D4 46082103 */  div.s     $f4, $f4, $f8
/* B85358 802411D8 C6220084 */  lwc1      $f2, 0x84($s1)
/* B8535C 802411DC 468010A0 */  cvt.s.w   $f2, $f2
/* B85360 802411E0 46022102 */  mul.s     $f4, $f4, $f2
/* B85364 802411E4 00000000 */  nop
/* B85368 802411E8 46080003 */  div.s     $f0, $f0, $f8
/* B8536C 802411EC 46020002 */  mul.s     $f0, $f0, $f2
/* B85370 802411F0 00000000 */  nop
/* B85374 802411F4 4600328D */  trunc.w.s $f10, $f6
/* B85378 802411F8 E62A0098 */  swc1      $f10, 0x98($s1)
/* B8537C 802411FC 4600228D */  trunc.w.s $f10, $f4
/* B85380 80241200 E62A009C */  swc1      $f10, 0x9c($s1)
/* B85384 80241204 4600028D */  trunc.w.s $f10, $f0
/* B85388 80241208 1440002E */  bnez      $v0, .L802412C4
/* B8538C 8024120C E62A00A0 */   swc1     $f10, 0xa0($s1)
/* B85390 80241210 0C00EAD2 */  jal       get_npc_safe
/* B85394 80241214 2404FFFC */   addiu    $a0, $zero, -4
/* B85398 80241218 8E23008C */  lw        $v1, 0x8c($s1)
/* B8539C 8024121C 8E240098 */  lw        $a0, 0x98($s1)
/* B853A0 80241220 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* B853A4 80241224 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* B853A8 80241228 00641821 */  addu      $v1, $v1, $a0
/* B853AC 8024122C 44830000 */  mtc1      $v1, $f0
/* B853B0 80241230 00000000 */  nop
/* B853B4 80241234 46800020 */  cvt.s.w   $f0, $f0
/* B853B8 80241238 E6000028 */  swc1      $f0, 0x28($s0)
/* B853BC 8024123C 8E230090 */  lw        $v1, 0x90($s1)
/* B853C0 80241240 8E24009C */  lw        $a0, 0x9c($s1)
/* B853C4 80241244 00641821 */  addu      $v1, $v1, $a0
/* B853C8 80241248 44830000 */  mtc1      $v1, $f0
/* B853CC 8024124C 00000000 */  nop
/* B853D0 80241250 46800020 */  cvt.s.w   $f0, $f0
/* B853D4 80241254 E600002C */  swc1      $f0, 0x2c($s0)
/* B853D8 80241258 8E230094 */  lw        $v1, 0x94($s1)
/* B853DC 8024125C 8E2400A0 */  lw        $a0, 0xa0($s1)
/* B853E0 80241260 00641821 */  addu      $v1, $v1, $a0
/* B853E4 80241264 44830000 */  mtc1      $v1, $f0
/* B853E8 80241268 00000000 */  nop
/* B853EC 8024126C 46800020 */  cvt.s.w   $f0, $f0
/* B853F0 80241270 E6000030 */  swc1      $f0, 0x30($s0)
/* B853F4 80241274 C64C0000 */  lwc1      $f12, ($s2)
/* B853F8 80241278 C64E0008 */  lwc1      $f14, 8($s2)
/* B853FC 8024127C 8E46000C */  lw        $a2, 0xc($s2)
/* B85400 80241280 8E470014 */  lw        $a3, 0x14($s2)
/* B85404 80241284 0C00A720 */  jal       atan2
/* B85408 80241288 0040882D */   daddu    $s1, $v0, $zero
/* B8540C 8024128C C6020028 */  lwc1      $f2, 0x28($s0)
/* B85410 80241290 E6000080 */  swc1      $f0, 0x80($s0)
/* B85414 80241294 E6220038 */  swc1      $f2, 0x38($s1)
/* B85418 80241298 C600002C */  lwc1      $f0, 0x2c($s0)
/* B8541C 8024129C 3C014120 */  lui       $at, 0x4120
/* B85420 802412A0 44811000 */  mtc1      $at, $f2
/* B85424 802412A4 00000000 */  nop
/* B85428 802412A8 46020001 */  sub.s     $f0, $f0, $f2
/* B8542C 802412AC 3C0140A0 */  lui       $at, 0x40a0
/* B85430 802412B0 44811000 */  mtc1      $at, $f2
/* B85434 802412B4 E620003C */  swc1      $f0, 0x3c($s1)
/* B85438 802412B8 C6000030 */  lwc1      $f0, 0x30($s0)
/* B8543C 802412BC 46020001 */  sub.s     $f0, $f0, $f2
/* B85440 802412C0 E6200040 */  swc1      $f0, 0x40($s1)
.L802412C4:
/* B85444 802412C4 8FBF001C */  lw        $ra, 0x1c($sp)
/* B85448 802412C8 8FB20018 */  lw        $s2, 0x18($sp)
/* B8544C 802412CC 8FB10014 */  lw        $s1, 0x14($sp)
/* B85450 802412D0 8FB00010 */  lw        $s0, 0x10($sp)
/* B85454 802412D4 24020002 */  addiu     $v0, $zero, 2
/* B85458 802412D8 03E00008 */  jr        $ra
/* B8545C 802412DC 27BD0020 */   addiu    $sp, $sp, 0x20
