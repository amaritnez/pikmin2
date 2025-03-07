#ifndef _MORIMURA_TCONFIRMENDWINDOW_H
#define _MORIMURA_TCONFIRMENDWINDOW_H

/*
    __vt__Q28Morimura17TConfirmEndWindow:
    .4byte 0
    .4byte 0
    .4byte __dt__Q28Morimura17TConfirmEndWindowFv
    .4byte getChildCount__5CNodeFv
    .4byte 0
    .4byte 0
    .4byte "@24@__dt__Q28Morimura17TConfirmEndWindowFv"
    .4byte update__Q26Screen7ObjBaseFv
    .4byte draw__Q26Screen7ObjBaseFR8Graphics
    .4byte start__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
    .4byte end__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
    .4byte setOwner__Q26Screen7ObjBaseFPQ26Screen9SceneBase
    .4byte getOwner__Q26Screen7ObjBaseCFv
    .4byte create__Q26Screen7ObjBaseFP10JKRArchive
    .4byte confirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
    .4byte confirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
    .4byte confirmEndScene__Q26Screen7ObjBaseFPQ26Screen11EndSceneArg
    .4byte doStart__Q28Morimura17TConfirmEndWindowFPCQ26Screen13StartSceneArg
    .4byte doEnd__Q32og9newScreen15ObjSMenuPauseVSFPCQ26Screen11EndSceneArg
    .4byte doCreate__Q32og9newScreen22ObjWorldMapInfoWindow0FP10JKRArchive
    .4byte doUpdateFadein__Q28Morimura17TConfirmEndWindowFv
    .4byte doUpdateFadeinFinish__Q28Morimura17TConfirmEndWindowFv
    .4byte doUpdate__Q32og9newScreen15ObjSMenuPauseVSFv
    .4byte doUpdateFinish__Q32og9newScreen15ObjSMenuPauseVSFv
    .4byte doUpdateFadeout__Q28Morimura17TConfirmEndWindowFv
    .4byte doUpdateFadeoutFinish__Q28Morimura17TConfirmEndWindowFv
    .4byte doDraw__Q28Morimura17TConfirmEndWindowFR8Graphics
    .4byte doConfirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
    .4byte doConfirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
    .4byte doConfirmEndScene__Q26Screen7ObjBaseFRPQ26Screen11EndSceneArg
    .4byte in_L__Q32og9newScreen15ObjSMenuPauseVSFv
    .4byte in_R__Q32og9newScreen15ObjSMenuPauseVSFv
    .4byte wait__Q32og9newScreen15ObjSMenuPauseVSFv
    .4byte out_L__Q32og9newScreen22ObjWorldMapInfoWindow0Fv
    .4byte out_R__Q32og9newScreen15ObjSMenuPauseVSFv
    .4byte loop__Q32og9newScreen12ObjSMenuBaseFv
    .4byte doUpdateCancelAction__Q32og9newScreen15ObjSMenuPauseVSFv
    .4byte doUpdateRAction__Q32og9newScreen15ObjSMenuPauseVSFv
    .4byte doUpdateLAction__Q32og9newScreen15ObjSMenuPauseVSFv
    .4byte updateFadeIn__Q32og9newScreen12ObjSMenuBaseFv
    .4byte updateFadeOut__Q32og9newScreen12ObjSMenuBaseFv
    .4byte commonUpdate__Q32og9newScreen22ObjWorldMapInfoWindow0Fv
    .4byte out_cancel__Q32og9newScreen22ObjWorldMapInfoWindow0Fv
    .4byte out_menu_0__Q32og9newScreen22ObjWorldMapInfoWindow0Fv
    .4byte out_menu_1__Q32og9newScreen22ObjWorldMapInfoWindow0Fv
    .4byte getResult__Q32og9newScreen22ObjWorldMapInfoWindow0Fv
*/

struct CNode {
	virtual ~CNode();             // _08 (weak)
	virtual void getChildCount(); // _0C
};

