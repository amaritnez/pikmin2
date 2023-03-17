#ifndef _EBI_TITLE_ENTITIES_TPIKMIN_H
#define _EBI_TITLE_ENTITIES_TPIKMIN_H

#include "CNode.h"
#include "Vector2.h"
#include "ebi/Geometry.h"
#include "ebi/E3DGraph.h"
#include "ebi/title/TObjects.h"
#include "Parameters.h"
#include "BaseParm.h"
#include "JSystem/J3D/J3DFrameCtrl.h"

struct JKRArchive;

namespace ebi {
namespace title {
struct TObjBase;

namespace Pikmin {
struct TMgr;

struct TParam : public TParamBase {
	/*
	 * --INFO--
	 * Address:	803E6F10
	 * Size:	000418
	 */
	TParam()
	    : mIntScale(this, 'pk00', "�C�O�ŃX�P�[��", 2.4f, 0.0f, 10.0f)
	    , mJpnScale(this, 'pk99', "���{��ŃX�P�[��", 2.6f, 0.0f, 10.0f)
	    , mCollRadius(this, 'pk01', "�R���W�������a", 5.0f, 0.0f, 100.0f)
	    , mStopDist(this, 'pk02', "��~����", 20.0f, 0.0f, 100.0f)
	    , mConvDist(this, 'pk03', "��������", 50.0f, 0.0f, 100.0f)
	    , mShadowX(this, 'pk05', "�e���炵X", 5.0f, 0.0f, 100.0f)
	    , mShadowZ(this, 'pk06', "�e���炵Z", 5.0f, 0.0f, 100.0f)
	    , mAnimSpeedWalk(this, 'pk07', "�A�j���X�s�[�h�����i���x���j", 0.5f, 0.0f, 10.0f)
	    , mAnimSpeedStyle(this, 'pk08', "�A�j���X�s�[�h��", 0.5f, 0.0f, 10.0f)
	    , mAnimMaxWaitTime(this, 'pk10', "�A�j���X�s�[�hWAIT�ő�", 0.5f, 0.0f, 10.0f)
	    , mAnimMinWaitTime(this, 'pk09', "�A�j���X�s�[�hWAIT�ŏ�", 0.0f, 0.0f, 10.0f)
	    , mKogane(this, 'pk12', "�R�K�l�D���D���W��", 5.0f, -10.0f, 10.0f)
	    , mChappyRun(this, 'pk13', "�`���b�s�[���瓦����W��", -5.0f, -10.0f, 10.0f)
	    , mChaseGiveUp(this, 'pk14', "�ǂ�����������ߔ��a", 400.0f, -10.0f, 500.0f)
	    , mWindTimer(this, 'pk11', "���^�C�}�[(�b)", 6.0f, 0.0f, 10.0f)
	    , mDistSpeedFactor(this, 'pk04', "������ᑬ�x�W��", 0.2f, 0.0f, 1.0f)
	{
	}

