#ifndef _GAME_BASEGAMESECTION_H
#define _GAME_BASEGAMESECTION_H

/*
    __vt__Q24Game15BaseGameSection:
    .4byte 0
    .4byte 0
    .4byte __dt__Q24Game15BaseGameSectionFv
    .4byte run__7SectionFv
    .4byte update__7SectionFv
    .4byte draw__7SectionFR8Graphics
    .4byte init__Q24Game15BaseGameSectionFv
    .4byte drawInit__7SectionFR8Graphics
    .4byte drawInit__Q24Game15BaseGameSectionFR8GraphicsQ27Section13EDrawInitMode
    .4byte doExit__7SectionFv
    .4byte forceFinish__Q24Game15BaseGameSectionFv
    .4byte forceReset__7SectionFv
    .4byte getCurrentSection__7SectionFv
    .4byte doLoadingStart__7SectionFv
    .4byte doLoading__7SectionFv
    .4byte doUpdate__Q24Game15BaseGameSectionFv
    .4byte doDraw__Q24Game15BaseGameSectionFR8Graphics
    .4byte isFinishable__7SectionFv
    .4byte initHIO__Q24Game14BaseHIOSectionFPQ24Game11HIORootNode
    .4byte refreshHIO__Q24Game14BaseHIOSectionFv
    .4byte sendMessage__Q24Game15BaseGameSectionFRQ24Game11GameMessage
    .4byte pre2dDraw__Q24Game15BaseGameSectionFR8Graphics
    .4byte getCurrFloor__Q24Game15BaseGameSectionFv
    .4byte isDevelopSection__Q24Game15BaseGameSectionFv
    .4byte addChallengeScore__Q24Game15BaseGameSectionFi
    .4byte startMainBgm__Q24Game15BaseGameSectionFv
    .4byte section_fadeout__Q24Game15BaseGameSectionFv
    .4byte goNextFloor__Q24Game15BaseGameSectionFPQ34Game8ItemHole4Item
    .4byte goCave__Q24Game15BaseGameSectionFPQ34Game8ItemCave4Item
    .4byte goMainMap__Q24Game15BaseGameSectionFPQ34Game15ItemBigFountain4Item
    .4byte getCaveID__Q24Game15BaseGameSectionFv
    .4byte getCurrentCourseInfo__Q24Game15BaseGameSectionFv
    .4byte challengeDisablePelplant__Q24Game15BaseGameSectionFv
    .4byte getCaveFilename__Q24Game15BaseGameSectionFv
    .4byte getEditorFilename__Q24Game15BaseGameSectionFv
    .4byte getVsEditNumber__Q24Game15BaseGameSectionFv
    .4byte openContainerWindow__Q24Game15BaseGameSectionFv
    .4byte closeContainerWindow__Q24Game15BaseGameSectionFv
    .4byte playMovie_firstexperience__Q24Game15BaseGameSectionFiPQ24Game8Creature
    .4byte playMovie_bootup__Q24Game15BaseGameSectionFPQ24Game5Onyon
    .4byte playMovie_helloPikmin__Q24Game15BaseGameSectionFPQ24Game4Piki
    .4byte enableTimer__Q24Game15BaseGameSectionFfUl
    .4byte disableTimer__Q24Game15BaseGameSectionFUl
    .4byte getTimerType__Q24Game15BaseGameSectionFv
    .4byte onMovieStart__Q24Game15BaseGameSectionFPQ24Game11MovieConfigUlUl
    .4byte onMovieDone__Q24Game15BaseGameSectionFPQ24Game11MovieConfigUlUl
    .4byte onMovieCommand__Q24Game15BaseGameSectionFi
    .4byte startFadeout__Q24Game15BaseGameSectionFf
    .4byte startFadein__Q24Game15BaseGameSectionFf
    .4byte startFadeoutin__Q24Game15BaseGameSectionFf
    .4byte startFadeblack__Q24Game15BaseGameSectionFv
    .4byte startFadewhite__Q24Game15BaseGameSectionFv
    .4byte gmOrimaDown__Q24Game15BaseGameSectionFi
    .4byte gmPikminZero__Q24Game15BaseGameSectionFv
    .4byte openCaveInMenu__Q24Game15BaseGameSectionFPQ34Game8ItemCave4Itemi
    .4byte openCaveMoreMenu__Q24Game15BaseGameSectionFPQ34Game8ItemHole4ItemP10Controller
    .4byte openKanketuMenu__Q24Game15BaseGameSectionFPQ34Game15ItemBigFountain4ItemP10Controller
    .4byte on_setCamController__Q24Game15BaseGameSectionFi
    .4byte onTogglePlayer__Q24Game15BaseGameSectionFv
    .4byte onPlayerJoin__Q24Game15BaseGameSectionFv
    .4byte onInit__Q24Game15BaseGameSectionFv
    .4byte onUpdate__Q24Game15BaseGameSectionFv
    .4byte initJ3D__Q24Game15BaseGameSectionFv
    .4byte initViewports__Q24Game15BaseGameSectionFR8Graphics
    .4byte initResources__Q24Game15BaseGameSectionFv
    .4byte initGenerators__Q24Game15BaseGameSectionFv
    .4byte initLights__Q24Game15BaseGameSectionFv
    .4byte draw3D__Q24Game15BaseGameSectionFR8Graphics
    .4byte draw2D__Q24Game15BaseGameSectionFR8Graphics
    .4byte drawParticle__Q24Game15BaseGameSectionFR8Graphicsi
    .4byte draw_Ogawa2D__Q24Game15BaseGameSectionFR8Graphics
    .4byte do_drawOtakaraWindow__Q24Game15BaseGameSectionFR8Graphics
    .4byte onSetupFloatMemory__Q24Game15BaseGameSectionFv
    .4byte postSetupFloatMemory__Q24Game15BaseGameSectionFv
    .4byte onSetSoundScene__Q24Game15BaseGameSectionFv
    .4byte onStartHeap__Q24Game15BaseGameSectionFv
    .4byte onClearHeap__Q24Game15BaseGameSectionFv
*/