namespace Screen {
struct ObjBase {
	virtual ~ObjBase();                                 // _08 (weak)
	virtual void _0C() = 0;                             // _0C
	virtual void _10() = 0;                             // _10
	virtual void _14() = 0;                             // _14
	virtual void _18() = 0;                             // _18
	virtual void update();                              // _1C
	virtual void draw(Graphics&);                       // _20
	virtual void start(const StartSceneArg*);           // _24
	virtual void end(const EndSceneArg*);               // _28
	virtual void setOwner(SceneBase*);                  // _2C (weak)
	virtual void getOwner() const;                      // _30 (weak)
	virtual void create(JKRArchive*);                   // _34
	virtual void confirmSetScene(SetSceneArg&);         // _38
	virtual void confirmStartScene(StartSceneArg*);     // _3C
	virtual void confirmEndScene(EndSceneArg*);         // _40
	virtual void doStart(const Screen::StartSceneArg*); // _44
	virtual void _48() = 0;                             // _48
	virtual void _4C() = 0;                             // _4C
	virtual void doUpdateFadein();                      // _50
	virtual void doUpdateFadeinFinish();                // _54
	virtual void _58() = 0;                             // _58
	virtual void _5C() = 0;                             // _5C
	virtual void doUpdateFadeout();                     // _60
	virtual void doUpdateFadeoutFinish();               // _64
	virtual void doDraw(Graphics&);                     // _68
	virtual void doConfirmSetScene(SetSceneArg&);       // _6C (weak)
	virtual void doConfirmStartScene(StartSceneArg*);   // _70 (weak)
	virtual void doConfirmEndScene(EndSceneArg*&);      // _74 (weak)
};
} // namespace Screen

namespace og {
namespace newScreen {
struct ObjSMenuPauseVS {
	virtual ~ObjSMenuPauseVS();                         // _08 (weak)
	virtual void _0C() = 0;                             // _0C
	virtual void _10() = 0;                             // _10
	virtual void _14() = 0;                             // _14
	virtual void _18() = 0;                             // _18
	virtual void _1C() = 0;                             // _1C
	virtual void _20() = 0;                             // _20
	virtual void _24() = 0;                             // _24
	virtual void _28() = 0;                             // _28
	virtual void _2C() = 0;                             // _2C
	virtual void _30() = 0;                             // _30
	virtual void _34() = 0;                             // _34
	virtual void _38() = 0;                             // _38
	virtual void _3C() = 0;                             // _3C
	virtual void _40() = 0;                             // _40
	virtual void doStart(const Screen::StartSceneArg*); // _44
	virtual void doEnd(const Screen::EndSceneArg*);     // _48
	virtual void _4C() = 0;                             // _4C
	virtual void doUpdateFadein();                      // _50
	virtual void doUpdateFadeinFinish();                // _54
	virtual void doUpdate();                            // _58
	virtual void doUpdateFinish();                      // _5C
	virtual void doUpdateFadeout();                     // _60
	virtual void doUpdateFadeoutFinish();               // _64
	virtual void doDraw(Graphics&);                     // _68
	virtual void _6C() = 0;                             // _6C
	virtual void _70() = 0;                             // _70
	virtual void _74() = 0;                             // _74
	virtual void in_L();                                // _78
	virtual void in_R();                                // _7C (weak)
	virtual void wait();                                // _80
	virtual void _84() = 0;                             // _84
	virtual void out_R();                               // _88 (weak)
	virtual void _8C() = 0;                             // _8C
	virtual void doUpdateCancelAction();                // _90
	virtual void doUpdateRAction();                     // _94 (weak)
	virtual void doUpdateLAction();                     // _98 (weak)
};
} // namespace newScreen
} // namespace og

