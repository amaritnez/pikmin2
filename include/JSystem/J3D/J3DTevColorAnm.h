#ifndef _JSYSTEM_J3D_J3DTEVCOLORANM_H
#define _JSYSTEM_J3D_J3DTEVCOLORANM_H

#include "types.h"

struct J3DAnmTevRegKey;
struct J3DTevColorAnm {
	u16 m_index;            // _00
	J3DAnmTevRegKey* m_key; // _04
};

struct J3DTevKColorAnm {
	u16 m_index;            // _00
	J3DAnmTevRegKey* m_key; // _04
};

#endif
