#ifndef _EBI_OMAKE_FSMSTATE_OMAKESCREEN_H
#define _EBI_OMAKE_FSMSTATE_OMAKESCREEN_H

/*
    __vt__Q33ebi5Omake20FSMState_OmakeScreen:
    .4byte 0
    .4byte 0
    .4byte init__Q33ebi5Omake8FSMStateFPQ33ebi5Omake4TMgrPQ24Game8StateArg
    .4byte exec__Q33ebi5Omake8FSMStateFPQ33ebi5Omake4TMgr
    .4byte "cleanup__Q24Game27FSMState<Q33ebi5Omake4TMgr>FPQ33ebi5Omake4TMgr"
    .4byte "resume__Q24Game27FSMState<Q33ebi5Omake4TMgr>FPQ33ebi5Omake4TMgr"
    .4byte "restart__Q24Game27FSMState<Q33ebi5Omake4TMgr>FPQ33ebi5Omake4TMgr"
    .4byte "transit__Q24Game27FSMState<Q33ebi5Omake4TMgr>FPQ33ebi5Omake4TMgriPQ24Game8StateArg"
    .4byte do_init__Q33ebi5Omake20FSMState_OmakeScreenFPQ33ebi5Omake4TMgrPQ24Game8StateArg
    .4byte do_exec__Q33ebi5Omake20FSMState_OmakeScreenFPQ33ebi5Omake4TMgr
*/

namespace ebi {
namespace Omake {
struct FSMState {
	virtual void init(TMgr*, Game::StateArg*); // _08 (weak)
	virtual void exec(TMgr*);                  // _0C (weak)
};
} // namespace Omake
} // namespace ebi

namespace Game {
struct FSMState<ebi::Omake::TMgr> {
	virtual void _08() = 0;                                  // _08
	virtual void _0C() = 0;                                  // _0C
	virtual void cleanup(ebi::Omake::TMgr*);                 // _10 (weak)
	virtual void resume(ebi::Omake::TMgr*);                  // _14 (weak)
	virtual void restart(ebi::Omake::TMgr*);                 // _18 (weak)
	virtual void transit(ebi::Omake::TMgr*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace ebi {
namespace Omake {
struct FSMState_OmakeScreen : public FSMState, public FSMState<ebi::Omake::TMgr> {
	virtual void do_init(TMgr*, Game::StateArg*); // _20
	virtual void do_exec(TMgr*);                  // _24
};
} // namespace Omake
} // namespace ebi

#endif
