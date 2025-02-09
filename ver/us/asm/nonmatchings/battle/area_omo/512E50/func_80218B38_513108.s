.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218B38_513108
/* 513108 80218B38 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 51310C 80218B3C AFB3002C */  sw        $s3, 0x2c($sp)
/* 513110 80218B40 0080982D */  daddu     $s3, $a0, $zero
/* 513114 80218B44 AFB00020 */  sw        $s0, 0x20($sp)
/* 513118 80218B48 0000802D */  daddu     $s0, $zero, $zero
/* 51311C 80218B4C AFB20028 */  sw        $s2, 0x28($sp)
/* 513120 80218B50 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 513124 80218B54 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 513128 80218B58 AFB40030 */  sw        $s4, 0x30($sp)
/* 51312C 80218B5C 3C148011 */  lui       $s4, %hi(gPlayerData)
/* 513130 80218B60 2694F290 */  addiu     $s4, $s4, %lo(gPlayerData)
/* 513134 80218B64 AFB50034 */  sw        $s5, 0x34($sp)
/* 513138 80218B68 2404FFFF */  addiu     $a0, $zero, -1
/* 51313C 80218B6C AFBF0038 */  sw        $ra, 0x38($sp)
/* 513140 80218B70 AFB10024 */  sw        $s1, 0x24($sp)
/* 513144 80218B74 824200AE */  lb        $v0, 0xae($s2)
/* 513148 80218B78 8E71000C */  lw        $s1, 0xc($s3)
/* 51314C 80218B7C 14440003 */  bne       $v0, $a0, .L80218B8C
/* 513150 80218B80 0280A82D */   daddu    $s5, $s4, $zero
/* 513154 80218B84 AFA00010 */  sw        $zero, 0x10($sp)
/* 513158 80218B88 24100001 */  addiu     $s0, $zero, 1
.L80218B8C:
/* 51315C 80218B8C 824200AF */  lb        $v0, 0xaf($s2)
/* 513160 80218B90 14440005 */  bne       $v0, $a0, .L80218BA8
/* 513164 80218B94 00101080 */   sll      $v0, $s0, 2
/* 513168 80218B98 03A21821 */  addu      $v1, $sp, $v0
/* 51316C 80218B9C 24020001 */  addiu     $v0, $zero, 1
/* 513170 80218BA0 AC620010 */  sw        $v0, 0x10($v1)
/* 513174 80218BA4 02028021 */  addu      $s0, $s0, $v0
.L80218BA8:
/* 513178 80218BA8 824200B0 */  lb        $v0, 0xb0($s2)
/* 51317C 80218BAC 14440005 */  bne       $v0, $a0, .L80218BC4
/* 513180 80218BB0 00101080 */   sll      $v0, $s0, 2
/* 513184 80218BB4 03A21821 */  addu      $v1, $sp, $v0
/* 513188 80218BB8 24020002 */  addiu     $v0, $zero, 2
/* 51318C 80218BBC AC620010 */  sw        $v0, 0x10($v1)
/* 513190 80218BC0 26100001 */  addiu     $s0, $s0, 1
.L80218BC4:
/* 513194 80218BC4 0C00A67F */  jal       rand_int
/* 513198 80218BC8 24040002 */   addiu    $a0, $zero, 2
/* 51319C 80218BCC 2604FFFF */  addiu     $a0, $s0, -1
/* 5131A0 80218BD0 0C00A67F */  jal       rand_int
/* 5131A4 80218BD4 24500002 */   addiu    $s0, $v0, 2
/* 5131A8 80218BD8 00021080 */  sll       $v0, $v0, 2
/* 5131AC 80218BDC 03A21021 */  addu      $v0, $sp, $v0
/* 5131B0 80218BE0 8C430010 */  lw        $v1, 0x10($v0)
/* 5131B4 80218BE4 24020001 */  addiu     $v0, $zero, 1
/* 5131B8 80218BE8 1062001C */  beq       $v1, $v0, .L80218C5C
/* 5131BC 80218BEC 28620002 */   slti     $v0, $v1, 2
/* 5131C0 80218BF0 10400005 */  beqz      $v0, .L80218C08
/* 5131C4 80218BF4 24020002 */   addiu    $v0, $zero, 2
/* 5131C8 80218BF8 50600007 */  beql      $v1, $zero, .L80218C18
/* 5131CC 80218BFC A25000AE */   sb       $s0, 0xae($s2)
/* 5131D0 80218C00 08086333 */  j         .L80218CCC
/* 5131D4 80218C04 00000000 */   nop
.L80218C08:
/* 5131D8 80218C08 50620026 */  beql      $v1, $v0, .L80218CA4
/* 5131DC 80218C0C A25000B0 */   sb       $s0, 0xb0($s2)
/* 5131E0 80218C10 08086333 */  j         .L80218CCC
/* 5131E4 80218C14 00000000 */   nop
.L80218C18:
/* 5131E8 80218C18 8E250000 */  lw        $a1, ($s1)
/* 5131EC 80218C1C 82820001 */  lb        $v0, 1($s4)
/* 5131F0 80218C20 26310004 */  addiu     $s1, $s1, 4
/* 5131F4 80218C24 00021080 */  sll       $v0, $v0, 2
/* 5131F8 80218C28 3C068023 */  lui       $a2, %hi(D_80228748_522D18)
/* 5131FC 80218C2C 00C23021 */  addu      $a2, $a2, $v0
/* 513200 80218C30 8CC68748 */  lw        $a2, %lo(D_80228748_522D18)($a2)
/* 513204 80218C34 0C0B2026 */  jal       evt_set_variable
/* 513208 80218C38 0260202D */   daddu    $a0, $s3, $zero
/* 51320C 80218C3C 82820001 */  lb        $v0, 1($s4)
/* 513210 80218C40 8E250000 */  lw        $a1, ($s1)
/* 513214 80218C44 00021080 */  sll       $v0, $v0, 2
/* 513218 80218C48 3C068023 */  lui       $a2, %hi(D_80228754_522D24)
/* 51321C 80218C4C 00C23021 */  addu      $a2, $a2, $v0
/* 513220 80218C50 8CC68754 */  lw        $a2, %lo(D_80228754_522D24)($a2)
/* 513224 80218C54 08086331 */  j         .L80218CC4
/* 513228 80218C58 0260202D */   daddu    $a0, $s3, $zero
.L80218C5C:
/* 51322C 80218C5C A25000AF */  sb        $s0, 0xaf($s2)
/* 513230 80218C60 8E250000 */  lw        $a1, ($s1)
/* 513234 80218C64 82A20000 */  lb        $v0, ($s5)
/* 513238 80218C68 26310004 */  addiu     $s1, $s1, 4
/* 51323C 80218C6C 00021080 */  sll       $v0, $v0, 2
/* 513240 80218C70 3C068023 */  lui       $a2, %hi(D_80228760_522D30)
/* 513244 80218C74 00C23021 */  addu      $a2, $a2, $v0
/* 513248 80218C78 8CC68760 */  lw        $a2, %lo(D_80228760_522D30)($a2)
/* 51324C 80218C7C 0C0B2026 */  jal       evt_set_variable
/* 513250 80218C80 0260202D */   daddu    $a0, $s3, $zero
/* 513254 80218C84 82A20000 */  lb        $v0, ($s5)
/* 513258 80218C88 8E250000 */  lw        $a1, ($s1)
/* 51325C 80218C8C 00021080 */  sll       $v0, $v0, 2
/* 513260 80218C90 3C068023 */  lui       $a2, %hi(D_8022876C_522D3C)
/* 513264 80218C94 00C23021 */  addu      $a2, $a2, $v0
/* 513268 80218C98 8CC6876C */  lw        $a2, %lo(D_8022876C_522D3C)($a2)
/* 51326C 80218C9C 08086331 */  j         .L80218CC4
/* 513270 80218CA0 0260202D */   daddu    $a0, $s3, $zero
.L80218CA4:
/* 513274 80218CA4 8E250000 */  lw        $a1, ($s1)
/* 513278 80218CA8 26310004 */  addiu     $s1, $s1, 4
/* 51327C 80218CAC 0260202D */  daddu     $a0, $s3, $zero
/* 513280 80218CB0 0C0B2026 */  jal       evt_set_variable
/* 513284 80218CB4 2406016C */   addiu    $a2, $zero, 0x16c
/* 513288 80218CB8 0260202D */  daddu     $a0, $s3, $zero
/* 51328C 80218CBC 8E250000 */  lw        $a1, ($s1)
/* 513290 80218CC0 2406004F */  addiu     $a2, $zero, 0x4f
.L80218CC4:
/* 513294 80218CC4 0C0B2026 */  jal       evt_set_variable
/* 513298 80218CC8 00000000 */   nop
.L80218CCC:
/* 51329C 80218CCC 8FBF0038 */  lw        $ra, 0x38($sp)
/* 5132A0 80218CD0 8FB50034 */  lw        $s5, 0x34($sp)
/* 5132A4 80218CD4 8FB40030 */  lw        $s4, 0x30($sp)
/* 5132A8 80218CD8 8FB3002C */  lw        $s3, 0x2c($sp)
/* 5132AC 80218CDC 8FB20028 */  lw        $s2, 0x28($sp)
/* 5132B0 80218CE0 8FB10024 */  lw        $s1, 0x24($sp)
/* 5132B4 80218CE4 8FB00020 */  lw        $s0, 0x20($sp)
/* 5132B8 80218CE8 24020002 */  addiu     $v0, $zero, 2
/* 5132BC 80218CEC 03E00008 */  jr        $ra
/* 5132C0 80218CF0 27BD0040 */   addiu    $sp, $sp, 0x40