	// _00-_0C = TParamBase
	Parm<f32> mIntScale;        // _0C �C�O�ŃX�P�[��
	Parm<f32> mJpnScale;        // _34 ���{��ŃX�P�[��
	Parm<f32> mCollRadius;      // _5C �R���W�������a
	Parm<f32> mStopDist;        // _84 ��~����
	Parm<f32> mConvDist;        // _AC ��������
	Parm<f32> mShadowX;         // _D4 �e���炵X
	Parm<f32> mShadowZ;         // _FC �e���炵Z
	Parm<f32> mAnimSpeedWalk;   // _124 �A�j���X�s�[�h�����i���x���j
	Parm<f32> mAnimSpeedStyle;  // _14C �A�j���X�s�[�h��
	Parm<f32> mAnimMaxWaitTime; // _174 �A�j���X�s�[�hWAIT�ő�
	Parm<f32> mAnimMinWaitTime; // _19C �A�j���X�s�[�hWAIT�ŏ�
	Parm<f32> mKogane;          // _1C4 �R�K�l�D���D���W��
	Parm<f32> mChappyRun;       // _1EC �`���b�s�[���瓦����W��
	Parm<f32> mChaseGiveUp;     // _214 �ǂ�����������ߔ��a
	Parm<f32> mWindTimer;       // _23C ���^�C�}�[(�b)
	Parm<f32> mDistSpeedFactor; // _264 ������ᑬ�x�W��
};

struct TruncatedJ3DModelData {
	inline TruncatedJ3DModelData()
	{
		_00               = 0;
		mBmd              = nullptr;
		mModelLoaderFlags = 0;
		mBumpFlag         = 0;
		mBillboardFlag    = 0;
		_14               = 0;
		_18               = 0;
		_1C               = 0;
		_20               = 0;
	}
	u32 _00;               // _00
	const void* mBmd;      // _04
	u32 mModelLoaderFlags; // _08
	u32 mBumpFlag;         // _0C
	u32 mBillboardFlag;    // _10
	u32 _14;               // _14
	u32 _18;               // _18
	u32 _1C;               // _1C
	u32 _20;               // _20
};

struct TAnimFolder : public E3DAnimFolderBase {
	virtual E3DAnimRes* getAnimRes(long); // _08 (weak)

	void load(J3DModelData*, JKRArchive*);
	E3DAnimRes* getAnimRes(int);

	// _00 = VTBL
	E3DAnimRes mAnims[4]; // _04 - move, wait, attack, wait2
};

struct TAnimator {
	TAnimator();

	void setArchive(JKRArchive*);
	J3DModel* newJ3DModel();

	J3DModelData* pModelDataRed;
	J3DModelData* pModelDataYellow;
	J3DModelData* pModelDataBlue;
	J3DModelData* pModelDataPurple;
	J3DModelData* pModelDataWhite;
	J3DAnmTransform* _14;
	J3DAnmTransform* _18;
	J3DMtxCalcAnmBase* _1C;
	J3DMtxCalc* _20;
};

struct TBoidParam : public Parameters {
	TBoidParam()
	    : Parameters(nullptr, "TTitleStateParameters")
	    , mTurnMag(this, 'tsp0', "�����ς��x�N�g���̑傫��", 0.2f, 0.0f, 10.0f)
	    , mMaxTurnVec(this, 'tsp1', "�����ς��x�N�g���ő�", 0.4f, 0.0f, 10.0f)
	    , mMaxWalkSpeed(this, 'tsp2', "�����ς��x�N�g���ő�", 2.0f, 0.0f, 10.0f)
	    , mBoidColl(this, 'tsp5', "BOID�Փˉ���W��", 800.0f, 0.0f, 10000.0f)
	    , mBoidSpeedMatch(this, 'tsp6', "BOID���x���킹�W��", 4.5f, 0.0f, 100.0f)
	    , mBoidCenter(this, 'tsp7', "BOID���S�W���W��", 0.005f, 0.0f, 100.0f)
	    , mBoidNeighbor(this, 'tsp8', "BOID�̂̋ߏ��T�[�`���a", 30.0f, 0.0f, 500.0f)
	    , mGroupCenter(this, 'tsp9', "�Q�̒��S�ƌ̖̂ړI�n�̊���", 0.0f, 0.0f, 1.0f)
	{
	}

	// _00-_0C = Parameters
	Parm<f32> mTurnMag;        // _0C
	Parm<f32> mMaxTurnVec;     // _34
	Parm<f32> mMaxWalkSpeed;   // _5C
	Parm<f32> mBoidColl;       // _84
	Parm<f32> mBoidSpeedMatch; // _AC
	Parm<f32> mBoidCenter;     // _D4
	Parm<f32> mBoidNeighbor;   // _FC
	Parm<f32> mGroupCenter;    // _124
};

/* Structure TBoidParamMgr {
   0   CNode__vt *   4   __vt   "#AutoInherit"
   4   CNode *   4   child   "#AutoInherit"
   8   CNode *   4   parent   "#AutoInherit"
   12   CNode *   4   owner   "#AutoInherit"
   16   CNode *   4   head   "#AutoInherit"
   20   char *   4   name   "#AutoInherit"
   32   TBoidParam[5]   1680   a5Params_0x20   ""
}
Size = 1712   Actual Alignment = 1
    boidParamMgr_0x2b0	 */

struct TBoidParamMgr : public CNode {
	// TBoidParamMgr();
	inline TBoidParamMgr()
	    : CNode("TBoidParamMgr") {};
	virtual ~TBoidParamMgr(); // _08 (weak)

