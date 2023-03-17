#include "Game/Entities/KingChappy.h"
#include "Game/EnemyAnimKeyEvent.h"
#include "Game/EnemyFunc.h"
#include "Game/CameraMgr.h"
#include "Game/rumble.h"
#include "Game/MapMgr.h"
#include "Game/Navi.h"
#include "Game/PikiMgr.h"
#include "PSM/EnemyBoss.h"
#include "PSSystem/PSMainSide_ObjSound.h"
#include "nans.h"

namespace Game {
namespace KingChappy {

/*
 * --INFO--
 * Address:	803591BC
 * Size:	000204
 */
void FSM::init(EnemyBase* enemy)
{
	create(KINGCHAPPY_Count);

	registerState(new StateWalk(KINGCHAPPY_Walk));
	registerState(new StateAttack(KINGCHAPPY_Attack));
	registerState(new StateDead(KINGCHAPPY_Dead));
	registerState(new StateFlick(KINGCHAPPY_Flick));
	registerState(new StateWarCry(KINGCHAPPY_WarCry));
	registerState(new StateDamage(KINGCHAPPY_Damage));
	registerState(new StateTurn(KINGCHAPPY_Turn));
	registerState(new StateEat(KINGCHAPPY_Eat));
	registerState(new StateHide(KINGCHAPPY_Hide));
	registerState(new StateHideWait(KINGCHAPPY_HideWait));
	registerState(new StateAppear(KINGCHAPPY_Appear));
	registerState(new StateCaution(KINGCHAPPY_Caution));
	registerState(new StateSwallow(KINGCHAPPY_Swallow));
}

/*
 * --INFO--
 * Address:	803593C0
 * Size:	00003C
 */
StateWalk::StateWalk(int stateID)
    : State(stateID)
{
	mName = "walk";
}

/*
 * --INFO--
 * Address:	803593FC
 * Size:	000080
 */
void StateWalk::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(6, nullptr);
	OBJ(enemy)->resetFootPos();
	if (enemy->mTargetCreature) {
		_10 = 0;
	}

	OBJ(enemy)->mNextState = KINGCHAPPY_NULL;
	enemy->setAnimSpeed(EnemyAnimatorBase::defaultAnimSpeed * CG_PROPERPARMS(enemy).mFp11.mValue);
}

/*
 * --INFO--
 * Address:	8035947C
 * Size:	0001A4
 */
void StateWalk::exec(EnemyBase* enemy)
{
	if (OBJ(enemy)->mNextState < 0) {
		OBJ(enemy)->walkFunc();
		OBJ(enemy)->checkTurn(true);
		if (!enemy->mTargetCreature) {
			_10++;
		}

		if (OBJ(enemy)->isOutOfTerritory(1.0f) || CG_PARMS(enemy)->_BC9 || _10 > CG_PROPERPARMS(enemy).mIp01.mValue) {
			OBJ(enemy)->_2BC = enemy->mHomePosition;
			_10              = CG_PROPERPARMS(enemy).mIp01.mValue;
			if (OBJ(enemy)->isReachToGoal(CG_PARMS(enemy)->mGeneral.mHomeRadius.mValue)) {
				OBJ(enemy)->mNextState = KINGCHAPPY_Hide;
				_10                    = 0;
			}
		} else if (OBJ(enemy)->isReachToGoal(20.0f)) {
			OBJ(enemy)->setNextGoal();
		}
	}

	OBJ(enemy)->checkDead(true);
	OBJ(enemy)->checkFlick(true);
	OBJ(enemy)->checkAttack(true);

	if (OBJ(enemy)->mNextState >= 0) {
		enemy->finishMotion();
		enemy->mTargetVelocity = Vector3f(0.0f);
	}

	if (enemy->mCurAnim->mIsPlaying) {
		if (enemy->mCurAnim->mType == KEYEVENT_END_BLEND) {
			OBJ(enemy)->endBlendAnimation();
		} else if (enemy->mCurAnim->mType == KEYEVENT_END) {
			transit(enemy, OBJ(enemy)->mNextState, nullptr);
		}
	}
}

/*
 * --INFO--
 * Address:	80359620
 * Size:	000028
 */
void StateWalk::cleanup(EnemyBase* enemy) { enemy->setAnimSpeed(EnemyAnimatorBase::defaultAnimSpeed); }

/*
 * --INFO--
 * Address:	80359648
 * Size:	00003C
 */
StateAttack::StateAttack(int stateID)
    : State(stateID)
{
	mName = "attack";
}

/*
 * --INFO--
 * Address:	80359684
 * Size:	00006C
 */
void StateAttack::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(0, nullptr);
	enemy->mTargetVelocity = Vector3f(0.0f);
	_10                    = 0;
	_14                    = 0;
	_18                    = 0;
	_1C                    = 0;
	OBJ(enemy)->_338       = 0;
}

/*
 * --INFO--
 * Address:	803596F0
 * Size:	0006AC
 */
