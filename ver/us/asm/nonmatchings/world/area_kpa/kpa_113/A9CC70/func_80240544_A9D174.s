.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel jtbl_80241CF8_A9E928
.word L80240950_A9D580, L8024095C_A9D58C, L8024095C_A9D58C, L8024095C_A9D58C, L8024095C_A9D58C, L8024095C_A9D58C, L8024095C_A9D58C, L8024095C_A9D58C, L80240950_A9D580, L8024095C_A9D58C, L80240950_A9D580, L8024095C_A9D58C, L80240950_A9D580, L8024095C_A9D58C, L80240950_A9D580, L8024095C_A9D58C, L8024095C_A9D58C, L8024095C_A9D58C, L80240950_A9D580, L8024095C_A9D58C, L80240950_A9D580, 0

.section .text

glabel func_80240544_A9D174
/* A9D174 80240544 27BDFF90 */  addiu     $sp, $sp, -0x70
/* A9D178 80240548 AFB3005C */  sw        $s3, 0x5c($sp)
/* A9D17C 8024054C 0080982D */  daddu     $s3, $a0, $zero
/* A9D180 80240550 AFBF0068 */  sw        $ra, 0x68($sp)
/* A9D184 80240554 AFB50064 */  sw        $s5, 0x64($sp)
/* A9D188 80240558 AFB40060 */  sw        $s4, 0x60($sp)
/* A9D18C 8024055C AFB20058 */  sw        $s2, 0x58($sp)
/* A9D190 80240560 AFB10054 */  sw        $s1, 0x54($sp)
/* A9D194 80240564 AFB00050 */  sw        $s0, 0x50($sp)
/* A9D198 80240568 8E710148 */  lw        $s1, 0x148($s3)
/* A9D19C 8024056C 86240008 */  lh        $a0, 8($s1)
/* A9D1A0 80240570 0C00EABB */  jal       get_npc_unsafe
/* A9D1A4 80240574 00A0802D */   daddu    $s0, $a1, $zero
/* A9D1A8 80240578 8E63000C */  lw        $v1, 0xc($s3)
/* A9D1AC 8024057C 0260202D */  daddu     $a0, $s3, $zero
/* A9D1B0 80240580 8C650000 */  lw        $a1, ($v1)
/* A9D1B4 80240584 0C0B1EAF */  jal       evt_get_variable
/* A9D1B8 80240588 0040902D */   daddu    $s2, $v0, $zero
/* A9D1BC 8024058C AFA00028 */  sw        $zero, 0x28($sp)
/* A9D1C0 80240590 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A9D1C4 80240594 8C630030 */  lw        $v1, 0x30($v1)
/* A9D1C8 80240598 AFA3002C */  sw        $v1, 0x2c($sp)
/* A9D1CC 8024059C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A9D1D0 802405A0 8C63001C */  lw        $v1, 0x1c($v1)
/* A9D1D4 802405A4 AFA30030 */  sw        $v1, 0x30($sp)
/* A9D1D8 802405A8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A9D1DC 802405AC 8C630024 */  lw        $v1, 0x24($v1)
/* A9D1E0 802405B0 AFA30034 */  sw        $v1, 0x34($sp)
/* A9D1E4 802405B4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A9D1E8 802405B8 8C630028 */  lw        $v1, 0x28($v1)
/* A9D1EC 802405BC 27B50028 */  addiu     $s5, $sp, 0x28
/* A9D1F0 802405C0 AFA30038 */  sw        $v1, 0x38($sp)
/* A9D1F4 802405C4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A9D1F8 802405C8 3C0142C8 */  lui       $at, 0x42c8
/* A9D1FC 802405CC 44810000 */  mtc1      $at, $f0
/* A9D200 802405D0 8C63002C */  lw        $v1, 0x2c($v1)
/* A9D204 802405D4 0040A02D */  daddu     $s4, $v0, $zero
/* A9D208 802405D8 E7A00040 */  swc1      $f0, 0x40($sp)
/* A9D20C 802405DC A7A00044 */  sh        $zero, 0x44($sp)
/* A9D210 802405E0 12000009 */  beqz      $s0, .L80240608
/* A9D214 802405E4 AFA3003C */   sw       $v1, 0x3c($sp)
/* A9D218 802405E8 864300A8 */  lh        $v1, 0xa8($s2)
/* A9D21C 802405EC 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A9D220 802405F0 AE20008C */  sw        $zero, 0x8c($s1)
/* A9D224 802405F4 A22000B5 */  sb        $zero, 0xb5($s1)
/* A9D228 802405F8 34420008 */  ori       $v0, $v0, 8
/* A9D22C 802405FC AE230084 */  sw        $v1, 0x84($s1)
/* A9D230 80240600 08090186 */  j         .L80240618
/* A9D234 80240604 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240608:
/* A9D238 80240608 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A9D23C 8024060C 30420004 */  andi      $v0, $v0, 4
/* A9D240 80240610 10400047 */  beqz      $v0, .L80240730
/* A9D244 80240614 00000000 */   nop
.L80240618:
/* A9D248 80240618 AE600070 */  sw        $zero, 0x70($s3)
/* A9D24C 8024061C A640008E */  sh        $zero, 0x8e($s2)
/* A9D250 80240620 8E2300CC */  lw        $v1, 0xcc($s1)
/* A9D254 80240624 2404F7FF */  addiu     $a0, $zero, -0x801
/* A9D258 80240628 A2200007 */  sb        $zero, 7($s1)
/* A9D25C 8024062C 8E420000 */  lw        $v0, ($s2)
/* A9D260 80240630 8C630000 */  lw        $v1, ($v1)
/* A9D264 80240634 00441024 */  and       $v0, $v0, $a0
/* A9D268 80240638 AE420000 */  sw        $v0, ($s2)
/* A9D26C 8024063C AE430028 */  sw        $v1, 0x28($s2)
/* A9D270 80240640 96220086 */  lhu       $v0, 0x86($s1)
/* A9D274 80240644 A64200A8 */  sh        $v0, 0xa8($s2)
/* A9D278 80240648 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A9D27C 8024064C AE200090 */  sw        $zero, 0x90($s1)
/* A9D280 80240650 8C420034 */  lw        $v0, 0x34($v0)
/* A9D284 80240654 14400006 */  bnez      $v0, .L80240670
/* A9D288 80240658 2403FDFF */   addiu    $v1, $zero, -0x201
/* A9D28C 8024065C 8E420000 */  lw        $v0, ($s2)
/* A9D290 80240660 2403FFF7 */  addiu     $v1, $zero, -9
/* A9D294 80240664 34420200 */  ori       $v0, $v0, 0x200
/* A9D298 80240668 0809019F */  j         .L8024067C
/* A9D29C 8024066C 00431024 */   and      $v0, $v0, $v1
.L80240670:
/* A9D2A0 80240670 8E420000 */  lw        $v0, ($s2)
/* A9D2A4 80240674 00431024 */  and       $v0, $v0, $v1
/* A9D2A8 80240678 34420008 */  ori       $v0, $v0, 8
.L8024067C:
/* A9D2AC 8024067C AE420000 */  sw        $v0, ($s2)
/* A9D2B0 80240680 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A9D2B4 80240684 30420004 */  andi      $v0, $v0, 4
/* A9D2B8 80240688 1040001E */  beqz      $v0, .L80240704
/* A9D2BC 8024068C 24040002 */   addiu    $a0, $zero, 2
/* A9D2C0 80240690 0240282D */  daddu     $a1, $s2, $zero
/* A9D2C4 80240694 0000302D */  daddu     $a2, $zero, $zero
/* A9D2C8 80240698 24020063 */  addiu     $v0, $zero, 0x63
/* A9D2CC 8024069C AE620070 */  sw        $v0, 0x70($s3)
/* A9D2D0 802406A0 AE600074 */  sw        $zero, 0x74($s3)
/* A9D2D4 802406A4 864300A8 */  lh        $v1, 0xa8($s2)
/* A9D2D8 802406A8 3C013F80 */  lui       $at, 0x3f80
/* A9D2DC 802406AC 44810000 */  mtc1      $at, $f0
/* A9D2E0 802406B0 3C014000 */  lui       $at, 0x4000
/* A9D2E4 802406B4 44811000 */  mtc1      $at, $f2
/* A9D2E8 802406B8 3C01C1A0 */  lui       $at, 0xc1a0
/* A9D2EC 802406BC 44812000 */  mtc1      $at, $f4
/* A9D2F0 802406C0 24020028 */  addiu     $v0, $zero, 0x28
/* A9D2F4 802406C4 AFA2001C */  sw        $v0, 0x1c($sp)
/* A9D2F8 802406C8 44833000 */  mtc1      $v1, $f6
/* A9D2FC 802406CC 00000000 */  nop
/* A9D300 802406D0 468031A0 */  cvt.s.w   $f6, $f6
/* A9D304 802406D4 44073000 */  mfc1      $a3, $f6
/* A9D308 802406D8 27A20048 */  addiu     $v0, $sp, 0x48
/* A9D30C 802406DC AFA20020 */  sw        $v0, 0x20($sp)
/* A9D310 802406E0 E7A00010 */  swc1      $f0, 0x10($sp)
/* A9D314 802406E4 E7A20014 */  swc1      $f2, 0x14($sp)
/* A9D318 802406E8 0C01BFA4 */  jal       fx_emote
/* A9D31C 802406EC E7A40018 */   swc1     $f4, 0x18($sp)
/* A9D320 802406F0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A9D324 802406F4 2403FFFB */  addiu     $v1, $zero, -5
/* A9D328 802406F8 00431024 */  and       $v0, $v0, $v1
/* A9D32C 802406FC 080901CC */  j         .L80240730
/* A9D330 80240700 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240704:
/* A9D334 80240704 8E220000 */  lw        $v0, ($s1)
/* A9D338 80240708 3C034000 */  lui       $v1, 0x4000
/* A9D33C 8024070C 00431024 */  and       $v0, $v0, $v1
/* A9D340 80240710 10400007 */  beqz      $v0, .L80240730
/* A9D344 80240714 3C03BFFF */   lui      $v1, 0xbfff
/* A9D348 80240718 2402000C */  addiu     $v0, $zero, 0xc
/* A9D34C 8024071C AE620070 */  sw        $v0, 0x70($s3)
/* A9D350 80240720 8E220000 */  lw        $v0, ($s1)
/* A9D354 80240724 3463FFFF */  ori       $v1, $v1, 0xffff
/* A9D358 80240728 00431024 */  and       $v0, $v0, $v1
/* A9D35C 8024072C AE220000 */  sw        $v0, ($s1)
.L80240730:
/* A9D360 80240730 8E220090 */  lw        $v0, 0x90($s1)
/* A9D364 80240734 1840000C */  blez      $v0, .L80240768
/* A9D368 80240738 2442FFFF */   addiu    $v0, $v0, -1
/* A9D36C 8024073C 14400087 */  bnez      $v0, L8024095C_A9D58C
/* A9D370 80240740 AE220090 */   sw       $v0, 0x90($s1)
/* A9D374 80240744 3C03FFAA */  lui       $v1, 0xffaa
/* A9D378 80240748 8E420028 */  lw        $v0, 0x28($s2)
/* A9D37C 8024074C 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* A9D380 80240750 00431021 */  addu      $v0, $v0, $v1
/* A9D384 80240754 2C420002 */  sltiu     $v0, $v0, 2
/* A9D388 80240758 10400003 */  beqz      $v0, .L80240768
/* A9D38C 8024075C 3C020055 */   lui      $v0, 0x55
/* A9D390 80240760 3442000C */  ori       $v0, $v0, 0xc
/* A9D394 80240764 AE420028 */  sw        $v0, 0x28($s2)
.L80240768:
/* A9D398 80240768 8E630070 */  lw        $v1, 0x70($s3)
/* A9D39C 8024076C 2402000C */  addiu     $v0, $zero, 0xc
/* A9D3A0 80240770 10620048 */  beq       $v1, $v0, .L80240894
/* A9D3A4 80240774 2862000D */   slti     $v0, $v1, 0xd
/* A9D3A8 80240778 1040000F */  beqz      $v0, .L802407B8
/* A9D3AC 8024077C 24100001 */   addiu    $s0, $zero, 1
/* A9D3B0 80240780 1070001E */  beq       $v1, $s0, .L802407FC
/* A9D3B4 80240784 28620002 */   slti     $v0, $v1, 2
/* A9D3B8 80240788 10400005 */  beqz      $v0, .L802407A0
/* A9D3BC 8024078C 24020002 */   addiu    $v0, $zero, 2
/* A9D3C0 80240790 10600015 */  beqz      $v1, .L802407E8
/* A9D3C4 80240794 0260202D */   daddu    $a0, $s3, $zero
/* A9D3C8 80240798 0809023C */  j         .L802408F0
/* A9D3CC 8024079C 00000000 */   nop
.L802407A0:
/* A9D3D0 802407A0 1062001C */  beq       $v1, $v0, .L80240814
/* A9D3D4 802407A4 24020003 */   addiu    $v0, $zero, 3
/* A9D3D8 802407A8 10620035 */  beq       $v1, $v0, .L80240880
/* A9D3DC 802407AC 0260202D */   daddu    $a0, $s3, $zero
/* A9D3E0 802407B0 0809023C */  j         .L802408F0
/* A9D3E4 802407B4 00000000 */   nop
.L802407B8:
/* A9D3E8 802407B8 2402000E */  addiu     $v0, $zero, 0xe
/* A9D3EC 802407BC 1062003F */  beq       $v1, $v0, .L802408BC
/* A9D3F0 802407C0 0062102A */   slt      $v0, $v1, $v0
/* A9D3F4 802407C4 14400038 */  bnez      $v0, .L802408A8
/* A9D3F8 802407C8 0260202D */   daddu    $a0, $s3, $zero
/* A9D3FC 802407CC 2402000F */  addiu     $v0, $zero, 0xf
/* A9D400 802407D0 10620040 */  beq       $v1, $v0, .L802408D4
/* A9D404 802407D4 24020063 */   addiu    $v0, $zero, 0x63
/* A9D408 802407D8 10620043 */  beq       $v1, $v0, .L802408E8
/* A9D40C 802407DC 00000000 */   nop
/* A9D410 802407E0 0809023C */  j         .L802408F0
/* A9D414 802407E4 00000000 */   nop
.L802407E8:
/* A9D418 802407E8 0280282D */  daddu     $a1, $s4, $zero
/* A9D41C 802407EC 0C012568 */  jal       func_800495A0
/* A9D420 802407F0 02A0302D */   daddu    $a2, $s5, $zero
/* A9D424 802407F4 96220086 */  lhu       $v0, 0x86($s1)
/* A9D428 802407F8 A64200A8 */  sh        $v0, 0xa8($s2)
.L802407FC:
/* A9D42C 802407FC 0260202D */  daddu     $a0, $s3, $zero
/* A9D430 80240800 0280282D */  daddu     $a1, $s4, $zero
/* A9D434 80240804 0C0125AE */  jal       func_800496B8
/* A9D438 80240808 02A0302D */   daddu    $a2, $s5, $zero
/* A9D43C 8024080C 0809023C */  j         .L802408F0
/* A9D440 80240810 00000000 */   nop
.L80240814:
/* A9D444 80240814 0260202D */  daddu     $a0, $s3, $zero
/* A9D448 80240818 0280282D */  daddu     $a1, $s4, $zero
/* A9D44C 8024081C 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* A9D450 80240820 02A0302D */   daddu    $a2, $s5, $zero
/* A9D454 80240824 8E230088 */  lw        $v1, 0x88($s1)
/* A9D458 80240828 24020006 */  addiu     $v0, $zero, 6
/* A9D45C 8024082C 14620014 */  bne       $v1, $v0, .L80240880
/* A9D460 80240830 0260202D */   daddu    $a0, $s3, $zero
/* A9D464 80240834 0C00A67F */  jal       rand_int
/* A9D468 80240838 24040064 */   addiu    $a0, $zero, 0x64
/* A9D46C 8024083C 28420021 */  slti      $v0, $v0, 0x21
/* A9D470 80240840 5040000F */  beql      $v0, $zero, .L80240880
/* A9D474 80240844 0260202D */   daddu    $a0, $s3, $zero
/* A9D478 80240848 8E22008C */  lw        $v0, 0x8c($s1)
/* A9D47C 8024084C 10400005 */  beqz      $v0, .L80240864
/* A9D480 80240850 3C020055 */   lui      $v0, 0x55
/* A9D484 80240854 3442002F */  ori       $v0, $v0, 0x2f
/* A9D488 80240858 AE20008C */  sw        $zero, 0x8c($s1)
/* A9D48C 8024085C 0809021C */  j         .L80240870
/* A9D490 80240860 A22000B5 */   sb       $zero, 0xb5($s1)
.L80240864:
/* A9D494 80240864 3442002E */  ori       $v0, $v0, 0x2e
/* A9D498 80240868 AE30008C */  sw        $s0, 0x8c($s1)
/* A9D49C 8024086C A23000B5 */  sb        $s0, 0xb5($s1)
.L80240870:
/* A9D4A0 80240870 AE420028 */  sw        $v0, 0x28($s2)
/* A9D4A4 80240874 24020007 */  addiu     $v0, $zero, 7
/* A9D4A8 80240878 08090257 */  j         L8024095C_A9D58C
/* A9D4AC 8024087C AE220090 */   sw       $v0, 0x90($s1)
.L80240880:
/* A9D4B0 80240880 0280282D */  daddu     $a1, $s4, $zero
/* A9D4B4 80240884 0C012701 */  jal       func_80049C04
/* A9D4B8 80240888 02A0302D */   daddu    $a2, $s5, $zero
/* A9D4BC 8024088C 0809023C */  j         .L802408F0
/* A9D4C0 80240890 00000000 */   nop
.L80240894:
/* A9D4C4 80240894 0260202D */  daddu     $a0, $s3, $zero
/* A9D4C8 80240898 0280282D */  daddu     $a1, $s4, $zero
/* A9D4CC 8024089C 0C09006C */  jal       kpa_113_set_script_owner_npc_anim
/* A9D4D0 802408A0 02A0302D */   daddu    $a2, $s5, $zero
/* A9D4D4 802408A4 0260202D */  daddu     $a0, $s3, $zero
.L802408A8:
/* A9D4D8 802408A8 0280282D */  daddu     $a1, $s4, $zero
/* A9D4DC 802408AC 0C09008B */  jal       kpa_113_UnkDistFunc
/* A9D4E0 802408B0 02A0302D */   daddu    $a2, $s5, $zero
/* A9D4E4 802408B4 0809023C */  j         .L802408F0
/* A9D4E8 802408B8 00000000 */   nop
.L802408BC:
/* A9D4EC 802408BC 0260202D */  daddu     $a0, $s3, $zero
/* A9D4F0 802408C0 0280282D */  daddu     $a1, $s4, $zero
/* A9D4F4 802408C4 0C0900D8 */  jal       kpa_113_UnkNpcAIFunc12
/* A9D4F8 802408C8 02A0302D */   daddu    $a2, $s5, $zero
/* A9D4FC 802408CC 0809023C */  j         .L802408F0
/* A9D500 802408D0 00000000 */   nop
.L802408D4:
/* A9D504 802408D4 0280282D */  daddu     $a1, $s4, $zero
/* A9D508 802408D8 0C090131 */  jal       kpa_113_set_script_owner_npc_col_height
/* A9D50C 802408DC 02A0302D */   daddu    $a2, $s5, $zero
/* A9D510 802408E0 0809023C */  j         .L802408F0
/* A9D514 802408E4 00000000 */   nop
.L802408E8:
/* A9D518 802408E8 0C0129CF */  jal       func_8004A73C
/* A9D51C 802408EC 0260202D */   daddu    $a0, $s3, $zero
.L802408F0:
/* A9D520 802408F0 8E230088 */  lw        $v1, 0x88($s1)
/* A9D524 802408F4 24020006 */  addiu     $v0, $zero, 6
/* A9D528 802408F8 14620019 */  bne       $v1, $v0, .L80240960
/* A9D52C 802408FC 0000102D */   daddu    $v0, $zero, $zero
/* A9D530 80240900 8E22008C */  lw        $v0, 0x8c($s1)
/* A9D534 80240904 10400003 */  beqz      $v0, .L80240914
/* A9D538 80240908 24020001 */   addiu    $v0, $zero, 1
/* A9D53C 8024090C 08090246 */  j         .L80240918
/* A9D540 80240910 A22200B5 */   sb       $v0, 0xb5($s1)
.L80240914:
/* A9D544 80240914 A22000B5 */  sb        $zero, 0xb5($s1)
.L80240918:
/* A9D548 80240918 8E22008C */  lw        $v0, 0x8c($s1)
/* A9D54C 8024091C 1040000F */  beqz      $v0, L8024095C_A9D58C
/* A9D550 80240920 3C03FFAA */   lui      $v1, 0xffaa
/* A9D554 80240924 8E420028 */  lw        $v0, 0x28($s2)
/* A9D558 80240928 3463FFFC */  ori       $v1, $v1, 0xfffc
/* A9D55C 8024092C 00431821 */  addu      $v1, $v0, $v1
/* A9D560 80240930 2C620015 */  sltiu     $v0, $v1, 0x15
/* A9D564 80240934 10400009 */  beqz      $v0, L8024095C_A9D58C
/* A9D568 80240938 00031080 */   sll      $v0, $v1, 2
/* A9D56C 8024093C 3C018024 */  lui       $at, %hi(jtbl_80241CF8_A9E928)
/* A9D570 80240940 00220821 */  addu      $at, $at, $v0
/* A9D574 80240944 8C221CF8 */  lw        $v0, %lo(jtbl_80241CF8_A9E928)($at)
/* A9D578 80240948 00400008 */  jr        $v0
/* A9D57C 8024094C 00000000 */   nop
glabel L80240950_A9D580
/* A9D580 80240950 8E420028 */  lw        $v0, 0x28($s2)
/* A9D584 80240954 24420001 */  addiu     $v0, $v0, 1
/* A9D588 80240958 AE420028 */  sw        $v0, 0x28($s2)
glabel L8024095C_A9D58C
/* A9D58C 8024095C 0000102D */  daddu     $v0, $zero, $zero
.L80240960:
/* A9D590 80240960 8FBF0068 */  lw        $ra, 0x68($sp)
/* A9D594 80240964 8FB50064 */  lw        $s5, 0x64($sp)
/* A9D598 80240968 8FB40060 */  lw        $s4, 0x60($sp)
/* A9D59C 8024096C 8FB3005C */  lw        $s3, 0x5c($sp)
/* A9D5A0 80240970 8FB20058 */  lw        $s2, 0x58($sp)
/* A9D5A4 80240974 8FB10054 */  lw        $s1, 0x54($sp)
/* A9D5A8 80240978 8FB00050 */  lw        $s0, 0x50($sp)
/* A9D5AC 8024097C 03E00008 */  jr        $ra
/* A9D5B0 80240980 27BD0070 */   addiu    $sp, $sp, 0x70
