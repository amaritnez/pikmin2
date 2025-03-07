#ifndef _SYS_MATBASEANIMATOR_H
#define _SYS_MATBASEANIMATOR_H

#include "types.h"
namespace Sys {
struct MatBaseAnimation;

/**
 * @size{0xC}
 */
struct MatBaseAnimator {
	MatBaseAnimator();

	virtual void start(Sys::MatBaseAnimation*); // _08
	virtual void onStart();                     // _0C (weak)
	virtual void do_animate(float);             // _10 (weak)

	void setCurrentFrame(float);
	void animate(float);

	// VTBL _00
	MatBaseAnimation* m_animation; // _04
	float _08;                     // _08
};

/**
 * @size{0xC}
 */
struct MatLoopAnimator : MatBaseAnimator {
	/**
	 * @reifiedAddress{801638EC}
	 * @reifiedFile{plugProjectKandoU/mapMgr.cpp}
	 */
	MatLoopAnimator() {};

	virtual void do_animate(float); // _10
};

/**
 * @size{0x10}
 */
struct MatRepeatAnimator : MatBaseAnimator {
	virtual void onStart();         // _0C
	virtual void do_animate(float); // _10

	u8 _0C; // _0C
};

} // namespace Sys

#endif
