#ifndef _JSTAGE_TCAMERA_H
#define _JSTAGE_TCAMERA_H

#include "JStage/TObject.h"
#include "Dolphin/vec.h"

namespace JStage {
typedef struct TECameraProjection;
typedef struct TECameraView;
struct TCamera : public TObject {
	virtual int JSGFGetType() const;                       // _0C
	virtual int JSGGetProjectionType() const;              // _3C
	virtual void JSGSetProjectionType(TECameraProjection); // _40
	virtual f32 JSGGetProjectionNear() const;              // _44
	virtual void JSGSetProjectionNear(float);              // _48
	virtual f32 JSGGetProjectionFar() const;               // _4C
	virtual void JSGSetProjectionFar(float);               // _50
	virtual f32 JSGGetProjectionFovy() const;              // _54
	virtual void JSGSetProjectionFovy(float);              // _58
	virtual f32 JSGGetProjectionAspect() const;            // _5C
	virtual void JSGSetProjectionAspect(float);            // _60
	virtual void JSGGetProjectionField(float*) const;      // _64
	virtual void JSGSetProjectionField(const float*);      // _68
	virtual int JSGGetViewType() const;                    // _6C
	virtual void JSGSetViewType(TECameraView);             // _70
	virtual void JSGGetViewPosition(Vec*) const;           // _74
	virtual void JSGSetViewPosition(const Vec&);           // _78
	virtual void JSGGetViewUpVector(Vec*) const;           // _7C
	virtual void JSGSetViewUpVector(const Vec&);           // _80
	virtual void JSGGetViewTargetPosition(Vec*) const;     // _84
	virtual void JSGSetViewTargetPosition(const Vec&);     // _88
	virtual f32 JSGGetViewRoll() const;                    // _8C
	virtual void JSGSetViewRoll(float);                    // _90

	// _00 VTBL
	~TCamera();
};
} // namespace JStage

#endif
