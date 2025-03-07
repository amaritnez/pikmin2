#ifndef _EFX_CONTEXT_H
#define _EFX_CONTEXT_H

#include "CNode.h"
#include "Vector3.h"

namespace efx {
struct Context : public CNode {
	Context();

	virtual ~Context(); // _08

	Vector3f _18; // _18
};

struct ContextChasePos : public CNode {
	virtual ~ContextChasePos(); // _08

	Vector3f* m_position; // _18
};
} // namespace efx

#endif
