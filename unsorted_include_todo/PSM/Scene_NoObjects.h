#ifndef _PSM_SCENE_NOOBJECTS_H
#define _PSM_SCENE_NOOBJECTS_H

/*
    __vt__Q23PSM15Scene_NoObjects:
    .4byte 0
    .4byte 0
    .4byte init__Q28PSSystem5SceneFv
    .4byte __dt__Q23PSM15Scene_NoObjectsFv
    .4byte scene1st__Q28PSSystem5SceneFPQ28PSSystem11TaskChecker
    .4byte scene1stLoadSync__Q28PSSystem5SceneFv
    .4byte exec__Q28PSSystem5SceneFv
    .4byte startMainSeq__Q28PSSystem5SceneFv
    .4byte stopMainSeq__Q28PSSystem5SceneFUl
    .4byte stopAllSound__Q28PSSystem5SceneFUl
    .4byte getCamDistVol__Q23PSM15Scene_NoObjectsFUc
    .4byte getEnvSe__Q23PSM9SceneBaseFv
    .4byte getSceneFx__Q23PSM9SceneBaseFv
    .4byte isDemoScene__Q23PSM9SceneBaseFv
    .4byte getSeSceneGate__Q23PSM9SceneBaseFPQ23PSM7ObjBaseUl
    .4byte becomeSceneCamera__Q23PSM9SceneBaseFv
    .4byte isGameScene__Q23PSM9SceneBaseFv
    .4byte pauseOn_2D__Q23PSM9SceneBaseFUcUc
    .4byte pauseOff_2D__Q23PSM9SceneBaseFv
    .4byte pauseOn_Demo__Q23PSM9SceneBaseFv
    .4byte pauseOff_Demo__Q23PSM9SceneBaseFv
*/

namespace PSSystem {
struct Scene {
	virtual void init();                      // _08 (weak)
	virtual ~Scene();                         // _0C (weak)
	virtual void scene1st(TaskChecker*);      // _10
	virtual void scene1stLoadSync();          // _14
	virtual void exec();                      // _18
	virtual void startMainSeq();              // _1C
	virtual void stopMainSeq(unsigned long);  // _20
	virtual void stopAllSound(unsigned long); // _24
};
} // namespace PSSystem

namespace PSM {
struct SceneBase {
	virtual void _08() = 0;                                // _08
	virtual ~SceneBase();                                  // _0C (weak)
	virtual void _10() = 0;                                // _10
	virtual void _14() = 0;                                // _14
	virtual void _18() = 0;                                // _18
	virtual void _1C() = 0;                                // _1C
	virtual void _20() = 0;                                // _20
	virtual void _24() = 0;                                // _24
	virtual void getCamDistVol(unsigned char);             // _28
	virtual void getEnvSe();                               // _2C (weak)
	virtual void getSceneFx();                             // _30
	virtual void isDemoScene();                            // _34 (weak)
	virtual void getSeSceneGate(ObjBase*, unsigned long);  // _38 (weak)
	virtual void becomeSceneCamera();                      // _3C
	virtual void isGameScene();                            // _40 (weak)
	virtual void pauseOn_2D(unsigned char, unsigned char); // _44
	virtual void pauseOff_2D();                            // _48
	virtual void pauseOn_Demo();                           // _4C
	virtual void pauseOff_Demo();                          // _50
};
} // namespace PSM

namespace PSM {
struct Scene_NoObjects : public Scene, public SceneBase {
	virtual ~Scene_NoObjects();                // _0C (weak)
	virtual void getCamDistVol(unsigned char); // _28
};
} // namespace PSM

#endif
