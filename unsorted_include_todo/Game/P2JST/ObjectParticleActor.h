#ifndef _GAME_P2JST_OBJECTPARTICLEACTOR_H
#define _GAME_P2JST_OBJECTPARTICLEACTOR_H

/*
    __vt__Q34Game5P2JST19ObjectParticleActor:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game5P2JST19ObjectParticleActorFv
    .4byte JSGFGetType__Q26JStage6TActorCFv
    .4byte JSGGetName__Q34Game5P2JST11ObjectActorCFv
    .4byte JSGUpdate__Q26JStage7TObjectFv
    .4byte JSGGetFlag__Q34Game5P2JST11ObjectActorCFv
    .4byte JSGSetFlag__Q34Game5P2JST11ObjectActorFUl
    .4byte JSGGetData__Q26JStage7TObjectCFUlPvUl
    .4byte JSGSetData__Q34Game5P2JST11ObjectActorFUlPCvUl
    .4byte JSGGetParent__Q26JStage7TObjectCFPPQ26JStage7TObjectPUl
    .4byte JSGSetParent__Q26JStage7TObjectFPQ26JStage7TObjectUl
    .4byte JSGSetRelation__Q26JStage7TObjectFbPQ26JStage7TObjectUl
    .4byte JSGFindNodeID__Q34Game5P2JST11ObjectActorCFPCc
    .4byte JSGGetNodeTransformation__Q34Game5P2JST11ObjectActorCFUlPA4_f
    .4byte JSGGetTranslation__Q34Game5P2JST19ObjectParticleActorCFP3Vec
    .4byte JSGSetTranslation__Q34Game5P2JST19ObjectParticleActorFRC3Vec
    .4byte JSGGetScaling__Q34Game5P2JST11ObjectActorCFP3Vec
    .4byte JSGSetScaling__Q34Game5P2JST11ObjectActorFRC3Vec
    .4byte JSGGetRotation__Q34Game5P2JST11ObjectActorCFP3Vec
    .4byte JSGSetRotation__Q34Game5P2JST11ObjectActorFRC3Vec
    .4byte JSGGetShape__Q34Game5P2JST11ObjectActorCFv
    .4byte JSGSetShape__Q34Game5P2JST19ObjectParticleActorFUl
    .4byte JSGGetAnimation__Q34Game5P2JST11ObjectActorCFv
    .4byte JSGSetAnimation__Q34Game5P2JST11ObjectActorFUl
    .4byte JSGGetAnimationFrame__Q34Game5P2JST11ObjectActorCFv
    .4byte JSGSetAnimationFrame__Q34Game5P2JST11ObjectActorFf
    .4byte JSGGetAnimationFrameMax__Q34Game5P2JST11ObjectActorCFv
    .4byte JSGGetAnimationTransition__Q26JStage6TActorCFv
    .4byte JSGSetAnimationTransition__Q26JStage6TActorFf
    .4byte JSGGetTextureAnimation__Q26JStage6TActorCFv
    .4byte JSGSetTextureAnimation__Q26JStage6TActorFUl
    .4byte JSGGetTextureAnimationFrame__Q26JStage6TActorCFv
    .4byte JSGSetTextureAnimationFrame__Q26JStage6TActorFf
    .4byte JSGGetTextureAnimationFrameMax__Q26JStage6TActorCFv
    .4byte 0
    .4byte 0
    .4byte "@4@reset__Q34Game5P2JST19ObjectParticleActorFv"
    .4byte "@4@update__Q34Game5P2JST19ObjectParticleActorFv"
    .4byte "@4@start__Q34Game5P2JST11ObjectActorFv"
    .4byte "@4@stop__Q34Game5P2JST19ObjectParticleActorFv"
    .4byte "@4@parseUserData___Q34Game5P2JST19ObjectParticleActorFUlPCv"
    .4byte reset__Q34Game5P2JST19ObjectParticleActorFv
    .4byte update__Q34Game5P2JST19ObjectParticleActorFv
    .4byte entry__Q34Game5P2JST11ObjectActorFv
    .4byte start__Q34Game5P2JST11ObjectActorFv
    .4byte stop__Q34Game5P2JST19ObjectParticleActorFv
    .4byte setShape__Q34Game5P2JST11ObjectActorFv
    .4byte setAnim__Q34Game5P2JST11ObjectActorFv
    .4byte mountArchive__Q34Game5P2JST11ObjectActorFv
    .4byte parseUserData___Q34Game5P2JST19ObjectParticleActorFUlPCv
    .4byte 0
    .4byte 0
    .4byte "@112@__dt__Q34Game5P2JST19ObjectParticleActorFv"
    .4byte execute__18JPAEmitterCallBackFP14JPABaseEmitter
    .4byte "@112@executeAfter__Q34Game5P2JST19ObjectParticleActorFP14JPABaseEmitter"
    .4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
    .4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
    .4byte executeAfter__Q34Game5P2JST19ObjectParticleActorFP14JPABaseEmitter
*/

