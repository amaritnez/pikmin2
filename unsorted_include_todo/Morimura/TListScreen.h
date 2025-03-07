#ifndef _MORIMURA_TLISTSCREEN_H
#define _MORIMURA_TLISTSCREEN_H

/*
    __vt__Q28Morimura11TListScreen:
    .4byte 0
    .4byte 0
    .4byte create__Q28Morimura11TListScreenFPCcUl
    .4byte update__Q28Morimura11TScreenBaseFv
    .4byte draw__Q28Morimura11TScreenBaseFR8GraphicsP13J2DPerspGraph
*/

namespace Morimura {
struct TScreenBase {
	virtual void create(const char*, unsigned long); // _08
	virtual void update();                           // _0C
	virtual void draw(Graphics&, J2DPerspGraph*);    // _10
};
} // namespace Morimura

namespace Morimura {
struct TListScreen : public TScreenBase {
	virtual void create(const char*, unsigned long); // _08
};
} // namespace Morimura

#endif
