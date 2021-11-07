#ifndef _EFX_TKAGEBEND1_H
#define _EFX_TKAGEBEND1_H

namespace efx {
struct TSimpleMtx2 {
	virtual void create(Arg*); // _00

	// _00 VTBL
};
} // namespace efx

namespace efx {
struct TSimple2 {
	virtual void _00() = 0;   // _00
	virtual void forceKill(); // _04
	virtual void fade();      // _08

	// _00 VTBL
};
} // namespace efx

namespace efx {
struct TKageBend1 : public TSimpleMtx2, public TSimple2 {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

#endif
