#ifndef _PSM_BATTLELINK_H
#define _PSM_BATTLELINK_H

/*
    __vt__Q23PSM10BattleLink:
    .4byte 0
    .4byte 0
    .4byte battleOn__Q23PSM10BattleLinkFv
    .4byte battleOff__Q23PSM10BattleLinkFv
*/

namespace PSM {
struct BattleLink {
	virtual void battleOn();  // _00
	virtual void battleOff(); // _04

	// _00 VTBL
};
} // namespace PSM

#endif
