.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_18_main
/* 339250 E0024000 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 339254 E0024004 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 339258 E0024008 4485A000 */  mtc1      $a1, $f20
/* 33925C E002400C F7B60040 */  sdc1      $f22, 0x40($sp)
/* 339260 E0024010 4486B000 */  mtc1      $a2, $f22
/* 339264 E0024014 AFB1002C */  sw        $s1, 0x2c($sp)
/* 339268 E0024018 0080882D */  daddu     $s1, $a0, $zero
/* 33926C E002401C F7B80048 */  sdc1      $f24, 0x48($sp)
/* 339270 E0024020 4487C000 */  mtc1      $a3, $f24
/* 339274 E0024024 27A40010 */  addiu     $a0, $sp, 0x10
/* 339278 E0024028 AFB20030 */  sw        $s2, 0x30($sp)
/* 33927C E002402C 8FB2006C */  lw        $s2, 0x6c($sp)
/* 339280 E0024030 3C02E002 */  lui       $v0, %hi(fx_18_init)
/* 339284 E0024034 24424180 */  addiu     $v0, $v0, %lo(fx_18_init)
/* 339288 E0024038 AFA20018 */  sw        $v0, 0x18($sp)
/* 33928C E002403C 3C02E002 */  lui       $v0, %hi(fx_18_update)
/* 339290 E0024040 24424188 */  addiu     $v0, $v0, %lo(fx_18_update)
/* 339294 E0024044 AFA2001C */  sw        $v0, 0x1c($sp)
/* 339298 E0024048 3C02E002 */  lui       $v0, %hi(fx_18_render)
/* 33929C E002404C 244242E0 */  addiu     $v0, $v0, %lo(fx_18_render)
/* 3392A0 E0024050 AFA20020 */  sw        $v0, 0x20($sp)
/* 3392A4 E0024054 24020012 */  addiu     $v0, $zero, 0x12
/* 3392A8 E0024058 AFBF0034 */  sw        $ra, 0x34($sp)
/* 3392AC E002405C AFB00028 */  sw        $s0, 0x28($sp)
/* 3392B0 E0024060 AFA00010 */  sw        $zero, 0x10($sp)
/* 3392B4 E0024064 AFA00024 */  sw        $zero, 0x24($sp)
/* 3392B8 E0024068 0C080124 */  jal       shim_create_effect_instance
/* 3392BC E002406C AFA20014 */   sw       $v0, 0x14($sp)
/* 3392C0 E0024070 24040038 */  addiu     $a0, $zero, 0x38
/* 3392C4 E0024074 24030001 */  addiu     $v1, $zero, 1
/* 3392C8 E0024078 0040802D */  daddu     $s0, $v0, $zero
/* 3392CC E002407C 0C08012C */  jal       shim_general_heap_malloc
/* 3392D0 E0024080 AE030008 */   sw       $v1, 8($s0)
/* 3392D4 E0024084 0040182D */  daddu     $v1, $v0, $zero
/* 3392D8 E0024088 14600003 */  bnez      $v1, .LE0024098
/* 3392DC E002408C AE02000C */   sw       $v0, 0xc($s0)
.LE0024090:
/* 3392E0 E0024090 08009024 */  j         .LE0024090
/* 3392E4 E0024094 00000000 */   nop
.LE0024098:
/* 3392E8 E0024098 3C013F80 */  lui       $at, 0x3f80
/* 3392EC E002409C 44810000 */  mtc1      $at, $f0
/* 3392F0 E00240A0 240200FF */  addiu     $v0, $zero, 0xff
/* 3392F4 E00240A4 AC60002C */  sw        $zero, 0x2c($v1)
/* 3392F8 E00240A8 AC710000 */  sw        $s1, ($v1)
/* 3392FC E00240AC AC620034 */  sw        $v0, 0x34($v1)
/* 339300 E00240B0 E4740004 */  swc1      $f20, 4($v1)
/* 339304 E00240B4 E4760008 */  swc1      $f22, 8($v1)
/* 339308 E00240B8 E478000C */  swc1      $f24, 0xc($v1)
/* 33930C E00240BC 16200019 */  bnez      $s1, .LE0024124
/* 339310 E00240C0 E4600028 */   swc1     $f0, 0x28($v1)
/* 339314 E00240C4 C7A60060 */  lwc1      $f6, 0x60($sp)
/* 339318 E00240C8 46143181 */  sub.s     $f6, $f6, $f20
/* 33931C E00240CC 44921000 */  mtc1      $s2, $f2
/* 339320 E00240D0 00000000 */  nop
/* 339324 E00240D4 468010A0 */  cvt.s.w   $f2, $f2
/* 339328 E00240D8 46020083 */  div.s     $f2, $f0, $f2
/* 33932C E00240DC 46023182 */  mul.s     $f6, $f6, $f2
/* 339330 E00240E0 00000000 */  nop
/* 339334 E00240E4 C7A40064 */  lwc1      $f4, 0x64($sp)
/* 339338 E00240E8 46162101 */  sub.s     $f4, $f4, $f22
/* 33933C E00240EC 46022102 */  mul.s     $f4, $f4, $f2
/* 339340 E00240F0 00000000 */  nop
/* 339344 E00240F4 C7A00068 */  lwc1      $f0, 0x68($sp)
/* 339348 E00240F8 46180001 */  sub.s     $f0, $f0, $f24
/* 33934C E00240FC AC600010 */  sw        $zero, 0x10($v1)
/* 339350 E0024100 AC600014 */  sw        $zero, 0x14($v1)
/* 339354 E0024104 46020002 */  mul.s     $f0, $f0, $f2
/* 339358 E0024108 00000000 */  nop
/* 33935C E002410C AC600018 */  sw        $zero, 0x18($v1)
/* 339360 E0024110 AC720030 */  sw        $s2, 0x30($v1)
/* 339364 E0024114 E466001C */  swc1      $f6, 0x1c($v1)
/* 339368 E0024118 E4640020 */  swc1      $f4, 0x20($v1)
/* 33936C E002411C 08009056 */  j         .LE0024158
/* 339370 E0024120 E4600024 */   swc1     $f0, 0x24($v1)
.LE0024124:
/* 339374 E0024124 3C0141E8 */  lui       $at, 0x41e8
/* 339378 E0024128 44810000 */  mtc1      $at, $f0
/* 33937C E002412C 3C0140C6 */  lui       $at, 0x40c6
/* 339380 E0024130 34216666 */  ori       $at, $at, 0x6666
/* 339384 E0024134 44811000 */  mtc1      $at, $f2
/* 339388 E0024138 24020018 */  addiu     $v0, $zero, 0x18
/* 33938C E002413C AC600014 */  sw        $zero, 0x14($v1)
/* 339390 E0024140 AC600018 */  sw        $zero, 0x18($v1)
/* 339394 E0024144 AC600020 */  sw        $zero, 0x20($v1)
/* 339398 E0024148 AC600024 */  sw        $zero, 0x24($v1)
/* 33939C E002414C AC620030 */  sw        $v0, 0x30($v1)
/* 3393A0 E0024150 E4600010 */  swc1      $f0, 0x10($v1)
/* 3393A4 E0024154 E462001C */  swc1      $f2, 0x1c($v1)
.LE0024158:
/* 3393A8 E0024158 0200102D */  daddu     $v0, $s0, $zero
/* 3393AC E002415C 8FBF0034 */  lw        $ra, 0x34($sp)
/* 3393B0 E0024160 8FB20030 */  lw        $s2, 0x30($sp)
/* 3393B4 E0024164 8FB1002C */  lw        $s1, 0x2c($sp)
/* 3393B8 E0024168 8FB00028 */  lw        $s0, 0x28($sp)
/* 3393BC E002416C D7B80048 */  ldc1      $f24, 0x48($sp)
/* 3393C0 E0024170 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 3393C4 E0024174 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 3393C8 E0024178 03E00008 */  jr        $ra
/* 3393CC E002417C 27BD0050 */   addiu    $sp, $sp, 0x50
