#ifndef _EFX_TOOOTAPHOUDEN_H
#define _EFX_TOOOTAPHOUDEN_H

/*
    __vt__Q23efx13TOootaPhouden:
    .4byte 0
    .4byte 0
    .4byte "create__Q23efx29TSyncGroup2<Q23efx9TChasePos>FPQ23efx3Arg"
    .4byte "forceKill__Q23efx29TSyncGroup2<Q23efx9TChasePos>Fv"
    .4byte "fade__Q23efx29TSyncGroup2<Q23efx9TChasePos>Fv"
    .4byte "startDemoDrawOff__Q23efx29TSyncGroup2<Q23efx9TChasePos>Fv"
    .4byte "endDemoDrawOn__Q23efx29TSyncGroup2<Q23efx9TChasePos>Fv"
*/

namespace efx {
struct TSyncGroup2<efx::TChasePos> {
	virtual void TSyncGroup2<TChasePos>::create(Arg*);       // _08 (weak)
	virtual void TSyncGroup2<TChasePos>::forceKill();        // _0C (weak)
	virtual void TSyncGroup2<TChasePos>::fade();             // _10 (weak)
	virtual void TSyncGroup2<TChasePos>::startDemoDrawOff(); // _14 (weak)
	virtual void TSyncGroup2<TChasePos>::endDemoDrawOn();    // _18 (weak)
};
} // namespace efx

namespace efx {
struct TOootaPhouden : public TSyncGroup2<efx::TChasePos> {
};
} // namespace efx

#endif