void StateAttack::exec(EnemyBase* enemy)
{
	if (_1C) {
		int bombVal = OBJ(enemy)->eatBomb();
		if (bombVal > _18) {
			_18 = bombVal;
		}

		int pikiVal = EnemyFunc::eatPikmin(enemy, nullptr);
		if (pikiVal > _10) {
			_10 = pikiVal;
		}
	}

	Vector3f tonguePos;
	Vector3f tongueVel;

	OBJ(enemy)->getTonguePosVel(tonguePos, tongueVel);
	tonguePos.y += 5.0f;
	Sys::Sphere sphere(tonguePos, 5.0f);

	MoveInfo moveInfo(&sphere, &tongueVel, CG_PARMS(enemy)->mCreatureProps.mProps.mWallReflection.mValue);
	mapMgr->traceMove(moveInfo, sys->mDeltaTime);

	if (moveInfo.mBounceTriangle || moveInfo.mWallTriangle) {
		OBJ(enemy)->_2E4 = 1;
		OBJ(enemy)->fadeEffect(6);
		if (_18 > 0) {
			StateEatArg eatArg;
			eatArg._00 = 1;
			transit(enemy, KINGCHAPPY_Eat, &eatArg);
			return;
		}

		if (_10 > 0) {
			transit(enemy, KINGCHAPPY_Swallow, nullptr);
			return;
		}

		transit(enemy, KINGCHAPPY_Walk, nullptr);
		return;
	}

	Iterator<Navi> iter(naviMgr);

	CI_LOOP(iter)
	{
		Navi* navi = *iter;

		for (int i = 0; i < enemy->getMouthSlots()->getMax(); i++) {
			MouthCollPart* slot = enemy->getMouthSlots()->getSlot(i);
			Vector3f slotPos;
			slot->getPosition(slotPos);
			Vector3f naviPos = navi->getPosition();
			Vector3f diff(slotPos.y - naviPos.y, slotPos.z - naviPos.z, slotPos.x - naviPos.x);
			f32 len = _length2(diff);
			if (len < slot->mRadius) {
				InteractAttack attack(enemy, CG_PARMS(enemy)->mGeneral.mAttackDamage.mValue, nullptr);
				navi->stimulate(attack);
			}
		}
	}

	if (enemy->mCurAnim->mIsPlaying) {
		switch (enemy->mCurAnim->mType) {
		case KEYEVENT_END_BLEND:
			OBJ(enemy)->endBlendAnimation();
			break;

		case KEYEVENT_2:
			// this bit needs fixing
			PSM::EnemyBoss* soundObj = static_cast<PSM::EnemyBoss*>(enemy->mSoundObj);
			PSM::checkBoss(soundObj);
			if (soundObj) {
				soundObj->jumpRequest(3);
			}
			break;

		case KEYEVENT_3:
			_1C = 1;
			OBJ(enemy)->createEffect(6);
			break;

		case KEYEVENT_5:
			OBJ(enemy)->fadeEffect(6);
			break;

		case KEYEVENT_6:
			OBJ(enemy)->_338 = 1;
			break;

		case KEYEVENT_END:
			if (_18 > 0) {
				StateEatArg eatArg;
				eatArg._00 = 1;
				transit(enemy, KINGCHAPPY_Eat, &eatArg);
			} else if (_10 > 0) {
				transit(enemy, KINGCHAPPY_Swallow, nullptr);
			} else {
				transit(enemy, KINGCHAPPY_Walk, nullptr);
			}
			break;
		}
	}

	OBJ(enemy)->checkDead(true);
	/*
	stwu     r1, -0x140(r1)
	mflr     r0
	stw      r0, 0x144(r1)
	stfd     f31, 0x130(r1)
	psq_st   f31, 312(r1), 0, qr0
	stmw     r27, 0x11c(r1)
	mr       r30, r3
	mr       r31, r4
	lbz      r0, 0x1c(r3)
	cmplwi   r0, 0
	beq      lbl_80359750
	mr       r3, r31
	bl       eatBomb__Q34Game10KingChappy3ObjFv
	lwz      r0, 0x18(r30)
	cmpw     r3, r0
	ble      lbl_80359734
	stw      r3, 0x18(r30)

lbl_80359734:
	mr       r3, r31
	li       r4, 0
	bl
"eatPikmin__Q24Game9EnemyFuncFPQ24Game9EnemyBaseP23Condition<Q24Game4Piki>" lwz
r0, 0x10(r30) cmpw     r3, r0 ble      lbl_80359750 stw      r3, 0x10(r30)

lbl_80359750:
	mr       r3, r31
	addi     r4, r1, 0x64
	addi     r5, r1, 0x58
	bl "getTonguePosVel__Q34Game10KingChappy3ObjFR10Vector3<f>R10Vector3<f>" lfs
f5, lbl_8051E584@sda21(r2) lis      r3, sincosTable___5JMath@ha lfs      f1,
0x68(r1) addi     r3, r3, sincosTable___5JMath@l lfs      f0, 0x64(r1) addi r8,
r1, 0x48 fadds    f4, f1, f5 lfs      f3, 0x6c(r1) stfs     f0, 0x48(r1) addi
r7, r1, 0x58 lfs      f2, lbl_8051E578@sda21(r2) li       r6, 0 stfs     f4,
0x68(r1) li       r0, -1 lfs      f1, 0x800(r3) addi     r4, r1, 0x70 stfs f4,
0x4c(r1) lfs      f0, lbl_8051E588@sda21(r2) stfs     f3, 0x50(r1) lwz      r3,
mapMgr__4Game@sda21(r13) stfs     f5, 0x54(r1) lwz      r5, sys@sda21(r13) lwz
r9, 0xc0(r31) lfs      f3, 0x4c(r9) stw      r8, 0x70(r1) stw      r7, 0x74(r1)
	stfs     f3, 0x78(r1)
	stfs     f2, 0x7c(r1)
	stw      r6, 0x80(r1)
	stw      r6, 0xb4(r1)
	stb      r6, 0xe4(r1)
	stb      r6, 0x89(r1)
	stb      r6, 0x88(r1)
	stw      r6, 0xb8(r1)
	stw      r6, 0x84(r1)
	stb      r6, 0x100(r1)
	stw      r6, 0x104(r1)
	stfs     f1, 0x9c(r1)
	stfs     f0, 0xa0(r1)
	stw      r0, 0x108(r1)
	stw      r6, 0xbc(r1)
	stb      r6, 0x8a(r1)
	lwz      r12, 4(r3)
	lfs      f1, 0x54(r5)
	lwz      r12, 0x24(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0xb4(r1)
	cmplwi   r0, 0
	bne      lbl_80359834
	lwz      r0, 0xb8(r1)
	cmplwi   r0, 0
	beq      lbl_803598D4

lbl_80359834:
	li       r0, 1
	mr       r3, r31
	stb      r0, 0x2e4(r31)
	li       r4, 6
	bl       fadeEffect__Q34Game10KingChappy3ObjFi
	lwz      r0, 0x18(r30)
	cmpwi    r0, 0
	ble      lbl_80359880
	li       r0, 1
	mr       r3, r30
	stb      r0, 0xc(r1)
	mr       r4, r31
	addi     r6, r1, 0xc
	li       r5, 7
	lwz      r12, 0(r30)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_80359D80

lbl_80359880:
	lwz      r0, 0x10(r30)
	cmpwi    r0, 0
	ble      lbl_803598B0
	mr       r3, r30
	mr       r4, r31
	lwz      r12, 0(r30)
	li       r5, 0xc
	li       r6, 0
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_80359D80

lbl_803598B0:
	mr       r3, r30
	mr       r4, r31
	lwz      r12, 0(r30)
	li       r5, 0
	li       r6, 0
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_80359D80

lbl_803598D4:
	li       r0, 0
	lwz      r3, naviMgr__4Game@sda21(r13)
	lis      r4, "__vt__22Iterator<Q24Game4Navi>"@ha
	stw      r0, 0x44(r1)
	addi     r4, r4, "__vt__22Iterator<Q24Game4Navi>"@l
	cmplwi   r0, 0
	stw      r4, 0x38(r1)
	stw      r0, 0x3c(r1)
	stw      r3, 0x40(r1)
	bne      lbl_80359914
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x3c(r1)
	b        lbl_8035999C

lbl_80359914:
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x3c(r1)
	b        lbl_80359980

lbl_8035992C:
	lwz      r3, 0x40(r1)
	lwz      r4, 0x3c(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0x44(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_8035999C
	lwz      r3, 0x40(r1)
	lwz      r4, 0x3c(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x3c(r1)

lbl_80359980:
	lwz      r12, 0x38(r1)
	addi     r3, r1, 0x38
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035992C

lbl_8035999C:
	lfs      f31, lbl_8051E578@sda21(r2)
	b        lbl_80359B88

lbl_803599A4:
	lwz      r3, 0x40(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	li       r27, 0
	mr       r28, r3
	b        lbl_80359AAC

lbl_803599C4:
	mr       r3, r31
	lwz      r12, 0(r31)
	lwz      r12, 0x25c(r12)
	mtctr    r12
	bctrl
	mr       r4, r27
	bl       getSlot__10MouthSlotsFi
	mr       r29, r3
	addi     r4, r1, 0x2c
	bl       "getPosition__13MouthCollPartFR10Vector3<f>"
	mr       r4, r28
	addi     r3, r1, 0x10
	lwz      r12, 0(r28)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f1, 0x30(r1)
	lfs      f0, 0x14(r1)
	lfs      f3, 0x2c(r1)
	fsubs    f4, f1, f0
	lfs      f2, 0x10(r1)
	lfs      f1, 0x34(r1)
	lfs      f0, 0x18(r1)
	fsubs    f2, f3, f2
	fmuls    f3, f4, f4
	fsubs    f1, f1, f0
	fmadds   f0, f2, f2, f3
	fmuls    f1, f1, f1
	fadds    f1, f1, f0
	fcmpo    cr0, f1, f31
	ble      lbl_80359A50
	ble      lbl_80359A54
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_80359A54

lbl_80359A50:
	fmr      f1, f31

lbl_80359A54:
	lfs      f0, 0x1c(r29)
	fcmpo    cr0, f1, f0
	bge      lbl_80359AA8
	lwz      r5, 0xc0(r31)
	lis      r4, __vt__Q24Game11Interaction@ha
	lis      r3, __vt__Q24Game14InteractAttack@ha
	li       r0, 0
	lfs      f0, 0x604(r5)
	addi     r4, r4, __vt__Q24Game11Interaction@l
	addi     r5, r3, __vt__Q24Game14InteractAttack@l
	mr       r3, r28
	stw      r4, 0x1c(r1)
	addi     r4, r1, 0x1c
	stw      r31, 0x20(r1)
	stw      r5, 0x1c(r1)
	stfs     f0, 0x24(r1)
	stw      r0, 0x28(r1)
	lwz      r12, 0(r28)
	lwz      r12, 0x1a4(r12)
	mtctr    r12
	bctrl

lbl_80359AA8:
	addi     r27, r27, 1

lbl_80359AAC:
	mr       r3, r31
	lwz      r12, 0(r31)
	lwz      r12, 0x25c(r12)
	mtctr    r12
	bctrl
	lwz      r0, 0(r3)
	cmpw     r27, r0
	blt      lbl_803599C4
	lwz      r0, 0x44(r1)
	cmplwi   r0, 0
	bne      lbl_80359AF8
	lwz      r3, 0x40(r1)
	lwz      r4, 0x3c(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x3c(r1)
	b        lbl_80359B88

lbl_80359AF8:
	lwz      r3, 0x40(r1)
	lwz      r4, 0x3c(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x3c(r1)
	b        lbl_80359B6C

lbl_80359B18:
	lwz      r3, 0x40(r1)
	lwz      r4, 0x3c(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0x44(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_80359B88
	lwz      r3, 0x40(r1)
	lwz      r4, 0x3c(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x3c(r1)

lbl_80359B6C:
	lwz      r12, 0x38(r1)
	addi     r3, r1, 0x38
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_80359B18

lbl_80359B88:
	lwz      r3, 0x40(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	lwz      r4, 0x3c(r1)
	cmplw    r4, r3
	bne      lbl_803599A4
	lwz      r3, 0x188(r31)
	lbz      r0, 0x24(r3)
	cmplwi   r0, 0
	beq      lbl_80359D74
	lwz      r0, 0x1c(r3)
	cmpwi    r0, 6
	beq      lbl_80359CE0
	bge      lbl_80359BEC
	cmpwi    r0, 3
	beq      lbl_80359CB8
	bge      lbl_80359BE0
	cmpwi    r0, 2
	bge      lbl_80359C10
	b        lbl_80359D74

lbl_80359BE0:
	cmpwi    r0, 5
	bge      lbl_80359CD0
	b        lbl_80359D74

lbl_80359BEC:
	cmpwi    r0, 0x7d0
	beq      lbl_80359C04
	bge      lbl_80359D74
	cmpwi    r0, 0x3e8
	beq      lbl_80359CEC
	b        lbl_80359D74

lbl_80359C04:
	mr       r3, r31
	bl       endBlendAnimation__Q34Game10KingChappy3ObjFv
	b        lbl_80359D74

lbl_80359C10:
	lwz      r28, 0x28c(r31)
	li       r30, 0
	mr       r3, r28
	lwz      r12, 0x28(r28)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	cmpwi    r3, 5
	beq      lbl_80359C6C
	mr       r3, r28
	lwz      r12, 0x28(r28)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	cmpwi    r3, 6
	beq      lbl_80359C6C
	mr       r3, r28
	lwz      r12, 0x28(r28)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	cmpwi    r3, 7
	bne      lbl_80359C70

lbl_80359C6C:
	li       r30, 1

lbl_80359C70:
	clrlwi.  r0, r30, 0x18
	bne      lbl_80359C94
	lis      r3, lbl_804910F0@ha
	lis      r5, lbl_80491108@ha
	addi     r3, r3, lbl_804910F0@l
	li       r4, 0x454
	addi     r5, r5, lbl_80491108@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_80359C94:
	cmplwi   r28, 0
	beq      lbl_80359D74
	mr       r3, r28
	li       r4, 3
	lwz      r12, 0x28(r28)
	lwz      r12, 0xd4(r12)
	mtctr    r12
	bctrl
	b        lbl_80359D74

lbl_80359CB8:
	li       r0, 1
	mr       r3, r31
	stb      r0, 0x1c(r30)
	li       r4, 6
	bl       createEffect__Q34Game10KingChappy3ObjFi
	b        lbl_80359D74

lbl_80359CD0:
	mr       r3, r31
	li       r4, 6
	bl       fadeEffect__Q34Game10KingChappy3ObjFi
	b        lbl_80359D74

lbl_80359CE0:
	li       r0, 1
	stb      r0, 0x338(r31)
	b        lbl_80359D74

lbl_80359CEC:
	lwz      r0, 0x18(r30)
	cmpwi    r0, 0
	ble      lbl_80359D24
	li       r0, 1
	mr       r3, r30
	stb      r0, 8(r1)
	mr       r4, r31
	addi     r6, r1, 8
	li       r5, 7
	lwz      r12, 0(r30)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_80359D74

lbl_80359D24:
	lwz      r0, 0x10(r30)
	cmpwi    r0, 0
	ble      lbl_80359D54
	mr       r3, r30
	mr       r4, r31
	lwz      r12, 0(r30)
	li       r5, 0xc
	li       r6, 0
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_80359D74

lbl_80359D54:
	mr       r3, r30
	mr       r4, r31
	lwz      r12, 0(r30)
	li       r5, 0
	li       r6, 0
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl

lbl_80359D74:
	mr       r3, r31
	li       r4, 1
	bl       checkDead__Q34Game10KingChappy3ObjFb

lbl_80359D80:
	psq_l    f31, 312(r1), 0, qr0
	lfd      f31, 0x130(r1)
	lmw      r27, 0x11c(r1)
	lwz      r0, 0x144(r1)
	mtlr     r0
	addi     r1, r1, 0x140
	blr
	*/
}

