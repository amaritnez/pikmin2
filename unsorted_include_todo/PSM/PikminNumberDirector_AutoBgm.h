#ifndef _PSM_PIKMINNUMBERDIRECTOR_AUTOBGM_H
#define _PSM_PIKMINNUMBERDIRECTOR_AUTOBGM_H

/*
    __vt__Q23PSM28PikminNumberDirector_AutoBgm:
    .4byte 0
    .4byte 0
    .4byte __dt__Q23PSM28PikminNumberDirector_AutoBgmFv
    .4byte exec__Q28PSSystem12DirectorBaseFv
    .4byte directOn__Q28PSSystem12DirectorBaseFv
    .4byte directOff__Q28PSSystem12DirectorBaseFv
    .4byte underDirection__Q28PSSystem12DirectorBaseFv
    .4byte execInner__Q23PSM20PikminNumberDirectorFv
    .4byte directOnTrack__Q23PSM28PikminNumberDirector_AutoBgmFRQ28PSSystem12SeqTrackBase
    .4byte directOffTrack__Q23PSM28PikminNumberDirector_AutoBgmFRQ28PSSystem12SeqTrackBase
    .4byte doUpdateRequest__Q28PSSystem16SwitcherDirectorFv
    .4byte onPlayInit__Q28PSSystem12DirectorBaseFP8JASTrack
    .4byte onDirectOn__Q28PSSystem12DirectorBaseFv
    .4byte onDirectOff__Q28PSSystem12DirectorBaseFv
*/

namespace PSSystem {
struct DirectorBase {
	virtual ~DirectorBase();                              // _08 (weak)
	virtual void exec();                                  // _0C
	virtual void directOn();                              // _10
	virtual void directOff();                             // _14
	virtual void underDirection();                        // _18 (weak)
	virtual void _1C() = 0;                               // _1C
	virtual void directOnTrack(PSSystem::SeqTrackBase&);  // _20
	virtual void directOffTrack(PSSystem::SeqTrackBase&); // _24
	virtual void _28() = 0;                               // _28
	virtual void onPlayInit(JASTrack*);                   // _2C (weak)
	virtual void onDirectOn();                            // _30 (weak)
	virtual void onDirectOff();                           // _34 (weak)
};
} // namespace PSSystem

namespace PSM {
struct PikminNumberDirector {
	virtual ~PikminNumberDirector(); // _08 (weak)
	virtual void _0C() = 0;          // _0C
	virtual void _10() = 0;          // _10
	virtual void _14() = 0;          // _14
	virtual void _18() = 0;          // _18
	virtual void execInner();        // _1C
};
} // namespace PSM

namespace PSSystem {
struct SwitcherDirector {
	virtual ~SwitcherDirector();                          // _08 (weak)
	virtual void _0C() = 0;                               // _0C
	virtual void _10() = 0;                               // _10
	virtual void _14() = 0;                               // _14
	virtual void _18() = 0;                               // _18
	virtual void _1C() = 0;                               // _1C
	virtual void directOnTrack(PSSystem::SeqTrackBase&);  // _20
	virtual void directOffTrack(PSSystem::SeqTrackBase&); // _24
	virtual void doUpdateRequest();                       // _28
};
} // namespace PSSystem

namespace PSM {
struct PikminNumberDirector_AutoBgm : public DirectorBase, public PikminNumberDirector, public SwitcherDirector {
	virtual ~PikminNumberDirector_AutoBgm();              // _08 (weak)
	virtual void directOnTrack(PSSystem::SeqTrackBase&);  // _20
	virtual void directOffTrack(PSSystem::SeqTrackBase&); // _24

	PikminNumberDirector_AutoBgm(int, unsigned char, PSSystem::DirectedBgm&);
	void getTrack(PSSystem::SeqTrackBase&);
};
} // namespace PSM

#endif
