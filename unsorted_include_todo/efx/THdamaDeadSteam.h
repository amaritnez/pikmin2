#ifndef _EFX_THDAMADEADSTEAM_H
#define _EFX_THDAMADEADSTEAM_H

namespace efx {
namespace TSyncGroup2 < efx
{
	struct TChaseMtx >
	{
		virtual void TSyncGroup2 < create(Arg*);       // _00
		virtual void TSyncGroup2 < forceKill();        // _04
		virtual void TSyncGroup2 < fade();             // _08
		virtual void TSyncGroup2 < startDemoDrawOff(); // _0C
		virtual void TSyncGroup2 < endDemoDrawOn();    // _10

		// _00 VTBL
	};
} // namespace efx
} // namespace efx

namespace efx {
struct THdamaDeadSteam : public TChaseMtx > {
	virtual void TSyncGroup2 < create(Arg*);       // _00
	virtual void TSyncGroup2 < forceKill();        // _04
	virtual void TSyncGroup2 < fade();             // _08
	virtual void TSyncGroup2 < startDemoDrawOff(); // _0C
	virtual void TSyncGroup2 < endDemoDrawOn();    // _10

	// _00 VTBL
};
} // namespace efx

#endif