/*
 * --INFO--
 * Address:	80359D9C
 * Size:	00003C
 */
void StateAttack::cleanup(EnemyBase* enemy)
{
	OBJ(enemy)->fadeEffect(6);
	OBJ(enemy)->_338 = 1;
}

/*
 * --INFO--
 * Address:	80359DD8
 * Size:	00003C
 */
StateDead::StateDead(int stateID)
    : State(stateID)
{
	mName = "dead";
}

/*
 * --INFO--
 * Address:	80359E14
 * Size:	0000CC
 */
void StateDead::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(3, nullptr);
	enemy->mCurrentVelocity = Vector3f(0.0f);
	enemy->mTargetVelocity  = Vector3f(0.0f);
	enemy->deathProcedure();
	OBJ(enemy)->createEffect(7);

	Vector3f pos = enemy->getPosition();
	cameraMgr->startVibration(12, pos, 2);
	rumbleMgr->startRumble(13, pos, 2);

	enemy->disableEvent(0, EB_IsCullable);
}

/*
 * --INFO--
 * Address:	80359EE0
 * Size:	0000DC
 */
void StateDead::exec(EnemyBase* enemy)
{
	if (enemy->mCurAnim->mIsPlaying) {
		switch (enemy->mCurAnim->mType) {
		case KEYEVENT_END_BLEND:
			OBJ(enemy)->endBlendAnimation();
			break;

		case KEYEVENT_2:
			OBJ(enemy)->createBounceEffect();
			Vector3f pos = enemy->getPosition();
			cameraMgr->startVibration(3, pos, 2);
			rumbleMgr->startRumble(11, pos, 2);
			break;

		case KEYEVENT_END:
			enemy->kill(nullptr);
			break;
		}
	}
}

/*
 * --INFO--
 * Address:	80359FBC
 * Size:	000028
 */
void StateDead::cleanup(EnemyBase* enemy) { OBJ(enemy)->fadeEffect(7); }

/*
 * --INFO--
 * Address:	80359FE4
 * Size:	00003C
 */
StateFlick::StateFlick(int stateID)
    : State(stateID)
{
	mName = "flick";
}

/*
 * --INFO--
 * Address:	8035A020
 * Size:	000060
 */
void StateFlick::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(5, nullptr);
	enemy->mCurrentVelocity = Vector3f(0.0f);
	enemy->mTargetVelocity  = Vector3f(0.0f);
	enemy->enableEvent(0, EB_IsEnemyNotBitter);
}

/*
 * --INFO--
 * Address:	8035A080
 * Size:	0008EC
 */
