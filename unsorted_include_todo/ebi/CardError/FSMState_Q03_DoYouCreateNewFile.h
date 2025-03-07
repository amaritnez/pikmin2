#ifndef _EBI_CARDERROR_FSMSTATE_Q03_DOYOUCREATENEWFILE_H
#define _EBI_CARDERROR_FSMSTATE_Q03_DOYOUCREATENEWFILE_H

/*
    __vt__Q33ebi9CardError31FSMState_Q03_DoYouCreateNewFile:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgrPQ24Game8StateArg
    .4byte exec__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgr
    .4byte "cleanup__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "resume__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "restart__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "transit__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgriPQ24Game8StateArg"
    .4byte do_init__Q33ebi9CardError17FSMState_QuestionFPQ33ebi9CardError4TMgrPQ24Game8StateArg
    .4byte do_exec__Q33ebi9CardError17FSMState_QuestionFPQ33ebi9CardError4TMgr
    .4byte do_open__Q33ebi9CardError31FSMState_Q03_DoYouCreateNewFileFPQ33ebi9CardError4TMgr
    .4byte do_transitYes__Q33ebi9CardError31FSMState_Q03_DoYouCreateNewFileFPQ33ebi9CardError4TMgr
    .4byte do_transitNo__Q33ebi9CardError31FSMState_Q03_DoYouCreateNewFileFPQ33ebi9CardError4TMgr
*/

namespace ebi {
namespace CardError {
struct FSMState {
	virtual void init(TMgr*, Game::StateArg*); // _08 (weak)
	virtual void exec(TMgr*);                  // _0C (weak)
};
} // namespace CardError
} // namespace ebi

namespace Game {
struct FSMState<ebi::CardError::TMgr> {
	virtual void _08() = 0;                                      // _08
	virtual void _0C() = 0;                                      // _0C
	virtual void cleanup(ebi::CardError::TMgr*);                 // _10 (weak)
	virtual void resume(ebi::CardError::TMgr*);                  // _14 (weak)
	virtual void restart(ebi::CardError::TMgr*);                 // _18 (weak)
	virtual void transit(ebi::CardError::TMgr*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace ebi {
namespace CardError {
struct FSMState_Question {
	virtual void _08() = 0;                       // _08
	virtual void _0C() = 0;                       // _0C
	virtual void _10() = 0;                       // _10
	virtual void _14() = 0;                       // _14
	virtual void _18() = 0;                       // _18
	virtual void _1C() = 0;                       // _1C
	virtual void do_init(TMgr*, Game::StateArg*); // _20
	virtual void do_exec(TMgr*);                  // _24
};
} // namespace CardError
} // namespace ebi

namespace ebi {
namespace CardError {
struct FSMState_Q03_DoYouCreateNewFile : public FSMState, public FSMState<ebi::CardError::TMgr>, public FSMState_Question {
	virtual void do_open(TMgr*);       // _28
	virtual void do_transitYes(TMgr*); // _2C
	virtual void do_transitNo(TMgr*);  // _30
};
} // namespace CardError
} // namespace ebi

#endif
