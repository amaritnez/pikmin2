#ifndef _GAME_KINGCHAPPY_PROPERANIMATOR_H
#define _GAME_KINGCHAPPY_PROPERANIMATOR_H

/*
    __vt__Q34Game10KingChappy14ProperAnimator:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game10KingChappy14ProperAnimatorFv
    .4byte setAnimMgr__Q24Game22EnemyBlendAnimatorBaseFPQ28SysShape7AnimMgr
    .4byte getAnimator__Q24Game22EnemyBlendAnimatorBaseFv
    .4byte getAnimator__Q24Game22EnemyBlendAnimatorBaseFi
    .4byte animate__Q24Game22EnemyBlendAnimatorBaseFf
    .4byte animate__Q24Game22EnemyBlendAnimatorBaseFif
    .4byte resetAnimSpeed__Q24Game17EnemyAnimatorBaseFv
    .4byte getTypeID__Q24Game22EnemyBlendAnimatorBaseFv
*/

namespace Game {
struct EnemyBlendAnimatorBase {
	virtual ~EnemyBlendAnimatorBase();           // _08 (weak)
	virtual void setAnimMgr(SysShape::AnimMgr*); // _0C
	virtual void getAnimator();                  // _10
	virtual void getAnimator(int);               // _14
	virtual void animate(float);                 // _18
	virtual void animate(int, float);            // _1C (weak)
	virtual void _20() = 0;                      // _20
	virtual void getTypeID();                    // _24 (weak)
};
} // namespace Game

namespace Game {
struct EnemyAnimatorBase {
	virtual ~EnemyAnimatorBase();  // _08 (weak)
	virtual void _0C() = 0;        // _0C
	virtual void _10() = 0;        // _10
	virtual void _14() = 0;        // _14
	virtual void _18() = 0;        // _18
	virtual void _1C() = 0;        // _1C
	virtual void resetAnimSpeed(); // _20 (weak)
};
} // namespace Game

namespace Game {
namespace KingChappy {
struct ProperAnimator : public EnemyBlendAnimatorBase, public EnemyAnimatorBase {
	virtual ~ProperAnimator(); // _08 (weak)
};
} // namespace KingChappy
} // namespace Game

#endif