void StateFlick::exec(EnemyBase* enemy)
{
	if (enemy->mCurAnim->mIsPlaying) {
		switch (enemy->mCurAnim->mType) {
		case KEYEVENT_END_BLEND:
			OBJ(enemy)->endBlendAnimation();
			break;

		case KEYEVENT_2:
			Vector3f pos = enemy->getPosition();
			f32 faceDir  = enemy->getFaceDir();
			efx::ArgRotYScale argScale(pos, faceDir, enemy->mScaleModifier);
			if (enemy->mWaterBox) {
				efx::TKchApWat wat;
				wat.create(&argScale);
				enemy->mSoundObj->startSound(PSSE_EN_KING_WATER_APPEAR, 0);
			} else {
				efx::TKchFlickSand sand;
				sand.create(&argScale);
			}

			cameraMgr->startVibration(3, pos, 2);
			rumbleMgr->startRumble(11, pos, 2);

			PSM::EnemyBoss* soundObj = static_cast<PSM::EnemyBoss*>(enemy->mSoundObj);
			PSM::checkBoss(soundObj);
			if (soundObj) {
				soundObj->jumpRequest(4);
			}

			break;

		case KEYEVENT_3:
			f32 yMax         = 25.0f + OBJ(enemy)->_300.y;                                     // f31
			f32 yMin         = OBJ(enemy)->_300.y - 30.0f;                                     // f30
			Vector3f footPos = OBJ(enemy)->_300;                                               // f28, na, f27
			f32 trampleRange = SQUARE(*CG_PROPERPARMS(enemy).mFp08() * enemy->mScaleModifier); // f29

			Iterator<Piki> iterPiki(pikiMgr);

			CI_LOOP(iterPiki)
			{
				Piki* piki = *iterPiki;
				if (piki->isAlive()) {
					Vector3f pikiPos = piki->getPosition();
					if (yMax > pikiPos.y && yMin < pikiPos.y && sqrDistanceXZ(footPos, pikiPos) < trampleRange) {
						InteractPress pikiPress(enemy, CG_PARMS(enemy)->mGeneral.mAttackDamage.mValue, nullptr);
						piki->stimulate(pikiPress);
					}
				}
			}

			Iterator<Navi> iterNavi(naviMgr);

			bool naviCheck = true;

			CI_LOOP(iterNavi)
			{
				Navi* navi = *iterNavi;
				if (navi->isAlive()) {
					Vector3f naviPos = navi->getPosition();
					if (yMax > naviPos.y && yMin < naviPos.y && sqrDistanceXZ(footPos, naviPos) < trampleRange) {
						InteractPress naviPress(enemy, CG_PARMS(enemy)->mGeneral.mAttackDamage.mValue, nullptr);
						navi->stimulate(naviPress);
						naviCheck = false;
					}
				}
			}

			f32 rate      = CG_PARMS(enemy)->mGeneral.mShakeRateMaybe.mValue;
			f32 knockback = CG_PARMS(enemy)->mGeneral.mShakeKnockback.mValue;
			f32 damage    = CG_PARMS(enemy)->mGeneral.mShakeDamage.mValue;
			f32 range     = CG_PARMS(enemy)->mGeneral.mShakeRange.mValue * enemy->mScaleModifier;

			EnemyFunc::flickNearbyPikmin(enemy, range, knockback, damage, -1000.0f, nullptr);
			EnemyFunc::flickStickPikmin(enemy, rate, knockback, damage, enemy->getFaceDir(), nullptr);
			if (naviCheck) {
				EnemyFunc::flickNearbyNavi(enemy, range, knockback, damage, -1000.0f, nullptr);
			}
			enemy->mToFlick = 0.0f;
			if (!enemy->isEvent(0, EB_PS3)) {
				enemy->disableEvent(0, EB_IsEnemyNotBitter);
			}
			break;

		case KEYEVENT_END:
			transit(enemy, KINGCHAPPY_Walk, nullptr);
			break;
		}
	}

	OBJ(enemy)->checkDead(true);
	/*
	stwu     r1, -0x130(r1)
	mflr     r0
	stw      r0, 0x134(r1)
	stfd     f31, 0x120(r1)
	psq_st   f31, 296(r1), 0, qr0
	stfd     f30, 0x110(r1)
	psq_st   f30, 280(r1), 0, qr0
	stfd     f29, 0x100(r1)
	psq_st   f29, 264(r1), 0, qr0
	stfd     f28, 0xf0(r1)
	psq_st   f28, 248(r1), 0, qr0
	stfd     f27, 0xe0(r1)
	psq_st   f27, 232(r1), 0, qr0
	stw      r31, 0xdc(r1)
	stw      r30, 0xd8(r1)
	stw      r29, 0xd4(r1)
	mr       r31, r4
	lwz      r5, 0x188(r4)
	lbz      r0, 0x24(r5)
	cmplwi   r0, 0
	beq      lbl_8035A91C
	lwz      r0, 0x1c(r5)
	cmpwi    r0, 0x3e8
	beq      lbl_8035A904
	bge      lbl_8035A0FC
	cmpwi    r0, 3
	beq      lbl_8035A348
	bge      lbl_8035A91C
	cmpwi    r0, 2
	bge      lbl_8035A114
	b        lbl_8035A91C

lbl_8035A0FC:
	cmpwi    r0, 0x7d0
	beq      lbl_8035A108
	b        lbl_8035A91C

lbl_8035A108:
	mr       r3, r31
	bl       endBlendAnimation__Q34Game10KingChappy3ObjFv
	b        lbl_8035A91C

lbl_8035A114:
	lwz      r12, 0(r4)
	addi     r3, r1, 0x20
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f2, 0x20(r1)
	mr       r3, r31
	lfs      f1, 0x24(r1)
	lfs      f0, 0x28(r1)
	stfs     f2, 0x7c(r1)
	stfs     f1, 0x80(r1)
	stfs     f0, 0x84(r1)
	lwz      r12, 0(r31)
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	lfs      f4, 0x1f8(r31)
	lis      r3, __vt__Q23efx3Arg@ha
	addi     r4, r3, __vt__Q23efx3Arg@l
	lfs      f3, 0x7c(r1)
	lfs      f2, 0x80(r1)
	lis      r3, __vt__Q23efx12ArgRotYScale@ha
	lfs      f0, 0x84(r1)
	addi     r0, r3, __vt__Q23efx12ArgRotYScale@l
	stw      r4, 0x88(r1)
	stfs     f3, 0x8c(r1)
	stfs     f2, 0x90(r1)
	stfs     f0, 0x94(r1)
	stw      r0, 0x88(r1)
	stfs     f1, 0x98(r1)
	stfs     f4, 0x9c(r1)
	lwz      r0, 0x280(r31)
	cmplwi   r0, 0
	beq      lbl_8035A22C
	lis      r3, __vt__Q23efx5TBase@ha
	li       r5, 0
	addi     r0, r3, __vt__Q23efx5TBase@l
	lis      r3, __vt__Q23efx8TSimple5@ha
	stw      r0, 0xa0(r1)
	addi     r0, r3, __vt__Q23efx8TSimple5@l
	lis      r3, __vt__Q23efx9TKchApWat@ha
	li       r4, 0x211
	stw      r0, 0xa0(r1)
	addi     r0, r3, __vt__Q23efx9TKchApWat@l
	li       r9, 0x212
	li       r8, 0x213
	li       r7, 0x214
	li       r6, 0x215
	sth      r4, 0xa4(r1)
	addi     r3, r1, 0xa0
	addi     r4, r1, 0x88
	sth      r9, 0xa6(r1)
	sth      r8, 0xa8(r1)
	sth      r7, 0xaa(r1)
	sth      r6, 0xac(r1)
	stw      r5, 0xb0(r1)
	stw      r5, 0xb4(r1)
	stw      r5, 0xb8(r1)
	stw      r5, 0xbc(r1)
	stw      r5, 0xc0(r1)
	stw      r0, 0xa0(r1)
	bl       create__Q23efx9TKchApWatFPQ23efx3Arg
	lwz      r3, 0x28c(r31)
	li       r4, 0x5806
	li       r5, 0
	lwz      r12, 0x28(r3)
	lwz      r12, 0x88(r12)
	mtctr    r12
	bctrl
	b        lbl_8035A278

lbl_8035A22C:
	lis      r3, __vt__Q23efx5TBase@ha
	li       r5, 0
	addi     r0, r3, __vt__Q23efx5TBase@l
	lis      r3, __vt__Q23efx8TSimple2@ha
	stw      r0, 0x6c(r1)
	addi     r0, r3, __vt__Q23efx8TSimple2@l
	lis      r3, __vt__Q23efx13TKchFlickSand@ha
	li       r4, 0x228
	stw      r0, 0x6c(r1)
	addi     r0, r3, __vt__Q23efx13TKchFlickSand@l
	li       r6, 0x229
	addi     r3, r1, 0x6c
	sth      r4, 0x70(r1)
	addi     r4, r1, 0x88
	sth      r6, 0x72(r1)
	stw      r5, 0x74(r1)
	stw      r5, 0x78(r1)
	stw      r0, 0x6c(r1)
	bl       create__Q23efx13TKchFlickSandFPQ23efx3Arg

lbl_8035A278:
	lwz      r3, cameraMgr__4Game@sda21(r13)
	addi     r5, r1, 0x7c
	li       r4, 3
	li       r6, 2
	bl       "startVibration__Q24Game9CameraMgrFiR10Vector3<f>i"
	lwz      r3, rumbleMgr__4Game@sda21(r13)
	addi     r5, r1, 0x7c
	li       r4, 0xb
	li       r6, 2
	bl       "startRumble__Q24Game9RumbleMgrFiR10Vector3<f>i"
	lwz      r29, 0x28c(r31)
	li       r30, 0
	mr       r3, r29
	lwz      r12, 0x28(r29)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	cmpwi    r3, 5
	beq      lbl_8035A2FC
	mr       r3, r29
	lwz      r12, 0x28(r29)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	cmpwi    r3, 6
	beq      lbl_8035A2FC
	mr       r3, r29
	lwz      r12, 0x28(r29)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	cmpwi    r3, 7
	bne      lbl_8035A300

lbl_8035A2FC:
	li       r30, 1

lbl_8035A300:
	clrlwi.  r0, r30, 0x18
	bne      lbl_8035A324
	lis      r3, lbl_804910F0@ha
	lis      r5, lbl_80491108@ha
	addi     r3, r3, lbl_804910F0@l
	li       r4, 0x454
	addi     r5, r5, lbl_80491108@l
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8035A324:
	cmplwi   r29, 0
	beq      lbl_8035A91C
	mr       r3, r29
	li       r4, 4
	lwz      r12, 0x28(r29)
	lwz      r12, 0xd4(r12)
	mtctr    r12
	bctrl
	b        lbl_8035A91C

lbl_8035A348:
	lwz      r4, 0xc0(r31)
	lis      r3, "__vt__22Iterator<Q24Game4Piki>"@ha
	li       r0, 0
	lfs      f3, lbl_8051E59C@sda21(r2)
	lfs      f2, 0x304(r31)
	cmplwi   r0, 0
	lfs      f1, 0x934(r4)
	addi     r4, r3, "__vt__22Iterator<Q24Game4Piki>"@l
	lfs      f0, 0x1f8(r31)
	fadds    f31, f3, f2
	lfs      f2, lbl_8051E5A0@sda21(r2)
	fmuls    f0, f1, f0
	lfs      f28, 0x300(r31)
	lfs      f27, 0x308(r31)
	fsubs    f30, f31, f2
	lwz      r3, pikiMgr__4Game@sda21(r13)
	fmuls    f29, f0, f0
	stw      r4, 0x5c(r1)
	stw      r0, 0x68(r1)
	stw      r0, 0x60(r1)
	stw      r3, 0x64(r1)
	bne      lbl_8035A3B8
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x60(r1)
	b        lbl_8035A5C4

lbl_8035A3B8:
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x60(r1)
	b        lbl_8035A424

lbl_8035A3D0:
	lwz      r3, 0x64(r1)
	lwz      r4, 0x60(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0x68(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_8035A5C4
	lwz      r3, 0x64(r1)
	lwz      r4, 0x60(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x60(r1)

lbl_8035A424:
	lwz      r12, 0x5c(r1)
	addi     r3, r1, 0x5c
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035A3D0
	b        lbl_8035A5C4

lbl_8035A444:
	lwz      r3, 0x64(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	lwz      r12, 0(r3)
	mr       r29, r3
	lwz      r12, 0xa8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035A508
	mr       r4, r29
	addi     r3, r1, 0x14
	lwz      r12, 0(r29)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f0, 0x18(r1)
	lfs      f1, 0x14(r1)
	fcmpo    cr0, f31, f0
	lfs      f2, 0x1c(r1)
	ble      lbl_8035A508
	fcmpo    cr0, f30, f0
	bge      lbl_8035A508
	fsubs    f0, f27, f2
	fsubs    f1, f28, f1
	fmuls    f0, f0, f0
	fmadds   f0, f1, f1, f0
	fcmpo    cr0, f0, f29
	bge      lbl_8035A508
	lwz      r5, 0xc0(r31)
	lis      r4, __vt__Q24Game11Interaction@ha
	lis      r3, __vt__Q24Game13InteractPress@ha
	li       r0, 0
	lfs      f0, 0x604(r5)
	addi     r4, r4, __vt__Q24Game11Interaction@l
	addi     r5, r3, __vt__Q24Game13InteractPress@l
	mr       r3, r29
	stw      r4, 0x4c(r1)
	addi     r4, r1, 0x4c
	stw      r31, 0x50(r1)
	stw      r5, 0x4c(r1)
	stfs     f0, 0x54(r1)
	stw      r0, 0x58(r1)
	lwz      r12, 0(r29)
	lwz      r12, 0x1a4(r12)
	mtctr    r12
	bctrl

lbl_8035A508:
	lwz      r0, 0x68(r1)
	cmplwi   r0, 0
	bne      lbl_8035A534
	lwz      r3, 0x64(r1)
	lwz      r4, 0x60(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x60(r1)
	b        lbl_8035A5C4

lbl_8035A534:
	lwz      r3, 0x64(r1)
	lwz      r4, 0x60(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x60(r1)
	b        lbl_8035A5A8

lbl_8035A554:
	lwz      r3, 0x64(r1)
	lwz      r4, 0x60(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0x68(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_8035A5C4
	lwz      r3, 0x64(r1)
	lwz      r4, 0x60(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x60(r1)

lbl_8035A5A8:
	lwz      r12, 0x5c(r1)
	addi     r3, r1, 0x5c
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035A554

lbl_8035A5C4:
	lwz      r3, 0x64(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	lwz      r4, 0x60(r1)
	cmplw    r4, r3
	bne      lbl_8035A444
	li       r0, 0
	lwz      r3, naviMgr__4Game@sda21(r13)
	lis      r4, "__vt__22Iterator<Q24Game4Navi>"@ha
	stw      r0, 0x48(r1)
	addi     r4, r4, "__vt__22Iterator<Q24Game4Navi>"@l
	cmplwi   r0, 0
	stw      r4, 0x3c(r1)
	li       r30, 1
	stw      r0, 0x40(r1)
	stw      r3, 0x44(r1)
	bne      lbl_8035A628
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x40(r1)
	b        lbl_8035A838

lbl_8035A628:
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x40(r1)
	b        lbl_8035A694

lbl_8035A640:
	lwz      r3, 0x44(r1)
	lwz      r4, 0x40(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0x48(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_8035A838
	lwz      r3, 0x44(r1)
	lwz      r4, 0x40(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x40(r1)

lbl_8035A694:
	lwz      r12, 0x3c(r1)
	addi     r3, r1, 0x3c
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035A640
	b        lbl_8035A838

lbl_8035A6B4:
	lwz      r3, 0x44(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	lwz      r12, 0(r3)
	mr       r29, r3
	lwz      r12, 0xa8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035A77C
	mr       r4, r29
	addi     r3, r1, 8
	lwz      r12, 0(r29)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f0, 0xc(r1)
	lfs      f1, 8(r1)
	fcmpo    cr0, f31, f0
	lfs      f2, 0x10(r1)
	ble      lbl_8035A77C
	fcmpo    cr0, f30, f0
	bge      lbl_8035A77C
	fsubs    f0, f27, f2
	fsubs    f1, f28, f1
	fmuls    f0, f0, f0
	fmadds   f0, f1, f1, f0
	fcmpo    cr0, f0, f29
	bge      lbl_8035A77C
	lwz      r5, 0xc0(r31)
	lis      r4, __vt__Q24Game11Interaction@ha
	lis      r3, __vt__Q24Game13InteractPress@ha
	li       r0, 0
	lfs      f0, 0x604(r5)
	addi     r4, r4, __vt__Q24Game11Interaction@l
	addi     r5, r3, __vt__Q24Game13InteractPress@l
	mr       r3, r29
	stw      r4, 0x2c(r1)
	addi     r4, r1, 0x2c
	stw      r31, 0x30(r1)
	stw      r5, 0x2c(r1)
	stfs     f0, 0x34(r1)
	stw      r0, 0x38(r1)
	lwz      r12, 0(r29)
	lwz      r12, 0x1a4(r12)
	mtctr    r12
	bctrl
	li       r30, 0

lbl_8035A77C:
	lwz      r0, 0x48(r1)
	cmplwi   r0, 0
	bne      lbl_8035A7A8
	lwz      r3, 0x44(r1)
	lwz      r4, 0x40(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x40(r1)
	b        lbl_8035A838

lbl_8035A7A8:
	lwz      r3, 0x44(r1)
	lwz      r4, 0x40(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x40(r1)
	b        lbl_8035A81C

lbl_8035A7C8:
	lwz      r3, 0x44(r1)
	lwz      r4, 0x40(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0x48(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_8035A838
	lwz      r3, 0x44(r1)
	lwz      r4, 0x40(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0x40(r1)

lbl_8035A81C:
	lwz      r12, 0x3c(r1)
	addi     r3, r1, 0x3c
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035A7C8

lbl_8035A838:
	lwz      r3, 0x44(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	lwz      r4, 0x40(r1)
	cmplw    r4, r3
	bne      lbl_8035A6B4
	lwz      r5, 0xc0(r31)
	mr       r3, r31
	lfs      f0, 0x1f8(r31)
	li       r4, 0
	lfs      f1, 0x514(r5)
	lfs      f28, 0x4c4(r5)
	fmuls    f30, f1, f0
	lfs      f29, 0x4ec(r5)
	fmr      f2, f28
	lfs      f27, 0x53c(r5)
	fmr      f3, f29
	lfs      f4, lbl_8051E5A4@sda21(r2)
	fmr      f1, f30
	bl
"flickNearbyPikmin__Q24Game9EnemyFuncFPQ24Game8CreatureffffP23Condition<Q24Game4Piki>"
	mr       r3, r31
	lwz      r12, 0(r31)
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	fmr      f4, f1
	mr       r3, r31
	fmr      f1, f27
	li       r4, 0
	fmr      f2, f28
	fmr      f3, f29
	bl
"flickStickPikmin__Q24Game9EnemyFuncFPQ24Game8CreatureffffP23Condition<Q24Game4Piki>"
	clrlwi.  r0, r30, 0x18
	beq      lbl_8035A8E4
	fmr      f1, f30
	lfs      f4, lbl_8051E5A4@sda21(r2)
	fmr      f2, f28
	mr       r3, r31
	fmr      f3, f29
	li       r4, 0
	bl
"flickNearbyNavi__Q24Game9EnemyFuncFPQ24Game8CreatureffffP23Condition<Q24Game4Navi>"

lbl_8035A8E4:
	lfs      f0, lbl_8051E578@sda21(r2)
	stfs     f0, 0x20c(r31)
	lwz      r3, 0x1e0(r31)
	rlwinm.  r0, r3, 0, 5, 5
	bne      lbl_8035A91C
	rlwinm   r0, r3, 0, 0xb, 9
	stw      r0, 0x1e0(r31)
	b        lbl_8035A91C

lbl_8035A904:
	lwz      r12, 0(r3)
	li       r5, 0
	li       r6, 0
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl

lbl_8035A91C:
	mr       r3, r31
	li       r4, 1
	bl       checkDead__Q34Game10KingChappy3ObjFb
	psq_l    f31, 296(r1), 0, qr0
	lfd      f31, 0x120(r1)
	psq_l    f30, 280(r1), 0, qr0
	lfd      f30, 0x110(r1)
	psq_l    f29, 264(r1), 0, qr0
	lfd      f29, 0x100(r1)
	psq_l    f28, 248(r1), 0, qr0
	lfd      f28, 0xf0(r1)
	psq_l    f27, 232(r1), 0, qr0
	lfd      f27, 0xe0(r1)
	lwz      r31, 0xdc(r1)
	lwz      r30, 0xd8(r1)
	lwz      r0, 0x134(r1)
	lwz      r29, 0xd4(r1)
	mtlr     r0
	addi     r1, r1, 0x130
	blr
	*/
}

