#ifndef _EFX_TSYNC_H
#define _EFX_TSYNC_H

struct JPAEmitterCallBack {
    virtual void _00() = 0;                  // _00
    virtual void _04() = 0;                  // _04
    virtual void _08() = 0;                  // _08
    virtual void _0C() = 0;                  // _0C
    virtual void _10() = 0;                  // _10
    virtual void _14() = 0;                  // _14
    virtual void _18() = 0;                  // _18
    virtual void _1C() = 0;                  // _1C
    virtual void draw(JPABaseEmitter*);      // _20
    virtual void drawAfter(JPABaseEmitter*); // _24

    // _00 VTBL
};

namespace efx {
struct TSync : public JPAEmitterCallBack {
    virtual void create(Arg*);                      // _00
    virtual void forceKill();                       // _04
    virtual void fade();                            // _08
    virtual void _0C() = 0;                         // _0C
    virtual void _10() = 0;                         // _10
    virtual void @4 @__dt();                        // _14
    virtual void @4 @execute(JPABaseEmitter*);      // _18
    virtual void @4 @executeAfter(JPABaseEmitter*); // _1C
    virtual void draw(JPABaseEmitter*);             // _20
    virtual void drawAfter(JPABaseEmitter*);        // _24
    virtual void execute(JPABaseEmitter*);          // _28
    virtual void executeAfter(JPABaseEmitter*);     // _2C
    virtual void _30() = 0;                         // _30
    virtual void doExecuteAfter(JPABaseEmitter*);   // _34
    virtual void startDemoDrawOff();                // _38
    virtual void endDemoDrawOn();                   // _3C
    virtual ~TSync();                               // _40

    // _00 VTBL
};
} // namespace efx

#endif
