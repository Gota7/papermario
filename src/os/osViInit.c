#include "common.h"

//INCLUDE_ASM(s32, "os/47e90_len_110", osViInit);

extern OSViMode _osViModePalLan1;
extern OSViMode _osViModeMPalLan1;
extern OSViMode _osViModeNtscLan1;
extern __OSViContext vi[2];

void osViInit(void) {
	bzero(vi, sizeof(vi));
	__osViCurr = &vi[0];
	__osViNext = &vi[1];
	__osViNext->retraceCount = 1;
	__osViCurr->retraceCount = 1;
	__osViNext->framep = (void*)K0BASE;
	__osViCurr->framep = (void*)K0BASE;
	if (osTvType == OS_TV_TYPE_PAL) {
		__osViNext->modep = &_osViModePalLan1;
	}
	else if (osTvType == OS_TV_TYPE_MPAL) {
		__osViNext->modep = &_osViModeMPalLan1;
	}
	else {
		__osViNext->modep = &_osViModeNtscLan1;
	}
	__osViNext->state = VI_STATE_BLACK;
	__osViNext->control = __osViNext->modep->comRegs.ctrl;
	while (IO_READ(VI_CURRENT_REG) > 10) //wait for vsync?
		;
	IO_WRITE(VI_CONTROL_REG, 0); //pixel size blank (no data, no sync)
	osViSwapContext();
}
