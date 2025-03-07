#ifndef _GAME_ITEMWEED_FSM_H
#define _GAME_ITEMWEED_FSM_H

/*
    __vt__Q34Game8ItemWeed3FSM:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game8ItemWeed3FSMFPQ34Game8ItemWeed4Item
    .4byte "start__Q24Game35StateMachine<Q34Game8ItemWeed4Item>FPQ34Game8ItemWeed4ItemiPQ24Game8StateArg"
    .4byte "exec__Q24Game35StateMachine<Q34Game8ItemWeed4Item>FPQ34Game8ItemWeed4Item"
    .4byte "transit__Q24Game35StateMachine<Q34Game8ItemWeed4Item>FPQ34Game8ItemWeed4ItemiPQ24Game8StateArg"
*/

namespace Game {
struct StateMachine<Game::ItemWeed::Item> {
	virtual void init(Item*);                                                            // _08
	virtual void StateMachine<ItemWeed::Item>::start(ItemWeed::Item*, int, StateArg*);   // _0C (weak)
	virtual void StateMachine<ItemWeed::Item>::exec(ItemWeed::Item*);                    // _10 (weak)
	virtual void StateMachine<ItemWeed::Item>::transit(ItemWeed::Item*, int, StateArg*); // _14 (weak)
};
} // namespace Game

namespace Game {
namespace ItemWeed {
struct FSM : public StateMachine<Game::ItemWeed::Item> {
	virtual void init(Item*); // _08
};
} // namespace ItemWeed
} // namespace Game

#endif
