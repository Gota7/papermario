.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80038258
/* 13658 80038258 3C03800A */  lui       $v1, %hi(D_8009E9A0)
/* 1365C 8003825C 8C63E9A0 */  lw        $v1, %lo(D_8009E9A0)($v1)
/* 13660 80038260 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 13664 80038264 AFB20018 */  sw        $s2, 0x18($sp)
/* 13668 80038268 0080902D */  daddu     $s2, $a0, $zero
/* 1366C 8003826C AFB3001C */  sw        $s3, 0x1c($sp)
/* 13670 80038270 00A0982D */  daddu     $s3, $a1, $zero
/* 13674 80038274 AFB40020 */  sw        $s4, 0x20($sp)
/* 13678 80038278 00C0A02D */  daddu     $s4, $a2, $zero
/* 1367C 8003827C AFB10014 */  sw        $s1, 0x14($sp)
/* 13680 80038280 0000882D */  daddu     $s1, $zero, $zero
/* 13684 80038284 AFBF0024 */  sw        $ra, 0x24($sp)
/* 13688 80038288 AFB00010 */  sw        $s0, 0x10($sp)
.L8003828C:
/* 1368C 8003828C 8C620000 */  lw        $v0, ($v1)
/* 13690 80038290 10400006 */  beqz      $v0, .L800382AC
/* 13694 80038294 2A220040 */   slti     $v0, $s1, 0x40
/* 13698 80038298 26310001 */  addiu     $s1, $s1, 1
/* 1369C 8003829C 2A220040 */  slti      $v0, $s1, 0x40
/* 136A0 800382A0 1440FFFA */  bnez      $v0, .L8003828C
/* 136A4 800382A4 24630004 */   addiu    $v1, $v1, 4
/* 136A8 800382A8 2A220040 */  slti      $v0, $s1, 0x40
.L800382AC:
/* 136AC 800382AC 14400003 */  bnez      $v0, .L800382BC
/* 136B0 800382B0 00000000 */   nop
.L800382B4:
/* 136B4 800382B4 0800E0AD */  j         .L800382B4
/* 136B8 800382B8 00000000 */   nop
.L800382BC:
/* 136BC 800382BC 0C00AB29 */  jal       func_8002ACA4
/* 136C0 800382C0 24040340 */   addiu    $a0, $zero, 0x340
/* 136C4 800382C4 00112080 */  sll       $a0, $s1, 2
/* 136C8 800382C8 3C03800A */  lui       $v1, %hi(D_8009E9A0)
/* 136CC 800382CC 8C63E9A0 */  lw        $v1, %lo(D_8009E9A0)($v1)
/* 136D0 800382D0 3C05800A */  lui       $a1, %hi(D_8009A5E4)
/* 136D4 800382D4 24A5A5E4 */  addiu     $a1, $a1, %lo(D_8009A5E4)
/* 136D8 800382D8 00832021 */  addu      $a0, $a0, $v1
/* 136DC 800382DC 94A30000 */  lhu       $v1, ($a1)
/* 136E0 800382E0 0040802D */  daddu     $s0, $v0, $zero
/* 136E4 800382E4 AC900000 */  sw        $s0, ($a0)
/* 136E8 800382E8 24630001 */  addiu     $v1, $v1, 1
/* 136EC 800382EC 16000003 */  bnez      $s0, .L800382FC
/* 136F0 800382F0 A4A30000 */   sh       $v1, ($a1)
.L800382F4:
/* 136F4 800382F4 0800E0BD */  j         .L800382F4
/* 136F8 800382F8 00000000 */   nop
.L800382FC:
/* 136FC 800382FC 3C030041 */  lui       $v1, 0x41
/* 13700 80038300 8E420000 */  lw        $v0, ($s2)
/* 13704 80038304 34630011 */  ori       $v1, $v1, 0x11
/* 13708 80038308 00431825 */  or        $v1, $v0, $v1
/* 1370C 8003830C 12800004 */  beqz      $s4, .L80038320
/* 13710 80038310 AE030000 */   sw       $v1, ($s0)
/* 13714 80038314 3C024000 */  lui       $v0, 0x4000
/* 13718 80038318 00621025 */  or        $v0, $v1, $v0
/* 1371C 8003831C AE020000 */  sw        $v0, ($s0)
.L80038320:
/* 13720 80038320 0000202D */  daddu     $a0, $zero, $zero
/* 13724 80038324 3C013F80 */  lui       $at, 0x3f80
/* 13728 80038328 44810000 */  mtc1      $at, $f0
/* 1372C 8003832C 3C014080 */  lui       $at, 0x4080
/* 13730 80038330 44811000 */  mtc1      $at, $f2
/* 13734 80038334 24020020 */  addiu     $v0, $zero, 0x20
/* 13738 80038338 A60200A6 */  sh        $v0, 0xa6($s0)
/* 1373C 8003833C 24020040 */  addiu     $v0, $zero, 0x40
/* 13740 80038340 A60200A8 */  sh        $v0, 0xa8($s0)
/* 13744 80038344 2402000D */  addiu     $v0, $zero, 0xd
/* 13748 80038348 A20200AA */  sb        $v0, 0xaa($s0)
/* 1374C 8003834C 240200FF */  addiu     $v0, $zero, 0xff
/* 13750 80038350 AE000020 */  sw        $zero, 0x20($s0)
/* 13754 80038354 AE00000C */  sw        $zero, 0xc($s0)
/* 13758 80038358 AE00001C */  sw        $zero, 0x1c($s0)
/* 1375C 8003835C AE000038 */  sw        $zero, 0x38($s0)
/* 13760 80038360 AE00003C */  sw        $zero, 0x3c($s0)
/* 13764 80038364 AE000040 */  sw        $zero, 0x40($s0)
/* 13768 80038368 AE00006C */  sw        $zero, 0x6c($s0)
/* 1376C 8003836C AE000070 */  sw        $zero, 0x70($s0)
/* 13770 80038370 AE000074 */  sw        $zero, 0x74($s0)
/* 13774 80038374 AE000050 */  sw        $zero, 0x50($s0)
/* 13778 80038378 AE000044 */  sw        $zero, 0x44($s0)
/* 1377C 8003837C AE000048 */  sw        $zero, 0x48($s0)
/* 13780 80038380 AE00004C */  sw        $zero, 0x4c($s0)
/* 13784 80038384 A6000090 */  sh        $zero, 0x90($s0)
/* 13788 80038388 A6000092 */  sh        $zero, 0x92($s0)
/* 1378C 8003838C A6000094 */  sh        $zero, 0x94($s0)
/* 13790 80038390 A6000096 */  sh        $zero, 0x96($s0)
/* 13794 80038394 A20000AB */  sb        $zero, 0xab($s0)
/* 13798 80038398 A20200AC */  sb        $v0, 0xac($s0)
/* 1379C 8003839C A20200AD */  sb        $v0, 0xad($s0)
/* 137A0 800383A0 E6000014 */  swc1      $f0, 0x14($s0)
/* 137A4 800383A4 E6020018 */  swc1      $f2, 0x18($s0)
/* 137A8 800383A8 E6000054 */  swc1      $f0, 0x54($s0)
/* 137AC 800383AC E6000058 */  swc1      $f0, 0x58($s0)
/* 137B0 800383B0 E600005C */  swc1      $f0, 0x5c($s0)
/* 137B4 800383B4 8E420004 */  lw        $v0, 4($s2)
/* 137B8 800383B8 0200182D */  daddu     $v1, $s0, $zero
/* 137BC 800383BC E6000030 */  swc1      $f0, 0x30($s0)
/* 137C0 800383C0 AE000034 */  sw        $zero, 0x34($s0)
/* 137C4 800383C4 A6000098 */  sh        $zero, 0x98($s0)
/* 137C8 800383C8 AE020028 */  sw        $v0, 0x28($s0)
/* 137CC 800383CC 3C020002 */  lui       $v0, 2
/* 137D0 800383D0 A60000A2 */  sh        $zero, 0xa2($s0)
/* 137D4 800383D4 AE020080 */  sw        $v0, 0x80($s0)
/* 137D8 800383D8 2402FFFF */  addiu     $v0, $zero, -1
/* 137DC 800383DC A6000088 */  sh        $zero, 0x88($s0)
/* 137E0 800383E0 A600008A */  sh        $zero, 0x8a($s0)
/* 137E4 800383E4 A600008C */  sh        $zero, 0x8c($s0)
/* 137E8 800383E8 A6020084 */  sh        $v0, 0x84($s0)
/* 137EC 800383EC A6020086 */  sh        $v0, 0x86($s0)
/* 137F0 800383F0 A20000B4 */  sb        $zero, 0xb4($s0)
/* 137F4 800383F4 A20000B5 */  sb        $zero, 0xb5($s0)
/* 137F8 800383F8 AE000318 */  sw        $zero, 0x318($s0)
/* 137FC 800383FC AE00031C */  sw        $zero, 0x31c($s0)
/* 13800 80038400 E6000320 */  swc1      $f0, 0x320($s0)
.L80038404:
/* 13804 80038404 AC600324 */  sw        $zero, 0x324($v1)
/* 13808 80038408 02041021 */  addu      $v0, $s0, $a0
/* 1380C 8003840C 24840001 */  addiu     $a0, $a0, 1
/* 13810 80038410 A040032C */  sb        $zero, 0x32c($v0)
/* 13814 80038414 28820002 */  slti      $v0, $a0, 2
/* 13818 80038418 1440FFFA */  bnez      $v0, .L80038404
/* 1381C 8003841C 24630004 */   addiu    $v1, $v1, 4
/* 13820 80038420 8E420008 */  lw        $v0, 8($s2)
/* 13824 80038424 14400004 */  bnez      $v0, .L80038438
/* 13828 80038428 AE020004 */   sw       $v0, 4($s0)
/* 1382C 8003842C 3C028004 */  lui       $v0, %hi(func_80038130)
/* 13830 80038430 24428130 */  addiu     $v0, $v0, %lo(func_80038130)
/* 13834 80038434 AE020004 */  sw        $v0, 4($s0)
.L80038438:
/* 13838 80038438 8E42000C */  lw        $v0, 0xc($s2)
/* 1383C 8003843C 14400004 */  bnez      $v0, .L80038450
/* 13840 80038440 AE020008 */   sw       $v0, 8($s0)
/* 13844 80038444 3C028004 */  lui       $v0, %hi(func_80038130)
/* 13848 80038448 24428130 */  addiu     $v0, $v0, %lo(func_80038130)
/* 1384C 8003844C AE020008 */  sw        $v0, 8($s0)
.L80038450:
/* 13850 80038450 16800015 */  bnez      $s4, .L800384A8
/* 13854 80038454 3C020100 */   lui      $v0, 0x100
/* 13858 80038458 8E030000 */  lw        $v1, ($s0)
/* 1385C 8003845C 00621024 */  and       $v0, $v1, $v0
/* 13860 80038460 1440000F */  bnez      $v0, .L800384A0
/* 13864 80038464 AE1300B0 */   sw       $s3, 0xb0($s0)
/* 13868 80038468 3C020400 */  lui       $v0, 0x400
/* 1386C 8003846C 00621024 */  and       $v0, $v1, $v0
/* 13870 80038470 14400004 */  bnez      $v0, .L80038484
/* 13874 80038474 0260282D */   daddu    $a1, $s3, $zero
/* 13878 80038478 8E040028 */  lw        $a0, 0x28($s0)
/* 1387C 8003847C 0800E124 */  j         .L80038490
/* 13880 80038480 00000000 */   nop
.L80038484:
/* 13884 80038484 8E020028 */  lw        $v0, 0x28($s0)
/* 13888 80038488 3C048000 */  lui       $a0, 0x8000
/* 1388C 8003848C 00442025 */  or        $a0, $v0, $a0
.L80038490:
/* 13890 80038490 0C04470F */  jal       func_80111C3C
/* 13894 80038494 00000000 */   nop
/* 13898 80038498 0800E12A */  j         .L800384A8
/* 1389C 8003849C AE020024 */   sw       $v0, 0x24($s0)
.L800384A0:
/* 138A0 800384A0 34620002 */  ori       $v0, $v1, 2
/* 138A4 800384A4 AE020000 */  sw        $v0, ($s0)
.L800384A8:
/* 138A8 800384A8 8E050038 */  lw        $a1, 0x38($s0)
/* 138AC 800384AC 8E06003C */  lw        $a2, 0x3c($s0)
/* 138B0 800384B0 8E070040 */  lw        $a3, 0x40($s0)
/* 138B4 800384B4 0C045D1C */  jal       func_80117470
/* 138B8 800384B8 0000202D */   daddu    $a0, $zero, $zero
/* 138BC 800384BC 3C013F80 */  lui       $at, 0x3f80
/* 138C0 800384C0 44810000 */  mtc1      $at, $f0
/* 138C4 800384C4 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 138C8 800384C8 8C63417C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 138CC 800384CC AE020078 */  sw        $v0, 0x78($s0)
/* 138D0 800384D0 E600007C */  swc1      $f0, 0x7c($s0)
/* 138D4 800384D4 80620070 */  lb        $v0, 0x70($v1)
/* 138D8 800384D8 54400001 */  bnel      $v0, $zero, .L800384E0
/* 138DC 800384DC 36310800 */   ori      $s1, $s1, 0x800
.L800384E0:
/* 138E0 800384E0 0220102D */  daddu     $v0, $s1, $zero
/* 138E4 800384E4 8FBF0024 */  lw        $ra, 0x24($sp)
/* 138E8 800384E8 8FB40020 */  lw        $s4, 0x20($sp)
/* 138EC 800384EC 8FB3001C */  lw        $s3, 0x1c($sp)
/* 138F0 800384F0 8FB20018 */  lw        $s2, 0x18($sp)
/* 138F4 800384F4 8FB10014 */  lw        $s1, 0x14($sp)
/* 138F8 800384F8 8FB00010 */  lw        $s0, 0x10($sp)
/* 138FC 800384FC 03E00008 */  jr        $ra
/* 13900 80038500 27BD0028 */   addiu    $sp, $sp, 0x28
