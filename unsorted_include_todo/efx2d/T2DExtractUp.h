#ifndef _EFX2D_T2DEXTRACTUP_H
#define _EFX2D_T2DEXTRACTUP_H

/*
    __vt__Q25efx2d12T2DExtractUp:
    .4byte 0
    .4byte 0
    .4byte create__Q25efx2d8TSimple1FPQ25efx2d3Arg
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
	virtual void _08() = 0;               // _08
	virtual void _0C() = 0;               // _0C
	virtual void _10() = 0;               // _10
	virtual void setGroup(unsigned char); // _14 (weak)
};
} // namespace efx2d

namespace efx2d {
struct T2DExtractUp : public TSimple1, public TBase {
};
} // namespace efx2d

#endif
