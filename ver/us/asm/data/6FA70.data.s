.include "macro.inc"

.section .data

glabel D_80094670
.word 0x800D9210, 0x00000000, 0x00000000, 0x00000000

glabel D_80094680
.word 0x00000000

glabel D_80094684
.word 0x00000000

glabel D_80094688
.word 0x00000000

glabel D_8009468C
.word 0x00000000

glabel D_80094690
.word 0x00000000

glabel D_80094694
.word 0x00000000

glabel D_80094698
.word 0x00000000

glabel D_8009469C
.word 0x00000000

glabel osViModeTable
.word 0x00000000, 0x0000320E, 0x00000140, 0x03E52239, 0x0000020D, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x01000000, 0x0000324E, 0x00000140, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x01000400, 0x002301FD, 0x000E0204, 0x00000002, 0x00000280, 0x03000400, 0x002501FF, 0x000E0204, 0x00000002, 0x02000000, 0x0000311E, 0x00000140, 0x03E52239, 0x0000020D, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x03000000, 0x0000305E, 0x00000140, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x01000400, 0x002301FD, 0x000E0204, 0x00000002, 0x00000280, 0x03000400, 0x002501FF, 0x000E0204, 0x00000002, 0x04000000, 0x0000330F, 0x00000140, 0x03E52239, 0x0000020D, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000500, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000500, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x05000000, 0x0000324F, 0x00000140, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000500, 0x01000400, 0x002301FD, 0x000E0204, 0x00000002, 0x00000500, 0x03000400, 0x002501FF, 0x000E0204, 0x00000002, 0x06000000, 0x0000301F, 0x00000140, 0x03E52239, 0x0000020D, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000500, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000500, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x07000000, 0x0000305F, 0x00000140, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000500, 0x01000400

