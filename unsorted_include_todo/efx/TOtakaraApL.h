#ifndef _EFX_TOTAKARAAPL_H
#define _EFX_TOTAKARAAPL_H

/*
    __vt__Q23efx11TOtakaraApL:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx11TOtakaraApLFPQ23efx3Arg
    .4byte forceKill__Q23efx8TSimple3Fv
    .4byte fade__Q23efx8TSimple3Fv
*/

namespace efx {
struct TSimple3 {
	virtual void create(Arg*); // _08
	virtual void forceKill();  // _0C (weak)
	virtual void fade();       // _10 (weak)
};
} // namespace efx

namespace efx {
struct TOtakaraApL : public TSimple3 {
	virtual void create(Arg*); // _08
};
} // namespace efx

#endif
