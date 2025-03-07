#ifndef _GAME_ITEMCAVE_STATE_H
#define _GAME_ITEMCAVE_STATE_H

/*
    __vt__Q34Game8ItemCave5State:
    .4byte 0
    .4byte 0
    .4byte "init__Q24Game31FSMState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4ItemPQ24Game8StateArg"
    .4byte "exec__Q24Game31FSMState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4Item"
    .4byte "cleanup__Q24Game31FSMState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4Item"
    .4byte "resume__Q24Game31FSMState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4Item"
    .4byte "restart__Q24Game31FSMState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4Item"
    .4byte "transit__Q24Game31FSMState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4ItemiPQ24Game8StateArg"
    .4byte "onDamage__Q24Game32ItemState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4Itemf"
    .4byte "onKeyEvent__Q24Game32ItemState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4ItemRCQ28SysShape8KeyEvent"
    .4byte "onBounce__Q24Game32ItemState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4ItemPQ23Sys8Triangle"
    .4byte "onPlatCollision__Q24Game32ItemState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4ItemRQ24Game9PlatEvent"
    .4byte "onCollision__Q24Game32ItemState<Q34Game8ItemCave4Item>FPQ34Game8ItemCave4ItemRQ24Game9CollEvent"
*/

namespace Game {
struct FSMState<Game::ItemCave::Item> {
	virtual void FSMState<ItemCave::Item>::init(ItemCave::Item*, StateArg*);         // _08 (weak)
	virtual void FSMState<ItemCave::Item>::exec(ItemCave::Item*);                    // _0C (weak)
	virtual void FSMState<ItemCave::Item>::cleanup(ItemCave::Item*);                 // _10 (weak)
	virtual void FSMState<ItemCave::Item>::resume(ItemCave::Item*);                  // _14 (weak)
	virtual void FSMState<ItemCave::Item>::restart(ItemCave::Item*);                 // _18 (weak)
	virtual void FSMState<ItemCave::Item>::transit(ItemCave::Item*, int, StateArg*); // _1C (weak)
};
} // namespace Game

namespace Game {
struct ItemState<Game::ItemCave::Item> {
	virtual void _08() = 0;                                                                         // _08
	virtual void _0C() = 0;                                                                         // _0C
	virtual void _10() = 0;                                                                         // _10
	virtual void _14() = 0;                                                                         // _14
	virtual void _18() = 0;                                                                         // _18
	virtual void _1C() = 0;                                                                         // _1C
	virtual void ItemState<ItemCave::Item>::onDamage(ItemCave::Item*, float);                       // _20 (weak)
	virtual void ItemState<ItemCave::Item>::onKeyEvent(ItemCave::Item*, const SysShape::KeyEvent&); // _24 (weak)
	virtual void ItemState<ItemCave::Item>::onBounce(ItemCave::Item*, Sys::Triangle*);              // _28 (weak)
	virtual void ItemState<ItemCave::Item>::onPlatCollision(ItemCave::Item*, PlatEvent&);           // _2C (weak)
	virtual void ItemState<ItemCave::Item>::onCollision(ItemCave::Item*, CollEvent&);               // _30 (weak)
};
} // namespace Game

namespace Game {
namespace ItemCave {
struct State : public FSMState<Game::ItemCave::Item>, public ItemState<Game::ItemCave::Item> {
};
} // namespace ItemCave
} // namespace Game

#endif
