#include "common.h"

s32 osSiRawStartDma(s32 direction, void* dramAddr) {
    register u32 stat = IO_READ(SI_STATUS_REG);
    s32 busy;
    if (stat & (SI_STATUS_DMA_BUSY | SI_STATUS_RD_BUSY))
        busy = TRUE;
    else
        busy = FALSE;

    if (busy)
        return -1;

    if (direction == OS_WRITE)
        osWritebackDCache(dramAddr, 64);

    IO_WRITE(SI_DRAM_ADDR_REG, osVirtualToPhysical(dramAddr));

    if (direction == OS_READ)
        IO_WRITE(SI_PIF_ADDR_RD64B_REG, 0x1FC007C0);
    else
        IO_WRITE(SI_PIF_ADDR_WR64B_REG, 0x1FC007C0);

    if (direction == OS_READ)
        osInvalDCache(dramAddr, 64);

    return 0;
}
