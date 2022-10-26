#ifndef _GAME_ENTITIES_UMIMUSHI_H
#define _GAME_ENTITIES_UMIMUSHI_H

#include "Game/EnemyStateMachine.h"
#include "Game/EnemyAnimatorBase.h"
#include "Game/EnemyParmsBase.h"
#include "Game/EnemyMgrBase.h"
#include "Game/JointFuncs.h"
#include "Game/EnemyBase.h"
#include "Game/WalkSmokeEffect.h"
#include "SysShape/Joint.h"
#include "Collinfo.h"

/**
 * --Header for Bloysters (UmiMushi)--
 * Note: Ranging + Toady Bloysters are the same struct
 */

namespace efx {
struct TUmiHamon;
struct TUmiWeakRed;
struct TUmiWeakBlue;
struct TChaseMtx2;
struct TUmiEat;
struct TUmiDeadawa;
} // namespace efx

namespace Sys {
struct MatTexAnimation;
struct MatLoopAnimator;
} // namespace Sys

namespace Game {
struct Navi;

struct UmimushiSphereShadowNode : public JointShadowNode {
	virtual ~UmimushiSphereShadowNode(); // _08 (weak)

	void makeShadowSRT(JointShadowParm&, Matrixf*, Vector3f&, bool);

	// _00		= VTBL
	// _00-_24	= JointShadowNode
};

struct UmimushiTubeShadowNode : public JointShadowNode {
	virtual ~UmimushiTubeShadowNode(); // _08 (weak)

	void makeShadowSRT(JointShadowParm&, Matrixf*, Vector3f&, Vector3f&);

	// _00		= VTBL
	// _00-_24	= JointShadowNode
};

namespace UmiMushi {
struct UmimushiShadowMgr;
struct FSM;

struct Obj : public EnemyBase {
	Obj();

	//////////////// VTABLE
	virtual void onInit(CreatureInitArg* settings);          // _30
	virtual void doSimulation(f32);                          // _4C
	virtual void doDirectDraw(Graphics& gfx);                // _50
	virtual f32 getBodyRadius();                             // _54
	virtual void collisionCallback(CollEvent&);              // _EC
	virtual void getShadowParam(ShadowParam&);               // _134
	virtual void applyImpulse(Vector3f&, Vector3f&);         // _18C (weak)
	virtual ~Obj();                                          // _1BC (weak)
	virtual void birth(Vector3f&, f32);                      // _1C0
	virtual void setInitialSetting(EnemyInitialParamBase*);  // _1C4 (weak)
	virtual void doUpdate();                                 // _1CC
	virtual void doAnimationCullingOff();                    // _1DC
	virtual void doAnimationCullingOn();                     // _1E0
	virtual void doDebugDraw(Graphics&);                     // _1EC
	virtual void changeMaterial();                           // _200
	virtual void setParameters();                            // _228
	virtual void initMouthSlots();                           // _22C
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID();      // _258 (weak)
	virtual MouthSlots* getMouthSlots();                     // _25C (weak)
	virtual void doGetLifeGaugeParam(LifeGaugeParam&);       // _260
	virtual bool damageCallBack(Creature*, f32, CollPart*);  // _278
	virtual bool pressCallBack(Creature*, f32, CollPart*);   // _27C
	virtual bool hipdropCallBack(Creature*, f32, CollPart*); // _284
	virtual bool earthquakeCallBack(Creature*, f32);         // _28C
	virtual bool eatWhitePikminCallBack(Creature*, f32);     // _298 (weak)
	virtual void doStartStoneState();                        // _2A4
	virtual void doFinishStoneState();                       // _2A8
	virtual f32 getDamageCoeStoneState();                    // _2AC (weak)
	virtual void startCarcassMotion();                       // _2C4
	virtual void doStartMovie();                             // _2F0
	virtual void doEndMovie();                               // _2F4
	virtual void setFSM(FSM*);                               // _2F8 (weak)
	//////////////// VTABLE END

	void isReachToGoal(f32);
	void walkFunc();
	void setNextGoal();
	void changeColor();
	void resetColor();
	void turnFunc();
	void resetWalkParm();
	void isChangeNavi();
	void isFindTarget();
	void isAttackStart();
	void isNeedTurn();
	void isOutOfTerritory(f32);
	void canMove();
	void outMove();
	void setFindAnim();
	void fadeAllEffect();
	void fadeColorEffect();
	void createColorEffect();
	void attackEffect();
	void meltEffect();
	void flickEffect();
	void eatEffect();
	void bubbleEffect();
	void delShadow();
	void eyeScaleMtxCalc();
	void weakScaleMtxCalc();

