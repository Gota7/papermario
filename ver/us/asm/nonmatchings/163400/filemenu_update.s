.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel filemenu_update
/* 163A00 802431A0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 163A04 802431A4 AFB00010 */  sw        $s0, 0x10($sp)
/* 163A08 802431A8 2410002C */  addiu     $s0, $zero, 0x2c
/* 163A0C 802431AC 2406FFFF */  addiu     $a2, $zero, -1
/* 163A10 802431B0 0200282D */  daddu     $a1, $s0, $zero
/* 163A14 802431B4 3C028025 */  lui       $v0, %hi(D_8024C098_C09918)
/* 163A18 802431B8 8042C098 */  lb        $v0, %lo(D_8024C098_C09918)($v0)
/* 163A1C 802431BC 3C038016 */  lui       $v1, %hi(D_8015A2D0)
/* 163A20 802431C0 2463A2D0 */  addiu     $v1, $v1, %lo(D_8015A2D0)
/* 163A24 802431C4 AFBF0018 */  sw        $ra, 0x18($sp)
/* 163A28 802431C8 AFB10014 */  sw        $s1, 0x14($sp)
/* 163A2C 802431CC 00021080 */  sll       $v0, $v0, 2
/* 163A30 802431D0 3C048025 */  lui       $a0, %hi(filemenu_menus)
/* 163A34 802431D4 00822021 */  addu      $a0, $a0, $v0
/* 163A38 802431D8 8C849B84 */  lw        $a0, %lo(filemenu_menus)($a0)
.L802431DC:
/* 163A3C 802431DC 80620003 */  lb        $v0, 3($v1)
/* 163A40 802431E0 10460003 */  beq       $v0, $a2, .L802431F0
/* 163A44 802431E4 00000000 */   nop
/* 163A48 802431E8 54450006 */  bnel      $v0, $a1, .L80243204
/* 163A4C 802431EC 26100001 */   addiu    $s0, $s0, 1
.L802431F0:
/* 163A50 802431F0 90620000 */  lbu       $v0, ($v1)
/* 163A54 802431F4 30420008 */  andi      $v0, $v0, 8
/* 163A58 802431F8 14400006 */  bnez      $v0, .L80243214
/* 163A5C 802431FC 2A020040 */   slti     $v0, $s0, 0x40
/* 163A60 80243200 26100001 */  addiu     $s0, $s0, 1
.L80243204:
/* 163A64 80243204 2A020040 */  slti      $v0, $s0, 0x40
/* 163A68 80243208 1440FFF4 */  bnez      $v0, .L802431DC
/* 163A6C 8024320C 24630020 */   addiu    $v1, $v1, 0x20
/* 163A70 80243210 2A020040 */  slti      $v0, $s0, 0x40
.L80243214:
/* 163A74 80243214 1440000B */  bnez      $v0, .L80243244
/* 163A78 80243218 00000000 */   nop
/* 163A7C 8024321C 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 163A80 80243220 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 163A84 80243224 8C430020 */  lw        $v1, 0x20($v0)
/* 163A88 80243228 8C420010 */  lw        $v0, 0x10($v0)
/* 163A8C 8024322C 3C018025 */  lui       $at, %hi(filemenu_heldButtons)
/* 163A90 80243230 AC23C08C */  sw        $v1, %lo(filemenu_heldButtons)($at)
/* 163A94 80243234 3C018025 */  lui       $at, %hi(filemenu_pressedButtons)
/* 163A98 80243238 AC22C084 */  sw        $v0, %lo(filemenu_pressedButtons)($at)
/* 163A9C 8024323C 08090C95 */  j         .L80243254
/* 163AA0 80243240 00000000 */   nop
.L80243244:
/* 163AA4 80243244 3C018025 */  lui       $at, %hi(filemenu_heldButtons)
/* 163AA8 80243248 AC20C08C */  sw        $zero, %lo(filemenu_heldButtons)($at)
/* 163AAC 8024324C 3C018025 */  lui       $at, %hi(filemenu_pressedButtons)
/* 163AB0 80243250 AC20C084 */  sw        $zero, %lo(filemenu_pressedButtons)($at)
.L80243254:
/* 163AB4 80243254 3C058025 */  lui       $a1, %hi(filemenu_pressedButtons)
/* 163AB8 80243258 24A5C084 */  addiu     $a1, $a1, %lo(filemenu_pressedButtons)
/* 163ABC 8024325C 8CA30000 */  lw        $v1, ($a1)
/* 163AC0 80243260 30624000 */  andi      $v0, $v1, 0x4000
/* 163AC4 80243264 10400004 */  beqz      $v0, .L80243278
/* 163AC8 80243268 3C02FFFF */   lui      $v0, 0xffff
/* 163ACC 8024326C 34427FFF */  ori       $v0, $v0, 0x7fff
/* 163AD0 80243270 00621024 */  and       $v0, $v1, $v0
/* 163AD4 80243274 ACA20000 */  sw        $v0, ($a1)
.L80243278:
/* 163AD8 80243278 3C058025 */  lui       $a1, %hi(filemenu_heldButtons)
/* 163ADC 8024327C 24A5C08C */  addiu     $a1, $a1, %lo(filemenu_heldButtons)
/* 163AE0 80243280 8CA30000 */  lw        $v1, ($a1)
/* 163AE4 80243284 30624000 */  andi      $v0, $v1, 0x4000
/* 163AE8 80243288 10400004 */  beqz      $v0, .L8024329C
/* 163AEC 8024328C 3C02FFFF */   lui      $v0, 0xffff
/* 163AF0 80243290 34427FFF */  ori       $v0, $v0, 0x7fff
/* 163AF4 80243294 00621024 */  and       $v0, $v1, $v0
/* 163AF8 80243298 ACA20000 */  sw        $v0, ($a1)
.L8024329C:
/* 163AFC 8024329C 90820000 */  lbu       $v0, ($a0)
/* 163B00 802432A0 10400006 */  beqz      $v0, .L802432BC
/* 163B04 802432A4 00000000 */   nop
/* 163B08 802432A8 8C820010 */  lw        $v0, 0x10($a0)
/* 163B0C 802432AC 10400003 */  beqz      $v0, .L802432BC
/* 163B10 802432B0 00000000 */   nop
/* 163B14 802432B4 0040F809 */  jalr      $v0
/* 163B18 802432B8 00000000 */   nop
.L802432BC:
/* 163B1C 802432BC 3C118025 */  lui       $s1, %hi(filemenu_menus)
/* 163B20 802432C0 26319B84 */  addiu     $s1, $s1, %lo(filemenu_menus)
/* 163B24 802432C4 0000802D */  daddu     $s0, $zero, $zero
.L802432C8:
/* 163B28 802432C8 8E240000 */  lw        $a0, ($s1)
/* 163B2C 802432CC 90820000 */  lbu       $v0, ($a0)
/* 163B30 802432D0 10400006 */  beqz      $v0, .L802432EC
/* 163B34 802432D4 26100001 */   addiu    $s0, $s0, 1
/* 163B38 802432D8 8C820014 */  lw        $v0, 0x14($a0)
/* 163B3C 802432DC 10400003 */  beqz      $v0, .L802432EC
/* 163B40 802432E0 00000000 */   nop
/* 163B44 802432E4 0040F809 */  jalr      $v0
/* 163B48 802432E8 00000000 */   nop
.L802432EC:
/* 163B4C 802432EC 2A020004 */  slti      $v0, $s0, 4
/* 163B50 802432F0 1440FFF5 */  bnez      $v0, .L802432C8
/* 163B54 802432F4 26310004 */   addiu    $s1, $s1, 4
/* 163B58 802432F8 8FBF0018 */  lw        $ra, 0x18($sp)
/* 163B5C 802432FC 8FB10014 */  lw        $s1, 0x14($sp)
/* 163B60 80243300 8FB00010 */  lw        $s0, 0x10($sp)
/* 163B64 80243304 03E00008 */  jr        $ra
/* 163B68 80243308 27BD0020 */   addiu    $sp, $sp, 0x20
