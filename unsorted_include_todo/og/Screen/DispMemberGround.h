#ifndef _OG_SCREEN_DISPMEMBERGROUND_H
#define _OG_SCREEN_DISPMEMBERGROUND_H

/*
    __vt__Q32og6Screen16DispMemberGround:
    .4byte 0
    .4byte 0
    .4byte getSize__Q32og6Screen16DispMemberGroundFv
    .4byte getOwnerID__Q32og6Screen16DispMemberGroundFv
    .4byte getMemberID__Q32og6Screen16DispMemberGroundFv
    .4byte doSetSubMemberAll__Q32og6Screen14DispMemberBaseFv
*/

namespace og {
namespace Screen {
struct DispMemberBase {
	virtual void getSize();           // _08 (weak)
	virtual void getOwnerID();        // _0C (weak)
	virtual void getMemberID();       // _10 (weak)
	virtual void doSetSubMemberAll(); // _14 (weak)
};
} // namespace Screen
} // namespace og

namespace og {
namespace Screen {
struct DispMemberGround : public DispMemberBase {
	virtual void getSize();     // _08 (weak)
	virtual void getOwnerID();  // _0C (weak)
	virtual void getMemberID(); // _10 (weak)
};
} // namespace Screen
} // namespace og

#endif