glabel D_80094900
.word 0x002301FD, 0x000E0204, 0x00000002, 0x00000500, 0x03000400, 0x002501FF, 0x000E0204, 0x00000002, 0x08000000, 0x0000324E, 0x00000500, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000400, 0x00000000, 0x00000500, 0x00000400, 0x002301FD, 0x000E0204, 0x00000002, 0x00000A00, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x09000000, 0x0000324E, 0x00000280, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000400, 0x00000000, 0x00000500, 0x02000800, 0x002301FD, 0x000E0204, 0x00000002, 0x00000A00, 0x02000800, 0x002501FF, 0x000E0204, 0x00000002, 0x0A000000, 0x0000305E, 0x00000500, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000400, 0x00000000, 0x00000500, 0x00000400, 0x002301FD, 0x000E0204, 0x00000002, 0x00000A00, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x0B000000, 0x0000305E, 0x00000280, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000400, 0x00000000, 0x00000500, 0x02000800, 0x002301FD, 0x000E0204, 0x00000002, 0x00000A00, 0x02000800, 0x002501FF, 0x000E0204, 0x00000002, 0x0C000000, 0x0000334F, 0x00000500, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000400, 0x00000000, 0x00000A00, 0x00000400, 0x002301FD, 0x000E0204, 0x00000002, 0x00001400, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x0D000000, 0x0000324F, 0x00000280, 0x03E52239, 0x0000020C, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000400, 0x00000000, 0x00000A00, 0x02000800, 0x002301FD, 0x000E0204, 0x00000002, 0x00001400, 0x02000800, 0x002501FF, 0x000E0204, 0x00000002, 0x0E000000, 0x0000320E, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x00000280, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x0F000000, 0x0000324E, 0x00000140, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x01000400, 0x005D0237, 0x0009026B, 0x00000002, 0x00000280, 0x03000400, 0x005F0239, 0x000D0269, 0x00000002, 0x10000000, 0x0000311E, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x00000280, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x11000000, 0x0000305E, 0x00000140, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x01000400, 0x005D0237, 0x0009026B, 0x00000002, 0x00000280, 0x03000400, 0x005F0239, 0x000D0269, 0x00000002, 0x12000000, 0x0000330F, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000500, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x00000500, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x13000000, 0x0000324F, 0x00000140, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000500, 0x01000400, 0x005D0237, 0x0009026B, 0x00000002, 0x00000500, 0x03000400, 0x005F0239, 0x000D0269, 0x00000002, 0x14000000, 0x0000301F, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000500, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x00000500, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x15000000, 0x0000305F, 0x00000140, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000500, 0x01000400, 0x005D0237, 0x0009026B, 0x00000002, 0x00000500, 0x03000400, 0x005F0239, 0x000D0269, 0x00000002, 0x16000000, 0x0000324E, 0x00000500, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000500, 0x00000400, 0x005D0237, 0x0009026B, 0x00000002, 0x00000A00, 0x00000400, 0x005F0239, 0x000D0269, 0x00000002, 0x17000000, 0x0000324E, 0x00000280, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000500, 0x02000800, 0x005D0237, 0x0009026B, 0x00000002, 0x00000A00, 0x02000800, 0x005F0239, 0x000D0269, 0x00000002, 0x18000000, 0x0000305E, 0x00000500, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000500, 0x00000400, 0x005D0237, 0x0009026B, 0x00000002, 0x00000A00, 0x00000400, 0x005F0239, 0x000D0269, 0x00000002, 0x19000000, 0x0000305E, 0x00000280, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000500, 0x02000800, 0x005D0237, 0x0009026B, 0x00000002, 0x00000A00, 0x02000800, 0x005F0239, 0x000D0269, 0x00000002, 0x1A000000, 0x0000334F, 0x00000500, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000A00, 0x00000400, 0x005D0237, 0x0009026B, 0x00000002, 0x00001400, 0x00000400, 0x005F0239, 0x000D0269, 0x00000002, 0x1B000000, 0x0000324F, 0x00000280, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000A00, 0x02000800, 0x005D0237, 0x0009026B, 0x00000002, 0x00001400, 0x02000800, 0x005F0239, 0x000D0269, 0x00000002, 0x1C000000, 0x0000320E, 0x00000140, 0x04651E39, 0x0000020D, 0x00040C11, 0x0C190C1A, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x1D000000, 0x0000324E, 0x00000140, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x01000400, 0x002301FD, 0x000B0202, 0x00000002, 0x00000280, 0x03000400, 0x002501FF, 0x000E0204, 0x00000002, 0x1E000000, 0x0000311E, 0x00000140, 0x04651E39, 0x0000020D, 0x00040C11, 0x0C190C1A, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x1F000000, 0x0000305E, 0x00000140, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x01000400, 0x002301FD, 0x000B0202, 0x00000002, 0x00000280, 0x03000400, 0x002501FF, 0x000E0204, 0x00000002, 0x20000000, 0x0000330F, 0x00000140, 0x04651E39, 0x0000020D, 0x00040C11, 0x0C190C1A, 0x006C02EC, 0x00000200, 0x00000000, 0x00000500, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000500, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x21000000, 0x0000324F, 0x00000140, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000200, 0x00000000, 0x00000500, 0x01000400, 0x002301FD, 0x000B0202, 0x00000002, 0x00000500, 0x03000400, 0x002501FF, 0x000E0204, 0x00000002, 0x22000000, 0x0000301F, 0x00000140, 0x04651E39, 0x0000020D, 0x00040C11, 0x0C190C1A, 0x006C02EC, 0x00000200, 0x00000000, 0x00000500, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000500, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x23000000, 0x0000305F, 0x00000140, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000200, 0x00000000, 0x00000500, 0x01000400, 0x002301FD, 0x000B0202, 0x00000002, 0x00000500, 0x03000400, 0x002501FF, 0x000E0204, 0x00000002, 0x24000000, 0x0000324E, 0x00000500, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000400, 0x00000000, 0x00000500, 0x00000400, 0x002301FD, 0x000B0202, 0x00000002, 0x00000A00, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x25000000, 0x0000324E, 0x00000280, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000400, 0x00000000, 0x00000500, 0x02000800, 0x002301FD, 0x000B0202, 0x00000002, 0x00000A00, 0x02000800, 0x002501FF, 0x000E0204, 0x00000002, 0x26000000, 0x0000305E, 0x00000500, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000400, 0x00000000, 0x00000500, 0x00000400, 0x002301FD, 0x000B0202, 0x00000002, 0x00000A00, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x27000000, 0x0000305E, 0x00000280, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000400, 0x00000000, 0x00000500, 0x02000800, 0x002301FD, 0x000B0202, 0x00000002, 0x00000A00, 0x02000800, 0x002501FF, 0x000E0204, 0x00000002, 0x28000000, 0x0000334F, 0x00000500, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000400, 0x00000000, 0x00000A00, 0x00000400, 0x002301FD, 0x000B0202, 0x00000002, 0x00001400, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x29000000, 0x0000324F, 0x00000280, 0x04651E39, 0x0000020C, 0x00000C10, 0x0C1C0C1C, 0x006C02EC, 0x00000400, 0x00000000, 0x00000A00, 0x02000800, 0x002301FD, 0x000B0202, 0x00000002, 0x00001400, 0x02000800, 0x002501FF, 0x000E0204, 0x00000002, 0x2A000000, 0x0000320E, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002F0269, 0x0009026B, 0x00000002, 0x00000280, 0x00000400, 0x002F0269, 0x0009026B, 0x00000002, 0x2B000000, 0x0000324E, 0x00000140, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x01000400, 0x002D0267, 0x0009026B, 0x00000002, 0x00000280, 0x03000400, 0x002F0269, 0x000D0269, 0x00000002, 0x2C000000, 0x0000311E, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002F0269, 0x0009026B, 0x00000002, 0x00000280, 0x00000400, 0x002F0269, 0x0009026B, 0x00000002, 0x2D000000, 0x0000305E, 0x00000140, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x01000400, 0x002D0267, 0x0009026B, 0x00000002, 0x00000280, 0x03000400, 0x002F0269, 0x000D0269, 0x00000002, 0x2E000000, 0x0000330F, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000500, 0x00000400, 0x002F0269, 0x0009026B, 0x00000002, 0x00000500, 0x00000400, 0x002F0269, 0x0009026B, 0x00000002, 0x2F000000, 0x0000324F, 0x00000140, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000500, 0x01000400, 0x002D0267, 0x0009026B, 0x00000002, 0x00000500, 0x03000400, 0x002F0269, 0x000D0269, 0x00000002, 0x30000000, 0x0000301F, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000500, 0x00000400, 0x002F0269, 0x0009026B, 0x00000002, 0x00000500, 0x00000400, 0x002F0269, 0x0009026B, 0x00000002, 0x31000000, 0x0000305F, 0x00000140, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000500, 0x01000400, 0x002D0267, 0x0009026B, 0x00000002, 0x00000500, 0x03000400, 0x002F0269, 0x000D0269, 0x00000002, 0x32000000, 0x0000324E, 0x00000500, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000500, 0x00000400, 0x002D0267, 0x0009026B, 0x00000002, 0x00000A00, 0x00000400, 0x002F0269, 0x000D0269, 0x00000002, 0x33000000, 0x0000324E, 0x00000280, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000500, 0x02000800, 0x002D0267, 0x0009026B, 0x00000002, 0x00000A00, 0x02000800, 0x002F0269, 0x000D0269, 0x00000002, 0x34000000, 0x0000305E, 0x00000500, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000500, 0x00000400, 0x002D0267, 0x0009026B, 0x00000002, 0x00000A00, 0x00000400, 0x002F0269, 0x000D0269, 0x00000002, 0x35000000, 0x0000305E, 0x00000280, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000500, 0x02000800, 0x002D0267, 0x0009026B, 0x00000002, 0x00000A00, 0x02000800, 0x002F0269, 0x000D0269, 0x00000002, 0x36000000, 0x0000334F, 0x00000500, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000A00, 0x00000400, 0x002D0267, 0x0009026B, 0x00000002, 0x00001400, 0x00000400, 0x002F0269, 0x000D0269, 0x00000002, 0x37000000, 0x0000324F, 0x00000280, 0x04541E3A, 0x00000270, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000400, 0x00000000, 0x00000A00, 0x02000800, 0x002D0267, 0x0009026B, 0x00000002, 0x00001400, 0x02000800, 0x002F0269, 0x000D0269, 0x00000002