namespace JStage {
struct TActor {
	virtual ~TActor();                                   // _08 (weak)
	virtual void JSGFGetType() const;                    // _0C
	virtual void _10() = 0;                              // _10
	virtual void _14() = 0;                              // _14
	virtual void _18() = 0;                              // _18
	virtual void _1C() = 0;                              // _1C
	virtual void _20() = 0;                              // _20
	virtual void _24() = 0;                              // _24
	virtual void _28() = 0;                              // _28
	virtual void _2C() = 0;                              // _2C
	virtual void _30() = 0;                              // _30
	virtual void _34() = 0;                              // _34
	virtual void _38() = 0;                              // _38
	virtual void JSGGetTranslation(Vec*) const;          // _3C
	virtual void JSGSetTranslation(const Vec&);          // _40
	virtual void _44() = 0;                              // _44
	virtual void _48() = 0;                              // _48
	virtual void _4C() = 0;                              // _4C
	virtual void _50() = 0;                              // _50
	virtual void _54() = 0;                              // _54
	virtual void JSGSetShape(unsigned long);             // _58
	virtual void _5C() = 0;                              // _5C
	virtual void _60() = 0;                              // _60
	virtual void _64() = 0;                              // _64
	virtual void _68() = 0;                              // _68
	virtual void _6C() = 0;                              // _6C
	virtual void JSGGetAnimationTransition() const;      // _70
	virtual void JSGSetAnimationTransition(float);       // _74
	virtual void JSGGetTextureAnimation() const;         // _78
	virtual void JSGSetTextureAnimation(unsigned long);  // _7C
	virtual void JSGGetTextureAnimationFrame() const;    // _80
	virtual void JSGSetTextureAnimationFrame(float);     // _84
	virtual void JSGGetTextureAnimationFrameMax() const; // _88
};
} // namespace JStage

namespace Game {
namespace P2JST {
struct ObjectActor {
	virtual ~ObjectActor();                                                   // _08 (weak)
	virtual void _0C() = 0;                                                   // _0C
	virtual void JSGGetName() const;                                          // _10
	virtual void _14() = 0;                                                   // _14
	virtual void JSGGetFlag() const;                                          // _18
	virtual void JSGSetFlag(unsigned long);                                   // _1C
	virtual void _20() = 0;                                                   // _20
	virtual void JSGSetData(unsigned long, const void*, unsigned long);       // _24
	virtual void _28() = 0;                                                   // _28
	virtual void _2C() = 0;                                                   // _2C
	virtual void _30() = 0;                                                   // _30
	virtual void JSGFindNodeID(const char*) const;                            // _34
	virtual void JSGGetNodeTransformation(unsigned long, float (*)[4]) const; // _38
	virtual void JSGGetTranslation(Vec*) const;                               // _3C
	virtual void JSGSetTranslation(const Vec&);                               // _40
	virtual void JSGGetScaling(Vec*) const;                                   // _44
	virtual void JSGSetScaling(const Vec&);                                   // _48
	virtual void JSGGetRotation(Vec*) const;                                  // _4C
	virtual void JSGSetRotation(const Vec&);                                  // _50
	virtual void JSGGetShape() const;                                         // _54
	virtual void JSGSetShape(unsigned long);                                  // _58
	virtual void JSGGetAnimation() const;                                     // _5C
	virtual void JSGSetAnimation(unsigned long);                              // _60
	virtual void JSGGetAnimationFrame() const;                                // _64
	virtual void JSGSetAnimationFrame(float);                                 // _68
	virtual void JSGGetAnimationFrameMax() const;                             // _6C
	virtual void _70() = 0;                                                   // _70
	virtual void _74() = 0;                                                   // _74
	virtual void _78() = 0;                                                   // _78
	virtual void _7C() = 0;                                                   // _7C
	virtual void _80() = 0;                                                   // _80
	virtual void _84() = 0;                                                   // _84
	virtual void _88() = 0;                                                   // _88
	virtual void _8C() = 0;                                                   // _8C
	virtual void _90() = 0;                                                   // _90
	virtual void _94() = 0;                                                   // _94
	virtual void _98() = 0;                                                   // _98
	virtual void _9C() = 0;                                                   // _9C
	virtual void _A0() = 0;                                                   // _A0
	virtual void _A4() = 0;                                                   // _A4
	virtual void reset();                                                     // _A8 (weak)
	virtual void update();                                                    // _AC (weak)
	virtual void entry();                                                     // _B0
	virtual void start();                                                     // _B4 (weak)
	virtual void stop();                                                      // _B8 (weak)
	virtual void setShape();                                                  // _BC
	virtual void setAnim();                                                   // _C0
	virtual void mountArchive();                                              // _C4
};
} // namespace P2JST
} // namespace Game

