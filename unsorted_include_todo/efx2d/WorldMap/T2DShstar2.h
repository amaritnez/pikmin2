#ifndef _EFX2D_WORLDMAP_T2DSHSTAR2_H
#define _EFX2D_WORLDMAP_T2DSHSTAR2_H

/*
    __vt__Q35efx2d8WorldMap10T2DShstar2:
    .4byte 0
    .4byte 0
    .4byte create__Q35efx2d8WorldMap10T2DShstar2FPQ25efx2d3Arg
    .4byte kill__Q25efx2d8TSimple1Fv
    .4byte fade__Q25efx2d8TSimple1Fv
    .4byte setGroup__Q25efx2d5TBaseFUc
*/

namespace efx2d {
struct TSimple1 {
	virtual void create(Arg*); // _08
	virtual void kill();       // _0C (weak)
	virtual void fade();       // _10 (weak)
};
} // namespace efx2d

namespace efx2d {
struct TBase {
	virtual void create(Arg*);            // _08
	virtual void _0C() = 0;               // _0C
	virtual void _10() = 0;               // _10
	virtual void setGroup(unsigned char); // _14 (weak)
};
} // namespace efx2d

namespace efx2d {
namespace WorldMap {
struct T2DShstar2 : public TSimple1, public TBase {
	virtual void create(Arg*); // _08
};
} // namespace WorldMap
} // namespace efx2d

#endif
