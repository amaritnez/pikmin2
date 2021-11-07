#ifndef _GAME_INTERACTDOPE_H
#define _GAME_INTERACTDOPE_H

namespace Game {
struct Interaction {
	virtual void actCommon(Creature*); // _00
	virtual void _04() = 0;            // _04
	virtual void actNavi(Navi*);       // _08
	virtual void _0C() = 0;            // _0C
	virtual void actPellet(Pellet*);   // _10
	virtual void actOnyon(Onyon*);     // _14
	virtual void actItem(BaseItem*);   // _18

	// _00 VTBL
};
} // namespace Game

namespace Game {
struct InteractDope : public Interaction {
	virtual void actCommon(Creature*); // _00
	virtual void actPiki(Piki*);       // _04
	virtual void actNavi(Navi*);       // _08
	virtual void actEnemy(EnemyBase*); // _0C
	virtual void actPellet(Pellet*);   // _10
	virtual void actOnyon(Onyon*);     // _14
	virtual void actItem(BaseItem*);   // _18

	// _00 VTBL
};
} // namespace Game

#endif