/*
 * --INFO--
 * Address:	8035A96C
 * Size:	000010
 */
void StateFlick::cleanup(EnemyBase* enemy) { enemy->disableEvent(0, EB_IsEnemyNotBitter); }

/*
 * --INFO--
 * Address:	8035A97C
 * Size:	00003C
 */
StateWarCry::StateWarCry(int stateID)
    : State(stateID)
{
	mName = "warcry";
}

/*
 * --INFO--
 * Address:	8035A9B8
 * Size:	000054
 */
void StateWarCry::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(1, nullptr);
	enemy->mCurrentVelocity = Vector3f(0.0f);
	enemy->mTargetVelocity  = Vector3f(0.0f);
}

/*
 * --INFO--
 * Address:	8035AA0C
 * Size:	0006D0
 */
void StateWarCry::exec(EnemyBase* enemy)
{
	if (enemy->mCurAnim->mIsPlaying) {
		switch (enemy->mCurAnim->mType) {
		case KEYEVENT_END_BLEND:
			OBJ(enemy)->endBlendAnimation();
			break;

		case KEYEVENT_2:
			OBJ(enemy)->createEffect(3);
			break;

		case KEYEVENT_3:
			OBJ(enemy)->createEffect(2);
			OBJ(enemy)->requestTransit(KINGCHAPPY_Appear);
			OBJ(enemy)->requestTransit(KINGCHAPPY_WarCry);
			Vector3f rumblePos = enemy->getPosition();
			cameraMgr->startVibration(26, rumblePos, 2);
			rumbleMgr->startRumble(3, rumblePos, 2);
			break;

		case KEYEVENT_4:
			Vector3f kingPos = enemy->getPosition();
			f32 yMin         = kingPos.y - 20.0f; // f29
			f32 yMax         = 30.0f + yMin;      // f28
			Iterator<Piki> iterPiki(pikiMgr);
			CI_LOOP(iterPiki)
			{
				Piki* piki = *iterPiki;
				if (piki->isAlive()) {
					Vector3f pikiPos = piki->getPosition();
					if (yMax > pikiPos.y && yMin < pikiPos.y) {
						f32 angDist         = enemy->changeFaceDir(piki);
						Vector3f newPikiPos = piki->getPosition();
						Vector3f newKingPos = enemy->getPosition();
						bool distCheck      = false;
						if (FABS(angDist) <= sqrDistanceXZ(newPikiPos, newKingPos)) { // this should be two checks + also wrong
							distCheck = true;
						}
						if (distCheck) {
							InteractAstonish astonish(enemy, 100.0f);
							piki->stimulate(astonish);
						}
					}
				}
			}

			f32 rate      = CG_PARMS(enemy)->mGeneral.mShakeRateMaybe.mValue;
			f32 knockback = CG_PARMS(enemy)->mGeneral.mShakeKnockback.mValue;
			f32 damage    = CG_PARMS(enemy)->mGeneral.mShakeDamage.mValue;
			f32 range     = CG_PARMS(enemy)->mGeneral.mShakeRange.mValue * enemy->mScaleModifier;

			EnemyFunc::flickStickPikmin(enemy, rate, knockback, damage, enemy->getFaceDir(), nullptr);
			EnemyFunc::flickNearbyPikmin(enemy, range, knockback, damage, -1000.0f, nullptr);
			EnemyFunc::flickNearbyNavi(enemy, range, knockback, damage, -1000.0f, nullptr);

			enemy->mToFlick = 0.0f;
			break;

		case KEYEVENT_5:
			OBJ(enemy)->fadeEffect(2);
			break;

		case KEYEVENT_6:
			OBJ(enemy)->fadeEffect(3);
			break;

		case KEYEVENT_END:
			if (enemy->mHealth <= 0.0f) {
				transit(enemy, KINGCHAPPY_Dead, nullptr);
			} else {
				transit(enemy, KINGCHAPPY_Walk, nullptr);
			}
			break;
		}
	}

	OBJ(enemy)->checkDead(true);
	/*
	stwu     r1, -0x160(r1)
	mflr     r0
	stw      r0, 0x164(r1)
	stfd     f31, 0x150(r1)
	psq_st   f31, 344(r1), 0, qr0
	stfd     f30, 0x140(r1)
	psq_st   f30, 328(r1), 0, qr0
	stfd     f29, 0x130(r1)
	psq_st   f29, 312(r1), 0, qr0
	stfd     f28, 0x120(r1)
	psq_st   f28, 296(r1), 0, qr0
	stfd     f27, 0x110(r1)
	psq_st   f27, 280(r1), 0, qr0
	stfd     f26, 0x100(r1)
	psq_st   f26, 264(r1), 0, qr0
	stfd     f25, 0xf0(r1)
	psq_st   f25, 248(r1), 0, qr0
	stfd     f24, 0xe0(r1)
	psq_st   f24, 232(r1), 0, qr0
	stw      r31, 0xdc(r1)
	stw      r30, 0xd8(r1)
	stw      r29, 0xd4(r1)
	mr       r31, r4
	lwz      r5, 0x188(r4)
	lbz      r0, 0x24(r5)
	cmplwi   r0, 0
	beq      lbl_8035B074
	lwz      r0, 0x1c(r5)
	cmpwi    r0, 6
	beq      lbl_8035B01C
	bge      lbl_8035AAAC
	cmpwi    r0, 3
	beq      lbl_8035AAE0
	bge      lbl_8035AAA0
	cmpwi    r0, 2
	bge      lbl_8035AAD0
	b        lbl_8035B074

lbl_8035AAA0:
	cmpwi    r0, 5
	bge      lbl_8035B00C
	b        lbl_8035AB60

lbl_8035AAAC:
	cmpwi    r0, 0x7d0
	beq      lbl_8035AAC4
	bge      lbl_8035B074
	cmpwi    r0, 0x3e8
	beq      lbl_8035B02C
	b        lbl_8035B074

lbl_8035AAC4:
	mr       r3, r31
	bl       endBlendAnimation__Q34Game10KingChappy3ObjFv
	b        lbl_8035B074

lbl_8035AAD0:
	mr       r3, r31
	li       r4, 3
	bl       createEffect__Q34Game10KingChappy3ObjFi
	b        lbl_8035B074

lbl_8035AAE0:
	mr       r3, r31
	li       r4, 2
	bl       createEffect__Q34Game10KingChappy3ObjFi
	mr       r3, r31
	li       r4, 0xa
	bl       requestTransit__Q34Game10KingChappy3ObjFi
	mr       r3, r31
	li       r4, 4
	bl       requestTransit__Q34Game10KingChappy3ObjFi
	mr       r4, r31
	addi     r3, r1, 0x98
	lwz      r12, 0(r31)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f2, 0x98(r1)
	addi     r5, r1, 0xc0
	lfs      f1, 0x9c(r1)
	li       r4, 0x1a
	lfs      f0, 0xa0(r1)
	li       r6, 2
	stfs     f2, 0xc0(r1)
	lwz      r3, cameraMgr__4Game@sda21(r13)
	stfs     f1, 0xc4(r1)
	stfs     f0, 0xc8(r1)
	bl       "startVibration__Q24Game9CameraMgrFiR10Vector3<f>i"
	lwz      r3, rumbleMgr__4Game@sda21(r13)
	addi     r5, r1, 0xc0
	li       r4, 3
	li       r6, 2
	bl       "startRumble__Q24Game9RumbleMgrFiR10Vector3<f>i"
	b        lbl_8035B074

lbl_8035AB60:
	lwz      r12, 0(r4)
	addi     r3, r1, 0x8c
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f1, 0x90(r1)
	li       r0, 0
	lfs      f0, lbl_8051E574@sda21(r2)
	lis      r4, "__vt__22Iterator<Q24Game4Piki>"@ha
	lwz      r3, pikiMgr__4Game@sda21(r13)
	addi     r4, r4, "__vt__22Iterator<Q24Game4Piki>"@l
	fsubs    f29, f1, f0
	lfs      f0, lbl_8051E5A0@sda21(r2)
	cmplwi   r0, 0
	stw      r4, 0xb0(r1)
	fadds    f28, f0, f29
	stw      r0, 0xbc(r1)
	stw      r0, 0xb4(r1)
	stw      r3, 0xb8(r1)
	bne      lbl_8035ABC8
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0xb4(r1)
	b        lbl_8035AF5C

lbl_8035ABC8:
	lwz      r12, 0(r3)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	stw      r3, 0xb4(r1)
	b        lbl_8035AC34

lbl_8035ABE0:
	lwz      r3, 0xb8(r1)
	lwz      r4, 0xb4(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0xbc(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_8035AF5C
	lwz      r3, 0xb8(r1)
	lwz      r4, 0xb4(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0xb4(r1)

lbl_8035AC34:
	lwz      r12, 0xb0(r1)
	addi     r3, r1, 0xb0
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035ABE0
	b        lbl_8035AF5C

lbl_8035AC54:
	lwz      r3, 0xb8(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	lwz      r12, 0(r3)
	mr       r30, r3
	lwz      r12, 0xa8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035AEA0
	mr       r4, r30
	addi     r3, r1, 0x80
	lwz      r12, 0(r30)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f0, 0x84(r1)
	fcmpo    cr0, f28, f0
	ble      lbl_8035AEA0
	fcmpo    cr0, f29, f0
	bge      lbl_8035AEA0
	mr       r4, r30
	lwz      r5, 0xc0(r31)
	lwz      r12, 0(r30)
	addi     r3, r1, 0x68
	lfs      f30, 0x86c(r5)
	lwz      r12, 8(r12)
	lfs      f31, 0x894(r5)
	mtctr    r12
	bctrl
	mr       r4, r31
	lfs      f2, 0x68(r1)
	lwz      r12, 0(r31)
	addi     r3, r1, 0x74
	lfs      f1, 0x6c(r1)
	lfs      f0, 0x70(r1)
	lwz      r12, 8(r12)
	stfs     f2, 0x50(r1)
	stfs     f1, 0x54(r1)
	stfs     f0, 0x58(r1)
	mtctr    r12
	bctrl
	lfs      f5, 0x74(r1)
	lis      r3, atanTable___5JMath@ha
	lfs      f3, 0x7c(r1)
	addi     r3, r3, atanTable___5JMath@l
	lfs      f1, 0x50(r1)
	lfs      f0, 0x58(r1)
	lfs      f4, 0x78(r1)
	fsubs    f1, f1, f5
	fsubs    f2, f0, f3
	stfs     f5, 0x5c(r1)
	stfs     f4, 0x60(r1)
	stfs     f3, 0x64(r1)
	bl       "atan2___Q25JMath18TAtanTable<1024,f>CFff"
	bl       roundAng__Ff
	lwz      r12, 0(r31)
	fmr      f24, f1
	mr       r3, r31
	lwz      r12, 0x64(r12)
	mtctr    r12
	bctrl
	fmr      f2, f1
	fmr      f1, f24
	bl       angDist__Fff
	mr       r4, r31
	fmr      f26, f1
	lwz      r12, 0(r31)
	addi     r3, r1, 0x14
	li       r29, 0
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r30
	addi     r3, r1, 8
	lwz      r12, 0(r30)
	lfs      f27, 0x14(r1)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r31
	lfs      f0, 8(r1)
	lwz      r12, 0(r31)
	addi     r3, r1, 0x2c
	fsubs    f24, f0, f27
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r30
	addi     r3, r1, 0x20
	lwz      r12, 0(r30)
	lfs      f27, 0x30(r1)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r31
	lfs      f0, 0x24(r1)
	lwz      r12, 0(r31)
	addi     r3, r1, 0x44
	fsubs    f25, f0, f27
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r4, r30
	addi     r3, r1, 0x38
	lwz      r12, 0(r30)
	lfs      f27, 0x4c(r1)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	fmuls    f1, f25, f25
	lfs      f2, 0x40(r1)
	fmuls    f0, f31, f31
	fsubs    f2, f2, f27
	fmadds   f1, f24, f24, f1
	fmadds   f1, f2, f2, f1
	fcmpo    cr0, f1, f0
	bge      lbl_8035AE5C
	lfs      f0, lbl_8051E5B4@sda21(r2)
	fabs     f2, f26
	lfs      f1, lbl_8051E5B0@sda21(r2)
	fmuls    f0, f0, f30
	frsp     f2, f2
	fmuls    f0, f1, f0
	fcmpo    cr0, f2, f0
	cror     2, 0, 2
	bne      lbl_8035AE5C
	li       r29, 1

lbl_8035AE5C:
	clrlwi.  r0, r29, 0x18
	beq      lbl_8035AEA0
	lis      r3, __vt__Q24Game11Interaction@ha
	lfs      f0, lbl_8051E5B8@sda21(r2)
	addi     r0, r3, __vt__Q24Game11Interaction@l
	lis      r3, __vt__Q24Game16InteractAstonish@ha
	stw      r0, 0xa4(r1)
	addi     r0, r3, __vt__Q24Game16InteractAstonish@l
	mr       r3, r30
	addi     r4, r1, 0xa4
	stw      r31, 0xa8(r1)
	stw      r0, 0xa4(r1)
	stfs     f0, 0xac(r1)
	lwz      r12, 0(r30)
	lwz      r12, 0x1a4(r12)
	mtctr    r12
	bctrl

lbl_8035AEA0:
	lwz      r0, 0xbc(r1)
	cmplwi   r0, 0
	bne      lbl_8035AECC
	lwz      r3, 0xb8(r1)
	lwz      r4, 0xb4(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0xb4(r1)
	b        lbl_8035AF5C

lbl_8035AECC:
	lwz      r3, 0xb8(r1)
	lwz      r4, 0xb4(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0xb4(r1)
	b        lbl_8035AF40

lbl_8035AEEC:
	lwz      r3, 0xb8(r1)
	lwz      r4, 0xb4(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x20(r12)
	mtctr    r12
	bctrl
	mr       r4, r3
	lwz      r3, 0xbc(r1)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_8035AF5C
	lwz      r3, 0xb8(r1)
	lwz      r4, 0xb4(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	stw      r3, 0xb4(r1)

lbl_8035AF40:
	lwz      r12, 0xb0(r1)
	addi     r3, r1, 0xb0
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_8035AEEC

lbl_8035AF5C:
	lwz      r3, 0xb8(r1)
	lwz      r12, 0(r3)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	lwz      r4, 0xb4(r1)
	cmplw    r4, r3
	bne      lbl_8035AC54
	lwz      r4, 0xc0(r31)
	mr       r3, r31
	lwz      r12, 0(r31)
	lfs      f1, 0x514(r4)
	lfs      f0, 0x1f8(r31)
	lwz      r12, 0x64(r12)
	fmuls    f27, f1, f0
	lfs      f24, 0x53c(r4)
	lfs      f25, 0x4c4(r4)
	lfs      f26, 0x4ec(r4)
	mtctr    r12
	bctrl
	fmr      f4, f1
	mr       r3, r31
	fmr      f1, f24
	li       r4, 0
	fmr      f2, f25
	fmr      f3, f26
	bl
"flickStickPikmin__Q24Game9EnemyFuncFPQ24Game8CreatureffffP23Condition<Q24Game4Piki>"
	fmr      f1, f27
	lfs      f4, lbl_8051E5A4@sda21(r2)
	fmr      f2, f25
	mr       r3, r31
	fmr      f3, f26
	li       r4, 0
	bl
"flickNearbyPikmin__Q24Game9EnemyFuncFPQ24Game8CreatureffffP23Condition<Q24Game4Piki>"
	fmr      f1, f27
	lfs      f4, lbl_8051E5A4@sda21(r2)
	fmr      f2, f25
	mr       r3, r31
	fmr      f3, f26
	li       r4, 0
	bl
"flickNearbyNavi__Q24Game9EnemyFuncFPQ24Game8CreatureffffP23Condition<Q24Game4Navi>"
	lfs      f0, lbl_8051E578@sda21(r2)
	stfs     f0, 0x20c(r31)
	b        lbl_8035B074

lbl_8035B00C:
	mr       r3, r31
	li       r4, 2
	bl       fadeEffect__Q34Game10KingChappy3ObjFi
	b        lbl_8035B074

lbl_8035B01C:
	mr       r3, r31
	li       r4, 3
	bl       fadeEffect__Q34Game10KingChappy3ObjFi
	b        lbl_8035B074

lbl_8035B02C:
	lfs      f1, 0x200(r31)
	lfs      f0, lbl_8051E578@sda21(r2)
	fcmpo    cr0, f1, f0
	cror     2, 0, 2
	bne      lbl_8035B05C
	lwz      r12, 0(r3)
	li       r5, 2
	li       r6, 0
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_8035B074

lbl_8035B05C:
	lwz      r12, 0(r3)
	li       r5, 0
	li       r6, 0
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl

lbl_8035B074:
	mr       r3, r31
	li       r4, 1
	bl       checkDead__Q34Game10KingChappy3ObjFb
	psq_l    f31, 344(r1), 0, qr0
	lfd      f31, 0x150(r1)
	psq_l    f30, 328(r1), 0, qr0
	lfd      f30, 0x140(r1)
	psq_l    f29, 312(r1), 0, qr0
	lfd      f29, 0x130(r1)
	psq_l    f28, 296(r1), 0, qr0
	lfd      f28, 0x120(r1)
	psq_l    f27, 280(r1), 0, qr0
	lfd      f27, 0x110(r1)
	psq_l    f26, 264(r1), 0, qr0
	lfd      f26, 0x100(r1)
	psq_l    f25, 248(r1), 0, qr0
	lfd      f25, 0xf0(r1)
	psq_l    f24, 232(r1), 0, qr0
	lfd      f24, 0xe0(r1)
	lwz      r31, 0xdc(r1)
	lwz      r30, 0xd8(r1)
	lwz      r0, 0x164(r1)
	lwz      r29, 0xd4(r1)
	mtlr     r0
	addi     r1, r1, 0x160
	blr
	*/
}

