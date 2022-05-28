#ifndef _GAME_DEATHMGR_H
#define _GAME_DEATHMGR_H

#include "Dolphin/gx.h"
#include "Game/Piki.h"
#include "stream.h"

namespace Game {
struct DeathMgr {
	enum CauseOfDeath {
		COD_Unknown1 = 0,
		COD_Unknown2,
		COD_Unknown3,
		COD_Water,
		COD_Unknown4,
		COD_Unknown5,
		COD_Unknown6,
		COD_All,                   // All causes combined
		COD_SourceCount = COD_All, // Count of individual causes
		_FORCE_UINT     = 0xFFFFFFFF
	};
	DeathMgr();

	static void clear();
	static void inc(CauseOfDeath);
	static void inc_today(CauseOfDeath);
	static void inc_cave(CauseOfDeath);
	static void account_cave();
	static void account_today();
	static int get_cave(CauseOfDeath);
	static int get_today(CauseOfDeath);
	static int get_total(CauseOfDeath);
	static void read(Stream&);
	static void write(Stream&);

	static u32 mToday[COD_SourceCount];
	static u32 mTodayTotal;
	static u32 mCave[COD_SourceCount];
	static u32 mCaveTotal;
	static u32 mTotal[COD_SourceCount];
	static u32 mTotalTotal;
	static int mSoundDeathCount;
};
} // namespace Game

#endif
