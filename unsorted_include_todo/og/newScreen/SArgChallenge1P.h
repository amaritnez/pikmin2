#ifndef _OG_NEWSCREEN_SARGCHALLENGE1P_H
#define _OG_NEWSCREEN_SARGCHALLENGE1P_H

/*
    __vt__Q32og9newScreen15SArgChallenge1P:
    .4byte 0
    .4byte 0
    .4byte getSceneType__Q32og9newScreen15SArgChallenge1PCFv
    .4byte getClassSize__Q32og9newScreen15SArgChallenge1PFv
*/

namespace og {
namespace newScreen {
struct SArgChallenge1P {
	virtual void getSceneType() const; // _08 (weak)
	virtual void getClassSize();       // _0C (weak)
};
} // namespace newScreen
} // namespace og

#endif