/*
 * --INFO--
 * Address:	8035B0DC
 * Size:	000040
 */
void StateWarCry::cleanup(EnemyBase* enemy)
{
	OBJ(enemy)->fadeEffect(2);
	OBJ(enemy)->fadeEffect(3);
}

/*
 * --INFO--
 * Address:	8035B11C
 * Size:	00003C
 */
StateDamage::StateDamage(int stateID)
    : State(stateID)
{
	mName = "damage";
}

/*
 * --INFO--
 * Address:	8035B158
 * Size:	000040
 */
void StateDamage::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(2, nullptr);
	_10 = 0;
}

/*
 * --INFO--
 * Address:	8035B198
 * Size:	0001B4
 */
void StateDamage::exec(EnemyBase* enemy)
{
	if (_10 > 0) {
		_10++;
		if (_10 > CG_PROPERPARMS(enemy).mIp03.mValue) {
			enemy->finishMotion();
		}
	}

	if (enemy->mCurAnim->mIsPlaying) {
		switch (enemy->mCurAnim->mType) {
		case KEYEVENT_END_BLEND:
			OBJ(enemy)->endBlendAnimation();
			break;

		case KEYEVENT_2:
			OBJ(enemy)->createEffect(4);
			break;

		case KEYEVENT_3:
			OBJ(enemy)->createEffect(5);
			break;

		case KEYEVENT_4:
			int pikiNum = OBJ(enemy)->getPikminInMouth(true);
			enemy->addDamage(pikiNum * CG_PROPERPARMS(enemy).mFp05.mValue, 1.0f);
			enemy->mToFlick = 0.0f;
			break;

		case KEYEVENT_5:
			OBJ(enemy)->createBounceEffect();
			break;

		case KEYEVENT_6:
			_10 = 1;
			break;

		case KEYEVENT_END:
			if (enemy->mHealth <= 0.0f) {
				transit(enemy, KINGCHAPPY_Dead, nullptr);
			} else {
				transit(enemy, KINGCHAPPY_Walk, nullptr);
			}
			break;
		}
	}

	OBJ(enemy)->checkDead(true);
}

