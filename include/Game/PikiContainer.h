#ifndef _GAME_PIKICONTAINER_H
#define _GAME_PIKICONTAINER_H

#include "Game/Piki.h"
#include "types.h"
#include "stream.h"

namespace Game {
struct Piki;

struct PikiContainer {
	PikiContainer();

	virtual void read(Stream&);  // _00
	virtual void write(Stream&); // _04

	void operator=(PikiContainer&);
	int& operator()(Piki*);
	void clear();
	void dump(char*);
	int& getCount(int, int);
	int getColorSum(int);
	int getHappaSum(int);
	int getTotalSum();

	// VTBL _00
	// 0x54 (84) bytes allocated in ctor. Stores counts of Pikmin. Int at byte
	// offset (pikminGrowth + pikminColor*3)*4.
	// int (*m_container)[PikiGrowthStageCount]; // _04
	int* m_container; // _04
};
} // namespace Game

#endif
