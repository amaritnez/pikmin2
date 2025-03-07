#ifndef _PSGAME_SCENEINFO_H
#define _PSGAME_SCENEINFO_H

/*
    __vt__Q26PSGame9SceneInfo:
    .4byte 0
    .4byte 0
    .4byte isCaveFloor__Q26PSGame9SceneInfoFv
*/

namespace PSGame {
struct SceneInfo {
	virtual void isCaveFloor(); // _08 (weak)

	SceneInfo();
	void setStageFlag(PSGame::SceneInfo::FlagDef, PSGame::SceneInfo::FlagBitShift);
	void getFlag(PSGame::SceneInfo::FlagBitShift) const;
	void setStageCamera() const;
};
} // namespace PSGame

#endif