/*
 * --INFO--
 * Address:	8035B34C
 * Size:	000040
 */
void StateDamage::cleanup(EnemyBase* enemy)
{
	OBJ(enemy)->fadeEffect(5);
	OBJ(enemy)->fadeEffect(4);
}

/*
 * --INFO--
 * Address:	8035B38C
 * Size:	00003C
 */
StateTurn::StateTurn(int stateID)
    : State(stateID)
{
	mName = "turn";
}

/*
 * --INFO--
 * Address:	8035B3C8
 * Size:	000048
 */
void StateTurn::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(11, nullptr);
	enemy->mTargetVelocity = Vector3f(0.0f);
}

/*
 * --INFO--
 * Address:	8035B410
 * Size:	0000F8
 */
void StateTurn::exec(EnemyBase* enemy)
{
	f32 threshold = 0.5f;
	if (enemy->mTargetCreature) {
		threshold = PI * (DEG2RAD * CG_PROPERPARMS(enemy).mFp07.mValue);
	}

	f32 turnVal = OBJ(enemy)->turnFunc(1.0f);
	if (FABS(turnVal) < threshold) {
		enemy->finishMotion();
	}

	if (enemy->mCurAnim->mIsPlaying) {
		if (enemy->mCurAnim->mType == KEYEVENT_END_BLEND) {
			OBJ(enemy)->endBlendAnimation();

		} else if (enemy->mCurAnim->mType == KEYEVENT_END) {
			transit(enemy, KINGCHAPPY_Walk, nullptr);
		}
	}

	OBJ(enemy)->checkDead(true);
	OBJ(enemy)->checkFlick(true);
}

/*
 * --INFO--
 * Address:	8035B508
 * Size:	00003C
 */
StateEat::StateEat(int stateID)
    : State(stateID)
{
	mName = "eat";
}

/*
 * --INFO--
 * Address:	8035B544
 * Size:	000050
 */
void StateEat::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(8, nullptr);
	_10 = static_cast<StateEatArg*>(stateArg)->_00;
}

/*
 * --INFO--
 * Address:	8035B594
 * Size:	0000A4
 */
void StateEat::exec(EnemyBase* enemy)
{
	if (enemy->mCurAnim->mIsPlaying) {
		if (enemy->mCurAnim->mType == KEYEVENT_END_BLEND) {
			OBJ(enemy)->endBlendAnimation();

		} else if (enemy->mCurAnim->mType == KEYEVENT_END) {
			if (_10) {
				transit(enemy, KINGCHAPPY_Damage, nullptr);
			} else {
				transit(enemy, KINGCHAPPY_Swallow, nullptr);
			}
		}
	}

	OBJ(enemy)->checkDead(true);
}

/*
 * --INFO--
 * Address:	8035B638
 * Size:	00003C
 */
StateHide::StateHide(int stateID)
    : State(stateID)
{
	mName = "hide";
}

