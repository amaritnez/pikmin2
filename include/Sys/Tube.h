#ifndef _SYS_TUBE_H
#define _SYS_TUBE_H

#include "Vector3.h"

namespace Sys {
struct Sphere;
struct Tube {
	inline Tube() {};
	Tube(Vector3f&, Vector3f&, float, float); // weak

	void getAxisVector(Vector3f&);
	bool collide(Sphere&, Vector3f&, float&);
	float getPosRatio(const Vector3f&);
	Vector3f setPos(float);

	// Unused/inlined:
	void getYRatio(float);
	void getRatioRadius(float);
	void getPosGradient(Vector3f&, float, Vector3f&, Vector3f&);

	Vector3f m_startPos; // _00 - position of start of tube
	Vector3f m_endPos;   // _0C - position of end of tube
	float m_startRadius; // _18 - radius of tube at start
	float m_endRadius;   // _1C - radius of tube at end
};
} // namespace Sys

#endif
