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
	virtual void _00() = 0;       // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace Container < Game
{
	struct Creature >
	{
		virtual void _00() = 0;        // _00
		virtual void _04() = 0;        // _04
		virtual void getObject(void*); // _08
		virtual void _0C() = 0;        // _0C
		virtual void _10() = 0;        // _10
		virtual void _14() = 0;        // _14
		virtual void _18() = 0;        // _18
		virtual void getAt(int);       // _1C
		virtual void getTo();          // _20

		// _00 VTBL
	};
} // namespace Game

namespace Game {
struct CPlate : public CNode, public Creature > {
	virtual ~CPlate();             // _00
	virtual void getChildCount();  // _04
	virtual void getObject(void*); // _08
	virtual void getNext(void*);   // _0C
	virtual void getStart();       // _10
	virtual void getEnd();         // _14
	virtual void get(void*);       // _18
	virtual void getAt(int);       // _1C
	virtual void getTo();          // _20

	// _00 VTBL
};
} // namespace Game

#endif
