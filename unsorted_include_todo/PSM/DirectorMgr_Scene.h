#ifndef _PSM_DIRECTORMGR_SCENE_H
#define _PSM_DIRECTORMGR_SCENE_H

/*
    __vt__Q23PSM17DirectorMgr_Scene:
    .4byte 0
    .4byte 0
    .4byte __dt__Q23PSM17DirectorMgr_SceneFv
    .4byte newDirector__Q23PSM17DirectorMgr_SceneFUcRQ28PSSystem11DirectedBgm
    .4byte 0
    .4byte 0
    .4byte "@12@__dt__Q23PSM17DirectorMgr_SceneFv"
    .4byte isSlave__Q23PSM17DirectorMgr_SceneFv
    .4byte newPikminNumberDirector__Q23PSM17DirectorMgr_SceneFiUcRQ28PSSystem11DirectedBgm
    .4byte 0
*/

namespace PSM {
struct DirectorMgr_Scene {
	virtual ~DirectorMgr_Scene();                                                     // _08 (weak)
	virtual void newDirector(unsigned char, PSSystem::DirectedBgm&);                  // _0C
	virtual void _10() = 0;                                                           // _10
	virtual void _14() = 0;                                                           // _14
	virtual void isSlave();                                                           // _1C (weak)
	virtual void newPikminNumberDirector(int, unsigned char, PSSystem::DirectedBgm&); // _20
	virtual void _24() = 0;                                                           // _24

	DirectorMgr_Scene(PSM::DirectorMgr_Scene*, unsigned char);
	void initTrackMap(PSSystem::DirectedBgm&);
	void adaptDirectorActor(PSSystem::DirectorBase*, unsigned char);
};
} // namespace PSM

#endif
