#ifndef _GAME_DANGOMUSHI_FSM_H
#define _GAME_DANGOMUSHI_FSM_H

namespace Game {
struct EnemyStateMachine {
	virtual void _00() = 0;                                // _00
	virtual void start(EnemyBase*, int, StateArg*);        // _04
	virtual void exec(EnemyBase*);                         // _08
	virtual void transit(EnemyBase*, int, StateArg*);      // _0C
	virtual void doDirectDraw(EnemyBase*, Graphics&);      // _10
	virtual void getCurrState(EnemyBase*);                 // _14
	virtual void setCurrState(EnemyBase*, EnemyFSMState*); // _18

	// _00 VTBL
};
} // namespace Game

namespace Game {
namespace DangoMushi {
	struct FSM : public EnemyStateMachine {
		virtual void init(EnemyBase*);                         // _00
		virtual void start(EnemyBase*, int, StateArg*);        // _04
		virtual void exec(EnemyBase*);                         // _08
		virtual void transit(EnemyBase*, int, StateArg*);      // _0C
		virtual void doDirectDraw(EnemyBase*, Graphics&);      // _10
		virtual void getCurrState(EnemyBase*);                 // _14
		virtual void setCurrState(EnemyBase*, EnemyFSMState*); // _18

		// _00 VTBL
	};
} // namespace DangoMushi
} // namespace Game

#endif
