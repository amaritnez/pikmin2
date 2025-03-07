#ifndef _GAME_CPLATE_H
#define _GAME_CPLATE_H

/*
    __vt__Q24Game6CPlate:
    .4byte 0
    .4byte 0
    .4byte __dt__Q24Game6CPlateFv
    .4byte getChildCount__5CNodeFv
    .4byte "getObject__27Container<Q24Game8Creature>FPv"
    .4byte getNext__Q24Game6CPlateFPv
    .4byte getStart__Q24Game6CPlateFv
    .4byte getEnd__Q24Game6CPlateFv
    .4byte get__Q24Game6CPlateFPv
    .4byte "getAt__27Container<Q24Game8Creature>Fi"
    .4byte "getTo__27Container<Q24Game8Creature>Fv"
*/

struct CNode {
	virtual ~CNode();             // _08 (weak)
	virtual void getChildCount(); // _0C
};

struct Container<Game::Creature> {
	virtual ~Container<Creature>(); // _08 (weak)
	virtual void _0C() = 0;         // _0C
	virtual void getObject(void*);  // _10 (weak)
	virtual void getNext(void*);    // _14
	virtual void getStart();        // _18
	virtual void getEnd();          // _1C
	virtual void get(void*);        // _20
	virtual void getAt(int);        // _24 (weak)
	virtual void getTo();           // _28 (weak)
};

namespace Game {
struct CPlate : public CNode, public Container<Game::Creature> {
	virtual ~CPlate();           // _08 (weak)
	virtual void getNext(void*); // _14
	virtual void getStart();     // _18
	virtual void getEnd();       // _1C
	virtual void get(void*);     // _20

	void shrink();
	CPlate(int);
	void setPos(Vector3<float>&, float, Vector3<float>&, float);
	void setPosGray(Vector3<float>&, float, Vector3<float>&, float);
	void getSlot(Game::Creature*, Game::SlotChangeListener*, bool);
	void changeFlower(Game::Creature*);
	void releaseSlot(Game::Creature*, int);
	void validSlot(int);
	void sortByColor(Game::Creature*, int);
	void rearrangeSlot(Vector3<float>&, float, Vector3<float>&);
	void getSlotPosition(int, Vector3<float>&);
	void refresh(int, float);
	void refreshSlot(float);
	void update();
};
} // namespace Game

#endif