	// _00     = VTBL
	// _00-_18 = CNode
	u32 _18;               // _18
	u32 _1C;               // _1C
	TBoidParam mParams[5]; // _20
};
// @size{0x98}
struct TUnit : public TObjBase {
	enum enumState { UNKNOWN = 0 };

	TUnit()
	{
		_38.init(0);
		_4C.init(0);
		mCounter  = 0;
		mCounter2 = 0;
		destPos   = Vector2f(0.0f, 0.0f);
		mManager  = nullptr;
		_60       = Vector2f(1.0f, 1.0f);
		mEnemyObj = nullptr;
		_6C       = 0.0f;
		_70       = 0.0f;
		_74       = 0.0f;
		_78       = 0.0f;
		_7C       = 0.0f;
		_80       = 0.0f;
		_84       = 0;
		_88       = 0;
		_94       = false;
	}

	~TUnit() { }

	virtual u32 getCreatureType() { return 0; } // _08 (weak)
	virtual bool isCalc();                      // _0C

	void init(TMgr*, long);
	void goDestination();
	bool beAttacked();
	void alive();
	bool isAssemble();
	bool isWalk();
	void startState(enumState);
	void update();
	void updateSmoothWalk_(Vector2f&);
	void updateEnemyReaction_();

	// _00     = VTBL
	// _00-_2C = TObjBase
	Vector2f destPos;    // _2C
	TMgr* mManager;      // _34
	J3DFrameCtrl _38;    // _38
	J3DFrameCtrl _4C;    // _4C
	Vector2f _60;        // _60
	TObjBase* mEnemyObj; // _68
	f32 _6C;             // _6C
	f32 _70;             // _70
	f32 _74;             // _74
	f32 _78;             // _78
	f32 _7C;             // _7C
	f32 _80;             // _80
	s32 _84;             // _84
	s32 _88;             // _88
	u32 mCounter;        // _8C
	u32 mCounter2;       // _90
	bool _94;            // _94
	bool unk3[2];        // _96
};

struct TMgr : public CNode {
	TMgr();

	virtual ~TMgr() { } // _08 (weak)

	void setArchive(JKRArchive*);
	void initUnit();
	void update();
	void setStartPos(Vector2f*);
	void setDestPos(Vector2f*);
	void forceArriveDest();
	void assemble();
	void quickAssemble();
	void startBoid1(f32);
	void startBoid2(f32);
	void startBoid3(f32);
	void startWindBlow(EGEBox2f&);
	void startDemo();
	void enemyPushOut(TObjBase*);
	void updateCalcBoid_();
	bool isAssemble();
	TUnit* getUnit(long);

	// _00     = VTBL
	// _00-_18 = CNode
	J3DModelData* mModelData;    // _18
	TParam mParams;              // _1C
	TUnit* pUnits;               // _2AC
	TBoidParamMgr mBoidParamMgr; // _2B0
	// Possibly 4 Vector2f variables
	f32 _960;      // _960
	f32 _964;      // _964
	f32 _968;      // _968
	f32 _96C;      // _96C
	f32 _970;      // _970
	f32 _974;      // _974
	f32 _978;      // _978
	f32 _97C;      // _97C
	u32 mCounter;  // _980
	u32 mCounter2; // _984
	f32 _998;      // _998
	f32 _99C;      // _99C
};
} // namespace Pikmin
} // namespace title
} // namespace ebi

#endif
