#ifndef _GAME_ITEMHONEY_TOUCHSTATE_H
#define _GAME_ITEMHONEY_TOUCHSTATE_H

/*
    __vt__Q34Game9ItemHoney10TouchState:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game9ItemHoney10TouchStateFPQ24Game8CFSMItemPQ24Game8StateArg
    .4byte exec__Q34Game9ItemHoney10TouchStateFPQ24Game8CFSMItem
    .4byte cleanup__Q34Game9ItemHoney10TouchStateFPQ24Game8CFSMItem
    .4byte "resume__Q24Game26FSMState<Q24Game8CFSMItem>FPQ24Game8CFSMItem"
    .4byte "restart__Q24Game26FSMState<Q24Game8CFSMItem>FPQ24Game8CFSMItem"
    .4byte "transit__Q24Game26FSMState<Q24Game8CFSMItem>FPQ24Game8CFSMItemiPQ24Game8StateArg"
    .4byte onDamage__Q24Game10CItemStateFPQ24Game8CFSMItemf
    .4byte onKeyEvent__Q34Game9ItemHoney10TouchStateFPQ24Game8CFSMItemRCQ28SysShape8KeyEvent
    .4byte onBounce__Q24Game10CItemStateFPQ24Game8CFSMItemPQ23Sys8Triangle
    .4byte onPlatCollision__Q24Game10CItemStateFPQ24Game8CFSMItemRQ24Game9PlatEvent
    .4byte onCollision__Q24Game10CItemStateFPQ24Game8CFSMItemRQ24Game9CollEvent
    .4byte collisionCallback__Q34Game9ItemHoney10TouchStateFPQ24Game8CFSMItemRQ24Game9CollEvent
    .4byte interactAbsorb__Q34Game9ItemHoney10TouchStateFPQ24Game8CFSMItemRQ24Game14InteractAbsorb
    .4byte absorbable__Q34Game9ItemHoney10TouchStateFv
*/

namespace Game {
struct FSMState<Game::CFSMItem> {
	virtual void init(CFSMItem*, StateArg*);                             // _08
	virtual void exec(CFSMItem*);                                        // _0C
	virtual void cleanup(CFSMItem*);                                     // _10
	virtual void FSMState<CFSMItem>::resume(CFSMItem*);                  // _14 (weak)
	virtual void FSMState<CFSMItem>::restart(CFSMItem*);                 // _18 (weak)
	virtual void FSMState<CFSMItem>::transit(CFSMItem*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace Game {
struct CItemState {
	virtual void init(CFSMItem*, StateArg*);                       // _08
	virtual void exec(CFSMItem*);                                  // _0C
	virtual void cleanup(CFSMItem*);                               // _10
	virtual void _14() = 0;                                        // _14
	virtual void _18() = 0;                                        // _18
	virtual void _1C() = 0;                                        // _1C
	virtual void onDamage(CFSMItem*, float);                       // _20 (weak)
	virtual void onKeyEvent(CFSMItem*, const SysShape::KeyEvent&); // _24
	virtual void onBounce(CFSMItem*, Sys::Triangle*);              // _28 (weak)
	virtual void onPlatCollision(CFSMItem*, PlatEvent&);           // _2C (weak)
	virtual void onCollision(CFSMItem*, CollEvent&);               // _30 (weak)
};
} // namespace Game

namespace Game {
namespace ItemHoney {
struct TouchState : public FSMState<Game::CFSMItem>, public CItemState {
	virtual void init(CFSMItem*, StateArg*);                       // _08
	virtual void exec(CFSMItem*);                                  // _0C
	virtual void cleanup(CFSMItem*);                               // _10
	virtual void onKeyEvent(CFSMItem*, const SysShape::KeyEvent&); // _24
	virtual void collisionCallback(CFSMItem*, CollEvent&);         // _34
	virtual void interactAbsorb(CFSMItem*, InteractAbsorb&);       // _38
	virtual void absorbable();                                     // _3C (weak)
};
} // namespace ItemHoney
} // namespace Game

#endif
