#ifndef _EBI_SCREEN_TNINTENDOLOGO_H
#define _EBI_SCREEN_TNINTENDOLOGO_H

/*
    __vt__Q33ebi6Screen13TNintendoLogo:
    .4byte 0
    .4byte 0
    .4byte setArchive__Q33ebi6Screen11TScreenBaseFP10JKRArchive
    .4byte openScreen__Q33ebi6Screen11TScreenBaseFPQ33ebi6Screen7ArgOpen
    .4byte closeScreen__Q33ebi6Screen11TScreenBaseFPQ33ebi6Screen8ArgClose
    .4byte killScreen__Q33ebi6Screen11TScreenBaseFv
    .4byte update__Q33ebi6Screen11TScreenBaseFv
    .4byte draw__Q33ebi6Screen11TScreenBaseFv
    .4byte isFinishScreen__Q33ebi6Screen11TScreenBaseFv
    .4byte doSetArchive__Q33ebi6Screen13TNintendoLogoFP10JKRArchive
    .4byte doOpenScreen__Q33ebi6Screen11TScreenBaseFPQ33ebi6Screen7ArgOpen
    .4byte doCloseScreen__Q33ebi6Screen11TScreenBaseFPQ33ebi6Screen8ArgClose
    .4byte doKillScreen__Q33ebi6Screen11TScreenBaseFv
    .4byte doInitWaitState__Q33ebi6Screen11TScreenBaseFv
    .4byte doUpdateStateOpen__Q33ebi6Screen11TScreenBaseFv
    .4byte doUpdateStateWait__Q33ebi6Screen13TNintendoLogoFv
    .4byte doUpdateStateClose__Q33ebi6Screen11TScreenBaseFv
    .4byte doDraw__Q33ebi6Screen13TNintendoLogoFv
    .4byte getName__Q33ebi6Screen13TNintendoLogoFv
*/

namespace ebi {
namespace Screen {
struct TScreenBase {
	virtual void setArchive(JKRArchive*);   // _08
	virtual void openScreen(ArgOpen*);      // _0C
	virtual void closeScreen(ArgClose*);    // _10
	virtual void killScreen();              // _14
	virtual void update();                  // _18
	virtual void draw();                    // _1C
	virtual void isFinishScreen();          // _20
	virtual void doSetArchive(JKRArchive*); // _24
	virtual void doOpenScreen(ArgOpen*);    // _28 (weak)
	virtual void doCloseScreen(ArgClose*);  // _2C (weak)
	virtual void doKillScreen();            // _30 (weak)
	virtual void doInitWaitState();         // _34 (weak)
	virtual void doUpdateStateOpen();       // _38 (weak)
	virtual void doUpdateStateWait();       // _3C
	virtual void doUpdateStateClose();      // _40 (weak)
};
} // namespace Screen
} // namespace ebi

namespace ebi {
namespace Screen {
struct TNintendoLogo : public TScreenBase {
	virtual void doSetArchive(JKRArchive*); // _24
	virtual void doUpdateStateWait();       // _3C
	virtual void doDraw();                  // _44
	virtual void getName();                 // _48 (weak)
};
} // namespace Screen
} // namespace ebi

#endif
