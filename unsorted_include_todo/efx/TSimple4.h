#ifndef _EFX_TSIMPLE4_H
#define _EFX_TSIMPLE4_H

namespace efx {
struct TSimple4 {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

#endif