/*
 * --INFO--
 * Address:	8035B674
 * Size:	0000BC
 */
void StateHide::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(4, nullptr);
	enemy->setEmotionCaution();
	enemy->mTargetVelocity = Vector3f(0.0f);
	enemy->enableEvent(0, EB_IsImmuneBitter);
	enemy->hardConstraintOn();

	Vector3f pos = enemy->getPosition();
	cameraMgr->startVibration(6, pos, 2);
	rumbleMgr->startRumble(13, pos, 2);
}

/*
 * --INFO--
 * Address:	8035B730
 * Size:	0001B8
 */
void StateHide::exec(EnemyBase* enemy)
{
	if (enemy->mCurAnim->mIsPlaying) {
		switch (enemy->mCurAnim->mType) {
		case KEYEVENT_END_BLEND:
			OBJ(enemy)->endBlendAnimation();
			break;

		case KEYEVENT_2:
			OBJ(enemy)->createEffect(1);
			if (enemy->mWaterBox) {
				enemy->mSoundObj->startSound(PSSE_EN_KING_WATER_APPEAR, 0);
			} else {
				enemy->mSoundObj->startSound(PSSE_EN_KING_APPEAR, 0);
			}
			break;

		case KEYEVENT_4:
			OBJ(enemy)->fadeEffect(1);
			break;

		case KEYEVENT_END:
			PSM::EnemyBoss* soundObj = static_cast<PSM::EnemyBoss*>(enemy->mSoundObj);
			PSM::checkBoss(soundObj);
			soundObj->setAppearFlag(false);
			transit(enemy, KINGCHAPPY_HideWait, nullptr);
			break;
		}
	}
}

/*
 * --INFO--
 * Address:	8035B8E8
 * Size:	000054
 */
void StateHide::cleanup(EnemyBase* enemy)
{
	OBJ(enemy)->fadeEffect(1);
	OBJ(enemy)->fadeEffect(0);
	enemy->fadeEfxHamon();
}

/*
 * --INFO--
 * Address:	8035B93C
 * Size:	000040
 */
StateHideWait::StateHideWait(int stateID)
    : State(stateID)
{
	mName = "hidewait";
}

/*
 * --INFO--
 * Address:	8035B97C
 * Size:	000080
 */
void StateHideWait::init(EnemyBase* enemy, StateArg* stateArg)
{
	_10 = 0;
	OBJ(enemy)->startMotionSelf(10, nullptr);
	enemy->disableEvent(0, EB_LifegaugeVisible);
	enemy->hardConstraintOn();
	OBJ(enemy)->fadeEffect(0);
	_14 = 0;
	enemy->enableEvent(0, EB_IsImmuneBitter);
}

/*
 * --INFO--
 * Address:	8035B9FC
 * Size:	00018C
 */
void StateHideWait::exec(EnemyBase* enemy)
{
	enemy->fadeEfxHamon();
	if (!_14 && enemy->mWaterBox) {
		OBJ(enemy)->createEffect(8);
		_14 = 1;
	}

	_10++;

	if (OBJ(enemy)->_2EC || _10 > CG_PROPERPARMS(enemy).mIp02.mValue) {
		f32 range = CG_PROPERPARMS(enemy).mFp02.mValue * enemy->mScaleModifier;

		bool doWake;
		if (EnemyFunc::isThereOlimar(enemy, range, nullptr)) {
			doWake = true;
		} else if (EnemyFunc::isTherePikmin(enemy, range, nullptr)) {
			doWake = true;
		} else {
			doWake = false;
		}

		if (doWake) {
			transit(enemy, KINGCHAPPY_Appear, nullptr);
			OBJ(enemy)->_2EC = 0;
		}
	}

	if (enemy->mCurAnim->mIsPlaying) {
		if (enemy->mCurAnim->mType == KEYEVENT_END_BLEND) {
			OBJ(enemy)->endBlendAnimation();
		} else if (enemy->mCurAnim->mType == KEYEVENT_END) {
			transit(enemy, KINGCHAPPY_Appear, nullptr);
			OBJ(enemy)->_2EC = 0;
		}
	}
}

/*
 * --INFO--
 * Address:	8035BB88
 * Size:	000040
 */
void StateHideWait::cleanup(EnemyBase* enemy)
{
	OBJ(enemy)->fadeEffect(8);
	enemy->disableEvent(0, EB_IsImmuneBitter);
}

/*
 * --INFO--
 * Address:	8035BBC8
 * Size:	00003C
 */
StateAppear::StateAppear(int stateID)
    : State(stateID)
{
	mName = "appear";
}

/*
 * --INFO--
 * Address:	8035BC04
 * Size:	0002EC
 */
void StateAppear::init(EnemyBase* enemy, StateArg* stateArg)
{
	OBJ(enemy)->startMotionSelf(9, nullptr);
	OBJ(enemy)->searchTarget();
	enemy->setEmotionExcitement();
	enemy->disableEvent(0, EB_IsImmuneBitter);
	enemy->enableEvent(0, EB_IsEnemyNotBitter);
	_10 = 1;

	f32 faceDir  = enemy->getFaceDir();
	Vector3f pos = enemy->getPosition();
	efx::ArgRotYScale argScale(pos, faceDir, enemy->mScaleModifier);

	if (enemy->mWaterBox) {
		efx::TKchApWat waterFX;
		waterFX.create(&argScale);
		enemy->mSoundObj->startSound(PSSE_EN_KING_WATER_APPEAR, 0);
	} else {
		efx::TKchApSand sandFX;
		sandFX.create(&argScale);
		enemy->mSoundObj->startSound(PSSE_EN_KING_APPEAR, 0);
	}

	OBJ(enemy)->createEffect(0);
	enemy->createEfxHamon();
	cameraMgr->startVibration(15, pos, 2);
	rumbleMgr->startRumble(12, pos, 2);

	PSM::EnemyBoss* soundObj = static_cast<PSM::EnemyBoss*>(enemy->mSoundObj);
	PSM::checkBoss(soundObj);
	if (soundObj) {
		soundObj->setAppearFlag(true);
	}
}

/*
 * --INFO--
 * Address:	8035BEF0
 * Size:	00019C
 */
void StateAppear::exec(EnemyBase* enemy)
{
	if (enemy->mCurAnim->mIsPlaying) {
		switch (enemy->mCurAnim->mType) {
		case KEYEVENT_END_BLEND:
			OBJ(enemy)->endBlendAnimation();
			break;

		case KEYEVENT_2:
			// probably some commented out code
			break;

		case KEYEVENT_3:
			_10             = 0;
			f32 shakePower  = CG_PROPERPARMS(enemy).mFp10.mValue;
			f32 shakeDamage = CG_PARMS(enemy)->mGeneral.mShakeDamage.mValue;
			f32 shakeRange  = CG_PROPERPARMS(enemy).mFp09.mValue;

			EnemyFunc::flickNearbyPikmin(enemy, shakeRange, shakePower, shakeDamage, -1000.0f, nullptr);
			EnemyFunc::flickNearbyNavi(enemy, shakeRange, shakePower, shakeDamage, -1000.0f, nullptr);
			break;

		case KEYEVENT_4:
			OBJ(enemy)->createBounceEffect();
			Vector3f pos = enemy->getPosition();
			cameraMgr->startVibration(6, pos, 2);
			rumbleMgr->startRumble(11, pos, 2);
			break;

		case KEYEVENT_END:
			transit(enemy, KINGCHAPPY_Caution, nullptr);
			enemy->hardConstraintOff();
			enemy->enableEvent(0, EB_LifegaugeVisible);
			enemy->disableEvent(0, EB_IsEnemyNotBitter);
			break;
		}
	}
}

/*
 * --INFO--
 * Address:	8035C08C
 * Size:	00003C
 */
StateCaution::StateCaution(int stateID)
    : State(stateID)
{
	mName = "caution";
}

/*
 * --INFO--
 * Address:	8035C0C8
 * Size:	00002C
 */
void StateCaution::init(EnemyBase* enemy, StateArg* stateArg) { OBJ(enemy)->startMotionSelf(12, nullptr); }

/*
 * --INFO--
 * Address:	8035C0F4
 * Size:	000064
 */
void StateCaution::exec(EnemyBase* enemy)
{
	if (enemy->mCurAnim->mIsPlaying) {
		if (enemy->mCurAnim->mType == KEYEVENT_END_BLEND) {
			OBJ(enemy)->endBlendAnimation();

		} else if (enemy->mCurAnim->mType == KEYEVENT_END) {
			transit(enemy, KINGCHAPPY_Walk, nullptr);
		}
	}
}

/*
 * --INFO--
 * Address:	8035C158
 * Size:	00003C
 */
StateSwallow::StateSwallow(int stateID)
    : State(stateID)
{
	mName = "swallow";
}

/*
 * --INFO--
 * Address:	8035C194
 * Size:	00002C
 */
void StateSwallow::init(EnemyBase* enemy, StateArg* stateArg) { OBJ(enemy)->startMotionSelf(7, nullptr); }

/*
 * --INFO--
 * Address:	8035C1C0
 * Size:	000094
 */
void StateSwallow::exec(EnemyBase* enemy)
{
	if (enemy->mCurAnim->mIsPlaying) {
		if (enemy->mCurAnim->mType == KEYEVENT_END_BLEND) {
			OBJ(enemy)->endBlendAnimation();
		} else if (enemy->mCurAnim->mType == KEYEVENT_END) {
			EnemyFunc::swallowPikmin(enemy, 300.0f, nullptr);
			transit(enemy, KINGCHAPPY_Walk, nullptr);
		}
	}
}

} // namespace KingChappy
} // namespace Game
