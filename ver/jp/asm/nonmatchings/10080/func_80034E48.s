.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80034E48
/* 10248 80034E48 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1024C 80034E4C AFB10014 */  sw        $s1, 0x14($sp)
/* 10250 80034E50 3C11800A */  lui       $s1, %hi(D_8009E741)
/* 10254 80034E54 2631E741 */  addiu     $s1, $s1, %lo(D_8009E741)
/* 10258 80034E58 AFBF0020 */  sw        $ra, 0x20($sp)
/* 1025C 80034E5C AFB3001C */  sw        $s3, 0x1c($sp)
/* 10260 80034E60 AFB20018 */  sw        $s2, 0x18($sp)
/* 10264 80034E64 AFB00010 */  sw        $s0, 0x10($sp)
/* 10268 80034E68 82230000 */  lb        $v1, ($s1)
/* 1026C 80034E6C 24120001 */  addiu     $s2, $zero, 1
/* 10270 80034E70 10720030 */  beq       $v1, $s2, .L80034F34
/* 10274 80034E74 28620002 */   slti     $v0, $v1, 2
/* 10278 80034E78 10400005 */  beqz      $v0, .L80034E90
/* 1027C 80034E7C 24130002 */   addiu    $s3, $zero, 2
/* 10280 80034E80 10600009 */  beqz      $v1, .L80034EA8
/* 10284 80034E84 00000000 */   nop
/* 10288 80034E88 0800D454 */  j         .L80035150
/* 1028C 80034E8C 00000000 */   nop
.L80034E90:
/* 10290 80034E90 10730033 */  beq       $v1, $s3, .L80034F60
/* 10294 80034E94 24020003 */   addiu    $v0, $zero, 3
/* 10298 80034E98 10620055 */  beq       $v1, $v0, .L80034FF0
/* 1029C 80034E9C 00000000 */   nop
/* 102A0 80034EA0 0800D454 */  j         .L80035150
/* 102A4 80034EA4 00000000 */   nop
.L80034EA8:
/* 102A8 80034EA8 0C037DC8 */  jal       func_800DF720
/* 102AC 80034EAC 00000000 */   nop
/* 102B0 80034EB0 0C00E57C */  jal       func_800395F0
/* 102B4 80034EB4 00000000 */   nop
/* 102B8 80034EB8 0C00F879 */  jal       func_8003E1E4
/* 102BC 80034EBC 00000000 */   nop
/* 102C0 80034EC0 0C016680 */  jal       func_80059A00
/* 102C4 80034EC4 00000000 */   nop
/* 102C8 80034EC8 3C10800A */  lui       $s0, %hi(D_8009E742)
/* 102CC 80034ECC 2610E742 */  addiu     $s0, $s0, %lo(D_8009E742)
/* 102D0 80034ED0 86020000 */  lh        $v0, ($s0)
/* 102D4 80034ED4 96030000 */  lhu       $v1, ($s0)
/* 102D8 80034ED8 284200FF */  slti      $v0, $v0, 0xff
/* 102DC 80034EDC 10400013 */  beqz      $v0, .L80034F2C
/* 102E0 80034EE0 24620014 */   addiu    $v0, $v1, 0x14
/* 102E4 80034EE4 A6020000 */  sh        $v0, ($s0)
/* 102E8 80034EE8 00021400 */  sll       $v0, $v0, 0x10
/* 102EC 80034EEC 00021403 */  sra       $v0, $v0, 0x10
/* 102F0 80034EF0 28420100 */  slti      $v0, $v0, 0x100
/* 102F4 80034EF4 14400002 */  bnez      $v0, .L80034F00
/* 102F8 80034EF8 240200FF */   addiu    $v0, $zero, 0xff
/* 102FC 80034EFC A6020000 */  sh        $v0, ($s0)
.L80034F00:
/* 10300 80034F00 86020000 */  lh        $v0, ($s0)
/* 10304 80034F04 44820000 */  mtc1      $v0, $f0
/* 10308 80034F08 00000000 */  nop
/* 1030C 80034F0C 46800020 */  cvt.s.w   $f0, $f0
/* 10310 80034F10 44050000 */  mfc1      $a1, $f0
/* 10314 80034F14 0C04F38E */  jal       func_8013CE38
/* 10318 80034F18 0000202D */   daddu    $a0, $zero, $zero
/* 1031C 80034F1C 86030000 */  lh        $v1, ($s0)
/* 10320 80034F20 240200FF */  addiu     $v0, $zero, 0xff
/* 10324 80034F24 1462008A */  bne       $v1, $v0, .L80035150
/* 10328 80034F28 00000000 */   nop
.L80034F2C:
/* 1032C 80034F2C 0800D454 */  j         .L80035150
/* 10330 80034F30 A2320000 */   sb       $s2, ($s1)
.L80034F34:
/* 10334 80034F34 24020005 */  addiu     $v0, $zero, 5
/* 10338 80034F38 3C04800A */  lui       $a0, %hi(D_8009A630)
/* 1033C 80034F3C 2484A630 */  addiu     $a0, $a0, %lo(D_8009A630)
/* 10340 80034F40 3C01800A */  lui       $at, %hi(D_8009E740)
/* 10344 80034F44 A022E740 */  sb        $v0, %lo(D_8009E740)($at)
/* 10348 80034F48 8C820000 */  lw        $v0, ($a0)
/* 1034C 80034F4C 24030002 */  addiu     $v1, $zero, 2
/* 10350 80034F50 A2230000 */  sb        $v1, ($s1)
/* 10354 80034F54 34420008 */  ori       $v0, $v0, 8
/* 10358 80034F58 0800D454 */  j         .L80035150
/* 1035C 80034F5C AC820000 */   sw       $v0, ($a0)
.L80034F60:
/* 10360 80034F60 3C10800A */  lui       $s0, %hi(D_8009E740)
/* 10364 80034F64 2610E740 */  addiu     $s0, $s0, %lo(D_8009E740)
/* 10368 80034F68 92020000 */  lbu       $v0, ($s0)
/* 1036C 80034F6C 2442FFFF */  addiu     $v0, $v0, -1
/* 10370 80034F70 A2020000 */  sb        $v0, ($s0)
/* 10374 80034F74 00021600 */  sll       $v0, $v0, 0x18
/* 10378 80034F78 14400075 */  bnez      $v0, .L80035150
/* 1037C 80034F7C 00000000 */   nop
/* 10380 80034F80 3C048007 */  lui       $a0, %hi(D_80077950)
/* 10384 80034F84 24847950 */  addiu     $a0, $a0, %lo(D_80077950)
/* 10388 80034F88 0C017BE8 */  jal       func_8005EFA0
/* 1038C 80034F8C 24050002 */   addiu    $a1, $zero, 2
/* 10390 80034F90 3C02800A */  lui       $v0, %hi(D_8009A638)
/* 10394 80034F94 8C42A638 */  lw        $v0, %lo(D_8009A638)($v0)
/* 10398 80034F98 8C430008 */  lw        $v1, 8($v0)
/* 1039C 80034F9C 3C02800A */  lui       $v0, %hi(D_8009A62C)
/* 103A0 80034FA0 8C42A62C */  lw        $v0, %lo(D_8009A62C)($v0)
/* 103A4 80034FA4 14620008 */  bne       $v1, $v0, .L80034FC8
/* 103A8 80034FA8 24040003 */   addiu    $a0, $zero, 3
/* 103AC 80034FAC 3C02800A */  lui       $v0, %hi(D_8009A630)
/* 103B0 80034FB0 2442A630 */  addiu     $v0, $v0, %lo(D_8009A630)
/* 103B4 80034FB4 8C430000 */  lw        $v1, ($v0)
/* 103B8 80034FB8 2404FFF7 */  addiu     $a0, $zero, -9
/* 103BC 80034FBC 00641824 */  and       $v1, $v1, $a0
/* 103C0 80034FC0 0800D454 */  j         .L80035150
/* 103C4 80034FC4 AC430000 */   sw       $v1, ($v0)
.L80034FC8:
/* 103C8 80034FC8 3C02800A */  lui       $v0, %hi(D_8009A630)
/* 103CC 80034FCC 2442A630 */  addiu     $v0, $v0, %lo(D_8009A630)
/* 103D0 80034FD0 8C430000 */  lw        $v1, ($v0)
/* 103D4 80034FD4 34630008 */  ori       $v1, $v1, 8
/* 103D8 80034FD8 0C0533DD */  jal       func_8014CF74
/* 103DC 80034FDC AC430000 */   sw       $v1, ($v0)
/* 103E0 80034FE0 24020003 */  addiu     $v0, $zero, 3
/* 103E4 80034FE4 A2120000 */  sb        $s2, ($s0)
/* 103E8 80034FE8 0800D454 */  j         .L80035150
/* 103EC 80034FEC A2220000 */   sb       $v0, ($s1)
.L80034FF0:
/* 103F0 80034FF0 3C10800A */  lui       $s0, %hi(D_8009E740)
/* 103F4 80034FF4 2610E740 */  addiu     $s0, $s0, %lo(D_8009E740)
/* 103F8 80034FF8 82020000 */  lb        $v0, ($s0)
/* 103FC 80034FFC 92030000 */  lbu       $v1, ($s0)
/* 10400 80035000 04400042 */  bltz      $v0, .L8003510C
/* 10404 80035004 2462FFFF */   addiu    $v0, $v1, -1
/* 10408 80035008 A2020000 */  sb        $v0, ($s0)
/* 1040C 8003500C 00021600 */  sll       $v0, $v0, 0x18
/* 10410 80035010 1440003B */  bnez      $v0, .L80035100
/* 10414 80035014 2402FFFF */   addiu    $v0, $zero, -1
/* 10418 80035018 0C053A3A */  jal       func_8014E8E8
/* 1041C 8003501C A2020000 */   sb       $v0, ($s0)
/* 10420 80035020 0C00EB9A */  jal       func_8003AE68
/* 10424 80035024 00000000 */   nop
/* 10428 80035028 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 1042C 8003502C 8C42417C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 10430 80035030 0C016AD4 */  jal       func_8005AB50
/* 10434 80035034 A0530070 */   sb       $s3, 0x70($v0)
/* 10438 80035038 0C00AB18 */  jal       func_8002AC60
/* 1043C 8003503C 00000000 */   nop
/* 10440 80035040 0C0539C8 */  jal       func_8014E720
/* 10444 80035044 0000202D */   daddu    $a0, $zero, $zero
/* 10448 80035048 0C044512 */  jal       func_80111448
/* 1044C 8003504C 0000202D */   daddu    $a0, $zero, $zero
/* 10450 80035050 0C046BD5 */  jal       func_8011AF54
/* 10454 80035054 00000000 */   nop
/* 10458 80035058 0C05343C */  jal       func_8014D0F0
/* 1045C 8003505C 00000000 */   nop
/* 10460 80035060 0C052BAA */  jal       func_8014AEA8
/* 10464 80035064 00000000 */   nop
/* 10468 80035068 0C049770 */  jal       func_80125DC0
/* 1046C 8003506C 00000000 */   nop
/* 10470 80035070 0C048D0D */  jal       func_80123434
/* 10474 80035074 00000000 */   nop
/* 10478 80035078 0C04A0B2 */  jal       func_801282C8
/* 1047C 8003507C 00000000 */   nop
/* 10480 80035080 3C048020 */  lui       $a0, %hi(D_80200000)
/* 10484 80035084 24840000 */  addiu     $a0, $a0, %lo(D_80200000)
/* 10488 80035088 0C0528E6 */  jal       func_8014A398
/* 1048C 8003508C 3C050002 */   lui      $a1, 2
/* 10490 80035090 0C05186C */  jal       func_801461B0
/* 10494 80035094 00000000 */   nop
/* 10498 80035098 0C03A6D4 */  jal       func_800E9B50
/* 1049C 8003509C 00000000 */   nop
/* 104A0 800350A0 0C04D85C */  jal       func_80136170
/* 104A4 800350A4 00000000 */   nop
/* 104A8 800350A8 0C0B0C77 */  jal       func_802C31DC
/* 104AC 800350AC 00000000 */   nop
/* 104B0 800350B0 0C00E05F */  jal       func_8003817C
/* 104B4 800350B4 00000000 */   nop
/* 104B8 800350B8 0C0457B2 */  jal       func_80115EC8
/* 104BC 800350BC 0000202D */   daddu    $a0, $zero, $zero
/* 104C0 800350C0 0C0529CC */  jal       func_8014A730
/* 104C4 800350C4 00000000 */   nop
/* 104C8 800350C8 3C048007 */  lui       $a0, %hi(D_8007795C)
/* 104CC 800350CC 0C017F64 */  jal       func_8005FD90
/* 104D0 800350D0 2484795C */   addiu    $a0, $a0, %lo(D_8007795C)
/* 104D4 800350D4 0C09102C */  jal       func_802440B0
/* 104D8 800350D8 24040001 */   addiu    $a0, $zero, 1
/* 104DC 800350DC 240400FF */  addiu     $a0, $zero, 0xff
/* 104E0 800350E0 3C06800A */  lui       $a2, %hi(D_8009A630)
/* 104E4 800350E4 24C6A630 */  addiu     $a2, $a2, %lo(D_8009A630)
/* 104E8 800350E8 2403FFF7 */  addiu     $v1, $zero, -9
/* 104EC 800350EC 8CC20000 */  lw        $v0, ($a2)
/* 104F0 800350F0 3C05437F */  lui       $a1, 0x437f
/* 104F4 800350F4 00431024 */  and       $v0, $v0, $v1
/* 104F8 800350F8 0C04F38E */  jal       func_8013CE38
/* 104FC 800350FC ACC20000 */   sw       $v0, ($a2)
.L80035100:
/* 10500 80035100 82020000 */  lb        $v0, ($s0)
/* 10504 80035104 04410012 */  bgez      $v0, .L80035150
/* 10508 80035108 00000000 */   nop
.L8003510C:
/* 1050C 8003510C 0C090A5C */  jal       func_80242970
/* 10510 80035110 00000000 */   nop
/* 10514 80035114 3C03800A */  lui       $v1, %hi(D_8009E742)
/* 10518 80035118 2463E742 */  addiu     $v1, $v1, %lo(D_8009E742)
/* 1051C 8003511C 94620000 */  lhu       $v0, ($v1)
/* 10520 80035120 2442FFEC */  addiu     $v0, $v0, -0x14
/* 10524 80035124 A4620000 */  sh        $v0, ($v1)
/* 10528 80035128 00021400 */  sll       $v0, $v0, 0x10
/* 1052C 8003512C 04420001 */  bltzl     $v0, .L80035134
/* 10530 80035130 A4600000 */   sh       $zero, ($v1)
.L80035134:
/* 10534 80035134 84620000 */  lh        $v0, ($v1)
/* 10538 80035138 44820000 */  mtc1      $v0, $f0
/* 1053C 8003513C 00000000 */  nop
/* 10540 80035140 46800020 */  cvt.s.w   $f0, $f0
/* 10544 80035144 44050000 */  mfc1      $a1, $f0
/* 10548 80035148 0C04F38E */  jal       func_8013CE38
/* 1054C 8003514C 0000202D */   daddu    $a0, $zero, $zero
.L80035150:
/* 10550 80035150 8FBF0020 */  lw        $ra, 0x20($sp)
/* 10554 80035154 8FB3001C */  lw        $s3, 0x1c($sp)
/* 10558 80035158 8FB20018 */  lw        $s2, 0x18($sp)
/* 1055C 8003515C 8FB10014 */  lw        $s1, 0x14($sp)
/* 10560 80035160 8FB00010 */  lw        $s0, 0x10($sp)
/* 10564 80035164 03E00008 */  jr        $ra
/* 10568 80035168 27BD0028 */   addiu    $sp, $sp, 0x28
