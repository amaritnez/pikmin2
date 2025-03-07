#ifndef _GAME_POM_FSM_H
#define _GAME_POM_FSM_H

/*
    __vt__Q34Game3Pom3FSM:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game3Pom3FSMFPQ24Game9EnemyBase
    .4byte start__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseiPQ24Game8StateArg
    .4byte exec__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
    .4byte transit__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseiPQ24Game8StateArg
    .4byte doDirectDraw__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseR8Graphics
    .4byte getCurrState__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
    .4byte setCurrState__Q24Game17EnemyStateMachineFPQ24Game9EnemyBasePQ24Game13EnemyFSMState
*/

namespace Game {
struct EnemyStateMachine {
	virtual void init(EnemyBase*);                         // _08
	virtual void start(EnemyBase*, int, StateArg*);        // _0C
	virtual void exec(EnemyBase*);                         // _10
	virtual void transit(EnemyBase*, int, StateArg*);      // _14
	virtual void doDirectDraw(EnemyBase*, Graphics&);      // _18
	virtual void getCurrState(EnemyBase*);                 // _1C
	virtual void setCurrState(EnemyBase*, EnemyFSMState*); // _20
};
} // namespace Game

namespace Game {
namespace Pom {
struct FSM : public EnemyStateMachine {
	virtual void init(EnemyBase*); // _08
};
} // namespace Pom
} // namespace Game

#endif
