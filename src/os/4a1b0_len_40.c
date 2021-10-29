#include "common.h"

INCLUDE_ASM(void*, "os/4a1b0_len_40", memset, void* ptr, s32 value, s32 num);

// Stack allocation.
/*void memset(void* ptr, s32 value, size_t num) {
    s32 temp_v1;
    s8* phi_a3;
    s32 phi_v1;
    s8 val = value;

    phi_a3 = (s8*)ptr;
    phi_v1 = num - 1;
    if (num != 0) {
        do {
            *phi_a3++ = value;
            phi_v1--;
            phi_a3 += 1;
        } while (phi_v1 != -1);
    }

}*/
