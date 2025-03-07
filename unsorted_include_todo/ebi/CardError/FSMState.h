#ifndef _EBI_CARDERROR_FSMSTATE_H
#define _EBI_CARDERROR_FSMSTATE_H

/*
    __vt__Q33ebi9CardError8FSMState:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgrPQ24Game8StateArg
    .4byte exec__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgr
    .4byte "cleanup__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "resume__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "restart__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "transit__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgriPQ24Game8StateArg"
    .4byte do_init__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgrPQ24Game8StateArg
    .4byte do_exec__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgr
*/

namespace Game {
struct FSMState<ebi::CardError::TMgr> {
	virtual void init(TMgr*, Game::StateArg*);                   // _08 (weak)
	virtual void exec(TMgr*);                                    // _0C (weak)
	virtual void cleanup(ebi::CardError::TMgr*);                 // _10 (weak)
	virtual void resume(ebi::CardError::TMgr*);                  // _14 (weak)
	virtual void restart(ebi::CardError::TMgr*);                 // _18 (weak)
	virtual void transit(ebi::CardError::TMgr*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace ebi {
namespace CardError {
struct FSMState : public FSMState<ebi::CardError::TMgr> {
	virtual void init(TMgr*, Game::StateArg*);    // _08 (weak)
	virtual void exec(TMgr*);                     // _0C (weak)
	virtual void do_init(TMgr*, Game::StateArg*); // _20 (weak)
	virtual void do_exec(TMgr*);                  // _24 (weak)
};
} // namespace CardError
} // namespace ebi

#endif
