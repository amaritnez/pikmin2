#ifndef _GAME_AABBWATERBOX_H
#define _GAME_AABBWATERBOX_H

#include "BoundBox.h"
#include "Graphics.h"
#include "JSystem/J3D/J3DModel.h"
#include "JSystem/J3D/J3DTexture.h"
#include "Sys/MatBaseAnimator.h"
#include "types.h"
#include "Vector3.h"

struct Matrixf;

namespace Sys {
struct MatTexAnimation;
struct Sphere;
} // namespace Sys

namespace SysShape {
struct Model;
} // namespace SysShape

namespace Game {
struct WaterBox {
	enum Flags {
		WBF_Unset    = 0x0,
		WBF_Unknown1 = 0x1,
	};
	WaterBox();

	/**
	 * @reifiedAddress{80106CE8}
	 * @reifiedFile{plugProjectYamashitaU/enemyBase.cpp}
	 */
	virtual bool inWater(Sys::Sphere&) // _08 (weak)
	{
		return false;
	}
	virtual bool inWater2d(Sys::Sphere&); // _0C (weak)
	virtual float getSeaLevel()      = 0; // _10
	virtual float* getSeaHeightPtr() = 0; // _14
	virtual bool update()            = 0; // _18
	virtual void startDown(float);        // _1C (weak)
	virtual void startUp(float);          // _20 (weak)
	virtual void directDraw(Graphics&);   // _24 (weak)
	virtual void doAnimation();           // _28 (weak)
	virtual void doEntry();               // _2C (weak)
	virtual void doSetView(int);          // _30 (weak)
	virtual void doViewCalc();            // _34 (weak)
	virtual void doSimulation(float);     // _38 (weak)
	virtual void doDirectDraw(Graphics&); // _3C (weak)
	virtual void attachModel(J3DModelData*, Sys::MatTexAnimation*,
	                         float); // _40 (weak)
	virtual void calcMatrix();       // _44 (weak)

	u8 m_flags; // _04
};

struct AABBWaterBox : public WaterBox {
	AABBWaterBox();

	virtual bool inWater(Sys::Sphere&);                                    // _08
	virtual bool inWater2d(Sys::Sphere&);                                  // _0C
	virtual float getSeaLevel();                                           // _10 (weak)
	virtual float* getSeaHeightPtr();                                      // _14 (weak)
	virtual bool update();                                                 // _18
	virtual void startDown(float);                                         // _1C
	virtual void startUp(float);                                           // _20
	virtual void directDraw(Graphics&);                                    // _24
	virtual void doAnimation();                                            // _28
	virtual void doEntry();                                                // _2C
	virtual void doSetView(int);                                           // _30
	virtual void doViewCalc();                                             // _34
	virtual void attachModel(J3DModelData*, Sys::MatTexAnimation*, float); // _40
	virtual void calcMatrix();                                             // _44

	void globalise(Game::AABBWaterBox*, Matrixf&);

	void create(Vector3f&, Vector3f&);

	u16 _08;                            // _08
	float _0C;                          // _0C
	float _10;                          // _10
	float _14;                          // _14
	BoundBox m_bounds;                  // _18
	float _30;                          // _30
	float _34;                          // _34
	float _38;                          // _38
	float _3C;                          // _3C
	float _40;                          // _40
	Vector3f _44;                       // _44
	SysShape::Model* m_model;           // _50
	Sys::MatLoopAnimator m_matAnimator; // _54
	J3DTexture* _60;                    // _60
	short _64;                          // _64
};
} // namespace Game

#endif
