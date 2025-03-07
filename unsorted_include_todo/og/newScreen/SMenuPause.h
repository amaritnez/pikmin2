#ifndef _OG_NEWSCREEN_SMENUPAUSE_H
#define _OG_NEWSCREEN_SMENUPAUSE_H

/*
    __vt__Q32og9newScreen10SMenuPause:
    .4byte 0
    .4byte 0
    .4byte getSceneType__Q32og9newScreen10SMenuPauseFv
    .4byte getOwnerID__Q32og9newScreen10SMenuPauseFv
    .4byte getMemberID__Q32og9newScreen10SMenuPauseFv
    .4byte isUseBackupSceneInfo__Q32og9newScreen10SMenuPauseFv
    .4byte isDrawInDemo__Q26Screen9SceneBaseCFv
    .4byte getResName__Q32og9newScreen10SMenuPauseCFv
    .4byte doCreateObj__Q32og9newScreen10SMenuPauseFP10JKRArchive
    .4byte doUserCallBackFunc__Q32og9newScreen10SMenuPauseFPQ28Resource10MgrCommand
    .4byte setPort__Q26Screen9SceneBaseFR8Graphics
    .4byte doUpdateActive__Q32og9newScreen10SMenuPauseFv
    .4byte doConfirmSetScene__Q32og9newScreen10SMenuPauseFRQ26Screen11SetSceneArg
    .4byte doConfirmStartScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
    .4byte doConfirmEndScene__Q26Screen9SceneBaseFRPQ26Screen11EndSceneArg
    .4byte doStart__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
    .4byte doEnd__Q26Screen9SceneBaseFPQ26Screen11EndSceneArg
    .4byte setDefaultDispMember__Q26Screen9SceneBaseFv
    .4byte doSetBackupScene__Q26Screen9SceneBaseFRQ26Screen11SetSceneArg
    .4byte doGetFinishState__Q32og9newScreen14SceneSMenuBaseFv
    .4byte 0
*/

namespace Screen {
struct SceneBase {
	virtual void getSceneType();                            // _08 (weak)
	virtual void getOwnerID();                              // _0C (weak)
	virtual void getMemberID();                             // _10 (weak)
	virtual void isUseBackupSceneInfo();                    // _14 (weak)
	virtual void isDrawInDemo() const;                      // _18 (weak)
	virtual void getResName() const;                        // _1C (weak)
	virtual void doCreateObj(JKRArchive*);                  // _20
	virtual void doUserCallBackFunc(Resource::MgrCommand*); // _24
	virtual void setPort(Graphics&);                        // _28 (weak)
	virtual void doUpdateActive();                          // _2C
	virtual void doConfirmSetScene(Screen::SetSceneArg&);   // _30
	virtual void doConfirmStartScene(StartSceneArg*);       // _34 (weak)
	virtual void doConfirmEndScene(EndSceneArg*&);          // _38 (weak)
	virtual void doStart(StartSceneArg*);                   // _3C
	virtual void doEnd(EndSceneArg*);                       // _40
	virtual void setDefaultDispMember();                    // _44 (weak)
	virtual void doSetBackupScene(SetSceneArg&);            // _48 (weak)
};
} // namespace Screen

namespace og {
namespace newScreen {
struct SceneSMenuBase {
	virtual void getSceneType();                            // _08 (weak)
	virtual void getOwnerID();                              // _0C (weak)
	virtual void getMemberID();                             // _10 (weak)
	virtual void isUseBackupSceneInfo();                    // _14 (weak)
	virtual void _18() = 0;                                 // _18
	virtual void getResName() const;                        // _1C (weak)
	virtual void doCreateObj(JKRArchive*);                  // _20
	virtual void doUserCallBackFunc(Resource::MgrCommand*); // _24
	virtual void _28() = 0;                                 // _28
	virtual void doUpdateActive();                          // _2C
	virtual void doConfirmSetScene(Screen::SetSceneArg&);   // _30
	virtual void _34() = 0;                                 // _34
	virtual void _38() = 0;                                 // _38
	virtual void _3C() = 0;                                 // _3C
	virtual void _40() = 0;                                 // _40
	virtual void _44() = 0;                                 // _44
	virtual void _48() = 0;                                 // _48
	virtual void doGetFinishState();                        // _4C (weak)
};
} // namespace newScreen
} // namespace og

namespace og {
namespace newScreen {
struct SMenuPause : public SceneBase, public SceneSMenuBase {
	virtual void getSceneType();                            // _08 (weak)
	virtual void getOwnerID();                              // _0C (weak)
	virtual void getMemberID();                             // _10 (weak)
	virtual void isUseBackupSceneInfo();                    // _14 (weak)
	virtual void getResName() const;                        // _1C (weak)
	virtual void doCreateObj(JKRArchive*);                  // _20
	virtual void doUserCallBackFunc(Resource::MgrCommand*); // _24
	virtual void doUpdateActive();                          // _2C
	virtual void doConfirmSetScene(Screen::SetSceneArg&);   // _30
	virtual void _50() = 0;                                 // _50

	SMenuPause();
};
} // namespace newScreen
} // namespace og

#endif
