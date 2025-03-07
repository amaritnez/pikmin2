#ifndef _EBI_SAVE_FSMSTATE_AFTERSAVE_H
#define _EBI_SAVE_FSMSTATE_AFTERSAVE_H

/*
    __vt__Q33ebi4Save18FSMState_AfterSave:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi4Save8FSMStateFPQ33ebi4Save4TMgrPQ24Game8StateArg
    .4byte exec__Q33ebi4Save8FSMStateFPQ33ebi4Save4TMgr
    .4byte "cleanup__Q24Game26FSMState<Q33ebi4Save4TMgr>FPQ33ebi4Save4TMgr"
    .4byte "resume__Q24Game26FSMState<Q33ebi4Save4TMgr>FPQ33ebi4Save4TMgr"
    .4byte "restart__Q24Game26FSMState<Q33ebi4Save4TMgr>FPQ33ebi4Save4TMgr"
    .4byte "transit__Q24Game26FSMState<Q33ebi4Save4TMgr>FPQ33ebi4Save4TMgriPQ24Game8StateArg"
    .4byte do_init__Q33ebi4Save18FSMState_AfterSaveFPQ33ebi4Save4TMgrPQ24Game8StateArg
    .4byte do_exec__Q33ebi4Save18FSMState_AfterSaveFPQ33ebi4Save4TMgr
*/

namespace ebi {
namespace Save {
struct FSMState {
	virtual void init(TMgr*, Game::StateArg*); // _08 (weak)
	virtual void exec(TMgr*);                  // _0C (weak)
};
} // namespace Save
} // namespace ebi

namespace Game {
struct FSMState<ebi::Save::TMgr> {
	virtual void _08() = 0;                                 // _08
	virtual void _0C() = 0;                                 // _0C
	virtual void cleanup(ebi::Save::TMgr*);                 // _10 (weak)
	virtual void resume(ebi::Save::TMgr*);                  // _14 (weak)
	virtual void restart(ebi::Save::TMgr*);                 // _18 (weak)
	virtual void transit(ebi::Save::TMgr*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace ebi {
namespace Save {
struct FSMState_AfterSave : public FSMState, public FSMState<ebi::Save::TMgr> {
	virtual void FSMState_Afterdo_init(TMgr*, Game::StateArg*); // _20
	virtual void FSMState_Afterdo_exec(TMgr*);                  // _24
};
} // namespace Save
} // namespace ebi

#endif
