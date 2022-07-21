#ifndef _SYS_OBB_H
#define _SYS_OBB_H

#include "CNode.h"
#include "Plane.h"
#include "Sys/Sphere.h"
#include "Sys/TriIndexList.h"
#include "Vector3.h"
#include "types.h"

namespace Game {
struct MoveInfo;
struct CurrTriInfo;
} // namespace Game

namespace Sys {
struct VertexTable;
struct TriangleTable;
struct Triangle;
struct RayIntersectInfo;
struct CurrTriInfo;

/**
 * @size{0x110}
 */
struct OBB : public CNode {
	OBB();

	/**
	 * @reifiedAddress{8013948C}
	 * @reifiedFile{plugProjectKandoU/collinfo.cpp}
	 */
	virtual ~OBB() { } // _00
	// virtual int getChildCount(); // _04 - from CNode

	void autoDivide(Sys::VertexTable&, Sys::TriangleTable&, int, int);
	void create2(Sys::VertexTable&, Sys::TriangleTable&, struct Matrix3f&, Matrix3f&, Vector3f&);
	void determineDivPlane(Sys::VertexTable&, Sys::TriangleTable&);
	bool divide(Sys::VertexTable&, Sys::TriangleTable&);
	bool findRayIntersection(Sys::RayIntersectInfo&, struct Matrixf&, Matrixf&);
	bool findRayIntersectionTriList(Sys::RayIntersectInfo&, Matrixf&, Matrixf&);
	TriIndexList* findTriLists(Sys::Sphere&);
	void getCurrTri(Game::CurrTriInfo&);
	void getCurrTriTriList(Game::CurrTriInfo&);
	float getMinY(Vector3f&, Sys::TriangleTable&, float);
	float getMinYTriList(Vector3f&, Sys::TriangleTable&);
	bool isLeaf() { return (!_C0 && !_C4); }; // weak function from geomOBBTree.cpp
	void read(Stream&);
	void traceMove_new_global(Game::MoveInfo&, Sys::VertexTable&, Sys::TriangleTable&, int&, Sys::Triangle**, float*, Vector3f*);
	void traceMove_new(Game::MoveInfo&, Sys::VertexTable&, Sys::TriangleTable&, Matrixf&, Matrixf&, int&, Sys::Triangle**, float*,
	                   Vector3f*);
	void traceMoveTriList_new_global(Game::MoveInfo&, Sys::VertexTable&, Sys::TriangleTable&, int&, Sys::Triangle**, float*, Vector3f*);
	void traceMoveTriList_new(Game::MoveInfo&, Sys::VertexTable&, Sys::TriangleTable&, Matrixf&, Matrixf&, int&, Sys::Triangle**, float*,
	                          Vector3f*);

	Plane m_sidePlanes[6];     	 // _18
	Vector3f m_position;   	  	 // _78
	Vector3f m_axes[3];  		 // _84
	float m_minXYZ[3];     		 // _A8
	float m_maxXYZ[3];     		 // _B4
	OBB* _C0;       			 // _C0 - first 'half' of OBB, as an OBB
	OBB* _C4;       			 // _C4 - second 'half' of OBB, as an OBB
	Plane m_divPlane;        	 // _C8
	TriIndexList m_triIndexList; // _D8
	Sphere m_sphere;  			 // _100
};
} // namespace Sys

#endif
