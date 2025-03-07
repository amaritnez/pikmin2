#ifndef _GAME_PIKINUKARESTATE_H
#define _GAME_PIKINUKARESTATE_H

/*
    __vt__Q24Game15PikiNukareState:
    .4byte 0
    .4byte 0
    .4byte init__Q24Game15PikiNukareStateFPQ24Game4PikiPQ24Game8StateArg
    .4byte exec__Q24Game15PikiNukareStateFPQ24Game4Piki
    .4byte cleanup__Q24Game15PikiNukareStateFPQ24Game4Piki
    .4byte "resume__Q24Game22FSMState<Q24Game4Piki>FPQ24Game4Piki"
    .4byte "restart__Q24Game22FSMState<Q24Game4Piki>FPQ24Game4Piki"
    .4byte "transit__Q24Game22FSMState<Q24Game4Piki>FPQ24Game4PikiiPQ24Game8StateArg"
    .4byte ignoreAtari__Q24Game9PikiStateFPQ24Game4PikiPQ24Game8Creature
    .4byte bounceCallback__Q24Game9PikiStateFPQ24Game4PikiPQ23Sys8Triangle
    .4byte collisionCallback__Q24Game9PikiStateFPQ24Game4PikiRQ24Game9CollEvent
    .4byte platCallback__Q24Game9PikiStateFPQ24Game4PikiRQ24Game9PlatEvent
    .4byte onKeyEvent__Q24Game15PikiNukareStateFPQ24Game4PikiRCQ28SysShape8KeyEvent
    .4byte getInfo__Q24Game9PikiStateFPc
    .4byte outWaterCallback__Q24Game9PikiStateFPQ24Game4Piki
    .4byte "wallCallback__Q24Game9PikiStateFPQ24Game4PikiR10Vector3<f>"
    .4byte invincible__Q24Game9PikiStateFPQ24Game4Piki
    .4byte callable__Q24Game9PikiStateFv
    .4byte aiActive__Q24Game9PikiStateFv
    .4byte dopable__Q24Game9PikiStateFv
    .4byte releasable__Q24Game9PikiStateFv
    .4byte throwable__Q24Game9PikiStateFv
    .4byte dead__Q24Game9PikiStateFv
    .4byte battleOK__Q24Game9PikiStateFv
    .4byte pressable__Q24Game9PikiStateFv
    .4byte transittable__Q24Game9PikiStateFi
    .4byte soft_transittable__Q24Game15PikiNukareStateFi
    .4byte onFlute__Q24Game9PikiStateFPQ24Game4PikiPQ24Game4Navi
    .4byte dump__Q24Game9PikiStateFv
*/

namespace Game {
struct FSMState<Game::Piki> {
	virtual void init(Piki*, StateArg*);                         // _08
	virtual void exec(Piki*);                                    // _0C
	virtual void cleanup(Piki*);                                 // _10
	virtual void FSMState<Piki>::resume(Piki*);                  // _14 (weak)
	virtual void FSMState<Piki>::restart(Piki*);                 // _18 (weak)
	virtual void FSMState<Piki>::transit(Piki*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace Game {
struct PikiState {
	virtual void init(Piki*, StateArg*);                       // _08
	virtual void exec(Piki*);                                  // _0C
	virtual void cleanup(Piki*);                               // _10
	virtual void _14() = 0;                                    // _14
	virtual void _18() = 0;                                    // _18
	virtual void _1C() = 0;                                    // _1C
	virtual void ignoreAtari(Piki*, Creature*);                // _20 (weak)
	virtual void bounceCallback(Piki*, Sys::Triangle*);        // _24 (weak)
	virtual void collisionCallback(Piki*, CollEvent&);         // _28 (weak)
	virtual void platCallback(Piki*, PlatEvent&);              // _2C (weak)
	virtual void onKeyEvent(Piki*, const SysShape::KeyEvent&); // _30
	virtual void getInfo(char*);                               // _34
	virtual void outWaterCallback(Piki*);                      // _38 (weak)
	virtual void wallCallback(Piki*, Vector3<float>&);         // _3C (weak)
	virtual void invincible(Piki*);                            // _40 (weak)
	virtual void callable();                                   // _44 (weak)
	virtual void aiActive();                                   // _48 (weak)
	virtual void dopable();                                    // _4C (weak)
	virtual void releasable();                                 // _50 (weak)
	virtual void throwable();                                  // _54 (weak)
	virtual void dead();                                       // _58 (weak)
	virtual void battleOK();                                   // _5C (weak)
	virtual void pressable();                                  // _60 (weak)
	virtual void transittable(int);                            // _64 (weak)
	virtual void soft_transittable(int);                       // _68
	virtual void onFlute(Piki*, Navi*);                        // _6C (weak)
	virtual void dump();                                       // _70
};
} // namespace Game

namespace Game {
struct PikiNukareState : public FSMState<Game::Piki>, public PikiState {
	virtual void init(Piki*, StateArg*);                       // _08
	virtual void exec(Piki*);                                  // _0C
	virtual void cleanup(Piki*);                               // _10
	virtual void onKeyEvent(Piki*, const SysShape::KeyEvent&); // _30
	virtual void soft_transittable(int);                       // _68
};
} // namespace Game

#endif
