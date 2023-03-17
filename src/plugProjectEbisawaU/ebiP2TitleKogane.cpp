#include "types.h"
#include "ebi/title/Entities/TKogane.h"
#include "ebi/title/TTitle.h"
#include "JSystem/J3D/J3DModelLoader.h"
#include "Controller.h"
#include "Dolphin/rand.h"
#include "trig.h"
#include "nans.h"

namespace ebi {
namespace title {

static const int unusedTitleKoganeArray[] = { 0, 0, 0 };
static const char ebiP2TitleKoganeName[]  = "ebiP2TitleKogane";

/*
 * --INFO--
 * Address:	803E7358
 * Size:	000148
 */
Kogane::TMgr::TMgr()
    : CNode("KoganeMgr")
{
	mAnimator = new TAnimator;
	mObject   = new TUnit;
}

/*
 * --INFO--
 * Address:	803E74A0
 * Size:	000050
 */
void Kogane::TMgr::setArchive(JKRArchive* arc)
{
	mParams.loadSettingFile(arc, "param/param_kogane.txt");
	mAnimator->setArchive(arc);
}

/*
 * --INFO--
 * Address:	803E74F0
 * Size:	000028
 */
void Kogane::TMgr::initUnit() { mObject->init(this); }

/*
 * --INFO--
 * Address:	........
 * Size:	000078
 */
void Kogane::TAnimFolder::load(J3DModelData* modelData, JKRArchive* arc)
{
	mAnims[0].load(modelData, arc, "kogane/kogane_move.bck");
	mAnims[0].mMode = 1;
	mAnims[1].load(modelData, arc, "kogane/kogane_wait.bck");
	mAnims[1].mMode = 1;
}

/*
 * --INFO--
 * Address:	803E7518
 * Size:	000068
 */
Kogane::TAnimator::TAnimator() { mModelData = nullptr; }
/*
 * --INFO--
 * Address:	803E7580
 * Size:	00011C
 */
void Kogane::TAnimator::setArchive(JKRArchive* arc)
{
	void* file = arc->getResource("kogane/kogane_title.bmd");
	P2ASSERTLINE(0x75, file);
	mModelData = J3DModelLoaderDataBase::load(file, 0x240030);

	for (u16 i = 0; i < mModelData->getShapeNum(); i++) {
		mModelData->mShapeTable.mItems[i]->mFlags = (mModelData->mShapeTable.mItems[i]->mFlags & 0xFFFF0FFF) | 0x2000;
	}

	mModelData->newSharedDisplayList(0x40000);
	mModelData->makeSharedDL();
	mAnimFolder.load(mModelData, arc);
}

/*
 * --INFO--
 * Address:	........
 * Size:	000078
 */
J3DModel* Kogane::TAnimator::newJ3DModel() { return new J3DModel(mModelData, 0x20000, 1); }

/*
 * --INFO--
 * Address:	803E769C
 * Size:	000008
 */
void Kogane::TUnit::setController(Controller* ctrl) { mControl = ctrl; }
/*
 * --INFO--
 * Address:	803E76A4
 * Size:	0000F4
 */
void Kogane::TUnit::init(TMgr* mgr)
{
	mManager = mgr;
	mModel   = mManager->mAnimator->newJ3DModel();
	mAnim.setAnimFolder(&mManager->mAnimator->mAnimFolder);

	mPos      = titleMgr->getPosOutOfViewField();
	mParms[0] = mManager->mParams.mWalkSpeed.mValue;
	mParms[1] = mManager->mParams.mScale.mValue;
	mParms[4] = mManager->mParams.mCullRadius.mValue;
	mParms[2] = mManager->mParams.mCollRadius.mValue;
	mParms[3] = mManager->mParams.mPikiReactRadius.mValue;
}
/*
 * --INFO--
 * Address:	803E7798
 * Size:	00004C
 */
void Kogane::TUnit::startZigzagWalk(Vector2f& pos, Vector2f& targetPos)
{
	mPos       = pos;
	mTargetPos = targetPos;
	mActionID  = KOGANEACT_NULL;
	startState(KSTATE_ZigZagWalk);
}

/*
 * --INFO--
 * Address:	803E77E4
 * Size:	000030
 */
void Kogane::TUnit::goHome()
{
	if (mStateID != KSTATE_Inactive) {
		startState(KSTATE_GoHome);
	}
}

/*
 * --INFO--
 * Address:	803E7814
 * Size:	000024
 */
void Kogane::TUnit::outOfCalc() { startState(KSTATE_Inactive); }

/*
 * --INFO--
 * Address:	803E7838
 * Size:	000014
 */
bool Kogane::TUnit::isCalc() { return (bool)mStateID != 0; }

/*
 * --INFO--
 * Address:	803E784C
 * Size:	000014
 */
bool Kogane::TUnit::isController() { return (u8)(mStateID == KSTATE_Controlled); };

/*
 * --INFO--
 * Address:	803E7860
 * Size:	0002D0
 */
void Kogane::TUnit::startState(enumState state)
{

	mStateID = state;
	switch (state) {
	case KSTATE_Inactive:
		mPos = title::titleMgr->getPosOutOfViewField();

	case KSTATE_Controlled:
		u32 time  = mManager->mParams.mControlStateTime.mValue / sys->mDeltaTime;
		mCounter  = time;
		mCounter2 = time;
		break;
	case KSTATE_Wait:
		f32 max, min;
		min       = mManager->mParams.mMinWaitTime.mValue;
		max       = mManager->mParams.mMaxWaitTime.mValue;
		u32 time2 = ((max - min) * randEbisawaFloat() + min) / sys->mDeltaTime;
		mCounter  = time2;
		mCounter2 = time2;
		break;
	case KSTATE_Turn:
		f32 angle    = mManager->mParams.mWalkRandomAngle.mValue;
		f32 line     = JMath::atanTable_.atan2_(mTargetPos.y - mPos.y, mTargetPos.x - mPos.x);
		f32 test     = angle * DEG2RAD * PI * (randEbisawaFloat() * 2.0f + -1.0f) + line;
		mTargetAngle = Vector2f(pikmin2_cosf(test), pikmin2_sinf(test));
		break;
	case KSTATE_Walk:
		f32 max2, min2;
		max2 = mManager->mParams.mMaxMoveTime.mValue;
		min2 = mManager->mParams.mMinMoveTime.mValue;

		u32 time3 = ((max2 - min2) * randEbisawaFloat() + min2) / sys->mDeltaTime;
		mCounter  = time3;
		mCounter2 = time3;
		break;

	case KSTATE_ZigZagWalk:
		Vector2f negPos(-mPos.x, -mPos.y);
		f32 len = _sqrtf(negPos.x * negPos.x + negPos.y * negPos.y);
		if (len != 0.0f) {
			f32 norm = 1.0f / len;
			negPos.x *= norm;
			negPos.y *= norm;
		}
		mAngle = negPos;
		break;
	}
};

/*
 * --INFO--
 * Address:	803E7B30
 * Size:	000734
 */
void Kogane::TUnit::update()
{
	if (!isCalc())
		return;

	if ((mStateID != KSTATE_Inactive) && (mStateID != KSTATE_GoHome) && (mStateID != KSTATE_ZigZagWalk)) {
		if (mControl && mControl->mSStick.mStickMag > 0.7f) {
			startState(KSTATE_Controlled);
		}
	}

	int actionId = mActionID;
	switch (mStateID) {
	case KSTATE_Controlled: {
		if (mCounter != 0) {
			mCounter--;
		}
		mActionID = KOGANEACT_0;
		if (mControl != nullptr) {
			f32 stickX = mControl->mSStick.mXPos;
			if (FABS(stickX) > 0.7f) {
				Vector2f newAng(mAngle.y, -mAngle.x);
				mAngle = mAngle + newAng * (stickX * mManager->mParams.mTurnRate.mValue);

				mAngle.normalise();
				mActionID = KOGANEACT_1;
			}

			f32 stickY = mControl->mSStick.mYPos;
			if (stickY > 0.7f) {
				f32 paramProd = stickY * mParms[0];
				mPos          = mPos + mAngle * paramProd;
				mActionID     = KOGANEACT_2;
			}
		}
		if (mCounter == 0) {
			startState(KSTATE_GoHome);
		}

	} break;

	case KSTATE_Wait: {
		mActionID = KOGANEACT_0;
		if (mCounter != 0) {
			mCounter--;
		}
		if (mCounter == 0) {
			startState(KSTATE_Turn);
		}
	} break;

	case KSTATE_Turn: {
		mActionID   = KOGANEACT_1;
		f32 product = 60.0f * sys->mDeltaTime * 0.5f * 0.1f;
		mAngle      = mAngle + mTargetAngle * product;
		mAngle.normalise();

		Vector2f diff = mAngle - mTargetAngle;
		f32 len       = _lenVec2D(diff);

		if (len < 0.1f) {
			startState(KSTATE_Walk);
		}
	} break;

	case KSTATE_Walk: {
		mActionID = KOGANEACT_2;
		if (mCounter != 0) {
			mCounter--;
		}
		if (mCounter == 0) {
			startState(KSTATE_Wait);
		} else {
			mPos = mPos + mAngle * mParms[0];
		}

	} break;

	case KSTATE_ZigZagWalk: {
		mActionID = KOGANEACT_2;
		mAngle.normalise();

		mPos = mPos + mAngle * mParms[0];
	} break;

	case KSTATE_GoHome: {
		mActionID = KOGANEACT_2;
		mAngle.normalise();
		mPos = mPos + mAngle * mParms[0];
	} break;
	}

	switch (mStateID) {
	case KSTATE_Inactive:
		mPos = titleMgr->getPosOutOfViewField();

	case KSTATE_ZigZagWalk:
		if (titleMgr->isInViewField(this)) {
			startState(KSTATE_Walk);
		}
		break;

	case KSTATE_GoHome:
		if (titleMgr->isOutViewField(this)) {
			startState(KSTATE_Inactive);
		}
		break;

	default:
		titleMgr->inViewField(this);
		break;
	}

	if (mActionID != actionId) // Check if action has changed since begining of function call
	{
		switch (mActionID) {
		case KOGANEACT_1: {
			mAnim.init(0, 1.0);
			mAnim.play();
		} break;

		case KOGANEACT_2: {
			mAnim.init(0, 1.0);
			mAnim.play();
		} break;

		case KOGANEACT_0: {
			mAnim.init(1, 1.0);
			mAnim.play();
		} break;
		}
	}

	calcModelBaseMtx_();
	if (mAnim._0C != nullptr) {
		switch (mAnim._08) {
		case 1:
			mAnim._00 += mAnim._04 * mAnim._0C->float_0x18;
			if (mAnim._00 > mAnim._0C->mLoopEnd) {
				mAnim._00 -= mAnim._0C->mLoopEnd - mAnim._0C->mLoopStart;
			}
			break;

		case 2:
			mAnim._00 += mAnim._04 * mAnim._0C->float_0x18;
			if (mAnim._00 >= mAnim._0C->float_0xC) {
				mAnim._00 = mAnim._0C->float_0xC;
				mAnim._08 = 3;
			}
			break;

		case 0:
		case 3:
		case 4:
			break;
		}
	}

	J3DModel* model = mModel;
	if (mAnim._0C != nullptr) {
		mAnim._0C->pAnmTransform_0x0->mCurrentFrame        = mAnim._00;
		model->mModelData->mJointTree.mJoints[0]->mMtxCalc = mAnim._0C->pMtxCalcAnm_0x4;
	}

	mModel->calc();
	mModel->entry();
	return mModel->viewCalc();
}

} // namespace title
} // namespace ebi
