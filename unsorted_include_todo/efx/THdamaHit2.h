#ifndef _EFX_THDAMAHIT2_H
#define _EFX_THDAMAHIT2_H

/*
    __vt__Q23efx10THdamaHit2:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx8TSimple4FPQ23efx3Arg
    .4byte forceKill__Q23efx8TSimple4Fv
    .4byte fade__Q23efx8TSimple4Fv
*/

namespace efx {
struct TSimple4 {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

namespace efx {
struct THdamaHit2 : public TSimple4 {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

#endif
