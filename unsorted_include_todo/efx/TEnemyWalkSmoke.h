#ifndef _EFX_TENEMYWALKSMOKE_H
#define _EFX_TENEMYWALKSMOKE_H

namespace efx {
struct TEnemyWalkSmoke {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

#endif
