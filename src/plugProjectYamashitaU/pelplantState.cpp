#include "types.h"
#include "efx/TPplGrow.h"
#include "Game/Entities/Pelplant.h"
#include "Game/EnemyAnimatorBase.h"
#include "Game/EnemyAnimKeyEvent.h"
#include "Game/EnemyFunc.h"
#include "Game/GameSystem.h"
#include "Game/MapMgr.h"
#include "System.h"

namespace Game {
namespace Pelplant {
/*
 * --INFO--
 * Address:	8010AB38
 * Size:	0001E0
 */
void FSM::init(EnemyBase* enemy)
{
	create(10);

	registerState(new StateWait(0, 0));
	registerState(new StateWait(1, 1));
	registerState(new StateWait(2, 2));

	registerState(new StateGrow(3, 2, 1));
	registerState(new StateGrow(4, 3, 2));

	registerState(new StateDamage(5, 0));
	registerState(new StateDead(6, 1));

	registerState(new StateWither(7, 0, 6, 4));
	registerState(new StateWither(8, 0, 5, 4));
	registerState(new StateWither(9, 0, 4, 4));
}

/*
 * --INFO--
 * Address:	8010AD18
 * Size:	00003C
 */
void StateBlendAnim::init(EnemyBase* enemy, StateArg* stateArg)
{
	enemy->startBlend(_14, _18, &EnemyBlendAnimatorBase::sBlendQuadraticFun, 30.0f, nullptr);
}

/*
 * --INFO--
 * Address:	8010AD54
 * Size:	00007C
 */
void StateBlendAnim::exec(EnemyBase* enemy)
{
	if (enemy->m_animKeyEvent->m_running != 0) {
		switch (enemy->m_animKeyEvent->m_type) {
		case 0x7D0:
			enemy->endBlend();
			transit(enemy, _10, 0);
		}
	}
}

/*
 * --INFO--
 * Address:	8010ADD0
 * Size:	000098
 */
StateWither::StateWither(int stateID, int p1, int p2, int p3)
    : StateBlendAnim(stateID, p1, p2, p3)
{
	switch (stateID) {
	case 7:
		m_name = "wither_big";
		return;
	case 8:
		m_name = "wither_Middle";
		return;
	case 9:
		m_name = "wither_Small";
		return;
	}
}

/*
 * --INFO--
 * Address:	8010AE68
 * Size:	000070
 */
void StateWither::init(EnemyBase* enemy, StateArg* stateArg)
{
	enemy->startBlend(_14, _18, &EnemyBlendAnimatorBase::sBlendQuadraticFun, 30.0f, nullptr);
	enemy->setEvent(0, EB_Vulnerable);
	EnemyFunc::flickStickPikmin(enemy, 1.0f, 10.0f, 0.0f, -1000.0f, nullptr);
}

/*
 * --INFO--
 * Address:	8010AED8
 * Size:	00007C
 */
void StateWither::exec(EnemyBase* enemy)
{
	if (enemy->m_animKeyEvent->m_running != 0) {
		switch (enemy->m_animKeyEvent->m_type) {
		case 0x7D0:
			enemy->endBlend();
			transit(enemy, _10, 0);
		}
	}
}

/*
 * --INFO--
 * Address:	8010AF54
 * Size:	000028
 */
void StateWither::cleanup(EnemyBase* enemy) { static_cast<Obj*>(enemy)->updateLODSphereRadius(0); }

/*
 * --INFO--
 * Address:	8010AF7C
 * Size:	000088
 */
StateWait::StateWait(int stateID, int p1)
    : State(stateID)
{
	_10 = p1;
	switch (_10) {
	case 0:
		m_name = "wait_small";
		return;
	case 1:
		m_name = "wait_middle";
		return;
	case 2:
		m_name = "wait_big";
		return;
	}
}

/*
 * --INFO--
 * Address:	8010B004
 * Size:	000144
 */
void StateWait::init(EnemyBase* enemy, StateArg* stateArg)
{
	enemy->resetEvent(0, EB_Cullable);
	static_cast<Obj*>(enemy)->_2C8 &= ~0x2;
	enemy->setEvent(0, EB_Vulnerable);

	switch (_10) {
	case 0:
		enemy->startMotion(4, nullptr);
		break;
	case 1:
		enemy->startMotion(5, nullptr);
		break;
	case 2:
		static_cast<Obj*>(enemy)->_2C8 |= 2;
		enemy->resetEvent(0, EB_Vulnerable);
		enemy->startMotion(6, nullptr);
		static_cast<Obj*>(enemy)->updateLODSphereRadius(2);
		enemy->setEvent(0, EB_Cullable);
		break;
	}

	Vector3f position;
	position   = enemy->getPosition();
	position.y = mapMgr->getMinY(position);

	Obj::sCurrentObj = static_cast<Obj*>(enemy);
	enemy->setPosition(position, false);
	Obj::sCurrentObj = nullptr;
}

/*
 * --INFO--
 * Address:	8010B148
 * Size:	000278
 */
void StateWait::exec(EnemyBase* enemy)
{
	float frameTime = sys->m_secondsPerFrame;
	if (static_cast<Obj*>(enemy)->_2C8 & 1) {
		static_cast<Obj*>(enemy)->_2C0 += frameTime;
	}

	if (enemy->m_animKeyEvent->m_running != 0) {
		switch (enemy->m_animKeyEvent->m_type) {
		case 0x3E8:
		case 1:
			float growth;
			if (gameSystem->m_mode == GSM_PIKLOPEDIA) {
				growth = 5.0f * randFloat();
			} else if (_10 == 0) {
				growth = static_cast<Parms*>(enemy->m_parms)->m_pelplantParms.m_fp01.m_value;
			} else {
				growth = static_cast<Parms*>(enemy->m_parms)->m_pelplantParms.m_fp02.m_value;
			}

			if ((static_cast<Obj*>(enemy)->_2C0 > growth) || (static_cast<Obj*>(enemy)->m_farmPow > 0)) {
				static_cast<Obj*>(enemy)->_2C0 = 0.0f;
				switch (_10) {
				case 0:
					transit(enemy, 3, 0);
					break;
				case 1:
					transit(enemy, 4, 0);
					break;
				case 2:
					break;
				}

			} else if (static_cast<Obj*>(enemy)->m_farmPow < 0) {
				switch (_10) {
				case 0:
					break;
				case 1:
					transit(enemy, 8, 0);
					break;
				case 2:
					transit(enemy, 7, 0);
					break;
				}
			}
		}
	} else {
		static_cast<Obj*>(enemy)->changePelletColor();
		if (enemy->injure()) {
			if (enemy->m_health <= 0.0f) {
				switch (_10) {
				case 2:
					transit(enemy, 6, 0);
					return;
				}
			} else {
				switch (_10) {
				case 2:
					transit(enemy, 5, 0);
					return;
				}
			}
		}
	}
}

/*
 * --INFO--
 * Address:	8010B3C0
 * Size:	000004
 */
void StateWait::cleanup(EnemyBase*) { }

/*
 * --INFO--
 * Address:	8010B3C4
 * Size:	000044
 */
StateGrow::StateGrow(int stateID, int p1, int p2)
    : State(stateID)
{
	_10    = p1;
	_14    = p2;
	m_name = "grow";
}

/*
 * --INFO--
 * Address:	8010B408
 * Size:	0002E0
 */
void StateGrow::init(EnemyBase* enemy, StateArg* stateArg)
{
	enemy->setEvent(0, EB_Vulnerable);

	if (_10 == 3) {
		static_cast<Obj*>(enemy)->attachPellet();
	}

	Vector3f position = enemy->getPosition();
	efx::Arg effectArg(position);

	switch (_14) {
	case 1:
		efx::TPplGrow1 grow1(0x187, 0x188);
		grow1.create(&effectArg);
		enemy->startMotion(_10, nullptr);
		return;
	case 2:
		switch (static_cast<Obj*>(enemy)->m_pelletSize) {
		case 1:
			efx::TPplGrow2 grow2(0x189, 0x18A, 0x18B);
			grow2.create(&effectArg);
			break;
		case 5:
			efx::TPpl5Grow2 grow5(0x189, 0x18A, 0x25D);
			grow5.create(&effectArg);
			break;
		case 10:
			efx::TPpl10Grow2 grow10(0x189, 0x18A, 0x25B);
			grow10.create(&effectArg);
			break;
		case 20:
			efx::TPpl20Grow2 grow20(0x189, 0x18A, 0x25C);
			grow20.create(&effectArg);
			break;
		}

		static_cast<Obj*>(enemy)->updateLODSphereRadius(2);
		if ((static_cast<Obj*>(enemy)->m_pelletSize == 10) || (static_cast<Obj*>(enemy)->m_pelletSize == 20)) {
			enemy->startMotion(7, nullptr);
			return;
		}
		enemy->startMotion(_10, nullptr);
		return;
	}
}

/*
 * --INFO--
 * Address:	8010B6E8
 * Size:	000060
 */
void StateGrow::exec(EnemyBase* enemy)
{
	if (enemy->m_animKeyEvent->m_running != 0) {
		switch (enemy->m_animKeyEvent->m_type) {
		case 0x3E8:
		case 1:
			transit(enemy, _14, 0);
		}
	}
}

/*
 * --INFO--
 * Address:	8010B748
 * Size:	000004
 */
void StateGrow::cleanup(Game::EnemyBase*) { }

/*
 * --INFO--
 * Address:	8010B74C
 * Size:	000040
 */
StateDamage::StateDamage(int stateID, int p1)
    : State(stateID)
{
	m_name = "damage";
	_10    = p1;
}

/*
 * --INFO--
 * Address:	8010B78C
 * Size:	00008C
 */
void StateDamage::init(EnemyBase* enemy, StateArg* stateArg)
{
	if (_10 != 5) {
		enemy->startMotion(_10, nullptr);
	} else if ((static_cast<Obj*>(enemy)->m_pelletSize == 10) || (static_cast<Obj*>(enemy)->m_pelletSize == 20)) {
		enemy->startMotion(8, nullptr);
	} else {
		enemy->startMotion(_10, nullptr);
	}

	enemy->resetEvent(0, EB_Vulnerable);
}

/*
 * --INFO--
 * Address:	8010B818
 * Size:	000068
 */
void StateDamage::exec(Game::EnemyBase* enemy)
{
	if ((enemy->m_animKeyEvent->m_running != 0) && ((u32)enemy->m_animKeyEvent->m_type == 0x3E8)) {
		transit(enemy, m_stateMachine->m_previousID, 0);
	}
	static_cast<Obj*>(enemy)->changePelletColor();
}

/*
 * --INFO--
 * Address:	8010B880
 * Size:	000010
 */
void StateDamage::cleanup(EnemyBase* enemy) { enemy->setEvent(0, EB_Vulnerable); }

/*
 * --INFO--
 * Address:	8010B890
 * Size:	000040
 */
StateDead::StateDead(int stateID, int p1)
    : State(stateID)
{
	m_name = "dead";
	_10    = p1;
}

/*
 * --INFO--
 * Address:	8010B8D0
 * Size:	0000B4
 */
void StateDead::init(EnemyBase* enemy, StateArg* stateArg)
{
	if (_10 != 1) {
		enemy->startMotion(_10, nullptr);
	} else if ((static_cast<Obj*>(enemy)->m_pelletSize == 10) || (static_cast<Obj*>(enemy)->m_pelletSize == 20)) {
		enemy->startMotion(9, nullptr);
	} else {
		enemy->startMotion(_10, nullptr);
	}

	enemy->deathProcedure();

	if (_10 != 1) {
		if (static_cast<Obj*>(enemy)->m_pellet != nullptr) {
			static_cast<Obj*>(enemy)->m_pellet->kill(nullptr);
			static_cast<Obj*>(enemy)->m_pellet = nullptr;
		}
	}
}

/*
 * --INFO--
 * Address:	8010B984
 * Size:	000068
 */
void StateDead::exec(EnemyBase* enemy)
{
	if ((enemy->m_animKeyEvent->m_running != 0) && ((u32)enemy->m_animKeyEvent->m_type == 0x3E8)) {
		if (static_cast<Obj*>(enemy)->m_pellet != nullptr) {
			static_cast<Obj*>(enemy)->m_pellet->endCapture();
			static_cast<Obj*>(enemy)->m_pellet = nullptr;
		}
		enemy->kill(nullptr);
	}
}

/*
 * --INFO--
 * Address:	8010B9EC
 * Size:	000004
 */
void StateDead::cleanup(Game::EnemyBase*) { }

} // namespace Pelplant
} // namespace Game
