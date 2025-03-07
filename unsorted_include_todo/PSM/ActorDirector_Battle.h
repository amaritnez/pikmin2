#ifndef _PSM_ACTORDIRECTOR_BATTLE_H
#define _PSM_ACTORDIRECTOR_BATTLE_H

/*
    __vt__Q23PSM20ActorDirector_Battle:
    .4byte 0
    .4byte 0
    .4byte __dt__Q23PSM20ActorDirector_BattleFv
    .4byte exec__Q28PSSystem12DirectorBaseFv
    .4byte directOn__Q28PSSystem12DirectorBaseFv
    .4byte directOff__Q28PSSystem12DirectorBaseFv
    .4byte underDirection__Q23PSM19ActorDirector_EnemyFv
    .4byte execInner__Q23PSM20ActorDirector_ScaledFv
    .4byte directOnTrack__Q23PSM19TrackOnDirectorBaseFRQ28PSSystem12SeqTrackBase
    .4byte directOffTrack__Q23PSM19TrackOnDirectorBaseFRQ28PSSystem12SeqTrackBase
    .4byte doUpdateRequest__Q28PSSystem16SwitcherDirectorFv
    .4byte onPlayInit__Q23PSM19TrackOnDirectorBaseFP8JASTrack
    .4byte onDirectOn__Q28PSSystem12DirectorBaseFv
    .4byte onDirectOff__Q28PSSystem12DirectorBaseFv
    .4byte getNearestDistance__Q23PSM20ActorDirector_ScaledFv
    .4byte onSetMinDistObj__Q23PSM19ActorDirector_EnemyFPQ24Game8Creature
    .4byte getVolZeroDist__Q23PSM20ActorDirector_BattleFPQ24Game9EnemyBase
    .4byte getVolMaxDist__Q23PSM20ActorDirector_BattleFPQ24Game9EnemyBase
*/

namespace PSSystem {
struct DirectorBase {
	virtual ~DirectorBase();    // _08 (weak)
	virtual void exec();        // _0C
	virtual void directOn();    // _10
	virtual void directOff();   // _14
	virtual void _18() = 0;     // _18
	virtual void _1C() = 0;     // _1C
	virtual void _20() = 0;     // _20
	virtual void _24() = 0;     // _24
	virtual void _28() = 0;     // _28
	virtual void _2C() = 0;     // _2C
	virtual void onDirectOn();  // _30 (weak)
	virtual void onDirectOff(); // _34 (weak)
};
} // namespace PSSystem

namespace PSM {
struct ActorDirector_Enemy {
	virtual ~ActorDirector_Enemy();                // _08 (weak)
	virtual void _0C() = 0;                        // _0C
	virtual void _10() = 0;                        // _10
	virtual void _14() = 0;                        // _14
	virtual void underDirection();                 // _18
	virtual void _1C() = 0;                        // _1C
	virtual void _20() = 0;                        // _20
	virtual void _24() = 0;                        // _24
	virtual void _28() = 0;                        // _28
	virtual void _2C() = 0;                        // _2C
	virtual void _30() = 0;                        // _30
	virtual void _34() = 0;                        // _34
	virtual void _38() = 0;                        // _38
	virtual void onSetMinDistObj(Game::Creature*); // _3C
};
} // namespace PSM

namespace PSM {
struct ActorDirector_Scaled {
	virtual ~ActorDirector_Scaled();   // _08 (weak)
	virtual void _0C() = 0;            // _0C
	virtual void _10() = 0;            // _10
	virtual void _14() = 0;            // _14
	virtual void _18() = 0;            // _18
	virtual void execInner();          // _1C
	virtual void _20() = 0;            // _20
	virtual void _24() = 0;            // _24
	virtual void _28() = 0;            // _28
	virtual void _2C() = 0;            // _2C
	virtual void _30() = 0;            // _30
	virtual void _34() = 0;            // _34
	virtual void getNearestDistance(); // _38
};
} // namespace PSM

namespace PSM {
struct TrackOnDirectorBase {
	virtual ~TrackOnDirectorBase();                       // _08 (weak)
	virtual void _0C() = 0;                               // _0C
	virtual void _10() = 0;                               // _10
	virtual void _14() = 0;                               // _14
	virtual void _18() = 0;                               // _18
	virtual void _1C() = 0;                               // _1C
	virtual void directOnTrack(PSSystem::SeqTrackBase&);  // _20
	virtual void directOffTrack(PSSystem::SeqTrackBase&); // _24
	virtual void _28() = 0;                               // _28
	virtual void onPlayInit(JASTrack*);                   // _2C
};
} // namespace PSM

namespace PSSystem {
struct SwitcherDirector {
	virtual ~SwitcherDirector();    // _08 (weak)
	virtual void _0C() = 0;         // _0C
	virtual void _10() = 0;         // _10
	virtual void _14() = 0;         // _14
	virtual void _18() = 0;         // _18
	virtual void _1C() = 0;         // _1C
	virtual void _20() = 0;         // _20
	virtual void _24() = 0;         // _24
	virtual void doUpdateRequest(); // _28
};
} // namespace PSSystem

namespace PSM {
struct ActorDirector_Battle : public DirectorBase,
                              public ActorDirector_Enemy,
                              public ActorDirector_Scaled,
                              public TrackOnDirectorBase,
                              public SwitcherDirector {
	virtual ~ActorDirector_Battle();               // _08 (weak)
	virtual void getVolZeroDist(Game::EnemyBase*); // _40
	virtual void getVolMaxDist(Game::EnemyBase*);  // _44
};
} // namespace PSM

#endif
