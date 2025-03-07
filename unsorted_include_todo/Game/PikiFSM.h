#ifndef _GAME_PIKIFSM_H
#define _GAME_PIKIFSM_H

/*
    __vt__Q24Game7PikiFSM:
    .4byte 0
    .4byte 0
    .4byte init__Q24Game7PikiFSMFPQ24Game4Piki
    .4byte "start__Q24Game26StateMachine<Q24Game4Piki>FPQ24Game4PikiiPQ24Game8StateArg"
    .4byte "exec__Q24Game26StateMachine<Q24Game4Piki>FPQ24Game4Piki"
    .4byte transit__Q24Game7PikiFSMFPQ24Game4PikiiPQ24Game8StateArg
*/

namespace Game {
struct StateMachine<Game::Piki> {
	virtual void init(Piki*);                                      // _08
	virtual void StateMachine<Piki>::start(Piki*, int, StateArg*); // _0C (weak)
	virtual void StateMachine<Piki>::exec(Piki*);                  // _10 (weak)
};
} // namespace Game

namespace Game {
struct PikiFSM : public StateMachine<Game::Piki> {
	virtual void init(Piki*);                    // _08
	virtual void transit(Piki*, int, StateArg*); // _14

	void transitForce(Game::Piki*, int, Game::StateArg*);
};
} // namespace Game

#endif