namespace JStage {
struct TObject {
	virtual ~TObject();                                                 // _08 (weak)
	virtual void _0C() = 0;                                             // _0C
	virtual void _10() = 0;                                             // _10
	virtual void JSGUpdate();                                           // _14
	virtual void _18() = 0;                                             // _18
	virtual void _1C() = 0;                                             // _1C
	virtual void JSGGetData(unsigned long, void*, unsigned long) const; // _20
	virtual void _24() = 0;                                             // _24
	virtual void JSGGetParent(TObject**, unsigned long*) const;         // _28
	virtual void JSGSetParent(TObject*, unsigned long);                 // _2C
	virtual void JSGSetRelation(bool, TObject*, unsigned long);         // _30
};
} // namespace JStage

struct JPAEmitterCallBack {
	virtual ~JPAEmitterCallBack();                           // _08 (weak)
	virtual void _0C() = 0;                                  // _0C
	virtual void _10() = 0;                                  // _10
	virtual void _14() = 0;                                  // _14
	virtual void _18() = 0;                                  // _18
	virtual void _1C() = 0;                                  // _1C
	virtual void _20() = 0;                                  // _20
	virtual void _24() = 0;                                  // _24
	virtual void _28() = 0;                                  // _28
	virtual void _2C() = 0;                                  // _2C
	virtual void _30() = 0;                                  // _30
	virtual void _34() = 0;                                  // _34
	virtual void _38() = 0;                                  // _38
	virtual void JSGGetTranslation(Vec*) const;              // _3C
	virtual void JSGSetTranslation(const Vec&);              // _40
	virtual void _44() = 0;                                  // _44
	virtual void _48() = 0;                                  // _48
	virtual void _4C() = 0;                                  // _4C
	virtual void _50() = 0;                                  // _50
	virtual void _54() = 0;                                  // _54
	virtual void JSGSetShape(unsigned long);                 // _58
	virtual void _5C() = 0;                                  // _5C
	virtual void _60() = 0;                                  // _60
	virtual void _64() = 0;                                  // _64
	virtual void _68() = 0;                                  // _68
	virtual void _6C() = 0;                                  // _6C
	virtual void _70() = 0;                                  // _70
	virtual void _74() = 0;                                  // _74
	virtual void _78() = 0;                                  // _78
	virtual void _7C() = 0;                                  // _7C
	virtual void _80() = 0;                                  // _80
	virtual void _84() = 0;                                  // _84
	virtual void _88() = 0;                                  // _88
	virtual void _8C() = 0;                                  // _8C
	virtual void _90() = 0;                                  // _90
	virtual void _94() = 0;                                  // _94
	virtual void _98() = 0;                                  // _98
	virtual void _9C() = 0;                                  // _9C
	virtual void _A0() = 0;                                  // _A0
	virtual void _A4() = 0;                                  // _A4
	virtual void reset();                                    // _A8 (weak)
	virtual void update();                                   // _AC (weak)
	virtual void _B0() = 0;                                  // _B0
	virtual void _B4() = 0;                                  // _B4
	virtual void stop();                                     // _B8 (weak)
	virtual void _BC() = 0;                                  // _BC
	virtual void _C0() = 0;                                  // _C0
	virtual void _C4() = 0;                                  // _C4
	virtual void parseUserData_(unsigned long, const void*); // _C8 (weak)
	virtual void _CC() = 0;                                  // _CC
	virtual void _D0() = 0;                                  // _D0
	virtual void _D4() = 0;                                  // _D4
	virtual void execute(JPABaseEmitter*);                   // _D8 (weak)
	virtual void _DC() = 0;                                  // _DC
	virtual void draw(JPABaseEmitter*);                      // _E0 (weak)
	virtual void drawAfter(JPABaseEmitter*);                 // _E4 (weak)
};

namespace Game {
namespace P2JST {
struct ObjectParticleActor : public TActor, public ObjectActor, public TObject, public JPAEmitterCallBack {
	virtual ~ObjectParticleActor();                          // _08 (weak)
	virtual void JSGGetTranslation(Vec*) const;              // _3C
	virtual void JSGSetTranslation(const Vec&);              // _40
	virtual void JSGSetShape(unsigned long);                 // _58
	virtual void _8C() = 0;                                  // _8C
	virtual void _90() = 0;                                  // _90
	virtual void reset();                                    // _A8 (weak)
	virtual void update();                                   // _AC (weak)
	virtual void stop();                                     // _B8 (weak)
	virtual void parseUserData_(unsigned long, const void*); // _C8 (weak)
	virtual void _CC() = 0;                                  // _CC
	virtual void _D0() = 0;                                  // _D0
	virtual void executeAfter(JPABaseEmitter*);              // _E8 (weak)

	ObjectParticleActor(const char*, Game::MoviePlayer*, Game::Creature*);
	void emit();
	void killEmitter();
};
} // namespace P2JST
} // namespace Game

#endif
