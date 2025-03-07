#ifndef _GAME_NAVIPATHMOVESTATE_H
#define _GAME_NAVIPATHMOVESTATE_H

/*
    __vt__Q24Game17NaviPathMoveState:
    .4byte 0
    .4byte 0
    .4byte init__Q24Game17NaviPathMoveStateFPQ24Game4NaviPQ24Game8StateArg
    .4byte exec__Q24Game17NaviPathMoveStateFPQ24Game4Navi
    .4byte cleanup__Q24Game17NaviPathMoveStateFPQ24Game4Navi
    .4byte "resume__Q24Game22FSMState<Q24Game4Navi>FPQ24Game4Navi"
    .4byte "restart__Q24Game22FSMState<Q24Game4Navi>FPQ24Game4Navi"
    .4byte "transit__Q24Game22FSMState<Q24Game4Navi>FPQ24Game4NaviiPQ24Game8StateArg"
    .4byte invincible__Q24Game9NaviStateFv
    .4byte onKeyEvent__Q24Game9NaviStateFPQ24Game4NaviRCQ28SysShape8KeyEvent
    .4byte collisionCallback__Q24Game9NaviStateFPQ24Game4NaviRQ24Game9CollEvent
    .4byte "wallCallback__Q24Game9NaviStateFPQ24Game4NaviR10Vector3<f>"
    .4byte bounceCallback__Q24Game9NaviStateFPQ24Game4NaviPQ23Sys8Triangle
    .4byte pressable__Q24Game9NaviStateFv
    .4byte callable__Q24Game9NaviStateFv
    .4byte ignoreAtari__Q24Game9NaviStateFPQ24Game8Creature
    .4byte needYChangeMotion__Q24Game9NaviStateFv
    .4byte vsUsableY__Q24Game9NaviStateFv
    .4byte draw2d__Q24Game9NaviStateFR14J2DGrafContextRi
*/

namespace Game {
struct FSMState<Game::Navi> {
	virtual void init(Navi*, StateArg*);                         // _08
	virtual void exec(Navi*);                                    // _0C
	virtual void cleanup(Navi*);                                 // _10
	virtual void FSMState<Navi>::resume(Navi*);                  // _14 (weak)
	virtual void FSMState<Navi>::restart(Navi*);                 // _18 (weak)
	virtual void FSMState<Navi>::transit(Navi*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace Game {
struct NaviState {
	virtual void init(Navi*, StateArg*);                       // _08
	virtual void exec(Navi*);                                  // _0C
	virtual void cleanup(Navi*);                               // _10
	virtual void _14() = 0;                                    // _14
	virtual void _18() = 0;                                    // _18
	virtual void _1C() = 0;                                    // _1C
	virtual void invincible();                                 // _20 (weak)
	virtual void onKeyEvent(Navi*, const SysShape::KeyEvent&); // _24 (weak)
	virtual void collisionCallback(Navi*, CollEvent&);         // _28 (weak)
	virtual void wallCallback(Navi*, Vector3<float>&);         // _2C (weak)
	virtual void bounceCallback(Navi*, Sys::Triangle*);        // _30 (weak)
	virtual void pressable();                                  // _34 (weak)
	virtual void callable();                                   // _38 (weak)
	virtual void ignoreAtari(Creature*);                       // _3C (weak)
	virtual void needYChangeMotion();                          // _40 (weak)
	virtual void vsUsableY();                                  // _44 (weak)
	virtual void draw2d(J2DGrafContext&, int&);                // _48
};
} // namespace Game

namespace Game {
struct NaviPathMoveState : public FSMState<Game::Navi>, public NaviState {
	virtual void init(Navi*, StateArg*); // _08
	virtual void exec(Navi*);            // _0C
	virtual void cleanup(Navi*);         // _10

	void initPathfinding(Game::Navi*);
	void execPathfinding(Game::Navi*);
	void execMove(Game::Navi*);
	void execMoveGoal(Game::Navi*);
};
} // namespace Game

#endif
