#ifndef _GAME_PLATINSTANCE_H
#define _GAME_PLATINSTANCE_H

#include "ObjectMgr.h"
#include "types.h"
#include "Game/cellPyramid.h"
#include "Matrixf.h"
#include "id32.h"

struct Graphics;
struct Platform;
struct PlatAttacher;
namespace Sys {
struct Sphere;
struct RayIntersectInfo;
} // namespace Sys
namespace SysShape {
struct Model;
}
namespace Game {
struct BaseItem;
struct Creature;
struct CurrTriInfo;
struct MoveInfo;
} // namespace Game

namespace Game {
struct PlatAddInstanceArg {
	PlatAddInstanceArg();

	BaseItem* m_item;     // _00
	ID32 m_id;            // _04
	Platform* m_platform; // _10
	Matrixf* m_matrix;    // _14
	bool _18;             // _18
	float _1C;            // _1C
};
struct PlatInstance : public CellObject {
	inline PlatInstance()
	    : CellObject()
	{
		_B8 = nullptr;
		_EC = nullptr;
		_F4 = nullptr;
		m_id.setID('none');
		_F0  = nullptr;
		_108 = 1;
	}

	void setCollision(bool);
	Vector3f getPosition();
	void getBoundingSphere(Sys::Sphere&);
	void getMinY(Vector3f&) const;
	void getCurrTri(CurrTriInfo&);
	void traceMove(MoveInfo&, float);
	void constructor();
	void checkCollision(CellObject*);
	void doAnimation();
	void doEntry();
	void doSetView(int);
	void doViewCalc();
	void doSimulation(float);
	void doDirectDraw(Graphics&);
	char* getTypeName();
	u16 getObjType();
	bool collisionUpdatable();

	Matrixf* _B8;
	Matrixf _BC;
	Platform* _EC;
	Platform* _F0;
	BaseItem* _F4;
	ID32 m_id;
	u32 _104;
	u8 _108;    // _108
	u8 _109[3]; // _109, manual padding
	u8 _10C;    // _10C // I don't think this should be here...
};

struct PlatInstanceAttacher {
	PlatInstanceAttacher();
	void addToMgr(Creature*, ID32&, PlatAttacher*, bool);
	void fixCollision(bool);
	void fixCollision(bool, char*);
	void fixCollision(bool, u16);
	void setCode(ID32&, char*);
	void setCode(ID32&, u16);
	void setCollision(bool, char*);
	void setCollision(bool, u16);
	void setShapeVisibility();

	int m_instanceCount;            // _00
	PlatInstance** m_platInstances; // _04
	PlatAttacher* m_attacher;       // _08
	SysShape::Model* m_model;       // _0C
};

struct PlatMgr : public NodeObjectMgr<PlatInstance> {
	PlatMgr();
	virtual ~PlatMgr();
	PlatInstance* addInstance(PlatAddInstanceArg&);
	void delInstance(PlatInstance*);
	void traceMove(MoveInfo&, float);
	void getMinY(Vector3f&) const;
	void getCurrTri(CurrTriInfo&);
	void findRayIntersection(Sys::RayIntersectInfo&);
	void resetOnCount();
	void doDirectDraw(Graphics&);
};
} // namespace Game

#endif