struct Section {
	virtual ~Section();                                       // _08
	virtual void run();                                       // _0C
	virtual void update();                                    // _10
	virtual void draw(Graphics&);                             // _14
	virtual void init();                                      // _18
	virtual void drawInit(Graphics&);                         // _1C (weak)
	virtual void drawInit(Graphics&, Section::EDrawInitMode); // _20
	virtual void doExit();                                    // _24 (weak)
	virtual void forceFinish();                               // _28 (weak)
	virtual void forceReset();                                // _2C (weak)
	virtual void getCurrentSection();                         // _30 (weak)
	virtual void doLoadingStart();                            // _34 (weak)
	virtual void doLoading();                                 // _38 (weak)
	virtual void doUpdate();                                  // _3C
	virtual void doDraw(Graphics&);                           // _40
	virtual void isFinishable();                              // _44 (weak)
};

namespace Game {
struct BaseHIOSection {
	virtual ~BaseHIOSection();                                // _08
	virtual void _0C() = 0;                                   // _0C
	virtual void _10() = 0;                                   // _10
	virtual void _14() = 0;                                   // _14
	virtual void init();                                      // _18
	virtual void _1C() = 0;                                   // _1C
	virtual void drawInit(Graphics&, Section::EDrawInitMode); // _20
	virtual void _24() = 0;                                   // _24
	virtual void forceFinish();                               // _28 (weak)
	virtual void _2C() = 0;                                   // _2C
	virtual void _30() = 0;                                   // _30
	virtual void _34() = 0;                                   // _34
	virtual void _38() = 0;                                   // _38
	virtual void doUpdate();                                  // _3C
	virtual void doDraw(Graphics&);                           // _40
	virtual void _44() = 0;                                   // _44
	virtual void initHIO(HIORootNode*);                       // _48
	virtual void refreshHIO();                                // _4C
};
} // namespace Game

