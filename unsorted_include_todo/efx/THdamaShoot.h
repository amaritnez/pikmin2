#ifndef _EFX_THDAMASHOOT_H
#define _EFX_THDAMASHOOT_H

namespace efx {
struct TSimpleMtx3 {
	virtual void create(Arg*); // _00

	// _00 VTBL
};
} // namespace efx

namespace efx {
struct TSimple3 {
	virtual void _00() = 0;   // _00
	virtual void forceKill(); // _04
	virtual void fade();      // _08

	// _00 VTBL
};
} // namespace efx

namespace efx {
struct THdamaShoot : public TSimpleMtx3, public TSimple3 {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

#endif
