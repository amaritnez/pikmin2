#ifndef _EFX_TTANKFIREABC_H
#define _EFX_TTANKFIREABC_H

/*
    __vt__Q23efx12TTankFireABC:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx12TTankFireABCFPQ23efx3Arg
    .4byte forceKill__Q23efx12TTankFireABCFv
    .4byte fade__Q23efx12TTankFireABCFv
    .4byte startDemoDrawOff__Q23efx12TTankFireABCFv
    .4byte endDemoDrawOn__Q23efx12TTankFireABCFv
*/

namespace efx {
struct TTankFireABC {
	virtual void create(Arg*);       // _08
	virtual void forceKill();        // _0C (weak)
	virtual void fade();             // _10 (weak)
	virtual void startDemoDrawOff(); // _14 (weak)
	virtual void endDemoDrawOn();    // _18 (weak)
};
} // namespace efx

#endif