	// _00 		= VTBL
	// _00-_2BC	= EnemyBase
	Vector3f _2BC;                  // _2BC
	int _2C8;                       // _2C8, next state ID maybe?
	MouthSlots m_mouthSlots;        // _2CC
	SysShape::Joint* m_headJoint;   // _2D4
	Navi* m_targetNavi;             // _2D8
	u8 _2DC;                        // _2DC, unknown
	u8 _2DD;                        // _2DD, unknown
	u8 _2DE[0x2];                   // _2DE, unknown/maybe padding
	u8 _2E0[0x18];                  // _2E0, unknown
	f32 _2F8;                       // _2F8
	f32 _2FC;                       // _2FC
	u8 _300[0x4];                   // _300
	Vector3f _304;                  // _304
	u8 _310[0x4];                   // _310, unknown
	s16 _314;                       // _314
	s16 _316;                       // _316
	s16 _318;                       // _318
	s16 _320;                       // _320
	s16 _322;                       // _322
	u8 _324[0x20];                  // _324, unknown
	s16 _344;                       // _344
	s16 _346;                       // _346
	s16 _348;                       // _348
	u8 _34A[0x2];                   // _34A, unknown/maybe padding
	u8 _34C[0x8];                   // _34C, unknown
	Sys::MatLoopAnimator* _354;     // _354
	UmimushiShadowMgr* m_shadowMgr; // _358
	f32 _35C;                       // _35C
	u8 _360[0x2];                   // _360, unknown
	s16 _362;                       // _362
	efx::TUmiHamon* _364;           // _364
	efx::TUmiWeakRed* _368;         // _368
	efx::TUmiWeakBlue* _36C;        // _36C
	efx::TChaseMtx2* _370[2];       // _370, UmiEyeRed?
	efx::TChaseMtx2* _378[2];       // _378, UmiEyeBlue?
	efx::TUmiEat* m_efxEat;         // _380
	efx::TUmiDeadawa* _384;         // _384
	Matrixf* _388;                  // _388
	Vector3f _38C;                  // _38C
	FSM* m_FSM;                     // _398
	EnemyTypeID m_enemyID;          // _39C
	u8 _3A0[0x4];                   // _3A0, unknown
	                                // _3A4 = PelletView
};

struct Mgr : public EnemyMgrBase {
	Mgr(int objLimit, u8 modelType);

	//////////////// VTABLE
	virtual ~Mgr();                                     // _58 (weak)
	virtual EnemyBase* birth(EnemyBirthArg&);           // _70
	virtual void createObj(int);                        // _A0
	virtual EnemyBase* getEnemy(int idx);               // _A4 (weak)
	virtual void doAlloc();                             // _A8
	virtual EnemyTypeID::EEnemyTypeID getEnemyTypeID(); // _AC (weak)
	virtual SysShape::Model* createModel();             // _B0
	virtual void loadModelData();                       // _C8
	virtual void loadTexData();                         // _D0
	virtual J3DModelData* doLoadBmd(void*);             // _D4
	//////////////// VTABLE END

	// _00 		= VTBL
	// _00-_44	= EnemyMgrBase
	Sys::MatTexAnimation* _44; // _44
	Obj* m_obj;                // _48, array of Objs
};

struct Parms : public EnemyParmsBase {
	struct ProperParms : public Parameters {
		ProperParms(); // (weak)

		Parm<f32> m_damageRate;          // _804, fp01
		Parm<f32> m_turnStartAngle;      // _82C, fp02
		Parm<f32> m_turnEndAngle;        // _854, fp03
		Parm<f32> m_moveSpeed;           // _87C, fp04
		Parm<f32> m_rotateSpeed;         // _8A4, fp06
		Parm<f32> m_rotateSpeedMax;      // _8CC, fp07
		Parm<f32> m_purpleDamageRate;    // _8F4, fp09
		Parm<f32> m_caveTerritory;       // _91C, fp10
		Parm<f32> m_whiteDamage;         // _944, fp11
		Parm<f32> m_blindHealth;         // _96C, fp12
		Parm<f32> m_blindWaitTime;       // _994, fp13
		Parm<f32> m_blindMoveTime;       // _9BC, fp14
		Parm<f32> m_waitTimeAfterAttack; // _9E4, ip01
	};

	Parms();

	virtual void read(Stream&); // _08 (weak)

	// _00-_7F8	= EnemyParmsBase
	ProperParms m_properParms; // _7F8
	u8 _A10;                   // _A10, unknown
	u8 _A11;                   // _A11, unknown
	u8 _A12;                   // _A12, unknown
	u8 _A13;                   // _A13, unknown
	u8 _A14;                   // _A14, unknown
	u8 _A15;                   // _A15, unknown
	u8 _A16[0x2];              // _A16, unknown/maybe padding
	u8 _A18[0x10];             // _A18, unknown
	f32 _A28;                  // _A28
	u8 _A2C[0x4];              // _A2C, unknown
	f32 _A30;                  // _A30
	u8 _A34[0x4];              // _A34, unknown
};

struct ProperAnimator : public EnemyAnimatorBase {
	virtual ~ProperAnimator() { }                                     // _08 (weak)
	virtual void setAnimMgr(SysShape::AnimMgr* mgr);                  // _0C
	virtual SysShape::Animator& getAnimator() { return m_animator; }; // _10 (weak)
	virtual SysShape::Animator& getAnimator(int idx);                 // _14

	// _00 		= VTBL
	// _00-_10	= EnemyAnimatorBase
	SysShape::Animator m_animator; // _10
};

struct UmimushiShadowMgr {
	u8 _00[0x8];                     // _00, unknown
	Obj* _08;                        // _08
	JointShadowRootNode* m_rootNode; // _0C
	UmimushiTubeShadowNode* _14;     // _10
	UmimushiSphereShadowNode* _18;   // _14
};

/////////////////////////////////////////////////////////////////
// STATE MACHINE DEFINITIONS
struct FSM : public EnemyStateMachine {
	virtual void init(EnemyBase*); // _08

	// _00		= VTBL
	// _00-_1C	= EnemyStateMachine
};

struct State : public EnemyFSMState {
	inline State(int); // likely

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateAttack : public State {
	StateAttack(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateDead : public State {
	StateDead(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateEat : public State {
	StateEat(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateFind : public State {
	StateFind(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateFlick : public State {
	StateFlick(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateLost : public State {
	StateLost(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateSearch : public State {
	StateSearch(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateTurn : public State {
	StateTurn(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateWait : public State {
	StateWait(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};

struct StateWalk : public State {
	StateWalk(int);

	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	// _00		= VTBL
	// _00-_10 	= EnemyFSMState
};
/////////////////////////////////////////////////////////////////
} // namespace UmiMushi
} // namespace Game

#endif
