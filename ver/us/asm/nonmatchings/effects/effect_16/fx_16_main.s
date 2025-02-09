.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_16_main
/* 33418C E00202CC 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 334190 E00202D0 F7B80058 */  sdc1      $f24, 0x58($sp)
/* 334194 E00202D4 4486C000 */  mtc1      $a2, $f24
/* 334198 E00202D8 F7BC0068 */  sdc1      $f28, 0x68($sp)
/* 33419C E00202DC 4487E000 */  mtc1      $a3, $f28
/* 3341A0 E00202E0 AFB00028 */  sw        $s0, 0x28($sp)
/* 3341A4 E00202E4 8FB0008C */  lw        $s0, 0x8c($sp)
/* 3341A8 E00202E8 F7B60050 */  sdc1      $f22, 0x50($sp)
/* 3341AC E00202EC C7B60080 */  lwc1      $f22, 0x80($sp)
/* 3341B0 E00202F0 F7BA0060 */  sdc1      $f26, 0x60($sp)
/* 3341B4 E00202F4 C7BA0084 */  lwc1      $f26, 0x84($sp)
/* 3341B8 E00202F8 AFB20030 */  sw        $s2, 0x30($sp)
/* 3341BC E00202FC 0080902D */  daddu     $s2, $a0, $zero
/* 3341C0 E0020300 AFB5003C */  sw        $s5, 0x3c($sp)
/* 3341C4 E0020304 00A0A82D */  daddu     $s5, $a1, $zero
/* 3341C8 E0020308 AFB30034 */  sw        $s3, 0x34($sp)
/* 3341CC E002030C 24130001 */  addiu     $s3, $zero, 1
/* 3341D0 E0020310 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 3341D4 E0020314 C7B40088 */  lwc1      $f20, 0x88($sp)
/* 3341D8 E0020318 27A40010 */  addiu     $a0, $sp, 0x10
/* 3341DC E002031C AFBF0040 */  sw        $ra, 0x40($sp)
/* 3341E0 E0020320 AFB40038 */  sw        $s4, 0x38($sp)
/* 3341E4 E0020324 16530002 */  bne       $s2, $s3, .LE0020330
/* 3341E8 E0020328 AFB1002C */   sw       $s1, 0x2c($sp)
/* 3341EC E002032C 24130003 */  addiu     $s3, $zero, 3
.LE0020330:
/* 3341F0 E0020330 3C02E002 */  lui       $v0, %hi(fx_16_init)
/* 3341F4 E0020334 24420460 */  addiu     $v0, $v0, %lo(fx_16_init)
/* 3341F8 E0020338 AFA20018 */  sw        $v0, 0x18($sp)
/* 3341FC E002033C 3C02E002 */  lui       $v0, %hi(fx_16_update)
/* 334200 E0020340 24420468 */  addiu     $v0, $v0, %lo(fx_16_update)
/* 334204 E0020344 AFA2001C */  sw        $v0, 0x1c($sp)
/* 334208 E0020348 3C02E002 */  lui       $v0, %hi(fx_16_render)
/* 33420C E002034C 2442058C */  addiu     $v0, $v0, %lo(fx_16_render)
/* 334210 E0020350 AFA20020 */  sw        $v0, 0x20($sp)
/* 334214 E0020354 24020010 */  addiu     $v0, $zero, 0x10
/* 334218 E0020358 AFA00010 */  sw        $zero, 0x10($sp)
/* 33421C E002035C AFA00024 */  sw        $zero, 0x24($sp)
/* 334220 E0020360 0C080124 */  jal       shim_create_effect_instance
/* 334224 E0020364 AFA20014 */   sw       $v0, 0x14($sp)
/* 334228 E0020368 00132180 */  sll       $a0, $s3, 6
/* 33422C E002036C 0040A02D */  daddu     $s4, $v0, $zero
/* 334230 E0020370 0C08012C */  jal       shim_general_heap_malloc
/* 334234 E0020374 AE930008 */   sw       $s3, 8($s4)
/* 334238 E0020378 0040882D */  daddu     $s1, $v0, $zero
/* 33423C E002037C 16200003 */  bnez      $s1, .LE002038C
/* 334240 E0020380 AE91000C */   sw       $s1, 0xc($s4)
.LE0020384:
/* 334244 E0020384 080080E1 */  j         .LE0020384
/* 334248 E0020388 00000000 */   nop
.LE002038C:
/* 33424C E002038C AE35003C */  sw        $s5, 0x3c($s1)
/* 334250 E0020390 AE320000 */  sw        $s2, ($s1)
/* 334254 E0020394 1E000002 */  bgtz      $s0, .LE00203A0
/* 334258 E0020398 AE320030 */   sw       $s2, 0x30($s1)
/* 33425C E002039C 24102710 */  addiu     $s0, $zero, 0x2710
.LE00203A0:
/* 334260 E00203A0 24020001 */  addiu     $v0, $zero, 1
/* 334264 E00203A4 AE30002C */  sw        $s0, 0x2c($s1)
/* 334268 E00203A8 16420014 */  bne       $s2, $v0, .LE00203FC
/* 33426C E00203AC AE200034 */   sw       $zero, 0x34($s1)
/* 334270 E00203B0 1260001B */  beqz      $s3, .LE0020420
/* 334274 E00203B4 0000902D */   daddu    $s2, $zero, $zero
/* 334278 E00203B8 2630003C */  addiu     $s0, $s1, 0x3c
.LE00203BC:
/* 33427C E00203BC 0220202D */  daddu     $a0, $s1, $zero
/* 334280 E00203C0 0240282D */  daddu     $a1, $s2, $zero
/* 334284 E00203C4 E618FFD4 */  swc1      $f24, -0x2c($s0)
/* 334288 E00203C8 E61CFFD8 */  swc1      $f28, -0x28($s0)
/* 33428C E00203CC E616FFDC */  swc1      $f22, -0x24($s0)
/* 334290 E00203D0 E614FFE0 */  swc1      $f20, -0x20($s0)
/* 334294 E00203D4 E61AFFE4 */  swc1      $f26, -0x1c($s0)
/* 334298 E00203D8 0C008000 */  jal       func_E0020000
/* 33429C E00203DC AE150000 */   sw       $s5, ($s0)
/* 3342A0 E00203E0 26520001 */  addiu     $s2, $s2, 1
/* 3342A4 E00203E4 26100040 */  addiu     $s0, $s0, 0x40
/* 3342A8 E00203E8 0253102A */  slt       $v0, $s2, $s3
/* 3342AC E00203EC 1440FFF3 */  bnez      $v0, .LE00203BC
/* 3342B0 E00203F0 26310040 */   addiu    $s1, $s1, 0x40
/* 3342B4 E00203F4 08008108 */  j         .LE0020420
/* 3342B8 E00203F8 00000000 */   nop
.LE00203FC:
/* 3342BC E00203FC 0220202D */  daddu     $a0, $s1, $zero
/* 3342C0 E0020400 24050001 */  addiu     $a1, $zero, 1
/* 3342C4 E0020404 E4980010 */  swc1      $f24, 0x10($a0)
/* 3342C8 E0020408 E49C0014 */  swc1      $f28, 0x14($a0)
/* 3342CC E002040C E4960018 */  swc1      $f22, 0x18($a0)
/* 3342D0 E0020410 E494001C */  swc1      $f20, 0x1c($a0)
/* 3342D4 E0020414 E49A0020 */  swc1      $f26, 0x20($a0)
/* 3342D8 E0020418 0C008000 */  jal       func_E0020000
/* 3342DC E002041C AC95003C */   sw       $s5, 0x3c($a0)
.LE0020420:
/* 3342E0 E0020420 8FA20090 */  lw        $v0, 0x90($sp)
/* 3342E4 E0020424 AC540000 */  sw        $s4, ($v0)
/* 3342E8 E0020428 8FBF0040 */  lw        $ra, 0x40($sp)
/* 3342EC E002042C 8FB5003C */  lw        $s5, 0x3c($sp)
/* 3342F0 E0020430 8FB40038 */  lw        $s4, 0x38($sp)
/* 3342F4 E0020434 8FB30034 */  lw        $s3, 0x34($sp)
/* 3342F8 E0020438 8FB20030 */  lw        $s2, 0x30($sp)
/* 3342FC E002043C 8FB1002C */  lw        $s1, 0x2c($sp)
/* 334300 E0020440 8FB00028 */  lw        $s0, 0x28($sp)
/* 334304 E0020444 D7BC0068 */  ldc1      $f28, 0x68($sp)
/* 334308 E0020448 D7BA0060 */  ldc1      $f26, 0x60($sp)
/* 33430C E002044C D7B80058 */  ldc1      $f24, 0x58($sp)
/* 334310 E0020450 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 334314 E0020454 D7B40048 */  ldc1      $f20, 0x48($sp)
/* 334318 E0020458 03E00008 */  jr        $ra
/* 33431C E002045C 27BD0070 */   addiu    $sp, $sp, 0x70
