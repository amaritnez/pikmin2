#ifndef _SYSSHAPE_ANIMATOR_H
#define _SYSSHAPE_ANIMATOR_H

#include "types.h"

namespace SysShape {
struct Model;
struct AnimInfo;
struct MotionListener;
struct AnimMgr;
struct KeyEvent;

struct BaseAnimator {
	BaseAnimator() { }

	virtual void getCalc()      = 0; // _00
	virtual void animate(float) = 0; // _04

	SysShape::MotionListener* m_listener; // _04
	f32 m_timer;                          // _08
	SysShape::AnimInfo* m_animInfo;       // _0C
	SysShape::AnimMgr* m_animMgr;         // _10
	SysShape::KeyEvent* m_curAnimKey;     // _14
	u8 m_flags;                           // _18
};

struct Animator : public BaseAnimator {
	Animator()
	    : BaseAnimator()
	{
		m_flags    = 0;
		m_animInfo = nullptr;
		m_listener = nullptr;
		m_flags    = 0;
		m_animMgr  = nullptr;
	}

	virtual void getCalc();      // _00
	virtual void animate(float); // _04

	void assertValid(SysShape::Model*);
	void setCurrFrame(float);
	void setFrameByKeyType(unsigned long);
	void setLastFrame();
	void startAnim(int, SysShape::MotionListener*);
	void startExAnim(SysShape::AnimInfo*);
};
} // namespace SysShape

#endif
