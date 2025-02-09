.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024086C_A93FAC
/* A93FAC 8024086C 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* A93FB0 80240870 AFB7004C */  sw        $s7, 0x4c($sp)
/* A93FB4 80240874 0080B82D */  daddu     $s7, $a0, $zero
/* A93FB8 80240878 AFB10034 */  sw        $s1, 0x34($sp)
/* A93FBC 8024087C 00A0882D */  daddu     $s1, $a1, $zero
/* A93FC0 80240880 AFBF0050 */  sw        $ra, 0x50($sp)
/* A93FC4 80240884 AFB60048 */  sw        $s6, 0x48($sp)
/* A93FC8 80240888 AFB50044 */  sw        $s5, 0x44($sp)
/* A93FCC 8024088C AFB40040 */  sw        $s4, 0x40($sp)
/* A93FD0 80240890 AFB3003C */  sw        $s3, 0x3c($sp)
/* A93FD4 80240894 AFB20038 */  sw        $s2, 0x38($sp)
/* A93FD8 80240898 AFB00030 */  sw        $s0, 0x30($sp)
/* A93FDC 8024089C 8EF30148 */  lw        $s3, 0x148($s7)
/* A93FE0 802408A0 86640008 */  lh        $a0, 8($s3)
/* A93FE4 802408A4 8EF0000C */  lw        $s0, 0xc($s7)
/* A93FE8 802408A8 0C00FB5A */  jal       get_enemy_safe
/* A93FEC 802408AC 0000B02D */   daddu    $s6, $zero, $zero
/* A93FF0 802408B0 10400131 */  beqz      $v0, .L80240D78
/* A93FF4 802408B4 24020005 */   addiu    $v0, $zero, 5
/* A93FF8 802408B8 8E63006C */  lw        $v1, 0x6c($s3)
/* A93FFC 802408BC 1062012F */  beq       $v1, $v0, .L80240D7C
/* A94000 802408C0 0000102D */   daddu    $v0, $zero, $zero
/* A94004 802408C4 8E050000 */  lw        $a1, ($s0)
/* A94008 802408C8 0C0B1EAF */  jal       evt_get_variable
/* A9400C 802408CC 02E0202D */   daddu    $a0, $s7, $zero
/* A94010 802408D0 86640008 */  lh        $a0, 8($s3)
/* A94014 802408D4 0C00EABB */  jal       get_npc_unsafe
/* A94018 802408D8 0040A82D */   daddu    $s5, $v0, $zero
/* A9401C 802408DC 8E630070 */  lw        $v1, 0x70($s3)
/* A94020 802408E0 30630002 */  andi      $v1, $v1, 2
/* A94024 802408E4 10600008 */  beqz      $v1, .L80240908
/* A94028 802408E8 0040902D */   daddu    $s2, $v0, $zero
/* A9402C 802408EC 964200A8 */  lhu       $v0, 0xa8($s2)
/* A94030 802408F0 00021400 */  sll       $v0, $v0, 0x10
/* A94034 802408F4 00021C03 */  sra       $v1, $v0, 0x10
/* A94038 802408F8 000217C2 */  srl       $v0, $v0, 0x1f
/* A9403C 802408FC 00621821 */  addu      $v1, $v1, $v0
/* A94040 80240900 00031843 */  sra       $v1, $v1, 1
/* A94044 80240904 A24300AB */  sb        $v1, 0xab($s2)
.L80240908:
/* A94048 80240908 16200005 */  bnez      $s1, .L80240920
/* A9404C 8024090C 3C030004 */   lui      $v1, 4
/* A94050 80240910 8E6200B0 */  lw        $v0, 0xb0($s3)
/* A94054 80240914 30420004 */  andi      $v0, $v0, 4
/* A94058 80240918 10400019 */  beqz      $v0, .L80240980
/* A9405C 8024091C 00000000 */   nop
.L80240920:
/* A94060 80240920 34630102 */  ori       $v1, $v1, 0x102
/* A94064 80240924 AEE00070 */  sw        $zero, 0x70($s7)
/* A94068 80240928 8E420000 */  lw        $v0, ($s2)
/* A9406C 8024092C 0240202D */  daddu     $a0, $s2, $zero
/* A94070 80240930 A640008E */  sh        $zero, 0x8e($s2)
/* A94074 80240934 00431025 */  or        $v0, $v0, $v1
/* A94078 80240938 0C00EAFF */  jal       disable_npc_shadow
/* A9407C 8024093C AE420000 */   sw       $v0, ($s2)
/* A94080 80240940 3C041F30 */  lui       $a0, 0x1f30
/* A94084 80240944 8E420000 */  lw        $v0, ($s2)
/* A94088 80240948 2403F7FF */  addiu     $v1, $zero, -0x801
/* A9408C 8024094C 00431024 */  and       $v0, $v0, $v1
/* A94090 80240950 AE420000 */  sw        $v0, ($s2)
/* A94094 80240954 8E620000 */  lw        $v0, ($s3)
/* A94098 80240958 8E6300B0 */  lw        $v1, 0xb0($s3)
/* A9409C 8024095C 34840040 */  ori       $a0, $a0, 0x40
/* A940A0 80240960 AE60006C */  sw        $zero, 0x6c($s3)
/* A940A4 80240964 00441025 */  or        $v0, $v0, $a0
/* A940A8 80240968 AE620000 */  sw        $v0, ($s3)
/* A940AC 8024096C 30620004 */  andi      $v0, $v1, 4
/* A940B0 80240970 10400003 */  beqz      $v0, .L80240980
/* A940B4 80240974 2402FFFB */   addiu    $v0, $zero, -5
/* A940B8 80240978 00621024 */  and       $v0, $v1, $v0
/* A940BC 8024097C AE6200B0 */  sw        $v0, 0xb0($s3)
.L80240980:
/* A940C0 80240980 8EE30070 */  lw        $v1, 0x70($s7)
/* A940C4 80240984 24100001 */  addiu     $s0, $zero, 1
/* A940C8 80240988 10700012 */  beq       $v1, $s0, .L802409D4
/* A940CC 8024098C 28620002 */   slti     $v0, $v1, 2
/* A940D0 80240990 10400005 */  beqz      $v0, .L802409A8
/* A940D4 80240994 24020002 */   addiu    $v0, $zero, 2
/* A940D8 80240998 10600007 */  beqz      $v1, .L802409B8
/* A940DC 8024099C 0000102D */   daddu    $v0, $zero, $zero
/* A940E0 802409A0 0809035F */  j         .L80240D7C
/* A940E4 802409A4 00000000 */   nop
.L802409A8:
/* A940E8 802409A8 1062005B */  beq       $v1, $v0, .L80240B18
/* A940EC 802409AC 0000102D */   daddu    $v0, $zero, $zero
/* A940F0 802409B0 0809035F */  j         .L80240D7C
/* A940F4 802409B4 00000000 */   nop
.L802409B8:
/* A940F8 802409B8 8E420000 */  lw        $v0, ($s2)
/* A940FC 802409BC 0240202D */  daddu     $a0, $s2, $zero
/* A94100 802409C0 34420002 */  ori       $v0, $v0, 2
/* A94104 802409C4 0C00EAFF */  jal       disable_npc_shadow
/* A94108 802409C8 AE420000 */   sw       $v0, ($s2)
/* A9410C 802409CC AE60006C */  sw        $zero, 0x6c($s3)
/* A94110 802409D0 AEF00070 */  sw        $s0, 0x70($s7)
.L802409D4:
/* A94114 802409D4 8E74006C */  lw        $s4, 0x6c($s3)
/* A94118 802409D8 24020001 */  addiu     $v0, $zero, 1
/* A9411C 802409DC 168200E7 */  bne       $s4, $v0, .L80240D7C
/* A94120 802409E0 0000102D */   daddu    $v0, $zero, $zero
/* A94124 802409E4 8E64007C */  lw        $a0, 0x7c($s3)
/* A94128 802409E8 24110002 */  addiu     $s1, $zero, 2
/* A9412C 802409EC 0C00EABB */  jal       get_npc_unsafe
/* A94130 802409F0 AE71006C */   sw       $s1, 0x6c($s3)
/* A94134 802409F4 0040802D */  daddu     $s0, $v0, $zero
/* A94138 802409F8 C6000038 */  lwc1      $f0, 0x38($s0)
/* A9413C 802409FC E6400038 */  swc1      $f0, 0x38($s2)
/* A94140 80240A00 C6000040 */  lwc1      $f0, 0x40($s0)
/* A94144 80240A04 E6400040 */  swc1      $f0, 0x40($s2)
/* A94148 80240A08 C6020034 */  lwc1      $f2, 0x34($s0)
/* A9414C 80240A0C 3C014387 */  lui       $at, 0x4387
/* A94150 80240A10 44810000 */  mtc1      $at, $f0
/* A94154 80240A14 26440038 */  addiu     $a0, $s2, 0x38
/* A94158 80240A18 46020001 */  sub.s     $f0, $f0, $f2
/* A9415C 80240A1C C6680078 */  lwc1      $f8, 0x78($s3)
/* A94160 80240A20 46804220 */  cvt.s.w   $f8, $f8
/* A94164 80240A24 44064000 */  mfc1      $a2, $f8
/* A94168 80240A28 44070000 */  mfc1      $a3, $f0
/* A9416C 80240A2C 0C00A7E7 */  jal       add_vec2D_polar
/* A94170 80240A30 26450040 */   addiu    $a1, $s2, 0x40
/* A94174 80240A34 C600003C */  lwc1      $f0, 0x3c($s0)
/* A94178 80240A38 C6620074 */  lwc1      $f2, 0x74($s3)
/* A9417C 80240A3C 468010A0 */  cvt.s.w   $f2, $f2
/* A94180 80240A40 46020000 */  add.s     $f0, $f0, $f2
/* A94184 80240A44 E640003C */  swc1      $f0, 0x3c($s2)
/* A94188 80240A48 A2740007 */  sb        $s4, 7($s3)
/* A9418C 80240A4C C6400038 */  lwc1      $f0, 0x38($s2)
/* A94190 80240A50 4600020D */  trunc.w.s $f8, $f0
/* A94194 80240A54 44024000 */  mfc1      $v0, $f8
/* A94198 80240A58 00000000 */  nop
/* A9419C 80240A5C A6620010 */  sh        $v0, 0x10($s3)
/* A941A0 80240A60 C640003C */  lwc1      $f0, 0x3c($s2)
/* A941A4 80240A64 4600020D */  trunc.w.s $f8, $f0
/* A941A8 80240A68 44024000 */  mfc1      $v0, $f8
/* A941AC 80240A6C 00000000 */  nop
/* A941B0 80240A70 A6620012 */  sh        $v0, 0x12($s3)
/* A941B4 80240A74 C6400040 */  lwc1      $f0, 0x40($s2)
/* A941B8 80240A78 4600020D */  trunc.w.s $f8, $f0
/* A941BC 80240A7C 44024000 */  mfc1      $v0, $f8
/* A941C0 80240A80 00000000 */  nop
/* A941C4 80240A84 A6620014 */  sh        $v0, 0x14($s3)
/* A941C8 80240A88 AE400044 */  sw        $zero, 0x44($s2)
/* A941CC 80240A8C AE400048 */  sw        $zero, 0x48($s2)
/* A941D0 80240A90 AE40004C */  sw        $zero, 0x4c($s2)
/* A941D4 80240A94 C6A00000 */  lwc1      $f0, ($s5)
/* A941D8 80240A98 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A941DC 80240A9C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A941E0 80240AA0 C64C0038 */  lwc1      $f12, 0x38($s2)
/* A941E4 80240AA4 C64E0040 */  lwc1      $f14, 0x40($s2)
/* A941E8 80240AA8 E6400018 */  swc1      $f0, 0x18($s2)
/* A941EC 80240AAC 8C460028 */  lw        $a2, 0x28($v0)
/* A941F0 80240AB0 0C00A720 */  jal       atan2
/* A941F4 80240AB4 8C470030 */   lw       $a3, 0x30($v0)
/* A941F8 80240AB8 E640000C */  swc1      $f0, 0xc($s2)
/* A941FC 80240ABC C6A0000C */  lwc1      $f0, 0xc($s5)
/* A94200 80240AC0 8E420000 */  lw        $v0, ($s2)
/* A94204 80240AC4 0240202D */  daddu     $a0, $s2, $zero
/* A94208 80240AC8 E640001C */  swc1      $f0, 0x1c($s2)
/* A9420C 80240ACC C6A00010 */  lwc1      $f0, 0x10($s5)
/* A94210 80240AD0 2403FFFD */  addiu     $v1, $zero, -3
/* A94214 80240AD4 E6400014 */  swc1      $f0, 0x14($s2)
/* A94218 80240AD8 C600003C */  lwc1      $f0, 0x3c($s0)
/* A9421C 80240ADC 00431024 */  and       $v0, $v0, $v1
/* A94220 80240AE0 AE420000 */  sw        $v0, ($s2)
/* A94224 80240AE4 0C00EAE8 */  jal       enable_npc_shadow
/* A94228 80240AE8 E6400064 */   swc1     $f0, 0x64($s2)
/* A9422C 80240AEC 8E420000 */  lw        $v0, ($s2)
/* A94230 80240AF0 3C03E0FF */  lui       $v1, 0xe0ff
/* A94234 80240AF4 34420800 */  ori       $v0, $v0, 0x800
/* A94238 80240AF8 AE420000 */  sw        $v0, ($s2)
/* A9423C 80240AFC 8E620000 */  lw        $v0, ($s3)
/* A94240 80240B00 3463FFFF */  ori       $v1, $v1, 0xffff
/* A94244 80240B04 00431024 */  and       $v0, $v0, $v1
/* A94248 80240B08 AE620000 */  sw        $v0, ($s3)
/* A9424C 80240B0C 2402005A */  addiu     $v0, $zero, 0x5a
/* A94250 80240B10 A642008E */  sh        $v0, 0x8e($s2)
/* A94254 80240B14 AEF10070 */  sw        $s1, 0x70($s7)
.L80240B18:
/* A94258 80240B18 0000202D */  daddu     $a0, $zero, $zero
/* A9425C 80240B1C 27B00020 */  addiu     $s0, $sp, 0x20
/* A94260 80240B20 864200A8 */  lh        $v0, 0xa8($s2)
/* A94264 80240B24 3C013FE0 */  lui       $at, 0x3fe0
/* A94268 80240B28 44810800 */  mtc1      $at, $f1
/* A9426C 80240B2C 44800000 */  mtc1      $zero, $f0
/* A94270 80240B30 44821000 */  mtc1      $v0, $f2
/* A94274 80240B34 00000000 */  nop
/* A94278 80240B38 468010A1 */  cvt.d.w   $f2, $f2
/* A9427C 80240B3C 46201082 */  mul.d     $f2, $f2, $f0
/* A94280 80240B40 00000000 */  nop
/* A94284 80240B44 0200282D */  daddu     $a1, $s0, $zero
/* A94288 80240B48 C6440038 */  lwc1      $f4, 0x38($s2)
/* A9428C 80240B4C C640003C */  lwc1      $f0, 0x3c($s2)
/* A94290 80240B50 27B10024 */  addiu     $s1, $sp, 0x24
/* A94294 80240B54 E7A40020 */  swc1      $f4, 0x20($sp)
/* A94298 80240B58 C6440040 */  lwc1      $f4, 0x40($s2)
/* A9429C 80240B5C 46000021 */  cvt.d.s   $f0, $f0
/* A942A0 80240B60 46220000 */  add.d     $f0, $f0, $f2
/* A942A4 80240B64 E7A40028 */  swc1      $f4, 0x28($sp)
/* A942A8 80240B68 C6420018 */  lwc1      $f2, 0x18($s2)
/* A942AC 80240B6C 46200020 */  cvt.s.d   $f0, $f0
/* A942B0 80240B70 E7A00024 */  swc1      $f0, 0x24($sp)
/* A942B4 80240B74 E7A20010 */  swc1      $f2, 0x10($sp)
/* A942B8 80240B78 C640000C */  lwc1      $f0, 0xc($s2)
/* A942BC 80240B7C 0220302D */  daddu     $a2, $s1, $zero
/* A942C0 80240B80 E7A00014 */  swc1      $f0, 0x14($sp)
/* A942C4 80240B84 864200A6 */  lh        $v0, 0xa6($s2)
/* A942C8 80240B88 27B40028 */  addiu     $s4, $sp, 0x28
/* A942CC 80240B8C 44820000 */  mtc1      $v0, $f0
/* A942D0 80240B90 00000000 */  nop
/* A942D4 80240B94 46800020 */  cvt.s.w   $f0, $f0
/* A942D8 80240B98 E7A00018 */  swc1      $f0, 0x18($sp)
/* A942DC 80240B9C 864200A8 */  lh        $v0, 0xa8($s2)
/* A942E0 80240BA0 0280382D */  daddu     $a3, $s4, $zero
/* A942E4 80240BA4 44820000 */  mtc1      $v0, $f0
/* A942E8 80240BA8 00000000 */  nop
/* A942EC 80240BAC 46800020 */  cvt.s.w   $f0, $f0
/* A942F0 80240BB0 0C0376B9 */  jal       npc_test_move_taller_with_slipping
/* A942F4 80240BB4 E7A0001C */   swc1     $f0, 0x1c($sp)
/* A942F8 80240BB8 54400001 */  bnel      $v0, $zero, .L80240BC0
/* A942FC 80240BBC 24160001 */   addiu    $s6, $zero, 1
.L80240BC0:
/* A94300 80240BC0 0200282D */  daddu     $a1, $s0, $zero
/* A94304 80240BC4 0220302D */  daddu     $a2, $s1, $zero
/* A94308 80240BC8 C6400038 */  lwc1      $f0, 0x38($s2)
/* A9430C 80240BCC C642003C */  lwc1      $f2, 0x3c($s2)
/* A94310 80240BD0 C6440040 */  lwc1      $f4, 0x40($s2)
/* A94314 80240BD4 3C01447A */  lui       $at, 0x447a
/* A94318 80240BD8 44813000 */  mtc1      $at, $f6
/* A9431C 80240BDC 27A2002C */  addiu     $v0, $sp, 0x2c
/* A94320 80240BE0 E7A00020 */  swc1      $f0, 0x20($sp)
/* A94324 80240BE4 E7A20024 */  swc1      $f2, 0x24($sp)
/* A94328 80240BE8 E7A40028 */  swc1      $f4, 0x28($sp)
/* A9432C 80240BEC E7A6002C */  swc1      $f6, 0x2c($sp)
/* A94330 80240BF0 AFA20010 */  sw        $v0, 0x10($sp)
/* A94334 80240BF4 8E440080 */  lw        $a0, 0x80($s2)
/* A94338 80240BF8 0C0372DF */  jal       npc_raycast_down_sides
/* A9433C 80240BFC 0280382D */   daddu    $a3, $s4, $zero
/* A94340 80240C00 10400019 */  beqz      $v0, .L80240C68
/* A94344 80240C04 00000000 */   nop
/* A94348 80240C08 C640001C */  lwc1      $f0, 0x1c($s2)
/* A9434C 80240C0C C7A2002C */  lwc1      $f2, 0x2c($sp)
/* A94350 80240C10 46000005 */  abs.s     $f0, $f0
/* A94354 80240C14 4600103C */  c.lt.s    $f2, $f0
/* A94358 80240C18 00000000 */  nop
/* A9435C 80240C1C 45000012 */  bc1f      .L80240C68
/* A94360 80240C20 00000000 */   nop
/* A94364 80240C24 C7A40024 */  lwc1      $f4, 0x24($sp)
/* A94368 80240C28 C6400064 */  lwc1      $f0, 0x64($s2)
/* A9436C 80240C2C 46002001 */  sub.s     $f0, $f4, $f0
/* A94370 80240C30 3C014034 */  lui       $at, 0x4034
/* A94374 80240C34 44811800 */  mtc1      $at, $f3
/* A94378 80240C38 44801000 */  mtc1      $zero, $f2
/* A9437C 80240C3C 46000005 */  abs.s     $f0, $f0
/* A94380 80240C40 46000021 */  cvt.d.s   $f0, $f0
/* A94384 80240C44 4622003C */  c.lt.d    $f0, $f2
/* A94388 80240C48 00000000 */  nop
/* A9438C 80240C4C 45000006 */  bc1f      .L80240C68
/* A94390 80240C50 0240202D */   daddu    $a0, $s2, $zero
/* A94394 80240C54 8E450018 */  lw        $a1, 0x18($s2)
/* A94398 80240C58 8E46000C */  lw        $a2, 0xc($s2)
/* A9439C 80240C5C 2416000A */  addiu     $s6, $zero, 0xa
/* A943A0 80240C60 0C00EA95 */  jal       npc_move_heading
/* A943A4 80240C64 E644003C */   swc1     $f4, 0x3c($s2)
.L80240C68:
/* A943A8 80240C68 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* A943AC 80240C6C 3C013FF0 */  lui       $at, 0x3ff0
/* A943B0 80240C70 44811800 */  mtc1      $at, $f3
/* A943B4 80240C74 44801000 */  mtc1      $zero, $f2
/* A943B8 80240C78 46000021 */  cvt.d.s   $f0, $f0
/* A943BC 80240C7C 4622003C */  c.lt.d    $f0, $f2
/* A943C0 80240C80 00000000 */  nop
/* A943C4 80240C84 45030001 */  bc1tl     .L80240C8C
/* A943C8 80240C88 2416000B */   addiu    $s6, $zero, 0xb
.L80240C8C:
/* A943CC 80240C8C 9642008E */  lhu       $v0, 0x8e($s2)
/* A943D0 80240C90 2442FFFF */  addiu     $v0, $v0, -1
/* A943D4 80240C94 A642008E */  sh        $v0, 0x8e($s2)
/* A943D8 80240C98 00021400 */  sll       $v0, $v0, 0x10
/* A943DC 80240C9C 58400001 */  blezl     $v0, .L80240CA4
/* A943E0 80240CA0 24160014 */   addiu    $s6, $zero, 0x14
.L80240CA4:
/* A943E4 80240CA4 56C00019 */  bnel      $s6, $zero, .L80240D0C
/* A943E8 80240CA8 AFA00010 */   sw       $zero, 0x10($sp)
/* A943EC 80240CAC 8E620070 */  lw        $v0, 0x70($s3)
/* A943F0 80240CB0 30420001 */  andi      $v0, $v0, 1
/* A943F4 80240CB4 10400009 */  beqz      $v0, .L80240CDC
/* A943F8 80240CB8 00000000 */   nop
/* A943FC 80240CBC C640004C */  lwc1      $f0, 0x4c($s2)
/* A94400 80240CC0 3C014044 */  lui       $at, 0x4044
/* A94404 80240CC4 44811800 */  mtc1      $at, $f3
/* A94408 80240CC8 44801000 */  mtc1      $zero, $f2
/* A9440C 80240CCC 46000021 */  cvt.d.s   $f0, $f0
/* A94410 80240CD0 46220000 */  add.d     $f0, $f0, $f2
/* A94414 80240CD4 46200020 */  cvt.s.d   $f0, $f0
/* A94418 80240CD8 E640004C */  swc1      $f0, 0x4c($s2)
.L80240CDC:
/* A9441C 80240CDC 8E450018 */  lw        $a1, 0x18($s2)
/* A94420 80240CE0 8E46000C */  lw        $a2, 0xc($s2)
/* A94424 80240CE4 0C00EA95 */  jal       npc_move_heading
/* A94428 80240CE8 0240202D */   daddu    $a0, $s2, $zero
/* A9442C 80240CEC C644003C */  lwc1      $f4, 0x3c($s2)
/* A94430 80240CF0 C640001C */  lwc1      $f0, 0x1c($s2)
/* A94434 80240CF4 46002100 */  add.s     $f4, $f4, $f0
/* A94438 80240CF8 C6420014 */  lwc1      $f2, 0x14($s2)
/* A9443C 80240CFC 46020001 */  sub.s     $f0, $f0, $f2
/* A94440 80240D00 E644003C */  swc1      $f4, 0x3c($s2)
/* A94444 80240D04 0809035E */  j         .L80240D78
/* A94448 80240D08 E640001C */   swc1     $f0, 0x1c($s2)
.L80240D0C:
/* A9444C 80240D0C AFA00014 */  sw        $zero, 0x14($sp)
/* A94450 80240D10 8E450038 */  lw        $a1, 0x38($s2)
/* A94454 80240D14 8E46003C */  lw        $a2, 0x3c($s2)
/* A94458 80240D18 8E470040 */  lw        $a3, 0x40($s2)
/* A9445C 80240D1C 0C01BECC */  jal       fx_walk
/* A94460 80240D20 24040002 */   addiu    $a0, $zero, 2
/* A94464 80240D24 3C01C47A */  lui       $at, 0xc47a
/* A94468 80240D28 44810000 */  mtc1      $at, $f0
/* A9446C 80240D2C AE60006C */  sw        $zero, 0x6c($s3)
/* A94470 80240D30 8E420000 */  lw        $v0, ($s2)
/* A94474 80240D34 0240202D */  daddu     $a0, $s2, $zero
/* A94478 80240D38 AE400038 */  sw        $zero, 0x38($s2)
/* A9447C 80240D3C AE400040 */  sw        $zero, 0x40($s2)
/* A94480 80240D40 AE40001C */  sw        $zero, 0x1c($s2)
/* A94484 80240D44 34420002 */  ori       $v0, $v0, 2
/* A94488 80240D48 E640003C */  swc1      $f0, 0x3c($s2)
/* A9448C 80240D4C 0C00EAFF */  jal       disable_npc_shadow
/* A94490 80240D50 AE420000 */   sw       $v0, ($s2)
/* A94494 80240D54 8E420000 */  lw        $v0, ($s2)
/* A94498 80240D58 2403F7FF */  addiu     $v1, $zero, -0x801
/* A9449C 80240D5C 00431024 */  and       $v0, $v0, $v1
/* A944A0 80240D60 AE420000 */  sw        $v0, ($s2)
/* A944A4 80240D64 8E620000 */  lw        $v0, ($s3)
/* A944A8 80240D68 3C031F00 */  lui       $v1, 0x1f00
/* A944AC 80240D6C 00431025 */  or        $v0, $v0, $v1
/* A944B0 80240D70 AE620000 */  sw        $v0, ($s3)
/* A944B4 80240D74 AEE00070 */  sw        $zero, 0x70($s7)
.L80240D78:
/* A944B8 80240D78 0000102D */  daddu     $v0, $zero, $zero
.L80240D7C:
/* A944BC 80240D7C 8FBF0050 */  lw        $ra, 0x50($sp)
/* A944C0 80240D80 8FB7004C */  lw        $s7, 0x4c($sp)
/* A944C4 80240D84 8FB60048 */  lw        $s6, 0x48($sp)
/* A944C8 80240D88 8FB50044 */  lw        $s5, 0x44($sp)
/* A944CC 80240D8C 8FB40040 */  lw        $s4, 0x40($sp)
/* A944D0 80240D90 8FB3003C */  lw        $s3, 0x3c($sp)
/* A944D4 80240D94 8FB20038 */  lw        $s2, 0x38($sp)
/* A944D8 80240D98 8FB10034 */  lw        $s1, 0x34($sp)
/* A944DC 80240D9C 8FB00030 */  lw        $s0, 0x30($sp)
/* A944E0 80240DA0 03E00008 */  jr        $ra
/* A944E4 80240DA4 27BD0058 */   addiu    $sp, $sp, 0x58
