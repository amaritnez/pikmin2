#ifndef _GAME_BLACKMAN_PARMS_H
#define _GAME_BLACKMAN_PARMS_H

namespace Game {
namespace BlackMan {
	struct Parms {
		virtual void read(Stream&); // _00
		virtual void _04() = 0;     // _04

		// _00 VTBL
	};
} // namespace BlackMan
} // namespace Game

#endif
