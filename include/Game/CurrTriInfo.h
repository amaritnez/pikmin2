#ifndef _GAME_CURRTRIINFO_H
#define _GAME_CURRTRIINFO_H

#include "Vector3.h"

namespace Sys {
struct Triangle;
struct TriangleTable;
} // namespace Sys

namespace Game {
struct CurrTriInfo {
	Vector3f m_position;         // _00
	bool _0C;                    // _0C
	Sys::TriangleTable* m_table; // _10
	Sys::Triangle* m_triangle;   // _14
	float m_maxHeight;           // _18
	float m_minHeight;           // _1C
	Vector3f m_normal;			 // _20
};
} // namespace Game

#endif
