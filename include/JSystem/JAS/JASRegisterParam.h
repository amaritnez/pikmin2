#ifndef _JSYSTEM_JAS_JASREGISTERPARAM_H
#define _JSYSTEM_JAS_JASREGISTERPARAM_H

#include "types.h"

/**
 * @size = 0x30
 */
struct JASRegisterParam {
	u16 _00[6]; // _00 - unknown
	u16 _0C;    // _0C - bankAndProgramNumber?
	u16 _0E;    // _0E - unknown
	u16 _10;    // _10
	u16 _12;    // _12
	u16 _14;    // _14
	u16 _16[3]; // _16 - unknown
	u8 _1C[4];  // _1C - unknown
	u32 _20;    // _20
	u32 _24;    // _24
	u32 _28;    // _28
	u32 _2C;    // _2C
};

#endif
