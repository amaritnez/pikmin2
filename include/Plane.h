#ifndef _PLANE_H
#define _PLANE_H

#include "Vector3.h"

struct Plane {
	Plane()
	    : a(0.0f)
	    , b(1.0f)
	    , c(0.0f)
	    , d(0.0f)
	{
	}

	void read(Stream&);
	void write(Stream&);
	float calcDist(const Vector3f& vec) const { return (vec.x * a + vec.y * b + vec.z * c) - d; } // weak function from geomOBBTree.cpp

	f32 a;
	f32 b;
	f32 c;
	f32 d;
};

#endif
