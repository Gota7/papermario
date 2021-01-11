.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240124_EA8C04
/* EA8C04 80240124 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* EA8C08 80240128 AFB00010 */  sw        $s0, 0x10($sp)
/* EA8C0C 8024012C 0080802D */  daddu     $s0, $a0, $zero
/* EA8C10 80240130 10A00005 */  beqz      $a1, .L80240148
/* EA8C14 80240134 AFBF0014 */   sw       $ra, 0x14($sp)
/* EA8C18 80240138 AE000070 */  sw        $zero, 0x70($s0)
/* EA8C1C 8024013C AE000074 */  sw        $zero, 0x74($s0)
/* EA8C20 80240140 AE000078 */  sw        $zero, 0x78($s0)
/* EA8C24 80240144 AE00007C */  sw        $zero, 0x7c($s0)
.L80240148:
/* EA8C28 80240148 8E020070 */  lw        $v0, 0x70($s0)
/* EA8C2C 8024014C 1440000E */  bnez      $v0, .L80240188
/* EA8C30 80240150 00000000 */   nop      
/* EA8C34 80240154 8E0300A8 */  lw        $v1, 0xa8($s0)
/* EA8C38 80240158 8E020088 */  lw        $v0, 0x88($s0)
/* EA8C3C 8024015C 00621821 */  addu      $v1, $v1, $v0
/* EA8C40 80240160 04610004 */  bgez      $v1, .L80240174
/* EA8C44 80240164 AE0300A8 */   sw       $v1, 0xa8($s0)
/* EA8C48 80240168 3C020002 */  lui       $v0, 2
/* EA8C4C 8024016C 08090061 */  j         .L80240184
/* EA8C50 80240170 00621021 */   addu     $v0, $v1, $v0
.L80240174:
/* EA8C54 80240174 3C040002 */  lui       $a0, 2
/* EA8C58 80240178 0083102A */  slt       $v0, $a0, $v1
/* EA8C5C 8024017C 10400002 */  beqz      $v0, .L80240188
/* EA8C60 80240180 00641023 */   subu     $v0, $v1, $a0
.L80240184:
/* EA8C64 80240184 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240188:
/* EA8C68 80240188 8E020074 */  lw        $v0, 0x74($s0)
/* EA8C6C 8024018C 1440000E */  bnez      $v0, .L802401C8
/* EA8C70 80240190 00000000 */   nop      
/* EA8C74 80240194 8E0300AC */  lw        $v1, 0xac($s0)
/* EA8C78 80240198 8E02008C */  lw        $v0, 0x8c($s0)
/* EA8C7C 8024019C 00621821 */  addu      $v1, $v1, $v0
/* EA8C80 802401A0 04610004 */  bgez      $v1, .L802401B4
/* EA8C84 802401A4 AE0300AC */   sw       $v1, 0xac($s0)
/* EA8C88 802401A8 3C020002 */  lui       $v0, 2
/* EA8C8C 802401AC 08090071 */  j         .L802401C4
/* EA8C90 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* EA8C94 802401B4 3C040002 */  lui       $a0, 2
/* EA8C98 802401B8 0083102A */  slt       $v0, $a0, $v1
/* EA8C9C 802401BC 10400002 */  beqz      $v0, .L802401C8
/* EA8CA0 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* EA8CA4 802401C4 AE0200AC */  sw        $v0, 0xac($s0)
.L802401C8:
/* EA8CA8 802401C8 8E020078 */  lw        $v0, 0x78($s0)
/* EA8CAC 802401CC 1440000E */  bnez      $v0, .L80240208
/* EA8CB0 802401D0 00000000 */   nop      
/* EA8CB4 802401D4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* EA8CB8 802401D8 8E020090 */  lw        $v0, 0x90($s0)
/* EA8CBC 802401DC 00621821 */  addu      $v1, $v1, $v0
/* EA8CC0 802401E0 04610004 */  bgez      $v1, .L802401F4
/* EA8CC4 802401E4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* EA8CC8 802401E8 3C020002 */  lui       $v0, 2
/* EA8CCC 802401EC 08090081 */  j         .L80240204
/* EA8CD0 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* EA8CD4 802401F4 3C040002 */  lui       $a0, 2
/* EA8CD8 802401F8 0083102A */  slt       $v0, $a0, $v1
/* EA8CDC 802401FC 10400002 */  beqz      $v0, .L80240208
/* EA8CE0 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* EA8CE4 80240204 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240208:
/* EA8CE8 80240208 8E02007C */  lw        $v0, 0x7c($s0)
/* EA8CEC 8024020C 1440000E */  bnez      $v0, .L80240248
/* EA8CF0 80240210 00000000 */   nop      
/* EA8CF4 80240214 8E0300B4 */  lw        $v1, 0xb4($s0)
/* EA8CF8 80240218 8E020094 */  lw        $v0, 0x94($s0)
/* EA8CFC 8024021C 00621821 */  addu      $v1, $v1, $v0
/* EA8D00 80240220 04610004 */  bgez      $v1, .L80240234
/* EA8D04 80240224 AE0300B4 */   sw       $v1, 0xb4($s0)
/* EA8D08 80240228 3C020002 */  lui       $v0, 2
/* EA8D0C 8024022C 08090091 */  j         .L80240244
/* EA8D10 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* EA8D14 80240234 3C040002 */  lui       $a0, 2
/* EA8D18 80240238 0083102A */  slt       $v0, $a0, $v1
/* EA8D1C 8024023C 10400002 */  beqz      $v0, .L80240248
/* EA8D20 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* EA8D24 80240244 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240248:
/* EA8D28 80240248 8E040084 */  lw        $a0, 0x84($s0)
/* EA8D2C 8024024C 0C049819 */  jal       func_80126064
/* EA8D30 80240250 8E0500A8 */   lw       $a1, 0xa8($s0)
/* EA8D34 80240254 8E040084 */  lw        $a0, 0x84($s0)
/* EA8D38 80240258 0C04981F */  jal       func_8012607C
/* EA8D3C 8024025C 8E0500AC */   lw       $a1, 0xac($s0)
/* EA8D40 80240260 8E040084 */  lw        $a0, 0x84($s0)
/* EA8D44 80240264 0C049825 */  jal       func_80126094
/* EA8D48 80240268 8E0500B0 */   lw       $a1, 0xb0($s0)
/* EA8D4C 8024026C 8E040084 */  lw        $a0, 0x84($s0)
/* EA8D50 80240270 0C04982B */  jal       func_801260AC
/* EA8D54 80240274 8E0500B4 */   lw       $a1, 0xb4($s0)
/* EA8D58 80240278 8E020070 */  lw        $v0, 0x70($s0)
/* EA8D5C 8024027C 8E030078 */  lw        $v1, 0x78($s0)
/* EA8D60 80240280 8E040098 */  lw        $a0, 0x98($s0)
/* EA8D64 80240284 24420001 */  addiu     $v0, $v0, 1
/* EA8D68 80240288 AE020070 */  sw        $v0, 0x70($s0)
/* EA8D6C 8024028C 8E020074 */  lw        $v0, 0x74($s0)
/* EA8D70 80240290 24630001 */  addiu     $v1, $v1, 1
/* EA8D74 80240294 AE030078 */  sw        $v1, 0x78($s0)
/* EA8D78 80240298 8E030070 */  lw        $v1, 0x70($s0)
/* EA8D7C 8024029C 24420001 */  addiu     $v0, $v0, 1
/* EA8D80 802402A0 AE020074 */  sw        $v0, 0x74($s0)
/* EA8D84 802402A4 8E02007C */  lw        $v0, 0x7c($s0)
/* EA8D88 802402A8 0064182A */  slt       $v1, $v1, $a0
/* EA8D8C 802402AC 24420001 */  addiu     $v0, $v0, 1
/* EA8D90 802402B0 14600002 */  bnez      $v1, .L802402BC
/* EA8D94 802402B4 AE02007C */   sw       $v0, 0x7c($s0)
/* EA8D98 802402B8 AE000070 */  sw        $zero, 0x70($s0)
.L802402BC:
/* EA8D9C 802402BC 8E020074 */  lw        $v0, 0x74($s0)
/* EA8DA0 802402C0 8E03009C */  lw        $v1, 0x9c($s0)
/* EA8DA4 802402C4 0043102A */  slt       $v0, $v0, $v1
/* EA8DA8 802402C8 50400001 */  beql      $v0, $zero, .L802402D0
/* EA8DAC 802402CC AE000074 */   sw       $zero, 0x74($s0)
.L802402D0:
/* EA8DB0 802402D0 8E020078 */  lw        $v0, 0x78($s0)
/* EA8DB4 802402D4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* EA8DB8 802402D8 0043102A */  slt       $v0, $v0, $v1
/* EA8DBC 802402DC 50400001 */  beql      $v0, $zero, .L802402E4
/* EA8DC0 802402E0 AE000078 */   sw       $zero, 0x78($s0)
.L802402E4:
/* EA8DC4 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* EA8DC8 802402E8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* EA8DCC 802402EC 0043102A */  slt       $v0, $v0, $v1
/* EA8DD0 802402F0 50400001 */  beql      $v0, $zero, .L802402F8
/* EA8DD4 802402F4 AE00007C */   sw       $zero, 0x7c($s0)
.L802402F8:
/* EA8DD8 802402F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* EA8DDC 802402FC 8FB00010 */  lw        $s0, 0x10($sp)
/* EA8DE0 80240300 0000102D */  daddu     $v0, $zero, $zero
/* EA8DE4 80240304 03E00008 */  jr        $ra
/* EA8DE8 80240308 27BD0018 */   addiu    $sp, $sp, 0x18
