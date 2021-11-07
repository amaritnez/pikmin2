#ifndef _GAME_ENEMYMGRBASE_H
#define _GAME_ENEMYMGRBASE_H

struct GenericObjectMgr {
    virtual void _00() = 0;               // _00
    virtual void _04() = 0;               // _04
    virtual void _08() = 0;               // _08
    virtual void _0C() = 0;               // _0C
    virtual void _10() = 0;               // _10
    virtual void _14() = 0;               // _14
    virtual void doSimpleDraw(Viewport*); // _18
    virtual void loadResources();         // _1C
    virtual void resetMgr();              // _20
    virtual void pausable();              // _24
    virtual void frozenable();            // _28
    virtual void getMatrixLoadType();     // _2C

    // _00 VTBL
};

struct CNode {
    virtual void _00() = 0;       // _00
    virtual void _04() = 0;       // _04
    virtual void _08() = 0;       // _08
    virtual void _0C() = 0;       // _0C
    virtual void _10() = 0;       // _10
    virtual void _14() = 0;       // _14
    virtual void _18() = 0;       // _18
    virtual void _1C() = 0;       // _1C
    virtual void _20() = 0;       // _20
    virtual void _24() = 0;       // _24
    virtual void _28() = 0;       // _28
    virtual void _2C() = 0;       // _2C
    virtual void _30() = 0;       // _30
    virtual void _34() = 0;       // _34
    virtual void _38() = 0;       // _38
    virtual void getChildCount(); // _3C

    // _00 VTBL
};

namespace Game {
struct EnemyMgrBase : public GenericObjectMgr, public CNode {
    virtual void doAnimation();                 // _00
    virtual void doEntry();                     // _04
    virtual void doSetView(int);                // _08
    virtual void doViewCalc();                  // _0C
    virtual void doSimulation(float);           // _10
    virtual void doDirectDraw(Graphics&);       // _14
    virtual void doSimpleDraw(Viewport*);       // _18
    virtual void loadResources();               // _1C
    virtual void resetMgr();                    // _20
    virtual void pausable();                    // _24
    virtual void frozenable();                  // _28
    virtual void getMatrixLoadType();           // _2C
    virtual void _30() = 0;                     // _30
    virtual void _34() = 0;                     // _34
    virtual void @4 @__dt();                    // _38
    virtual void getChildCount();               // _3C
    virtual void @4 @getObject(void*);          // _40
    virtual void @4 @getNext(void*);            // _44
    virtual void @4 @getStart();                // _48
    virtual void @4 @getEnd();                  // _4C
    virtual ~EnemyMgrBase();                    // _50
    virtual void getObject(void*);              // _54
    virtual void getNext(void*);                // _58
    virtual void getStart();                    // _5C
    virtual void getEnd();                      // _60
    virtual void alloc();                       // _64
    virtual void birth(EnemyBirthArg&);         // _68
    virtual void getJ3DModelData() const;       // _6C
    virtual void getGenerator() const;          // _70
    virtual void killAll(CreatureKillArg*);     // _74
    virtual void setupSoundViewerAndBas();      // _78
    virtual void setDebugParm(unsigned long);   // _7C
    virtual void resetDebugParm(unsigned long); // _80
    virtual void getMaxObjects() const;         // _84
    virtual void startMovie();                  // _88
    virtual void endMovie();                    // _8C
    virtual void get(void*);                    // _90
    virtual void isAlwaysMovieActor();          // _94
    virtual void _98() = 0;                     // _98
    virtual void _9C() = 0;                     // _9C
    virtual void doAlloc();                     // _A0
    virtual void getEnemyTypeID();              // _A4
    virtual void createModel();                 // _A8
    virtual void initParms();                   // _AC
    virtual void loadResource();                // _B0
    virtual void initObjects();                 // _B4
    virtual void initStoneSetting();            // _B8
    virtual void loadModelData(JKRArchive*);    // _BC
    virtual void loadModelData();               // _C0
    virtual void loadAnimData();                // _C4
    virtual void loadTexData();                 // _C8
    virtual void doLoadBmd(void*);              // _CC
    virtual void doLoadBdl(void*);              // _D0
    virtual void initGenerator();               // _D4

    // _00 VTBL
};
} // namespace Game

#endif