namespace og {
namespace newScreen {
struct ObjWorldMapInfoWindow0 {
	virtual ~ObjWorldMapInfoWindow0();                  // _08 (weak)
	virtual void _0C() = 0;                             // _0C
	virtual void _10() = 0;                             // _10
	virtual void _14() = 0;                             // _14
	virtual void _18() = 0;                             // _18
	virtual void _1C() = 0;                             // _1C
	virtual void _20() = 0;                             // _20
	virtual void _24() = 0;                             // _24
	virtual void _28() = 0;                             // _28
	virtual void _2C() = 0;                             // _2C
	virtual void _30() = 0;                             // _30
	virtual void _34() = 0;                             // _34
	virtual void _38() = 0;                             // _38
	virtual void _3C() = 0;                             // _3C
	virtual void _40() = 0;                             // _40
	virtual void doStart(const Screen::StartSceneArg*); // _44
	virtual void _48() = 0;                             // _48
	virtual void doCreate(JKRArchive*);                 // _4C
	virtual void doUpdateFadein();                      // _50
	virtual void doUpdateFadeinFinish();                // _54
	virtual void _58() = 0;                             // _58
	virtual void _5C() = 0;                             // _5C
	virtual void doUpdateFadeout();                     // _60
	virtual void doUpdateFadeoutFinish();               // _64
	virtual void doDraw(Graphics&);                     // _68
	virtual void _6C() = 0;                             // _6C
	virtual void _70() = 0;                             // _70
	virtual void _74() = 0;                             // _74
	virtual void _78() = 0;                             // _78
	virtual void _7C() = 0;                             // _7C
	virtual void _80() = 0;                             // _80
	virtual void out_L();                               // _84
	virtual void _88() = 0;                             // _88
	virtual void _8C() = 0;                             // _8C
	virtual void _90() = 0;                             // _90
	virtual void _94() = 0;                             // _94
	virtual void _98() = 0;                             // _98
	virtual void _9C() = 0;                             // _9C
	virtual void _A0() = 0;                             // _A0
	virtual void commonUpdate();                        // _A4
	virtual void out_cancel();                          // _A8
	virtual void out_menu_0();                          // _AC
	virtual void out_menu_1();                          // _B0
	virtual void getResult();                           // _B4 (weak)
};
} // namespace newScreen
} // namespace og

namespace og {
namespace newScreen {
struct ObjSMenuBase {
	virtual ~ObjSMenuBase();                            // _08 (weak)
	virtual void _0C() = 0;                             // _0C
	virtual void _10() = 0;                             // _10
	virtual void _14() = 0;                             // _14
	virtual void _18() = 0;                             // _18
	virtual void _1C() = 0;                             // _1C
	virtual void _20() = 0;                             // _20
	virtual void _24() = 0;                             // _24
	virtual void _28() = 0;                             // _28
	virtual void _2C() = 0;                             // _2C
	virtual void _30() = 0;                             // _30
	virtual void _34() = 0;                             // _34
	virtual void _38() = 0;                             // _38
	virtual void _3C() = 0;                             // _3C
	virtual void _40() = 0;                             // _40
	virtual void doStart(const Screen::StartSceneArg*); // _44
	virtual void _48() = 0;                             // _48
	virtual void _4C() = 0;                             // _4C
	virtual void doUpdateFadein();                      // _50
	virtual void doUpdateFadeinFinish();                // _54
	virtual void _58() = 0;                             // _58
	virtual void _5C() = 0;                             // _5C
	virtual void doUpdateFadeout();                     // _60
	virtual void doUpdateFadeoutFinish();               // _64
	virtual void doDraw(Graphics&);                     // _68
	virtual void _6C() = 0;                             // _6C
	virtual void _70() = 0;                             // _70
	virtual void _74() = 0;                             // _74
	virtual void _78() = 0;                             // _78
	virtual void _7C() = 0;                             // _7C
	virtual void _80() = 0;                             // _80
	virtual void _84() = 0;                             // _84
	virtual void _88() = 0;                             // _88
	virtual void loop();                                // _8C
	virtual void _90() = 0;                             // _90
	virtual void _94() = 0;                             // _94
	virtual void _98() = 0;                             // _98
	virtual void updateFadeIn();                        // _9C
	virtual void updateFadeOut();                       // _A0
};
} // namespace newScreen
} // namespace og

namespace Morimura {
struct TConfirmEndWindow : public CNode, public ObjBase, public ObjSMenuPauseVS, public ObjWorldMapInfoWindow0, public ObjSMenuBase {
	virtual ~TConfirmEndWindow();                       // _08 (weak)
	virtual void _10() = 0;                             // _10
	virtual void _14() = 0;                             // _14
	virtual void doStart(const Screen::StartSceneArg*); // _44
	virtual void doUpdateFadein();                      // _50
	virtual void doUpdateFadeinFinish();                // _54
	virtual void doUpdateFadeout();                     // _60
	virtual void doUpdateFadeoutFinish();               // _64
	virtual void doDraw(Graphics&);                     // _68

	TConfirmEndWindow(const char*);
	void setRetireMsg(unsigned long long);
};
} // namespace Morimura

#endif
