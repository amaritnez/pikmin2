#ifndef _OG_SCREEN_CALLBACK_DRAWAFTER_H
#define _OG_SCREEN_CALLBACK_DRAWAFTER_H

/*
    __vt__Q32og6Screen18CallBack_DrawAfter:
    .4byte 0
    .4byte 0
    .4byte __dt__Q32og6Screen18CallBack_DrawAfterFv
    .4byte getChildCount__5CNodeFv
    .4byte update__Q32og6Screen18CallBack_DrawAfterFv
    .4byte draw__Q32og6Screen18CallBack_DrawAfterFR8GraphicsR14J2DGrafContext
    .4byte doInit__Q29P2DScreen4NodeFv
    .4byte 0
*/

struct CNode {
	virtual ~CNode();             // _08 (weak)
	virtual void getChildCount(); // _0C
};

namespace P2DScreen {
struct Node {
	virtual ~Node();                               // _08 (weak)
	virtual void _0C() = 0;                        // _0C
	virtual void update();                         // _10
	virtual void draw(Graphics&, J2DGrafContext&); // _14
	virtual void doInit();                         // _18 (weak)
};
} // namespace P2DScreen

namespace og {
namespace Screen {
struct CallBack_DrawAfter : public CNode, public Node {
	virtual ~CallBack_DrawAfter();                 // _08 (weak)
	virtual void update();                         // _10
	virtual void draw(Graphics&, J2DGrafContext&); // _14
	virtual void _1C() = 0;                        // _1C
};
} // namespace Screen
} // namespace og

#endif
