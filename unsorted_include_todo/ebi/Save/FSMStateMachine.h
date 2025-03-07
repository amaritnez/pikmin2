#ifndef _EBI_SAVE_FSMSTATEMACHINE_H
#define _EBI_SAVE_FSMSTATEMACHINE_H

/*
    __vt__Q33ebi4Save15FSMStateMachine:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi4Save15FSMStateMachineFPQ33ebi4Save4TMgr
    .4byte "start__Q24Game30StateMachine<Q33ebi4Save4TMgr>FPQ33ebi4Save4TMgriPQ24Game8StateArg"
    .4byte "exec__Q24Game30StateMachine<Q33ebi4Save4TMgr>FPQ33ebi4Save4TMgr"
    .4byte "transit__Q24Game30StateMachine<Q33ebi4Save4TMgr>FPQ33ebi4Save4TMgriPQ24Game8StateArg"
*/

namespace Game {
struct StateMachine<ebi::Save::TMgr> {
	virtual void init(TMgr*);                               // _08
	virtual void start(ebi::Save::TMgr*, int, StateArg*);   // _0C (weak)
	virtual void exec(ebi::Save::TMgr*);                    // _10 (weak)
	virtual void transit(ebi::Save::TMgr*, int, StateArg*); // _14 (weak)
};
} // namespace Game

namespace ebi {
namespace Save {
struct FSMStateMachine : public StateMachine<ebi::Save::TMgr> {
	virtual void init(TMgr*); // _08
};
} // namespace Save
} // namespace ebi

#endif
