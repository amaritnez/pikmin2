#ifndef _EBI_OPTION_FSMSTATEMACHINE_H
#define _EBI_OPTION_FSMSTATEMACHINE_H

/*
    __vt__Q33ebi6Option15FSMStateMachine:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi6Option15FSMStateMachineFPQ33ebi6Option4TMgr
    .4byte "start__Q24Game32StateMachine<Q33ebi6Option4TMgr>FPQ33ebi6Option4TMgriPQ24Game8StateArg"
    .4byte "exec__Q24Game32StateMachine<Q33ebi6Option4TMgr>FPQ33ebi6Option4TMgr"
    .4byte "transit__Q24Game32StateMachine<Q33ebi6Option4TMgr>FPQ33ebi6Option4TMgriPQ24Game8StateArg"
*/

namespace Game {
struct StateMachine<ebi::Option::TMgr> {
	virtual void init(TMgr*);                                 // _08
	virtual void start(ebi::Option::TMgr*, int, StateArg*);   // _0C (weak)
	virtual void exec(ebi::Option::TMgr*);                    // _10 (weak)
	virtual void transit(ebi::Option::TMgr*, int, StateArg*); // _14 (weak)
};
} // namespace Game

namespace ebi {
namespace Option {
struct FSMStateMachine : public StateMachine<ebi::Option::TMgr> {
	virtual void init(TMgr*); // _08
};
} // namespace Option
} // namespace ebi

#endif
