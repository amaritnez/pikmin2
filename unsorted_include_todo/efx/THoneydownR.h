#ifndef _EFX_THONEYDOWNR_H
#define _EFX_THONEYDOWNR_H

/*
    __vt__Q23efx11THoneydownR:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx8TSimple1FPQ23efx3Arg
    .4byte forceKill__Q23efx8TSimple1Fv
    .4byte fade__Q23efx8TSimple1Fv
*/

namespace efx {
struct TSimple1 {
	virtual void create(Arg*); // _08
	virtual void forceKill();  // _0C (weak)
	virtual void fade();       // _10 (weak)
};
} // namespace efx

namespace efx {
struct THoneydownR : public TSimple1 {
};
} // namespace efx

#endif