namespace Game {
struct BaseGameSection : public Section, public BaseHIOSection {
	virtual ~BaseGameSection();                                            // _08
	virtual void init();                                                   // _18
	virtual void drawInit(Graphics&, Section::EDrawInitMode);              // _20
	virtual void forceFinish();                                            // _28 (weak)
	virtual void doUpdate();                                               // _3C
	virtual void doDraw(Graphics&);                                        // _40
	virtual void sendMessage(GameMessage&);                                // _50 (weak)
	virtual void pre2dDraw(Graphics&);                                     // _54 (weak)
	virtual void getCurrFloor();                                           // _58 (weak)
	virtual void isDevelopSection();                                       // _5C (weak)
	virtual void addChallengeScore(int);                                   // _60 (weak)
	virtual void startMainBgm();                                           // _64 (weak)
	virtual void section_fadeout();                                        // _68 (weak)
	virtual void goNextFloor(ItemHole::Item*);                             // _6C (weak)
	virtual void goCave(ItemCave::Item*);                                  // _70 (weak)
	virtual void goMainMap(ItemBigFountain::Item*);                        // _74 (weak)
	virtual void getCaveID();                                              // _78 (weak)
	virtual void getCurrentCourseInfo();                                   // _7C (weak)
	virtual void challengeDisablePelplant();                               // _80 (weak)
	virtual void getCaveFilename();                                        // _84 (weak)
	virtual void getEditorFilename();                                      // _88 (weak)
	virtual void getVsEditNumber();                                        // _8C (weak)
	virtual void openContainerWindow();                                    // _90 (weak)
	virtual void closeContainerWindow();                                   // _94 (weak)
	virtual void playMovie_firstexperience(int, Creature*);                // _98 (weak)
	virtual void playMovie_bootup(Onyon*);                                 // _9C (weak)
	virtual void playMovie_helloPikmin(Piki*);                             // _A0 (weak)
	virtual void enableTimer(float, unsigned long);                        // _A4 (weak)
	virtual void disableTimer(unsigned long);                              // _A8 (weak)
	virtual void getTimerType();                                           // _AC (weak)
	virtual void onMovieStart(MovieConfig*, unsigned long, unsigned long); // _B0 (weak)
	virtual void onMovieDone(MovieConfig*, unsigned long, unsigned long);  // _B4 (weak)
	virtual void onMovieCommand(int);                                      // _B8
	virtual void startFadeout(float);                                      // _BC
	virtual void startFadein(float);                                       // _C0
	virtual void startFadeoutin(float);                                    // _C4
	virtual void startFadeblack();                                         // _C8
	virtual void startFadewhite();                                         // _CC
	virtual void gmOrimaDown(int);                                         // _D0 (weak)
	virtual void gmPikminZero();                                           // _D4 (weak)
	virtual void openCaveInMenu(ItemCave::Item*, int);                     // _D8 (weak)
	virtual void openCaveMoreMenu(ItemHole::Item*, Controller*);           // _DC (weak)
	virtual void openKanketuMenu(ItemBigFountain::Item*, Controller*);     // _E0 (weak)
	virtual void on_setCamController(int);                                 // _E4 (weak)
	virtual void onTogglePlayer();                                         // _E8 (weak)
	virtual void onPlayerJoin();                                           // _EC (weak)
	virtual void onInit();                                                 // _F0 (weak)
	virtual void onUpdate();                                               // _F4 (weak)
	virtual void initJ3D();                                                // _F8
	virtual void initViewports(Graphics&);                                 // _FC
	virtual void initResources();                                          // _100
	virtual void initGenerators();                                         // _104
	virtual void initLights();                                             // _108
	virtual void draw3D(Graphics&);                                        // _10C
	virtual void draw2D(Graphics&);                                        // _110
	virtual void drawParticle(Graphics&, int);                             // _114
	virtual void draw_Ogawa2D(Graphics&);                                  // _118
	virtual void do_drawOtakaraWindow(Graphics&);                          // _11C
	virtual void onSetupFloatMemory();                                     // _120 (weak)
	virtual void postSetupFloatMemory();                                   // _124
	virtual void onSetSoundScene();                                        // _128 (weak)
	virtual void onStartHeap();                                            // _12C (weak)
	virtual void onClearHeap();                                            // _130 (weak)

	BaseGameSection(JKRHeap*);
	void useSpecificFBTexture(JUTTexture*);
	void restoreFBTexture();
	void loadSync(IDelegate*, bool);
	void waitSyncLoad(bool);
	void dvdloadGameSystem();
	void movieDone(Game::MovieConfig*, unsigned long, unsigned long);
	void advanceDayCount();
	void saveToGeneratorCache(Game::CourseInfo*);
	void pmTogglePlayer();
	void setPlayerMode(int);
	void onCameraBlendFinished(Game::CameraArg*);
	void setFixNearFar(bool, float, float);
	void setCamController();
	void setDefaultPSSceneInfo(PSGame::SceneInfo&);
	void prepareHoleIn(Vector3<float>&, bool);
	void prepareFountainOn(Vector3<float>&);
	void test_draw_treasure_detector();
	void directDraw(Graphics&, Viewport*);
	void directDrawPost(Graphics&, Viewport*);
	void j3dSetView(Viewport*, bool);
	void doSimulation(float);
	void doSimpleDraw(Viewport*);
	void doAnimation();
	void changeGeneratorCursor(Vector3<float>&);
	void doEntry();
	void doSetView(int);
	void doViewCalc();
	void updateBlendCamera();
	void setSplitter(bool);
	void updateSplitter();
	void doDirectDrawPost(Graphics&, Viewport*);
	void doDirectDraw(Graphics&, Viewport*);
	void clearHeap();
	void setupFixMemory();
	void setupFixMemory_dvdload();
	void enableAllocHalt();
	void disableAllocHalt();
	void setupFloatMemory();
	void setDrawBuffer(int);
	void createFallPikminSound();
	void captureRadarmap(Graphics&);
	void newdraw_draw3D_all(Graphics&);
	void newdraw_drawAll(Viewport*);
	void drawOtakaraWindow(Graphics&);
	void setDraw2DCreature(Game::Creature*);
	void startZoomWindow();
	void startKantei2D();
	void onKanteiDone(Rect<float>&);
};
} // namespace Game

#endif
