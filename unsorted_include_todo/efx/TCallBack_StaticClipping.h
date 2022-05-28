#ifndef _EFX_TCALLBACK_STATICCLIPPING_H
#define _EFX_TCALLBACK_STATICCLIPPING_H

/*
    __vt__Q23efx24TCallBack_StaticClipping:
    .4byte 0
    .4byte 0
    .4byte __dt__Q23efx24TCallBack_StaticClippingFv
    .4byte execute__18JPAEmitterCallBackFP14JPABaseEmitter
    .4byte executeAfter__Q23efx24TCallBack_StaticClippingFP14JPABaseEmitter
    .4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
    .4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
*/

struct JPAEmitterCallBack {
	virtual ~JPAEmitterCallBack();              // _00
	virtual void execute(JPABaseEmitter*);      // _04
	virtual void executeAfter(JPABaseEmitter*); // _08
	virtual void draw(JPABaseEmitter*);         // _0C
	virtual void drawAfter(JPABaseEmitter*);    // _10

	// _00 VTBL
};

namespace efx {
struct TCallBack_StaticClipping : public JPAEmitterCallBack {
	virtual ~TCallBack_StaticClipping();        // _00
	virtual void execute(JPABaseEmitter*);      // _04
	virtual void executeAfter(JPABaseEmitter*); // _08
	virtual void draw(JPABaseEmitter*);         // _0C
	virtual void drawAfter(JPABaseEmitter*);    // _10

	// _00 VTBL
};
} // namespace efx

#endif
