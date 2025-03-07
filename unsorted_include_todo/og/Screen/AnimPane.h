#ifndef _OG_SCREEN_ANIMPANE_H
#define _OG_SCREEN_ANIMPANE_H

/*
    __vt__Q32og6Screen8AnimPane:
    .4byte 0
    .4byte 0
    .4byte start__Q32og6Screen8AnimPaneFv
    .4byte moveAnim__Q32og6Screen8AnimPaneFv
*/

namespace og {
namespace Screen {
struct AnimPane {
	virtual void start();    // _08
	virtual void moveAnim(); // _0C

	AnimPane();
	void init(JKRArchive*, J2DScreen*, unsigned long long, char*);
};
} // namespace Screen
} // namespace og

#endif
