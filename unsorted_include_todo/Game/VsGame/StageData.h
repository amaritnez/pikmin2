#ifndef _GAME_VSGAME_STAGEDATA_H
#define _GAME_VSGAME_STAGEDATA_H

struct CNode {
	virtual void _00() = 0;       // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace Game {
namespace VsGame {
	struct StageData : public CNode {
		virtual Vs ~StageData();      // _00
		virtual void getChildCount(); // _04

		// _00 VTBL
	};
} // namespace VsGame
} // namespace Game

#endif