glabel _osViModeNtscLan1
.word 0x02000000, 0x0000311E, 0x00000140, 0x03E52239, 0x0000020D, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002

glabel _osViModeMPalLan1
.word 0x1E000000, 0x0000311E, 0x00000140, 0x04651E39, 0x0000020D, 0x00040C11, 0x0C190C1A, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002

glabel D_800958C0
.float 0.017453292, 0.0, 0.0, 0.0

glabel D_800958D0
.word 0xFFFFFFFF

glabel D_800958D4
.byte 0xFA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_800958E0
.word 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000

glabel D_800958F0
.word 0x00000000

glabel D_800958F4
.word 0x03B9ACA0

glabel D_800958F8
.word 0x02E6D354

glabel D_800958FC
.word 0x00000000

glabel D_80095900
.word 0x003FFF01, 0x00000000, 0x00000000, 0x00000000

glabel D_80095910
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80095938
.word 0x00000000, 0x00000000

glabel D_80095940
.ascii "0123456789abcdef\0\0\0\0"

glabel D_80095954
.ascii "0123456789ABCDEF\0\0\0\0\0\0\0\0\0\0\0\0"

glabel D_80095970
.short 0x0000

glabel D_80095972
.short 0x0000

glabel D_80095974
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800959A0
.short 0x0000

glabel D_800959A2
.short 0x0000

glabel D_800959A4
.word 0x00000000

glabel D_800959A8
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel __osViCurr
.word D_80095970

glabel __osViNext
.word D_800959A0, 0x00000000, 0x00000000

glabel D_800959E0
.word 0x10000000, 0x0000311E, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x00000280, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002
