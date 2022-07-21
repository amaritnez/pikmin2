#ifndef _SYS_OBBTREE_H
#define _SYS_OBBTREE_H

#include "Vector3.h"
#include "Sys/TriDivider.h"
#include "Sys/OBB.h"
#include "Sys/TriangleTable.h"
#include "Sys/Sphere.h"

namespace Game {
struct MoveInfo;
struct CurrTriInfo;
} // namespace Game

namespace Sys {
struct VertexTable;
struct RayIntersectInfo;
struct OBBTree : TriDivider {
	OBBTree();

	virtual ~OBBTree() { }                             		// _00 - WEAK (in collinfo.cpp)
	// virtual int getChildCount();					  		// _04 - from CNode
	virtual void getMinY(Vector3f&);                 		// _08
	virtual TriIndexList* findTriLists(Sys::Sphere& ball) 	// _0C - WEAK (in geomOBBTree.cpp)
	{ 
		return m_obb.findTriLists(ball); 
	}
	virtual void read(Stream&);                       		// _10
	virtual void getCurrTri(Game::CurrTriInfo&);      		// _14
	// virtual void createTriangles(CreateTriangleArg); 	// _18 - from TriDivider - WEAK (in mapMgr.cpp)
	virtual void getBoundBox(BoundBox&) { }             	// _1C - WEAK (in geomOBBTree.cpp)
	virtual OBBTree* clone(Matrixf&);              			// _20
	// virtual void do_clone(Matrixf&, VertexTable, TriangleTable) // _24 - from TriDivider - WEAK (in geomOBBTree.cpp)

	void traceMove(Matrixf&, Matrixf&, Game::MoveInfo&, float);
	void traceMove_global(Game::MoveInfo&, float);
	void traceMove_new(Matrixf&, Matrixf&, Game::MoveInfo&, float);
	void traceMove_new_global(Game::MoveInfo&, float);
	void readWithoutVerts(Stream&, Sys::VertexTable&);
	bool findRayIntersection(RayIntersectInfo&, Matrixf&, Matrixf&);

	VertexTable* m_vertexTable;     // _18
	TriangleTable* m_triangleTable; // _1C
	OBB m_obb;                      // _20
};
} // namespace Sys

#endif
