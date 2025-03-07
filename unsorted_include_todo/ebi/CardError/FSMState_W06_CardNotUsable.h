#ifndef _EBI_CARDERROR_FSMSTATE_W06_CARDNOTUSABLE_H
#define _EBI_CARDERROR_FSMSTATE_W06_CARDNOTUSABLE_H

/*
    __vt__Q33ebi9CardError26FSMState_W06_CardNotUsable:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgrPQ24Game8StateArg
    .4byte exec__Q33ebi9CardError8FSMStateFPQ33ebi9CardError4TMgr
    .4byte "cleanup__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "resume__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "restart__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgr"
    .4byte "transit__Q24Game31FSMState<Q33ebi9CardError4TMgr>FPQ33ebi9CardError4TMgriPQ24Game8StateArg"
    .4byte do_init__Q33ebi9CardError16FSMState_WarningFPQ33ebi9CardError4TMgrPQ24Game8StateArg
    .4byte do_exec__Q33ebi9CardError16FSMState_WarningFPQ33ebi9CardError4TMgr
    .4byte do_open__Q33ebi9CardError26FSMState_W06_CardNotUsableFPQ33ebi9CardError4TMgr
    .4byte do_transit__Q33ebi9CardError26FSMState_W06_CardNotUsableFPQ33ebi9CardError4TMgr
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
struct FSMState_Warning {
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
struct FSMState_W06_CardNotUsable : public FSMState, public FSMState<ebi::CardError::TMgr>, public FSMState_Warning {
	virtual void do_open(TMgr*);    // _28
	virtual void do_transit(TMgr*); // _2C
};
} // namespace CardError
} // namespace ebi

#endif
