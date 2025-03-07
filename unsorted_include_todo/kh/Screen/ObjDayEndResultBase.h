#ifndef _KH_SCREEN_OBJDAYENDRESULTBASE_H
#define _KH_SCREEN_OBJDAYENDRESULTBASE_H

/*
    __vt__Q32kh6Screen19ObjDayEndResultBase:
    .4byte 0
    .4byte 0
    .4byte __dt__Q32kh6Screen19ObjDayEndResultBaseFv
    .4byte getChildCount__5CNodeFv
    .4byte 0
    .4byte 0
    .4byte "@24@__dt__Q32kh6Screen19ObjDayEndResultBaseFv"
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
    .4byte doStart__Q32kh6Screen19ObjDayEndResultBaseFPCQ26Screen13StartSceneArg
    .4byte doEnd__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
    .4byte doCreate__Q32kh6Screen19ObjDayEndResultBaseFP10JKRArchive
    .4byte doUpdateFadein__Q32kh6Screen19ObjDayEndResultBaseFv
    .4byte doUpdateFadeinFinish__Q32kh6Screen19ObjDayEndResultBaseFv
    .4byte doUpdate__Q26Screen7ObjBaseFv
    .4byte doUpdateFinish__Q32kh6Screen19ObjDayEndResultBaseFv
    .4byte doUpdateFadeout__Q32kh6Screen19ObjDayEndResultBaseFv
    .4byte doUpdateFadeoutFinish__Q26Screen7ObjBaseFv
    .4byte doDraw__Q32kh6Screen19ObjDayEndResultBaseFR8Graphics
    .4byte doConfirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
    .4byte doConfirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
    .4byte doConfirmEndScene__Q26Screen7ObjBaseFRPQ26Screen11EndSceneArg
    .4byte updateCommon__Q32kh6Screen19ObjDayEndResultBaseFv
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
*/

struct CNode {
	virtual ~CNode();             // _08 (weak)
	virtual void getChildCount(); // _0C
};

namespace Screen {
struct ObjBase {
	virtual ~ObjBase();                               // _08 (weak)
	virtual void _0C() = 0;                           // _0C
	virtual void _10() = 0;                           // _10
	virtual void _14() = 0;                           // _14
	virtual void _18() = 0;                           // _18
	virtual void update();                            // _1C
	virtual void draw(Graphics&);                     // _20
	virtual void start(const StartSceneArg*);         // _24
	virtual void end(const EndSceneArg*);             // _28
	virtual void setOwner(SceneBase*);                // _2C (weak)
	virtual void getOwner() const;                    // _30 (weak)
	virtual void create(JKRArchive*);                 // _34
	virtual void confirmSetScene(SetSceneArg&);       // _38
	virtual void confirmStartScene(StartSceneArg*);   // _3C
	virtual void confirmEndScene(EndSceneArg*);       // _40
	virtual void doStart(const StartSceneArg*);       // _44
	virtual void doEnd(const EndSceneArg*);           // _48 (weak)
	virtual void doCreate(JKRArchive*);               // _4C
	virtual void doUpdateFadein();                    // _50
	virtual void doUpdateFadeinFinish();              // _54
	virtual void doUpdate();                          // _58 (weak)
	virtual void doUpdateFinish();                    // _5C
	virtual void doUpdateFadeout();                   // _60
	virtual void doUpdateFadeoutFinish();             // _64 (weak)
	virtual void doDraw(Graphics&);                   // _68
	virtual void doConfirmSetScene(SetSceneArg&);     // _6C (weak)
	virtual void doConfirmStartScene(StartSceneArg*); // _70 (weak)
	virtual void doConfirmEndScene(EndSceneArg*&);    // _74 (weak)
};
} // namespace Screen

namespace kh {
namespace Screen {
struct ObjDayEndResultBase : public CNode, public ObjBase {
	virtual ~ObjDayEndResultBase();             // _08 (weak)
	virtual void _10() = 0;                     // _10
	virtual void _14() = 0;                     // _14
	virtual void doStart(const StartSceneArg*); // _44
	virtual void doCreate(JKRArchive*);         // _4C
	virtual void doUpdateFadein();              // _50
	virtual void doUpdateFadeinFinish();        // _54
	virtual void doUpdateFinish();              // _5C
	virtual void doUpdateFadeout();             // _60
	virtual void doDraw(Graphics&);             // _68
	virtual void updateCommon();                // _78
	virtual void _7C() = 0;                     // _7C
	virtual void _80() = 0;                     // _80
	virtual void _84() = 0;                     // _84
	virtual void _88() = 0;                     // _88
	virtual void _8C() = 0;                     // _8C
	virtual void _90() = 0;                     // _90
	virtual void _94() = 0;                     // _94
	virtual void _98() = 0;                     // _98
	virtual void _9C() = 0;                     // _9C
	virtual void _A0() = 0;                     // _A0
	virtual void _A4() = 0;                     // _A4

	void setFadeinFrm();
	void setFadeoutFrm();
};
} // namespace Screen
} // namespace kh

#endif
