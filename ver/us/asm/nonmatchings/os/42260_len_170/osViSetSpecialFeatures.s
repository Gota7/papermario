.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel osViSetSpecialFeatures
/* 42260 80066E60 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 42264 80066E64 AFB00010 */  sw        $s0, 0x10($sp)
/* 42268 80066E68 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4226C 80066E6C 0C01ACD8 */  jal       __osDisableInt
/* 42270 80066E70 00808021 */   addu     $s0, $a0, $zero
/* 42274 80066E74 00403021 */  addu      $a2, $v0, $zero
/* 42278 80066E78 32020001 */  andi      $v0, $s0, 1
/* 4227C 80066E7C 10400007 */  beqz      $v0, .L80066E9C
/* 42280 80066E80 32020002 */   andi     $v0, $s0, 2
/* 42284 80066E84 3C038009 */  lui       $v1, %hi(__osViNext)
/* 42288 80066E88 8C6359D4 */  lw        $v1, %lo(__osViNext)($v1)
/* 4228C 80066E8C 8C62000C */  lw        $v0, 0xc($v1)
/* 42290 80066E90 34420008 */  ori       $v0, $v0, 8
/* 42294 80066E94 AC62000C */  sw        $v0, 0xc($v1)
/* 42298 80066E98 32020002 */  andi      $v0, $s0, 2
.L80066E9C:
/* 4229C 80066E9C 10400006 */  beqz      $v0, .L80066EB8
/* 422A0 80066EA0 2404FFF7 */   addiu    $a0, $zero, -9
/* 422A4 80066EA4 3C028009 */  lui       $v0, %hi(__osViNext)
/* 422A8 80066EA8 8C4259D4 */  lw        $v0, %lo(__osViNext)($v0)
/* 422AC 80066EAC 8C43000C */  lw        $v1, 0xc($v0)
/* 422B0 80066EB0 00641824 */  and       $v1, $v1, $a0
/* 422B4 80066EB4 AC43000C */  sw        $v1, 0xc($v0)
.L80066EB8:
/* 422B8 80066EB8 32020004 */  andi      $v0, $s0, 4
/* 422BC 80066EBC 10400007 */  beqz      $v0, .L80066EDC
/* 422C0 80066EC0 32020008 */   andi     $v0, $s0, 8
/* 422C4 80066EC4 3C038009 */  lui       $v1, %hi(__osViNext)
/* 422C8 80066EC8 8C6359D4 */  lw        $v1, %lo(__osViNext)($v1)
/* 422CC 80066ECC 8C62000C */  lw        $v0, 0xc($v1)
/* 422D0 80066ED0 34420004 */  ori       $v0, $v0, 4
/* 422D4 80066ED4 AC62000C */  sw        $v0, 0xc($v1)
/* 422D8 80066ED8 32020008 */  andi      $v0, $s0, 8
.L80066EDC:
/* 422DC 80066EDC 10400006 */  beqz      $v0, .L80066EF8
/* 422E0 80066EE0 2404FFFB */   addiu    $a0, $zero, -5
/* 422E4 80066EE4 3C028009 */  lui       $v0, %hi(__osViNext)
/* 422E8 80066EE8 8C4259D4 */  lw        $v0, %lo(__osViNext)($v0)
/* 422EC 80066EEC 8C43000C */  lw        $v1, 0xc($v0)
/* 422F0 80066EF0 00641824 */  and       $v1, $v1, $a0
/* 422F4 80066EF4 AC43000C */  sw        $v1, 0xc($v0)
.L80066EF8:
/* 422F8 80066EF8 32020010 */  andi      $v0, $s0, 0x10
/* 422FC 80066EFC 10400007 */  beqz      $v0, .L80066F1C
/* 42300 80066F00 32020020 */   andi     $v0, $s0, 0x20
/* 42304 80066F04 3C038009 */  lui       $v1, %hi(__osViNext)
/* 42308 80066F08 8C6359D4 */  lw        $v1, %lo(__osViNext)($v1)
/* 4230C 80066F0C 8C62000C */  lw        $v0, 0xc($v1)
/* 42310 80066F10 34420010 */  ori       $v0, $v0, 0x10
/* 42314 80066F14 AC62000C */  sw        $v0, 0xc($v1)
/* 42318 80066F18 32020020 */  andi      $v0, $s0, 0x20
.L80066F1C:
/* 4231C 80066F1C 10400006 */  beqz      $v0, .L80066F38
/* 42320 80066F20 2404FFEF */   addiu    $a0, $zero, -0x11
/* 42324 80066F24 3C028009 */  lui       $v0, %hi(__osViNext)
/* 42328 80066F28 8C4259D4 */  lw        $v0, %lo(__osViNext)($v0)
/* 4232C 80066F2C 8C43000C */  lw        $v1, 0xc($v0)
/* 42330 80066F30 00641824 */  and       $v1, $v1, $a0
/* 42334 80066F34 AC43000C */  sw        $v1, 0xc($v0)
.L80066F38:
/* 42338 80066F38 32020040 */  andi      $v0, $s0, 0x40
/* 4233C 80066F3C 10400008 */  beqz      $v0, .L80066F60
/* 42340 80066F40 3C030001 */   lui      $v1, 1
/* 42344 80066F44 3C048009 */  lui       $a0, %hi(__osViNext)
/* 42348 80066F48 8C8459D4 */  lw        $a0, %lo(__osViNext)($a0)
/* 4234C 80066F4C 8C82000C */  lw        $v0, 0xc($a0)
/* 42350 80066F50 00431025 */  or        $v0, $v0, $v1
/* 42354 80066F54 2403FCFF */  addiu     $v1, $zero, -0x301
/* 42358 80066F58 00431024 */  and       $v0, $v0, $v1
/* 4235C 80066F5C AC82000C */  sw        $v0, 0xc($a0)
.L80066F60:
/* 42360 80066F60 32020080 */  andi      $v0, $s0, 0x80
/* 42364 80066F64 1040000C */  beqz      $v0, .L80066F98
/* 42368 80066F68 3C02FFFE */   lui      $v0, 0xfffe
/* 4236C 80066F6C 3C048009 */  lui       $a0, %hi(__osViNext)
/* 42370 80066F70 8C8459D4 */  lw        $a0, %lo(__osViNext)($a0)
/* 42374 80066F74 8C83000C */  lw        $v1, 0xc($a0)
/* 42378 80066F78 8C850008 */  lw        $a1, 8($a0)
/* 4237C 80066F7C 3442FFFF */  ori       $v0, $v0, 0xffff
/* 42380 80066F80 00621824 */  and       $v1, $v1, $v0
/* 42384 80066F84 AC83000C */  sw        $v1, 0xc($a0)
/* 42388 80066F88 8CA20004 */  lw        $v0, 4($a1)
/* 4238C 80066F8C 30420300 */  andi      $v0, $v0, 0x300
/* 42390 80066F90 00621825 */  or        $v1, $v1, $v0
/* 42394 80066F94 AC83000C */  sw        $v1, 0xc($a0)
.L80066F98:
/* 42398 80066F98 3C038009 */  lui       $v1, %hi(__osViNext)
/* 4239C 80066F9C 8C6359D4 */  lw        $v1, %lo(__osViNext)($v1)
/* 423A0 80066FA0 94620000 */  lhu       $v0, ($v1)
/* 423A4 80066FA4 00C02021 */  addu      $a0, $a2, $zero
/* 423A8 80066FA8 34420008 */  ori       $v0, $v0, 8
/* 423AC 80066FAC 0C01ACF4 */  jal       __osRestoreInt
/* 423B0 80066FB0 A4620000 */   sh       $v0, ($v1)
/* 423B4 80066FB4 8FBF0014 */  lw        $ra, 0x14($sp)
/* 423B8 80066FB8 8FB00010 */  lw        $s0, 0x10($sp)
/* 423BC 80066FBC 03E00008 */  jr        $ra
/* 423C0 80066FC0 27BD0018 */   addiu    $sp, $sp, 0x18
/* 423C4 80066FC4 00000000 */  nop
/* 423C8 80066FC8 00000000 */  nop
/* 423CC 80066FCC 00000000 */  nop
